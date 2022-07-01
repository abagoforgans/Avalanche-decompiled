contract main {




// =====================  Runtime code  =====================


#
#  - transferToken(address arg1, uint256 arg2)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_52ba61f7(?)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const getContractBalance = eth.balance(this.address)


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
uint256 numberOfTokensMinted;
address stor7;
address stor8;
address stor9;
array of struct stor10;
mapping of struct stor11;
array of uint256 sub_0316c4ea;
array of uint256 sub_73a4b755;
mapping of uint256 sub_77d9073b;
mapping of uint256 sub_a6f9c016;
mapping of struct stor16;

function sub_0316c4ea(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_0316c4ea[arg1]
    return sub_0316c4ea[arg1][arg2]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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

function sub_73a4b755(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_73a4b755[arg1]
    return sub_73a4b755[arg1][arg2]
}

function sub_77d9073b(?) payable {
    require calldata.size - 4 >= 32
    return sub_77d9073b[arg1]
}

function sub_a6f9c016(?) payable {
    require calldata.size - 4 >= 32
    return sub_a6f9c016[arg1]
}

function getNumberOfTokensMinted() payable {
    return numberOfTokensMinted
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

function sub_c4749baf(?) payable {
    require calldata.size - 4 >= 32
    return (block.timestamp > arg1)
}

function sub_88002d09(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor7 != msg.sender:
        revert with 0, 'Only Owner'
    stor7 = address(arg1)
}

function sub_ade16fd5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor7 != msg.sender:
        revert with 0, 'Only Owner'
    stor9 = address(arg1)
}

function sub_d8215d62(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor7 != msg.sender:
        revert with 0, 'Only Owner'
    stor8 = address(arg1)
}

function royaltyInfo(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor16[arg1].field_256:
        return 0
    if arg2 and stor16[arg1].field_256 > -1 / arg2:
        revert with 0, 17
    return stor16[arg1].field_0, arg2 * stor16[arg1].field_256 / 10000
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function Withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor7 != msg.sender:
        revert with 0, 'Only Owner'
    if not stor7:
        revert with 0, 'Address cannot be Zero!'
    if arg1 <= 0:
        revert with 0, 'Amount cannot be Zero!'
    call stor7 with:
       value arg1 wei
         gas gas_remaining wei
    require ext_call.success
}

function TransferERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor7 != msg.sender:
        revert with 0, 'Only Owner'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor7, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x2a55205a00000000000000000000000000000000000000000000000000000000:
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function sub_199e9339(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if stor8 != msg.sender:
        revert with 0, 'Only Game Owner'
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor10.length = 0
            idx = 0
            while (uint255(stor10.length) * 0.5) + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor10.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor10[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while (uint255(stor10.length) * 0.5) + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor10.length = 0
            idx = 0
            while stor10.length.field_1 + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor10.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor10[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor10.length.field_1 + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_4e5f67d4(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg5 == uint8(arg5)
    require arg6 == uint8(arg6)
    if stor8 != msg.sender:
        if stor9 != msg.sender:
            if stor7 != msg.sender:
                revert with 0, 'Only Mint Owner'
    numberOfTokensMinted++
    require not ownerOf[stor6]
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor6]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor6] = address(arg1)
    emit Transfer(0, address(arg1), numberOfTokensMinted);
    stor11[stor6].field_0 = numberOfTokensMinted
    if stor11[stor6].field_256:
        if stor11[stor6].field_256 == uint255(stor11[stor6].field_256) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor11[stor6][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor11[stor6].field_256 = 0
            idx = 0
            while (uint255(stor11[stor6].field_256) * 0.5) + 31 / 32 > idx:
                stor11[stor6][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor11[stor6].field_256 == stor11[stor6].field_257 < 32:
            revert with 0, 34
        if arg2.length:
            stor11[stor6][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor11[stor6].field_256 = 0
            idx = 0
            while stor11[stor6].field_257 + 31 / 32 > idx:
                stor11[stor6][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    stor11[stor6].field_512 = address(arg1)
    stor11[stor6].field_768 = address(arg1)
    stor11[stor6].field_1024 = 0
    stor11[stor6].field_1280 = 0
    stor11[stor6].field_1536 = 0
    stor11[stor6].field_1792 = arg3
    stor11[stor6].field_2048 = 0
    stor11[stor6].field_2304 = 0
    stor11[stor6].field_2304 = arg4
    stor11[stor6].field_2560 = uint8(arg5)
    stor11[stor6].field_2568 = uint8(arg6)
    sub_0316c4ea[address(arg1)]++
    sub_0316c4ea[address(arg1)][sub_0316c4ea[address(arg1)]] = numberOfTokensMinted
    if sub_0316c4ea[address(arg1)] < 1:
        revert with 0, 17
    sub_77d9073b[stor6] = sub_0316c4ea[address(arg1)] - 1
    if not arg7:
        mem[ceil32(arg2.length) + 544] = numberOfTokensMinted
        emit Mint(uint256 arg1):
                  Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                  mem[arg2.length + 576 len -arg2.length + ceil32(arg2.length)],
    else:
        stor16[stor6].field_0 = this.address
        stor16[stor6].field_256 = arg7
        emit Mint(numberOfTokensMinted);
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() payable {
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
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
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
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function sub_3ca039f5(?) payable {
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor10.length):
                if 31 < uint255(stor10.length) * 0.5:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor10.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)])
                mem[128] = 256 * stor10.length.field_8
        else:
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 0, 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)])
                mem[128] = 256 * stor10.length.field_8
        mem[ceil32(uint255(stor10.length) * 0.5) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
        if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
            mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)], mem[(2 * ceil32(uint255(stor10.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor10.length) * 0.5)]), 
    if bool(stor10.length) == stor10.length.field_1 < 32:
        revert with 0, 34
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10.length):
            if 31 < uint255(stor10.length) * 0.5:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while (uint255(stor10.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 0, 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
    if ceil32(stor10.length.field_1) > stor10.length.field_1:
        mem[stor10.length.field_1 + ceil32(stor10.length.field_1) + 192] = 0
    return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
}

function sub_4d48417c(?) payable {
    require calldata.size - 4 >= 32
    if stor11[arg1].field_256:
        if stor11[arg1].field_256 == uint255(stor11[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if stor11[arg1].field_256:
            if stor11[arg1].field_256 == uint255(stor11[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor11[arg1].field_256):
                if 31 >= uint255(stor11[arg1].field_256) * 0.5:
                    mem[128] = 256 * stor11[arg1].field_264
                else:
                    mem[128] = stor11[arg1][1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor11[arg1].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor11[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor11[arg1].field_256 == stor11[arg1].field_257 < 32:
                revert with 0, 34
            if stor11[arg1].field_257:
                if 31 >= stor11[arg1].field_257:
                    mem[128] = 256 * stor11[arg1].field_264
                else:
                    mem[128] = stor11[arg1][1].field_0
                    idx = 128
                    s = 0
                    while stor11[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor11[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor11[arg1].field_2048 >= 3:
            revert with 0, 33
        return stor11[arg1].field_0, 
               Array(len=2 * Mask(256, -1, stor11[arg1].field_256), data=mem[128 len ceil32(uint255(stor11[arg1].field_256) * 0.5)]),
               stor11[arg1].field_512,
               stor11[arg1].field_768,
               stor11[arg1].field_1024,
               stor11[arg1].field_1280,
               stor11[arg1].field_1536,
               stor11[arg1].field_1792,
               stor11[arg1].field_2048,
               stor11[arg1].field_2304,
               stor11[arg1].field_2560,
               stor11[arg1].field_2568
    if stor11[arg1].field_256 == stor11[arg1].field_257 < 32:
        revert with 0, 34
    if stor11[arg1].field_256:
        if stor11[arg1].field_256 == uint255(stor11[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor11[arg1].field_256):
            if 31 >= uint255(stor11[arg1].field_256) * 0.5:
                mem[128] = 256 * stor11[arg1].field_264
            else:
                mem[128] = stor11[arg1][1].field_0
                idx = 128
                s = 0
                while (uint255(stor11[arg1].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor11[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor11[arg1].field_256 == stor11[arg1].field_257 < 32:
            revert with 0, 34
        if stor11[arg1].field_257:
            if 31 >= stor11[arg1].field_257:
                mem[128] = 256 * stor11[arg1].field_264
            else:
                mem[128] = stor11[arg1][1].field_0
                idx = 128
                s = 0
                while stor11[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor11[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor11[arg1].field_2048 >= 3:
        revert with 0, 33
    return stor11[arg1].field_0, 
           Array(len=stor11[arg1].field_256, data=mem[128 len ceil32(stor11[arg1].field_257)]),
           stor11[arg1].field_512,
           stor11[arg1].field_768,
           stor11[arg1].field_1024,
           stor11[arg1].field_1280,
           stor11[arg1].field_1536,
           stor11[arg1].field_1792,
           stor11[arg1].field_2048,
           stor11[arg1].field_2304,
           stor11[arg1].field_2560,
           stor11[arg1].field_2568
}

function sub_d1e01950(?) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    if stor11[arg1].field_256:
        if stor11[arg1].field_256 == uint255(stor11[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if stor11[arg1].field_256:
            if stor11[arg1].field_256 == uint255(stor11[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor11[arg1].field_256):
                if 31 >= uint255(stor11[arg1].field_256) * 0.5:
                    mem[864] = 256 * stor11[arg1].field_264
                else:
                    mem[864] = stor11[arg1][1].field_0
                    idx = 864
                    s = 0
                    while (uint255(stor11[arg1].field_256) * 0.5) + 832 > idx:
                        mem[idx + 32] = stor11[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor11[arg1].field_256 == stor11[arg1].field_257 < 32:
                revert with 0, 34
            if stor11[arg1].field_257:
                if 31 >= stor11[arg1].field_257:
                    mem[864] = 256 * stor11[arg1].field_264
                else:
                    mem[864] = stor11[arg1][1].field_0
                    idx = 864
                    s = 0
                    while stor11[arg1].field_257 + 832 > idx:
                        mem[idx + 32] = stor11[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor11[arg1].field_2048 > 2:
            revert with 0, 33
        if stor11[arg1].field_2048 >= 3:
            revert with 0, 33
        return 32, stor11[arg1].field_0, 
               384,
               stor11[arg1].field_512,
               stor11[arg1].field_768,
               stor11[arg1].field_1024,
               stor11[arg1].field_1280,
               stor11[arg1].field_1536,
               stor11[arg1].field_1792,
               stor11[arg1].field_2048,
               stor11[arg1].field_2304,
               stor11[arg1].field_2560,
               stor11[arg1].field_2560,
               2 * Mask(256, -1, stor11[arg1].field_256),
               mem[864 len ceil32(uint255(stor11[arg1].field_256) * 0.5)]
    if stor11[arg1].field_256 == stor11[arg1].field_257 < 32:
        revert with 0, 34
    if stor11[arg1].field_256:
        if stor11[arg1].field_256 == uint255(stor11[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor11[arg1].field_256):
            if 31 >= uint255(stor11[arg1].field_256) * 0.5:
                mem[864] = 256 * stor11[arg1].field_264
            else:
                mem[864] = stor11[arg1][1].field_0
                idx = 864
                s = 0
                while (uint255(stor11[arg1].field_256) * 0.5) + 832 > idx:
                    mem[idx + 32] = stor11[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor11[arg1].field_256 == stor11[arg1].field_257 < 32:
            revert with 0, 34
        if stor11[arg1].field_257:
            if 31 >= stor11[arg1].field_257:
                mem[864] = 256 * stor11[arg1].field_264
            else:
                mem[864] = stor11[arg1][1].field_0
                idx = 864
                s = 0
                while stor11[arg1].field_257 + 832 > idx:
                    mem[idx + 32] = stor11[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor11[arg1].field_2048 > 2:
        revert with 0, 33
    if stor11[arg1].field_2048 >= 3:
        revert with 0, 33
    return 32, stor11[arg1].field_0, 
           384,
           stor11[arg1].field_512,
           stor11[arg1].field_768,
           stor11[arg1].field_1024,
           stor11[arg1].field_1280,
           stor11[arg1].field_1536,
           stor11[arg1].field_1792,
           stor11[arg1].field_2048,
           stor11[arg1].field_2304,
           stor11[arg1].field_2560,
           stor11[arg1].field_2560,
           stor11[arg1].field_256,
           mem[864 len ceil32(stor11[arg1].field_257)]
}

function sub_29a90305(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 384
    require ('cd', 36)[0] <= test266151307()
    require cd[36] + ('cd', 36)[0] + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36)[0] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 4)])) + 417 < 416 or ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 4)])) + 417 > test266151307():
        revert with 0, 65
    require cd[36] + ('cd', 36)[0] + cd[(cd[36] + ('cd', 36)[0] + 4)] + 36 <= calldata.size
    require ('cd', 36)[1] == address(('cd', 36)[1])
    require ('cd', 36)[2] == address(('cd', 36)[2])
    require calldata.size + -cd[36] - 132 >= 96
    if not bool(ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 4)])) + 513 <= test266151307()):
        revert with 0, 65
    require ('cd', 36)[3] == address(('cd', 36)[3])
    require ('cd', 36)[5] == uint32(('cd', 36)[5])
    require ('cd', 36)[7] < 3
    require ('cd', 36)[9] == uint8(('cd', 36)[9])
    require ('cd', 36)[10] == uint8(('cd', 36)[10])
    if stor9 != msg.sender:
        revert with 0, 'Only Market Place'
    require ownerOf[cd[4]]
    if stor11[cd[4]].field_256:
        if stor11[cd[4]].field_256 == uint255(stor11[cd[4]].field_256) * 0.5 < 32:
            revert with 0, 34
    else:
        if stor11[cd[4]].field_256 == stor11[cd[4]].field_257 < 32:
            revert with 0, 34
    if stor11[cd[4]].field_256:
        if stor11[cd[4]].field_256 == uint255(stor11[cd[4]].field_256) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor11[cd[4]].field_256):
            if stor11[cd[4]].field_2048 > 2:
                revert with 0, 33
            if address(('cd', 36)[2]) == stor11[cd[4]].field_768:
                if stor11[cd[4]].field_1024 != address(('cd', 36)[3]):
                    if not stor11[cd[4]].field_1024:
                        sub_73a4b755[address(('cd', 36)[3])]++
                        sub_73a4b755[address(('cd', 36)[3])][sub_73a4b755[address(('cd', 36)[3])]] = cd[4]
                        if sub_73a4b755[address(('cd', 36)[3])] < 1:
                            revert with 0, 17
                        sub_a6f9c016[cd[4]] = sub_73a4b755[address(('cd', 36)[3])] - 1
                    else:
                        if sub_73a4b755[stor11[cd[4]].field_1024] < 1:
                            revert with 0, 17
                        if sub_73a4b755[stor11[cd[4]].field_1024] - 1 >= sub_73a4b755[stor11[cd[4]].field_1024]:
                            revert with 0, 50
                        if sub_a6f9c016[cd[4]] >= sub_73a4b755[stor11[cd[4]].field_1024]:
                            revert with 0, 50
                        sub_73a4b755[stor11[cd[4]].field_1024][stor15[cd[4]]] = sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]]
                        if not sub_73a4b755[stor11[cd[4]].field_1024]:
                            revert with 0, 49
                        sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]] = 0
                        sub_73a4b755[stor11[cd[4]].field_1024]--
                        sub_73a4b755[address(('cd', 36)[3])]++
                        sub_73a4b755[address(('cd', 36)[3])][sub_73a4b755[address(('cd', 36)[3])]] = cd[4]
                        if sub_73a4b755[address(('cd', 36)[3])] < 1:
                            revert with 0, 17
                        sub_a6f9c016[cd[4]] = sub_73a4b755[address(('cd', 36)[3])] - 1
            else:
                if sub_0316c4ea[stor11[cd[4]].field_768] < 1:
                    revert with 0, 17
                if sub_0316c4ea[stor11[cd[4]].field_768] - 1 >= sub_0316c4ea[stor11[cd[4]].field_768]:
                    revert with 0, 50
                if sub_77d9073b[cd[4]] >= sub_0316c4ea[stor11[cd[4]].field_768]:
                    revert with 0, 50
                sub_0316c4ea[stor11[cd[4]].field_768][stor14[cd[4]]] = sub_0316c4ea[stor11[cd[4]].field_768][sub_0316c4ea[stor11[cd[4]].field_768]]
                if not sub_0316c4ea[stor11[cd[4]].field_768]:
                    revert with 0, 49
                sub_0316c4ea[stor11[cd[4]].field_768][sub_0316c4ea[stor11[cd[4]].field_768]] = 0
                sub_0316c4ea[stor11[cd[4]].field_768]--
                sub_0316c4ea[address(('cd', 36)[2])]++
                sub_0316c4ea[address(('cd', 36)[2])][sub_0316c4ea[address(('cd', 36)[2])]] = cd[4]
                if sub_0316c4ea[address(('cd', 36)[2])] < 1:
                    revert with 0, 17
                sub_77d9073b[cd[4]] = sub_0316c4ea[address(('cd', 36)[2])] - 1
                if stor11[cd[4]].field_1024 != address(('cd', 36)[3]):
                    if stor11[cd[4]].field_1024:
                        if sub_73a4b755[stor11[cd[4]].field_1024] < 1:
                            revert with 0, 17
                        if sub_73a4b755[stor11[cd[4]].field_1024] - 1 >= sub_73a4b755[stor11[cd[4]].field_1024]:
                            revert with 0, 50
                        if sub_a6f9c016[cd[4]] >= sub_73a4b755[stor11[cd[4]].field_1024]:
                            revert with 0, 50
                        sub_73a4b755[stor11[cd[4]].field_1024][stor15[cd[4]]] = sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]]
                        if not sub_73a4b755[stor11[cd[4]].field_1024]:
                            revert with 0, 49
                        sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]] = 0
                        sub_73a4b755[stor11[cd[4]].field_1024]--
                    sub_73a4b755[address(('cd', 36)[3])]++
                    sub_73a4b755[address(('cd', 36)[3])][sub_73a4b755[address(('cd', 36)[3])]] = cd[4]
                    if sub_73a4b755[address(('cd', 36)[3])] < 1:
                        revert with 0, 17
                    sub_a6f9c016[cd[4]] = sub_73a4b755[address(('cd', 36)[3])] - 1
            stor11[cd[4]].field_0 = ('cd', 36).length
            if stor11[cd[4]].field_256:
                if stor11[cd[4]].field_256 == uint255(stor11[cd[4]].field_256) * 0.5 < 32:
                    revert with 0, 34
                if cd[(cd[36] + ('cd', 36)[0] + 4)]:
                    stor11[cd[4]][1][].field_0 = Array(len=cd[(cd[36] + ('cd', 36)[0] + 4)], data=call.data[cd[36] + ('cd', 36)[0] + 36 len cd[(cd[36] + ('cd', 36)[0] + 4)]])
                else:
                    stor11[cd[4]].field_256 = 0
                    idx = 0
                    while (uint255(stor11[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                        stor11[cd[4]][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor11[cd[4]].field_256 == stor11[cd[4]].field_257 < 32:
                    revert with 0, 34
                if cd[(cd[36] + ('cd', 36)[0] + 4)]:
                    stor11[cd[4]][1][].field_0 = Array(len=cd[(cd[36] + ('cd', 36)[0] + 4)], data=call.data[cd[36] + ('cd', 36)[0] + 36 len cd[(cd[36] + ('cd', 36)[0] + 4)]])
                else:
                    stor11[cd[4]].field_256 = 0
                    idx = 0
                    while stor11[cd[4]].field_257 + 31 / 32 > idx:
                        stor11[cd[4]][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            stor11[cd[4]].field_512 = address(('cd', 36)[1])
            stor11[cd[4]].field_768 = address(('cd', 36)[2])
            stor11[cd[4]].field_1024 = address(('cd', 36)[3])
            stor11[cd[4]].field_1280 = ('cd', 36)[4]
            stor11[cd[4]].field_1536 = uint32(('cd', 36)[5])
            stor11[cd[4]].field_1792 = ('cd', 36)[6]
            if ('cd', 36)[7] > 2:
                revert with 0, 33
            stor11[cd[4]].field_2048 = ('cd', 36)[7] or Mask(248, 8, stor11[cd[4]].field_2048)
        else:
            if 31 >= uint255(stor11[cd[4]].field_256) * 0.5:
                if stor11[cd[4]].field_2048 > 2:
                    revert with 0, 33
                if address(('cd', 36)[2]) == stor11[cd[4]].field_768:
                    if stor11[cd[4]].field_1024 != address(('cd', 36)[3]):
                        if not stor11[cd[4]].field_1024:
                            sub_73a4b755[address(('cd', 36)[3])]++
                            sub_73a4b755[address(('cd', 36)[3])][sub_73a4b755[address(('cd', 36)[3])]] = cd[4]
                            if sub_73a4b755[address(('cd', 36)[3])] < 1:
                                revert with 0, 17
                            sub_a6f9c016[cd[4]] = sub_73a4b755[address(('cd', 36)[3])] - 1
                        else:
                            if sub_73a4b755[stor11[cd[4]].field_1024] < 1:
                                revert with 0, 17
                            if sub_73a4b755[stor11[cd[4]].field_1024] - 1 >= sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 50
                            if sub_a6f9c016[cd[4]] >= sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 50
                            sub_73a4b755[stor11[cd[4]].field_1024][stor15[cd[4]]] = sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]]
                            if not sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 49
                            sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]] = 0
                            sub_73a4b755[stor11[cd[4]].field_1024]--
                            sub_73a4b755[address(('cd', 36)[3])]++
                            sub_73a4b755[address(('cd', 36)[3])][sub_73a4b755[address(('cd', 36)[3])]] = cd[4]
                            if sub_73a4b755[address(('cd', 36)[3])] < 1:
                                revert with 0, 17
                            sub_a6f9c016[cd[4]] = sub_73a4b755[address(('cd', 36)[3])] - 1
                else:
                    if sub_0316c4ea[stor11[cd[4]].field_768] < 1:
                        revert with 0, 17
                    if sub_0316c4ea[stor11[cd[4]].field_768] - 1 >= sub_0316c4ea[stor11[cd[4]].field_768]:
                        revert with 0, 50
                    if sub_77d9073b[cd[4]] >= sub_0316c4ea[stor11[cd[4]].field_768]:
                        revert with 0, 50
                    sub_0316c4ea[stor11[cd[4]].field_768][stor14[cd[4]]] = sub_0316c4ea[stor11[cd[4]].field_768][sub_0316c4ea[stor11[cd[4]].field_768]]
                    if not sub_0316c4ea[stor11[cd[4]].field_768]:
                        revert with 0, 49
                    sub_0316c4ea[stor11[cd[4]].field_768][sub_0316c4ea[stor11[cd[4]].field_768]] = 0
                    sub_0316c4ea[stor11[cd[4]].field_768]--
                    sub_0316c4ea[address(('cd', 36)[2])]++
                    sub_0316c4ea[address(('cd', 36)[2])][sub_0316c4ea[address(('cd', 36)[2])]] = cd[4]
                    if sub_0316c4ea[address(('cd', 36)[2])] < 1:
                        revert with 0, 17
                    sub_77d9073b[cd[4]] = sub_0316c4ea[address(('cd', 36)[2])] - 1
                    if stor11[cd[4]].field_1024 != address(('cd', 36)[3]):
                        if stor11[cd[4]].field_1024:
                            if sub_73a4b755[stor11[cd[4]].field_1024] < 1:
                                revert with 0, 17
                            if sub_73a4b755[stor11[cd[4]].field_1024] - 1 >= sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 50
                            if sub_a6f9c016[cd[4]] >= sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 50
                            sub_73a4b755[stor11[cd[4]].field_1024][stor15[cd[4]]] = sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]]
                            if not sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 49
                            sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]] = 0
                            sub_73a4b755[stor11[cd[4]].field_1024]--
                        sub_73a4b755[address(('cd', 36)[3])]++
                        sub_73a4b755[address(('cd', 36)[3])][sub_73a4b755[address(('cd', 36)[3])]] = cd[4]
                        if sub_73a4b755[address(('cd', 36)[3])] < 1:
                            revert with 0, 17
                        sub_a6f9c016[cd[4]] = sub_73a4b755[address(('cd', 36)[3])] - 1
                stor11[cd[4]].field_0 = ('cd', 36).length
                if stor11[cd[4]].field_256:
                    if stor11[cd[4]].field_256 == uint255(stor11[cd[4]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if cd[(cd[36] + ('cd', 36)[0] + 4)]:
                        stor11[cd[4]][1][].field_0 = Array(len=cd[(cd[36] + ('cd', 36)[0] + 4)], data=call.data[cd[36] + ('cd', 36)[0] + 36 len cd[(cd[36] + ('cd', 36)[0] + 4)]])
                    else:
                        stor11[cd[4]].field_256 = 0
                        idx = 0
                        while (uint255(stor11[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                            stor11[cd[4]][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor11[cd[4]].field_256 == stor11[cd[4]].field_257 < 32:
                        revert with 0, 34
                    if cd[(cd[36] + ('cd', 36)[0] + 4)]:
                        stor11[cd[4]][1][].field_0 = Array(len=cd[(cd[36] + ('cd', 36)[0] + 4)], data=call.data[cd[36] + ('cd', 36)[0] + 36 len cd[(cd[36] + ('cd', 36)[0] + 4)]])
                    else:
                        stor11[cd[4]].field_256 = 0
                        idx = 0
                        while stor11[cd[4]].field_257 + 31 / 32 > idx:
                            stor11[cd[4]][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                stor11[cd[4]].field_512 = address(('cd', 36)[1])
                stor11[cd[4]].field_768 = address(('cd', 36)[2])
                stor11[cd[4]].field_1024 = address(('cd', 36)[3])
                stor11[cd[4]].field_1280 = ('cd', 36)[4]
                stor11[cd[4]].field_1536 = uint32(('cd', 36)[5])
                stor11[cd[4]].field_1792 = ('cd', 36)[6]
                if ('cd', 36)[7] > 2:
                    revert with 0, 33
                stor11[cd[4]].field_2048 = ('cd', 36)[7] or Mask(248, 8, stor11[cd[4]].field_2048)
            else:
                idx = ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 4)])) + 865
                s = 0
                while ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 4)])) + (uint255(stor11[cd[4]].field_256) * 0.5) + 833 > idx:
                    mem[idx + 32] = stor11[cd[4]][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor11[cd[4]].field_2048 > 2:
                    revert with 0, 33
                if address(('cd', 36)[2]) == stor11[cd[4]].field_768:
                    if stor11[cd[4]].field_1024 != address(('cd', 36)[3]):
                        if not stor11[cd[4]].field_1024:
                            sub_73a4b755[address(('cd', 36)[3])]++
                            sub_73a4b755[address(('cd', 36)[3])][sub_73a4b755[address(('cd', 36)[3])]] = cd[4]
                            if sub_73a4b755[address(('cd', 36)[3])] < 1:
                                revert with 0, 17
                            sub_a6f9c016[cd[4]] = sub_73a4b755[address(('cd', 36)[3])] - 1
                        else:
                            if sub_73a4b755[stor11[cd[4]].field_1024] < 1:
                                revert with 0, 17
                            if sub_73a4b755[stor11[cd[4]].field_1024] - 1 >= sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 50
                            if sub_a6f9c016[cd[4]] >= sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 50
                            sub_73a4b755[stor11[cd[4]].field_1024][stor15[cd[4]]] = sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]]
                            if not sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 49
                            sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]] = 0
                            sub_73a4b755[stor11[cd[4]].field_1024]--
                            sub_73a4b755[address(('cd', 36)[3])]++
                            sub_73a4b755[address(('cd', 36)[3])][sub_73a4b755[address(('cd', 36)[3])]] = cd[4]
                            if sub_73a4b755[address(('cd', 36)[3])] < 1:
                                revert with 0, 17
                            sub_a6f9c016[cd[4]] = sub_73a4b755[address(('cd', 36)[3])] - 1
                else:
                    if sub_0316c4ea[stor11[cd[4]].field_768] < 1:
                        revert with 0, 17
                    if sub_0316c4ea[stor11[cd[4]].field_768] - 1 >= sub_0316c4ea[stor11[cd[4]].field_768]:
                        revert with 0, 50
                    if sub_77d9073b[cd[4]] >= sub_0316c4ea[stor11[cd[4]].field_768]:
                        revert with 0, 50
                    sub_0316c4ea[stor11[cd[4]].field_768][stor14[cd[4]]] = sub_0316c4ea[stor11[cd[4]].field_768][sub_0316c4ea[stor11[cd[4]].field_768]]
                    if not sub_0316c4ea[stor11[cd[4]].field_768]:
                        revert with 0, 49
                    sub_0316c4ea[stor11[cd[4]].field_768][sub_0316c4ea[stor11[cd[4]].field_768]] = 0
                    sub_0316c4ea[stor11[cd[4]].field_768]--
                    sub_0316c4ea[address(('cd', 36)[2])]++
                    sub_0316c4ea[address(('cd', 36)[2])][sub_0316c4ea[address(('cd', 36)[2])]] = cd[4]
                    if sub_0316c4ea[address(('cd', 36)[2])] < 1:
                        revert with 0, 17
                    sub_77d9073b[cd[4]] = sub_0316c4ea[address(('cd', 36)[2])] - 1
                    if stor11[cd[4]].field_1024 != address(('cd', 36)[3]):
                        if stor11[cd[4]].field_1024:
                            if sub_73a4b755[stor11[cd[4]].field_1024] < 1:
                                revert with 0, 17
                            if sub_73a4b755[stor11[cd[4]].field_1024] - 1 >= sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 50
                            if sub_a6f9c016[cd[4]] >= sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 50
                            sub_73a4b755[stor11[cd[4]].field_1024][stor15[cd[4]]] = sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]]
                            if not sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 49
                            sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]] = 0
                            sub_73a4b755[stor11[cd[4]].field_1024]--
                        sub_73a4b755[address(('cd', 36)[3])]++
                        sub_73a4b755[address(('cd', 36)[3])][sub_73a4b755[address(('cd', 36)[3])]] = cd[4]
                        if sub_73a4b755[address(('cd', 36)[3])] < 1:
                            revert with 0, 17
                        sub_a6f9c016[cd[4]] = sub_73a4b755[address(('cd', 36)[3])] - 1
                stor11[cd[4]].field_0 = ('cd', 36).length
                if stor11[cd[4]].field_256:
                    if stor11[cd[4]].field_256 == uint255(stor11[cd[4]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if cd[(cd[36] + ('cd', 36)[0] + 4)]:
                        stor11[cd[4]][1][].field_0 = Array(len=cd[(cd[36] + ('cd', 36)[0] + 4)], data=call.data[cd[36] + ('cd', 36)[0] + 36 len cd[(cd[36] + ('cd', 36)[0] + 4)]])
                    else:
                        stor11[cd[4]].field_256 = 0
                        idx = 0
                        while (uint255(stor11[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                            stor11[cd[4]][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor11[cd[4]].field_256 == stor11[cd[4]].field_257 < 32:
                        revert with 0, 34
                    if cd[(cd[36] + ('cd', 36)[0] + 4)]:
                        stor11[cd[4]][1][].field_0 = Array(len=cd[(cd[36] + ('cd', 36)[0] + 4)], data=call.data[cd[36] + ('cd', 36)[0] + 36 len cd[(cd[36] + ('cd', 36)[0] + 4)]])
                    else:
                        stor11[cd[4]].field_256 = 0
                        idx = 0
                        while stor11[cd[4]].field_257 + 31 / 32 > idx:
                            stor11[cd[4]][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                stor11[cd[4]].field_512 = address(('cd', 36)[1])
                stor11[cd[4]].field_768 = address(('cd', 36)[2])
                stor11[cd[4]].field_1024 = address(('cd', 36)[3])
                stor11[cd[4]].field_1280 = ('cd', 36)[4]
                stor11[cd[4]].field_1536 = uint32(('cd', 36)[5])
                stor11[cd[4]].field_1792 = ('cd', 36)[6]
                if ('cd', 36)[7] > 2:
                    revert with 0, 33
                stor11[cd[4]].field_2048 = ('cd', 36)[7]
    else:
        if stor11[cd[4]].field_256 == stor11[cd[4]].field_257 < 32:
            revert with 0, 34
        if not stor11[cd[4]].field_257:
            if stor11[cd[4]].field_2048 > 2:
                revert with 0, 33
            if address(('cd', 36)[2]) == stor11[cd[4]].field_768:
                if stor11[cd[4]].field_1024 != address(('cd', 36)[3]):
                    if not stor11[cd[4]].field_1024:
                        sub_73a4b755[address(('cd', 36)[3])]++
                        sub_73a4b755[address(('cd', 36)[3])][sub_73a4b755[address(('cd', 36)[3])]] = cd[4]
                        if sub_73a4b755[address(('cd', 36)[3])] < 1:
                            revert with 0, 17
                        sub_a6f9c016[cd[4]] = sub_73a4b755[address(('cd', 36)[3])] - 1
                    else:
                        if sub_73a4b755[stor11[cd[4]].field_1024] < 1:
                            revert with 0, 17
                        if sub_73a4b755[stor11[cd[4]].field_1024] - 1 >= sub_73a4b755[stor11[cd[4]].field_1024]:
                            revert with 0, 50
                        if sub_a6f9c016[cd[4]] >= sub_73a4b755[stor11[cd[4]].field_1024]:
                            revert with 0, 50
                        sub_73a4b755[stor11[cd[4]].field_1024][stor15[cd[4]]] = sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]]
                        if not sub_73a4b755[stor11[cd[4]].field_1024]:
                            revert with 0, 49
                        sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]] = 0
                        sub_73a4b755[stor11[cd[4]].field_1024]--
                        sub_73a4b755[address(('cd', 36)[3])]++
                        sub_73a4b755[address(('cd', 36)[3])][sub_73a4b755[address(('cd', 36)[3])]] = cd[4]
                        if sub_73a4b755[address(('cd', 36)[3])] < 1:
                            revert with 0, 17
                        sub_a6f9c016[cd[4]] = sub_73a4b755[address(('cd', 36)[3])] - 1
            else:
                if sub_0316c4ea[stor11[cd[4]].field_768] < 1:
                    revert with 0, 17
                if sub_0316c4ea[stor11[cd[4]].field_768] - 1 >= sub_0316c4ea[stor11[cd[4]].field_768]:
                    revert with 0, 50
                if sub_77d9073b[cd[4]] >= sub_0316c4ea[stor11[cd[4]].field_768]:
                    revert with 0, 50
                sub_0316c4ea[stor11[cd[4]].field_768][stor14[cd[4]]] = sub_0316c4ea[stor11[cd[4]].field_768][sub_0316c4ea[stor11[cd[4]].field_768]]
                if not sub_0316c4ea[stor11[cd[4]].field_768]:
                    revert with 0, 49
                sub_0316c4ea[stor11[cd[4]].field_768][sub_0316c4ea[stor11[cd[4]].field_768]] = 0
                sub_0316c4ea[stor11[cd[4]].field_768]--
                sub_0316c4ea[address(('cd', 36)[2])]++
                sub_0316c4ea[address(('cd', 36)[2])][sub_0316c4ea[address(('cd', 36)[2])]] = cd[4]
                if sub_0316c4ea[address(('cd', 36)[2])] < 1:
                    revert with 0, 17
                sub_77d9073b[cd[4]] = sub_0316c4ea[address(('cd', 36)[2])] - 1
                if stor11[cd[4]].field_1024 != address(('cd', 36)[3]):
                    if stor11[cd[4]].field_1024:
                        if sub_73a4b755[stor11[cd[4]].field_1024] < 1:
                            revert with 0, 17
                        if sub_73a4b755[stor11[cd[4]].field_1024] - 1 >= sub_73a4b755[stor11[cd[4]].field_1024]:
                            revert with 0, 50
                        if sub_a6f9c016[cd[4]] >= sub_73a4b755[stor11[cd[4]].field_1024]:
                            revert with 0, 50
                        sub_73a4b755[stor11[cd[4]].field_1024][stor15[cd[4]]] = sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]]
                        if not sub_73a4b755[stor11[cd[4]].field_1024]:
                            revert with 0, 49
                        sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]] = 0
                        sub_73a4b755[stor11[cd[4]].field_1024]--
                    sub_73a4b755[address(('cd', 36)[3])]++
                    sub_73a4b755[address(('cd', 36)[3])][sub_73a4b755[address(('cd', 36)[3])]] = cd[4]
                    if sub_73a4b755[address(('cd', 36)[3])] < 1:
                        revert with 0, 17
                    sub_a6f9c016[cd[4]] = sub_73a4b755[address(('cd', 36)[3])] - 1
            stor11[cd[4]].field_0 = ('cd', 36).length
            if stor11[cd[4]].field_256:
                if stor11[cd[4]].field_256 == uint255(stor11[cd[4]].field_256) * 0.5 < 32:
                    revert with 0, 34
                if cd[(cd[36] + ('cd', 36)[0] + 4)]:
                    stor11[cd[4]][1][].field_0 = Array(len=cd[(cd[36] + ('cd', 36)[0] + 4)], data=call.data[cd[36] + ('cd', 36)[0] + 36 len cd[(cd[36] + ('cd', 36)[0] + 4)]])
                else:
                    stor11[cd[4]].field_256 = 0
                    idx = 0
                    while (uint255(stor11[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                        stor11[cd[4]][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor11[cd[4]].field_256 == stor11[cd[4]].field_257 < 32:
                    revert with 0, 34
                if cd[(cd[36] + ('cd', 36)[0] + 4)]:
                    stor11[cd[4]][1][].field_0 = Array(len=cd[(cd[36] + ('cd', 36)[0] + 4)], data=call.data[cd[36] + ('cd', 36)[0] + 36 len cd[(cd[36] + ('cd', 36)[0] + 4)]])
                else:
                    stor11[cd[4]].field_256 = 0
                    idx = 0
                    while stor11[cd[4]].field_257 + 31 / 32 > idx:
                        stor11[cd[4]][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            stor11[cd[4]].field_512 = address(('cd', 36)[1])
            stor11[cd[4]].field_768 = address(('cd', 36)[2])
            stor11[cd[4]].field_1024 = address(('cd', 36)[3])
            stor11[cd[4]].field_1280 = ('cd', 36)[4]
            stor11[cd[4]].field_1536 = uint32(('cd', 36)[5])
            stor11[cd[4]].field_1792 = ('cd', 36)[6]
            if ('cd', 36)[7] > 2:
                revert with 0, 33
            stor11[cd[4]].field_2048 = ('cd', 36)[7] or Mask(248, 8, stor11[cd[4]].field_2048)
        else:
            if 31 >= stor11[cd[4]].field_257:
                if stor11[cd[4]].field_2048 > 2:
                    revert with 0, 33
                if address(('cd', 36)[2]) == stor11[cd[4]].field_768:
                    if stor11[cd[4]].field_1024 != address(('cd', 36)[3]):
                        if not stor11[cd[4]].field_1024:
                            sub_73a4b755[address(('cd', 36)[3])]++
                            sub_73a4b755[address(('cd', 36)[3])][sub_73a4b755[address(('cd', 36)[3])]] = cd[4]
                            if sub_73a4b755[address(('cd', 36)[3])] < 1:
                                revert with 0, 17
                            sub_a6f9c016[cd[4]] = sub_73a4b755[address(('cd', 36)[3])] - 1
                        else:
                            if sub_73a4b755[stor11[cd[4]].field_1024] < 1:
                                revert with 0, 17
                            if sub_73a4b755[stor11[cd[4]].field_1024] - 1 >= sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 50
                            if sub_a6f9c016[cd[4]] >= sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 50
                            sub_73a4b755[stor11[cd[4]].field_1024][stor15[cd[4]]] = sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]]
                            if not sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 49
                            sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]] = 0
                            sub_73a4b755[stor11[cd[4]].field_1024]--
                            sub_73a4b755[address(('cd', 36)[3])]++
                            sub_73a4b755[address(('cd', 36)[3])][sub_73a4b755[address(('cd', 36)[3])]] = cd[4]
                            if sub_73a4b755[address(('cd', 36)[3])] < 1:
                                revert with 0, 17
                            sub_a6f9c016[cd[4]] = sub_73a4b755[address(('cd', 36)[3])] - 1
                else:
                    if sub_0316c4ea[stor11[cd[4]].field_768] < 1:
                        revert with 0, 17
                    if sub_0316c4ea[stor11[cd[4]].field_768] - 1 >= sub_0316c4ea[stor11[cd[4]].field_768]:
                        revert with 0, 50
                    if sub_77d9073b[cd[4]] >= sub_0316c4ea[stor11[cd[4]].field_768]:
                        revert with 0, 50
                    sub_0316c4ea[stor11[cd[4]].field_768][stor14[cd[4]]] = sub_0316c4ea[stor11[cd[4]].field_768][sub_0316c4ea[stor11[cd[4]].field_768]]
                    if not sub_0316c4ea[stor11[cd[4]].field_768]:
                        revert with 0, 49
                    sub_0316c4ea[stor11[cd[4]].field_768][sub_0316c4ea[stor11[cd[4]].field_768]] = 0
                    sub_0316c4ea[stor11[cd[4]].field_768]--
                    sub_0316c4ea[address(('cd', 36)[2])]++
                    sub_0316c4ea[address(('cd', 36)[2])][sub_0316c4ea[address(('cd', 36)[2])]] = cd[4]
                    if sub_0316c4ea[address(('cd', 36)[2])] < 1:
                        revert with 0, 17
                    sub_77d9073b[cd[4]] = sub_0316c4ea[address(('cd', 36)[2])] - 1
                    if stor11[cd[4]].field_1024 != address(('cd', 36)[3]):
                        if stor11[cd[4]].field_1024:
                            if sub_73a4b755[stor11[cd[4]].field_1024] < 1:
                                revert with 0, 17
                            if sub_73a4b755[stor11[cd[4]].field_1024] - 1 >= sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 50
                            if sub_a6f9c016[cd[4]] >= sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 50
                            sub_73a4b755[stor11[cd[4]].field_1024][stor15[cd[4]]] = sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]]
                            if not sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 49
                            sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]] = 0
                            sub_73a4b755[stor11[cd[4]].field_1024]--
                        sub_73a4b755[address(('cd', 36)[3])]++
                        sub_73a4b755[address(('cd', 36)[3])][sub_73a4b755[address(('cd', 36)[3])]] = cd[4]
                        if sub_73a4b755[address(('cd', 36)[3])] < 1:
                            revert with 0, 17
                        sub_a6f9c016[cd[4]] = sub_73a4b755[address(('cd', 36)[3])] - 1
                stor11[cd[4]].field_0 = ('cd', 36).length
                if stor11[cd[4]].field_256:
                    if stor11[cd[4]].field_256 == uint255(stor11[cd[4]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if cd[(cd[36] + ('cd', 36)[0] + 4)]:
                        stor11[cd[4]][1][].field_0 = Array(len=cd[(cd[36] + ('cd', 36)[0] + 4)], data=call.data[cd[36] + ('cd', 36)[0] + 36 len cd[(cd[36] + ('cd', 36)[0] + 4)]])
                    else:
                        stor11[cd[4]].field_256 = 0
                        idx = 0
                        while (uint255(stor11[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                            stor11[cd[4]][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor11[cd[4]].field_256 == stor11[cd[4]].field_257 < 32:
                        revert with 0, 34
                    if cd[(cd[36] + ('cd', 36)[0] + 4)]:
                        stor11[cd[4]][1][].field_0 = Array(len=cd[(cd[36] + ('cd', 36)[0] + 4)], data=call.data[cd[36] + ('cd', 36)[0] + 36 len cd[(cd[36] + ('cd', 36)[0] + 4)]])
                    else:
                        stor11[cd[4]].field_256 = 0
                        idx = 0
                        while stor11[cd[4]].field_257 + 31 / 32 > idx:
                            stor11[cd[4]][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                stor11[cd[4]].field_512 = address(('cd', 36)[1])
                stor11[cd[4]].field_768 = address(('cd', 36)[2])
                stor11[cd[4]].field_1024 = address(('cd', 36)[3])
                stor11[cd[4]].field_1280 = ('cd', 36)[4]
                stor11[cd[4]].field_1536 = uint32(('cd', 36)[5])
                stor11[cd[4]].field_1792 = ('cd', 36)[6]
                if ('cd', 36)[7] > 2:
                    revert with 0, 33
                stor11[cd[4]].field_2048 = ('cd', 36)[7] or Mask(248, 8, stor11[cd[4]].field_2048)
            else:
                idx = ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 4)])) + 865
                s = 0
                while ceil32(ceil32(cd[(cd[36] + ('cd', 36)[0] + 4)])) + stor11[cd[4]].field_257 + 833 > idx:
                    mem[idx + 32] = stor11[cd[4]][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor11[cd[4]].field_2048 > 2:
                    revert with 0, 33
                if address(('cd', 36)[2]) == stor11[cd[4]].field_768:
                    if stor11[cd[4]].field_1024 != address(('cd', 36)[3]):
                        if not stor11[cd[4]].field_1024:
                            sub_73a4b755[address(('cd', 36)[3])]++
                            sub_73a4b755[address(('cd', 36)[3])][sub_73a4b755[address(('cd', 36)[3])]] = cd[4]
                            if sub_73a4b755[address(('cd', 36)[3])] < 1:
                                revert with 0, 17
                            sub_a6f9c016[cd[4]] = sub_73a4b755[address(('cd', 36)[3])] - 1
                        else:
                            if sub_73a4b755[stor11[cd[4]].field_1024] < 1:
                                revert with 0, 17
                            if sub_73a4b755[stor11[cd[4]].field_1024] - 1 >= sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 50
                            if sub_a6f9c016[cd[4]] >= sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 50
                            sub_73a4b755[stor11[cd[4]].field_1024][stor15[cd[4]]] = sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]]
                            if not sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 49
                            sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]] = 0
                            sub_73a4b755[stor11[cd[4]].field_1024]--
                            sub_73a4b755[address(('cd', 36)[3])]++
                            sub_73a4b755[address(('cd', 36)[3])][sub_73a4b755[address(('cd', 36)[3])]] = cd[4]
                            if sub_73a4b755[address(('cd', 36)[3])] < 1:
                                revert with 0, 17
                            sub_a6f9c016[cd[4]] = sub_73a4b755[address(('cd', 36)[3])] - 1
                else:
                    if sub_0316c4ea[stor11[cd[4]].field_768] < 1:
                        revert with 0, 17
                    if sub_0316c4ea[stor11[cd[4]].field_768] - 1 >= sub_0316c4ea[stor11[cd[4]].field_768]:
                        revert with 0, 50
                    if sub_77d9073b[cd[4]] >= sub_0316c4ea[stor11[cd[4]].field_768]:
                        revert with 0, 50
                    sub_0316c4ea[stor11[cd[4]].field_768][stor14[cd[4]]] = sub_0316c4ea[stor11[cd[4]].field_768][sub_0316c4ea[stor11[cd[4]].field_768]]
                    if not sub_0316c4ea[stor11[cd[4]].field_768]:
                        revert with 0, 49
                    sub_0316c4ea[stor11[cd[4]].field_768][sub_0316c4ea[stor11[cd[4]].field_768]] = 0
                    sub_0316c4ea[stor11[cd[4]].field_768]--
                    sub_0316c4ea[address(('cd', 36)[2])]++
                    sub_0316c4ea[address(('cd', 36)[2])][sub_0316c4ea[address(('cd', 36)[2])]] = cd[4]
                    if sub_0316c4ea[address(('cd', 36)[2])] < 1:
                        revert with 0, 17
                    sub_77d9073b[cd[4]] = sub_0316c4ea[address(('cd', 36)[2])] - 1
                    if stor11[cd[4]].field_1024 != address(('cd', 36)[3]):
                        if stor11[cd[4]].field_1024:
                            if sub_73a4b755[stor11[cd[4]].field_1024] < 1:
                                revert with 0, 17
                            if sub_73a4b755[stor11[cd[4]].field_1024] - 1 >= sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 50
                            if sub_a6f9c016[cd[4]] >= sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 50
                            sub_73a4b755[stor11[cd[4]].field_1024][stor15[cd[4]]] = sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]]
                            if not sub_73a4b755[stor11[cd[4]].field_1024]:
                                revert with 0, 49
                            sub_73a4b755[stor11[cd[4]].field_1024][sub_73a4b755[stor11[cd[4]].field_1024]] = 0
                            sub_73a4b755[stor11[cd[4]].field_1024]--
                        sub_73a4b755[address(('cd', 36)[3])]++
                        sub_73a4b755[address(('cd', 36)[3])][sub_73a4b755[address(('cd', 36)[3])]] = cd[4]
                        if sub_73a4b755[address(('cd', 36)[3])] < 1:
                            revert with 0, 17
                        sub_a6f9c016[cd[4]] = sub_73a4b755[address(('cd', 36)[3])] - 1
                stor11[cd[4]].field_0 = ('cd', 36).length
                if stor11[cd[4]].field_256:
                    if stor11[cd[4]].field_256 == uint255(stor11[cd[4]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if cd[(cd[36] + ('cd', 36)[0] + 4)]:
                        stor11[cd[4]][1][].field_0 = Array(len=cd[(cd[36] + ('cd', 36)[0] + 4)], data=call.data[cd[36] + ('cd', 36)[0] + 36 len cd[(cd[36] + ('cd', 36)[0] + 4)]])
                    else:
                        stor11[cd[4]].field_256 = 0
                        idx = 0
                        while (uint255(stor11[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                            stor11[cd[4]][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor11[cd[4]].field_256 == stor11[cd[4]].field_257 < 32:
                        revert with 0, 34
                    if cd[(cd[36] + ('cd', 36)[0] + 4)]:
                        stor11[cd[4]][1][].field_0 = Array(len=cd[(cd[36] + ('cd', 36)[0] + 4)], data=call.data[cd[36] + ('cd', 36)[0] + 36 len cd[(cd[36] + ('cd', 36)[0] + 4)]])
                    else:
                        stor11[cd[4]].field_256 = 0
                        idx = 0
                        while stor11[cd[4]].field_257 + 31 / 32 > idx:
                            stor11[cd[4]][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                stor11[cd[4]].field_512 = address(('cd', 36)[1])
                stor11[cd[4]].field_768 = address(('cd', 36)[2])
                stor11[cd[4]].field_1024 = address(('cd', 36)[3])
                stor11[cd[4]].field_1280 = ('cd', 36)[4]
                stor11[cd[4]].field_1536 = uint32(('cd', 36)[5])
                stor11[cd[4]].field_1792 = ('cd', 36)[6]
                if ('cd', 36)[7] > 2:
                    revert with 0, 33
                stor11[cd[4]].field_2048 = ('cd', 36)[7]
    stor11[cd[4]].field_2304 = ('cd', 36)[8]
    stor11[cd[4]].field_2560 = uint8(('cd', 36)[9])
    stor11[cd[4]].field_2568 = uint8(('cd', 36)[10])
    emit Update(cd[4]);
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    require ownerOf[arg1]
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        mem[96] = uint255(stor10.length) * 0.5
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor10.length):
                if not arg1:
                    mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 225] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 239] = 32
                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 271] = mem[ceil32(uint255(stor10.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 303 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])] = mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 192]:
                        return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + 192], data=mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 303 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]), 
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 192] + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 303] = 0
                    return 32, mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 271 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(uint255(stor10.length) * 0.5) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                    if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                        mem[64] = ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
                        if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                            _3536 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3536)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3536)]
                            if ceil32(_3536) > _3536:
                                mem[_3536 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                            return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3536) + 32], 
                        _3537 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3537)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3537)]
                        if ceil32(_3537) > _3537:
                            mem[_3537 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                        return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3537) + 32], 
                    mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                    mem[64] = ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
                    if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        _3538 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3538)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3538)]
                        if ceil32(_3538) > _3538:
                            mem[_3538 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                        return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3538) + 32], 
                    _3539 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3539)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3539)]
                    if ceil32(_3539) > _3539:
                        mem[_3539 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                    return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3539) + 32], 
                mem[ceil32(uint255(stor10.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                    mem[64] = ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
                    if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        _3540 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3540)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3540)]
                        if ceil32(_3540) > _3540:
                            mem[_3540 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                        return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3540) + 32], 
                    _3541 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3541)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3541)]
                    if ceil32(_3541) > _3541:
                        mem[_3541 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                    return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3541) + 32], 
                mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                mem[64] = ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    _3542 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3542)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3542)]
                    if ceil32(_3542) > _3542:
                        mem[_3542 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                    return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3542) + 32], 
                _3543 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3543)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3543)]
                if ceil32(_3543) > _3543:
                    mem[_3543 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3543) + 32], 
            if 31 >= uint255(stor10.length) * 0.5:
                mem[128] = 256 * stor10.length.field_8
                if not arg1:
                    mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 225] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 239] = 32
                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 271] = mem[ceil32(uint255(stor10.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 303 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])] = mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 192]:
                        return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + 192], data=mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 303 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]), 
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 192] + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 303] = 0
                    return 32, mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 271 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(uint255(stor10.length) * 0.5) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                    if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
                        if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                            _3544 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3544)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3544)]
                            if ceil32(_3544) > _3544:
                                mem[_3544 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                            return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3544) + 32], 
                        _3545 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3545)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3545)]
                        if ceil32(_3545) > _3545:
                            mem[_3545 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                        return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3545) + 32], 
                    mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
                    if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        _3546 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3546)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3546)]
                        if ceil32(_3546) > _3546:
                            mem[_3546 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                        return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3546) + 32], 
                    _3547 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3547)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3547)]
                    if ceil32(_3547) > _3547:
                        mem[_3547 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                    return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3547) + 32], 
                mem[ceil32(uint255(stor10.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
                    if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        _3548 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3548)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3548)]
                        if ceil32(_3548) > _3548:
                            mem[_3548 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                        return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3548) + 32], 
                    _3549 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3549)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3549)]
                    if ceil32(_3549) > _3549:
                        mem[_3549 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                    return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3549) + 32], 
                mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    _3550 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3550)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3550)]
                    if ceil32(_3550) > _3550:
                        mem[_3550 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                    return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3550) + 32], 
                _3551 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3551)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3551)]
                if ceil32(_3551) > _3551:
                    mem[_3551 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3551) + 32], 
            mem[0] = 10
            mem[128] = uint256(stor10.field_0)
            idx = 128
            s = 0
            while (uint255(stor10.length) * 0.5) + 96 > idx:
                mem[idx + 32] = stor10[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if not arg1:
                mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 225] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 239] = 32
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 271] = mem[ceil32(uint255(stor10.length) * 0.5) + 192]
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 303 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])] = mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 192]:
                    return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + 192], data=mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 303 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]), 
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 192] + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 303] = 0
                return 32, mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 271 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(uint255(stor10.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                    mem[64] = ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
                    if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        _4256 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_4256)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4256)]
                        if ceil32(_4256) > _4256:
                            mem[_4256 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                        return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_4256) + 32], 
                    _4257 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_4257)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4257)]
                    if ceil32(_4257) > _4257:
                        mem[_4257 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                    return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_4257) + 32], 
                mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                mem[64] = ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    _4258 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_4258)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4258)]
                    if ceil32(_4258) > _4258:
                        mem[_4258 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                    return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_4258) + 32], 
                _4259 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_4259)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4259)]
                if ceil32(_4259) > _4259:
                    mem[_4259 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_4259) + 32], 
            mem[ceil32(uint255(stor10.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
            if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                mem[64] = ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    _4260 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_4260)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4260)]
                    if ceil32(_4260) > _4260:
                        mem[_4260 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                    return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_4260) + 32], 
                _4261 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_4261)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4261)]
                if ceil32(_4261) > _4261:
                    mem[_4261 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_4261) + 32], 
            mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
            mem[64] = ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
            if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                _4262 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_4262)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4262)]
                if ceil32(_4262) > _4262:
                    mem[_4262 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_4262) + 32], 
            _4263 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_4263)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4263)]
            if ceil32(_4263) > _4263:
                mem[_4263 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
            return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_4263) + 32], 
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 0, 34
        if not stor10.length.field_1:
            if not arg1:
                mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 225] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 239] = 32
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 271] = mem[ceil32(uint255(stor10.length) * 0.5) + 192]
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 303 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])] = mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 192]:
                    return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + 192], data=mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 303 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]), 
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 192] + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 303] = 0
                return 32, mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 271 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(uint255(stor10.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                    mem[64] = ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
                    if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        _3552 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3552)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3552)]
                        if ceil32(_3552) > _3552:
                            mem[_3552 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                        return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3552) + 32], 
                    _3553 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3553)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3553)]
                    if ceil32(_3553) > _3553:
                        mem[_3553 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                    return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3553) + 32], 
                mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                mem[64] = ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    _3554 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3554)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3554)]
                    if ceil32(_3554) > _3554:
                        mem[_3554 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                    return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3554) + 32], 
                _3555 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3555)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3555)]
                if ceil32(_3555) > _3555:
                    mem[_3555 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3555) + 32], 
            mem[ceil32(uint255(stor10.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
            if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                mem[64] = ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    _3556 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3556)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3556)]
                    if ceil32(_3556) > _3556:
                        mem[_3556 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                    return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3556) + 32], 
                _3557 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3557)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3557)]
                if ceil32(_3557) > _3557:
                    mem[_3557 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3557) + 32], 
            mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
            mem[64] = ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
            if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                _3558 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3558)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3558)]
                if ceil32(_3558) > _3558:
                    mem[_3558 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3558) + 32], 
            _3559 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3559)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3559)]
            if ceil32(_3559) > _3559:
                mem[_3559 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
            return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3559) + 32], 
        if 31 >= stor10.length.field_1:
            mem[128] = 256 * stor10.length.field_8
            if not arg1:
                mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 225] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 239] = 32
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 271] = mem[ceil32(uint255(stor10.length) * 0.5) + 192]
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 303 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])] = mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 192]:
                    return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + 192], data=mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 303 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]), 
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 192] + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 303] = 0
                return 32, mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 271 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(uint255(stor10.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                    mem[64] = ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
                    if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        _3560 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3560)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3560)]
                        if ceil32(_3560) > _3560:
                            mem[_3560 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                        return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3560) + 32], 
                    _3561 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3561)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3561)]
                    if ceil32(_3561) > _3561:
                        mem[_3561 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                    return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3561) + 32], 
                mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                mem[64] = ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    _3562 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3562)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3562)]
                    if ceil32(_3562) > _3562:
                        mem[_3562 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                    return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3562) + 32], 
                _3563 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3563)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3563)]
                if ceil32(_3563) > _3563:
                    mem[_3563 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3563) + 32], 
            mem[ceil32(uint255(stor10.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
            if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                mem[64] = ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    _3564 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3564)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3564)]
                    if ceil32(_3564) > _3564:
                        mem[_3564 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                    return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3564) + 32], 
                _3565 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3565)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3565)]
                if ceil32(_3565) > _3565:
                    mem[_3565 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3565) + 32], 
            mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
            mem[64] = ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
            if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                _3566 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3566)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3566)]
                if ceil32(_3566) > _3566:
                    mem[_3566 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3566) + 32], 
            _3567 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_3567)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3567)]
            if ceil32(_3567) > _3567:
                mem[_3567 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
            return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_3567) + 32], 
        mem[0] = 10
        mem[128] = uint256(stor10.field_0)
        idx = 128
        s = 0
        while stor10.length.field_1 + 96 > idx:
            mem[idx + 32] = stor10[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not arg1:
            mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
            mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 225] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
            mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 239] = 32
            mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 271] = mem[ceil32(uint255(stor10.length) * 0.5) + 192]
            mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 303 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])] = mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 192]:
                return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + 192], data=mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 303 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]), 
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 192] + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 303] = 0
            return 32, mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 271 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(uint255(stor10.length) * 0.5) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
            if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                mem[64] = ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    _4264 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_4264)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4264)]
                    if ceil32(_4264) > _4264:
                        mem[_4264 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                    return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_4264) + 32], 
                _4265 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_4265)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4265)]
                if ceil32(_4265) > _4265:
                    mem[_4265 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_4265) + 32], 
            mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
            mem[64] = ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
            if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                _4266 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_4266)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4266)]
                if ceil32(_4266) > _4266:
                    mem[_4266 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_4266) + 32], 
            _4267 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_4267)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4267)]
            if ceil32(_4267) > _4267:
                mem[_4267 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
            return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_4267) + 32], 
        mem[ceil32(uint255(stor10.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
        if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
            mem[64] = ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
            if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                _4268 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_4268)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4268)]
                if ceil32(_4268) > _4268:
                    mem[_4268 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
                return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_4268) + 32], 
            _4269 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_4269)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4269)]
            if ceil32(_4269) > _4269:
                mem[_4269 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
            return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_4269) + 32], 
        mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
        mem[64] = ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206
        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 206] = 32
        if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
            _4270 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_4270)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4270)]
            if ceil32(_4270) > _4270:
                mem[_4270 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
            return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_4270) + 32], 
        _4271 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270 len ceil32(_4271)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4271)]
        if ceil32(_4271) > _4271:
            mem[_4271 + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 270] = 0
        return 32, mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + 238 len ceil32(_4271) + 32], 
    if bool(stor10.length) == stor10.length.field_1 < 32:
        revert with 0, 34
    mem[96] = stor10.length.field_1
    if not bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 0, 34
        if not stor10.length.field_1:
            if not arg1:
                mem[ceil32(stor10.length.field_1) + 224 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 225] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 239] = 32
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 271] = mem[ceil32(stor10.length.field_1) + 192]
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 303 len ceil32(mem[ceil32(stor10.length.field_1) + 192])] = mem[ceil32(stor10.length.field_1) + 224 len ceil32(mem[ceil32(stor10.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor10.length.field_1) + 192]) > mem[ceil32(stor10.length.field_1) + 192]:
                    mem[mem[ceil32(stor10.length.field_1) + 192] + ceil32(stor10.length.field_1) + stor10.length.field_1 + 303] = 0
                return Array(len=mem[ceil32(stor10.length.field_1) + 192], data=mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 303 len ceil32(mem[ceil32(stor10.length.field_1) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor10.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor10.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor10.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
                if ceil32(stor10.length.field_1) <= stor10.length.field_1:
                    mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + 192 len ceil32(mem[ceil32(stor10.length.field_1) + 128])] = mem[ceil32(stor10.length.field_1) + 160 len ceil32(mem[ceil32(stor10.length.field_1) + 128])]
                    mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                    mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 206] = 32
                    if ceil32(mem[ceil32(stor10.length.field_1) + 128]) <= mem[ceil32(stor10.length.field_1) + 128]:
                        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor10.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(stor10.length.field_1) + ceil32(s) + 160] + ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270] = 0
                        return 32, mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) + 32], 
                    _3585 = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor10.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(stor10.length.field_1) + ceil32(s) + 160] + ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270] = 0
                    return 32, mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238 len ceil32(_3585) + 32], 
                mem[stor10.length.field_1 + ceil32(stor10.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + 192 len ceil32(mem[ceil32(stor10.length.field_1) + 128])] = mem[ceil32(stor10.length.field_1) + 160 len ceil32(mem[ceil32(stor10.length.field_1) + 128])]
                mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 206] = 32
                mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor10.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]), 
                mem[mem[ceil32(stor10.length.field_1) + ceil32(s) + 160] + ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270] = 0
                return 32, mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) + 32], 
            mem[ceil32(stor10.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor10.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor10.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
            if ceil32(stor10.length.field_1) <= stor10.length.field_1:
                mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + 192 len ceil32(mem[ceil32(stor10.length.field_1) + 128])] = mem[ceil32(stor10.length.field_1) + 160 len ceil32(mem[ceil32(stor10.length.field_1) + 128])]
                mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 206] = 32
                mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor10.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]), 
                mem[mem[ceil32(stor10.length.field_1) + ceil32(s) + 160] + ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270] = 0
                return 32, mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) + 32], 
            mem[stor10.length.field_1 + ceil32(stor10.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + 192 len ceil32(mem[ceil32(stor10.length.field_1) + 128])] = mem[ceil32(stor10.length.field_1) + 160 len ceil32(mem[ceil32(stor10.length.field_1) + 128])]
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 206] = 32
            if ceil32(mem[ceil32(stor10.length.field_1) + 128]) <= mem[ceil32(stor10.length.field_1) + 128]:
                mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor10.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]), 
                mem[mem[ceil32(stor10.length.field_1) + ceil32(s) + 160] + ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270] = 0
                return 32, mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) + 32], 
            _3591 = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor10.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]), 
            mem[mem[ceil32(stor10.length.field_1) + ceil32(s) + 160] + ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270] = 0
            return 32, mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238 len ceil32(_3591) + 32], 
        if 31 >= stor10.length.field_1:
            mem[128] = 256 * stor10.length.field_8
            if not arg1:
                mem[ceil32(stor10.length.field_1) + 224 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 225] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 239] = 32
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 271] = mem[ceil32(stor10.length.field_1) + 192]
                mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 303 len ceil32(mem[ceil32(stor10.length.field_1) + 192])] = mem[ceil32(stor10.length.field_1) + 224 len ceil32(mem[ceil32(stor10.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor10.length.field_1) + 192]) > mem[ceil32(stor10.length.field_1) + 192]:
                    mem[mem[ceil32(stor10.length.field_1) + 192] + ceil32(stor10.length.field_1) + stor10.length.field_1 + 303] = 0
                return Array(len=mem[ceil32(stor10.length.field_1) + 192], data=mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 303 len ceil32(mem[ceil32(stor10.length.field_1) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor10.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor10.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor10.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor10.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
            if ceil32(stor10.length.field_1) > stor10.length.field_1:
                mem[stor10.length.field_1 + ceil32(stor10.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + 192 len ceil32(mem[ceil32(stor10.length.field_1) + 128])] = mem[ceil32(stor10.length.field_1) + 160 len ceil32(mem[ceil32(stor10.length.field_1) + 128])]
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 206] = 32
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor10.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]), 
            mem[mem[ceil32(stor10.length.field_1) + ceil32(s) + 160] + ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270] = 0
            return 32, mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) + 32], 
        mem[128] = uint256(stor10.field_0)
        idx = 128
        s = 0
        while stor10.length.field_1 + 96 > idx:
            mem[idx + 32] = stor10[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not arg1:
            mem[ceil32(stor10.length.field_1) + 224 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 225] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 239] = 32
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 271] = mem[ceil32(stor10.length.field_1) + 192]
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 303 len ceil32(mem[ceil32(stor10.length.field_1) + 192])] = mem[ceil32(stor10.length.field_1) + 224 len ceil32(mem[ceil32(stor10.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor10.length.field_1) + 192]) > mem[ceil32(stor10.length.field_1) + 192]:
                mem[mem[ceil32(stor10.length.field_1) + 192] + ceil32(stor10.length.field_1) + stor10.length.field_1 + 303] = 0
            return Array(len=mem[ceil32(stor10.length.field_1) + 192], data=mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 303 len ceil32(mem[ceil32(stor10.length.field_1) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor10.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor10.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor10.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor10.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
        if ceil32(stor10.length.field_1) > stor10.length.field_1:
            mem[stor10.length.field_1 + ceil32(stor10.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + 192 len ceil32(mem[ceil32(stor10.length.field_1) + 128])] = mem[ceil32(stor10.length.field_1) + 160 len ceil32(mem[ceil32(stor10.length.field_1) + 128])]
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 206] = 32
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]:
            mem[mem[ceil32(stor10.length.field_1) + ceil32(s) + 160] + ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270] = 0
        return Array(len=mem[ceil32(stor10.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]), 
    if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
        revert with 0, 34
    if not Mask(256, -1, stor10.length):
        if not arg1:
            mem[ceil32(stor10.length.field_1) + 224 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 225] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 239] = 32
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 271] = mem[ceil32(stor10.length.field_1) + 192]
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 303 len ceil32(mem[ceil32(stor10.length.field_1) + 192])] = mem[ceil32(stor10.length.field_1) + 224 len ceil32(mem[ceil32(stor10.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor10.length.field_1) + 192]) > mem[ceil32(stor10.length.field_1) + 192]:
                mem[mem[ceil32(stor10.length.field_1) + 192] + ceil32(stor10.length.field_1) + stor10.length.field_1 + 303] = 0
            return Array(len=mem[ceil32(stor10.length.field_1) + 192], data=mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 303 len ceil32(mem[ceil32(stor10.length.field_1) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor10.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor10.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor10.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor10.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
        if ceil32(stor10.length.field_1) > stor10.length.field_1:
            mem[stor10.length.field_1 + ceil32(stor10.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + 192 len ceil32(mem[ceil32(stor10.length.field_1) + 128])] = mem[ceil32(stor10.length.field_1) + 160 len ceil32(mem[ceil32(stor10.length.field_1) + 128])]
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 206] = 32
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]:
            mem[mem[ceil32(stor10.length.field_1) + ceil32(s) + 160] + ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270] = 0
        return Array(len=mem[ceil32(stor10.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]), 
    if 31 >= uint255(stor10.length) * 0.5:
        mem[128] = 256 * stor10.length.field_8
        if not arg1:
            mem[ceil32(stor10.length.field_1) + 224 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 225] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 239] = 32
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 271] = mem[ceil32(stor10.length.field_1) + 192]
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 303 len ceil32(mem[ceil32(stor10.length.field_1) + 192])] = mem[ceil32(stor10.length.field_1) + 224 len ceil32(mem[ceil32(stor10.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor10.length.field_1) + 192]) > mem[ceil32(stor10.length.field_1) + 192]:
                mem[mem[ceil32(stor10.length.field_1) + 192] + ceil32(stor10.length.field_1) + stor10.length.field_1 + 303] = 0
            return Array(len=mem[ceil32(stor10.length.field_1) + 192], data=mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 303 len ceil32(mem[ceil32(stor10.length.field_1) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor10.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor10.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor10.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor10.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
        if ceil32(stor10.length.field_1) > stor10.length.field_1:
            mem[stor10.length.field_1 + ceil32(stor10.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + 192 len ceil32(mem[ceil32(stor10.length.field_1) + 128])] = mem[ceil32(stor10.length.field_1) + 160 len ceil32(mem[ceil32(stor10.length.field_1) + 128])]
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 206] = 32
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]:
            mem[mem[ceil32(stor10.length.field_1) + ceil32(s) + 160] + ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270] = 0
        return Array(len=mem[ceil32(stor10.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]), 
    mem[0] = 10
    mem[128] = uint256(stor10.field_0)
    idx = 128
    s = 0
    while (uint255(stor10.length) * 0.5) + 96 > idx:
        mem[idx + 32] = stor10[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not arg1:
        mem[ceil32(stor10.length.field_1) + 224 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
        mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 225] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
        mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 239] = 32
        mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 271] = mem[ceil32(stor10.length.field_1) + 192]
        mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 303 len ceil32(mem[ceil32(stor10.length.field_1) + 192])] = mem[ceil32(stor10.length.field_1) + 224 len ceil32(mem[ceil32(stor10.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor10.length.field_1) + 192]) > mem[ceil32(stor10.length.field_1) + 192]:
            mem[mem[ceil32(stor10.length.field_1) + 192] + ceil32(stor10.length.field_1) + stor10.length.field_1 + 303] = 0
        return Array(len=mem[ceil32(stor10.length.field_1) + 192], data=mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 303 len ceil32(mem[ceil32(stor10.length.field_1) + 192])]), 
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[ceil32(stor10.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor10.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor10.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
        if ceil32(stor10.length.field_1) <= stor10.length.field_1:
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + 192 len ceil32(mem[ceil32(stor10.length.field_1) + 128])] = mem[ceil32(stor10.length.field_1) + 160 len ceil32(mem[ceil32(stor10.length.field_1) + 128])]
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
            mem[64] = ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 206
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 206] = 32
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor10.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]), 
            mem[mem[ceil32(stor10.length.field_1) + ceil32(s) + 160] + ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270] = 0
            return 32, mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) + 32], 
        mem[stor10.length.field_1 + ceil32(stor10.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + 192 len ceil32(mem[ceil32(stor10.length.field_1) + 128])] = mem[ceil32(stor10.length.field_1) + 160 len ceil32(mem[ceil32(stor10.length.field_1) + 128])]
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
        mem[64] = ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 206
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 206] = 32
        if ceil32(mem[ceil32(stor10.length.field_1) + 128]) <= mem[ceil32(stor10.length.field_1) + 128]:
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor10.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]), 
            mem[mem[ceil32(stor10.length.field_1) + ceil32(s) + 160] + ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270] = 0
            return 32, mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) + 32], 
        _4275 = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor10.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]), 
        mem[mem[ceil32(stor10.length.field_1) + ceil32(s) + 160] + ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270] = 0
        return 32, mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238 len ceil32(_4275) + 32], 
    mem[ceil32(stor10.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor10.length.field_1) + 128]:
            revert with 0, 50
        mem[t + ceil32(stor10.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
    if ceil32(stor10.length.field_1) <= stor10.length.field_1:
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + 192 len ceil32(mem[ceil32(stor10.length.field_1) + 128])] = mem[ceil32(stor10.length.field_1) + 160 len ceil32(mem[ceil32(stor10.length.field_1) + 128])]
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
        mem[64] = ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 206
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 206] = 32
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor10.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]), 
        mem[mem[ceil32(stor10.length.field_1) + ceil32(s) + 160] + ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270] = 0
        return 32, mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) + 32], 
    mem[stor10.length.field_1 + ceil32(stor10.length.field_1) + ceil32(s) + 192] = 0
    mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + 192 len ceil32(mem[ceil32(stor10.length.field_1) + 128])] = mem[ceil32(stor10.length.field_1) + 160 len ceil32(mem[ceil32(stor10.length.field_1) + 128])]
    mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 192] = 0x2f6d657461646174612e6a736f6e000000000000000000000000000000000000
    mem[64] = ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 206
    mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 206] = 32
    if ceil32(mem[ceil32(stor10.length.field_1) + 128]) <= mem[ceil32(stor10.length.field_1) + 128]:
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor10.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]), 
        mem[mem[ceil32(stor10.length.field_1) + ceil32(s) + 160] + ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270] = 0
        return 32, mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) + 32], 
    _4279 = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor10.length.field_1) + ceil32(s) + 160]:
        return Array(len=mem[ceil32(stor10.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270 len ceil32(mem[ceil32(stor10.length.field_1) + ceil32(s) + 160])]), 
    mem[mem[ceil32(stor10.length.field_1) + ceil32(s) + 160] + ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 270] = 0
    return 32, mem[ceil32(stor10.length.field_1) + ceil32(s) + stor10.length.field_1 + mem[ceil32(stor10.length.field_1) + 128] + 238 len ceil32(_4279) + 32], 
}

function sub_56c5db37(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    mem[0] = address(arg1)
    mem[32] = 12
    if sub_0316c4ea[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = sub_0316c4ea[address(arg1)]
    mem[64] = (32 * sub_0316c4ea[address(arg1)]) + 128
    if not sub_0316c4ea[address(arg1)]:
        mem[0] = address(arg1)
        idx = 0
        while idx < sub_0316c4ea[address(arg1)]:
            if idx >= sub_0316c4ea[address(arg1)]:
                revert with 0, 50
            mem[0] = sub_0316c4ea[address(arg1)][idx]
            mem[32] = 11
            _751 = mem[64]
            mem[64] = mem[64] + 320
            mem[_751] = stor11[stor12[address(arg1)][idx]].field_0
            if stor11[stor12[address(arg1)][idx]].field_256:
                if stor11[stor12[address(arg1)][idx]].field_256 == uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5 < 32:
                    revert with 0, 34
                _760 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5) + 32
                mem[_760] = uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5
                if stor11[stor12[address(arg1)][idx]].field_256:
                    if stor11[stor12[address(arg1)][idx]].field_256 == uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor11[stor12[address(arg1)][idx]].field_256):
                        mem[_751 + 32] = _760
                        mem[_751 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                        mem[_751 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                        _778 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_778] = stor11[stor12[address(arg1)][idx]].field_1024
                        mem[_778 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                        mem[_778 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                        mem[_751 + 128] = _778
                    else:
                        if 31 >= uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5:
                            mem[_760 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_264
                            mem[_751 + 32] = _760
                            mem[_751 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                            mem[_751 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                            _796 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_796] = stor11[stor12[address(arg1)][idx]].field_1024
                            mem[_796 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                            mem[_796 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                            mem[_751 + 128] = _796
                        else:
                            mem[0] = sha3(sub_0316c4ea[address(arg1)][idx], 11) + 1
                            mem[_760 + 32] = stor11[stor12[address(arg1)][idx]][1].field_0
                            s = _760 + 32
                            t = sha3(mem[0])
                            while _760 + (uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5) > s:
                                mem[0] = address(arg1)
                                mem[32] = 12
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_751 + 32] = _760
                            mem[_751 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                            mem[_751 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                            _1493 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1493] = stor11[stor12[address(arg1)][idx]].field_1024
                            mem[_1493 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                            mem[_1493 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                            mem[_751 + 128] = _1493
                else:
                    if stor11[stor12[address(arg1)][idx]].field_256 == stor11[stor12[address(arg1)][idx]].field_257 < 32:
                        revert with 0, 34
                    if not stor11[stor12[address(arg1)][idx]].field_257:
                        mem[_751 + 32] = _760
                        mem[_751 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                        mem[_751 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                        _789 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_789] = stor11[stor12[address(arg1)][idx]].field_1024
                        mem[_789 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                        mem[_789 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                        mem[_751 + 128] = _789
                    else:
                        if 31 >= stor11[stor12[address(arg1)][idx]].field_257:
                            mem[_760 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_264
                            mem[_751 + 32] = _760
                            mem[_751 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                            mem[_751 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                            _804 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_804] = stor11[stor12[address(arg1)][idx]].field_1024
                            mem[_804 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                            mem[_804 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                            mem[_751 + 128] = _804
                        else:
                            mem[0] = sha3(sub_0316c4ea[address(arg1)][idx], 11) + 1
                            mem[_760 + 32] = stor11[stor12[address(arg1)][idx]][1].field_0
                            s = _760 + 32
                            t = sha3(mem[0])
                            while _760 + stor11[stor12[address(arg1)][idx]].field_257 > s:
                                mem[0] = address(arg1)
                                mem[32] = 12
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_751 + 32] = _760
                            mem[_751 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                            mem[_751 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                            _1494 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1494] = stor11[stor12[address(arg1)][idx]].field_1024
                            mem[_1494 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                            mem[_1494 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                            mem[_751 + 128] = _1494
            else:
                if stor11[stor12[address(arg1)][idx]].field_256 == stor11[stor12[address(arg1)][idx]].field_257 < 32:
                    revert with 0, 34
                _762 = mem[64]
                mem[64] = mem[64] + ceil32(stor11[stor12[address(arg1)][idx]].field_257) + 32
                mem[_762] = stor11[stor12[address(arg1)][idx]].field_257
                if stor11[stor12[address(arg1)][idx]].field_256:
                    if stor11[stor12[address(arg1)][idx]].field_256 == uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor11[stor12[address(arg1)][idx]].field_256):
                        mem[_751 + 32] = _762
                        mem[_751 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                        mem[_751 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                        _790 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_790] = stor11[stor12[address(arg1)][idx]].field_1024
                        mem[_790 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                        mem[_790 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                        mem[_751 + 128] = _790
                    else:
                        if 31 >= uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5:
                            mem[_762 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_264
                            mem[_751 + 32] = _762
                            mem[_751 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                            mem[_751 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                            _805 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_805] = stor11[stor12[address(arg1)][idx]].field_1024
                            mem[_805 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                            mem[_805 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                            mem[_751 + 128] = _805
                        else:
                            mem[0] = sha3(sub_0316c4ea[address(arg1)][idx], 11) + 1
                            mem[_762 + 32] = stor11[stor12[address(arg1)][idx]][1].field_0
                            s = _762 + 32
                            t = sha3(mem[0])
                            while _762 + (uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5) > s:
                                mem[0] = address(arg1)
                                mem[32] = 12
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_751 + 32] = _762
                            mem[_751 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                            mem[_751 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                            _1495 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1495] = stor11[stor12[address(arg1)][idx]].field_1024
                            mem[_1495 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                            mem[_1495 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                            mem[_751 + 128] = _1495
                else:
                    if stor11[stor12[address(arg1)][idx]].field_256 == stor11[stor12[address(arg1)][idx]].field_257 < 32:
                        revert with 0, 34
                    if not stor11[stor12[address(arg1)][idx]].field_257:
                        mem[_751 + 32] = _762
                        mem[_751 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                        mem[_751 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                        _799 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_799] = stor11[stor12[address(arg1)][idx]].field_1024
                        mem[_799 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                        mem[_799 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                        mem[_751 + 128] = _799
                    else:
                        if 31 >= stor11[stor12[address(arg1)][idx]].field_257:
                            mem[_762 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_264
                            mem[_751 + 32] = _762
                            mem[_751 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                            mem[_751 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                            _816 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_816] = stor11[stor12[address(arg1)][idx]].field_1024
                            mem[_816 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                            mem[_816 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                            mem[_751 + 128] = _816
                        else:
                            mem[0] = sha3(sub_0316c4ea[address(arg1)][idx], 11) + 1
                            mem[_762 + 32] = stor11[stor12[address(arg1)][idx]][1].field_0
                            s = _762 + 32
                            t = sha3(mem[0])
                            while _762 + stor11[stor12[address(arg1)][idx]].field_257 > s:
                                mem[0] = address(arg1)
                                mem[32] = 12
                                mem[s + 32] = stor1[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_751 + 32] = _762
                            mem[_751 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                            mem[_751 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                            _1496 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1496] = stor11[stor12[address(arg1)][idx]].field_1024
                            mem[_1496 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                            mem[_1496 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                            mem[_751 + 128] = _1496
            mem[_751 + 160] = stor11[stor12[address(arg1)][idx]].field_1792
            if stor11[stor12[address(arg1)][idx]].field_2048 > 2:
                revert with 0, 33
            mem[_751 + 192] = stor11[stor12[address(arg1)][idx]].field_2048
            mem[_751 + 224] = stor11[stor12[address(arg1)][idx]].field_2304
            mem[_751 + 256] = stor11[stor12[address(arg1)][idx]].field_2560
            mem[_751 + 288] = stor11[stor12[address(arg1)][idx]].field_2568
            if not arg2:
                if 0 >= mem[96]:
                    revert with 0, 50
                mem[128] = _751
            else:
                if stor11[stor12[address(arg1)][idx]].field_2048 > 2:
                    revert with 0, 33
                if not stor11[stor12[address(arg1)][idx]].field_2048:
                    if 0 >= mem[96]:
                        revert with 0, 50
                    mem[128] = _751
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 12
            idx = idx + 1
            continue 
        mem[96] = 0
        mem[0] = address(arg1)
        mem[32] = 13
        if sub_73a4b755[address(arg1)] > test266151307():
            revert with 0, 65
        _748 = mem[64]
        mem[mem[64]] = sub_73a4b755[address(arg1)]
        mem[64] = mem[64] + (32 * sub_73a4b755[address(arg1)]) + 32
        if not sub_73a4b755[address(arg1)]:
            mem[0] = address(arg1)
            mem[32] = 13
            idx = 0
            while idx < sub_73a4b755[address(arg1)]:
                if idx >= sub_73a4b755[address(arg1)]:
                    revert with 0, 50
                mem[0] = sub_73a4b755[address(arg1)][idx]
                mem[32] = 11
                _1492 = mem[64]
                mem[64] = mem[64] + 320
                mem[_1492] = stor11[stor13[address(arg1)][idx]].field_0
                if stor11[stor13[address(arg1)][idx]].field_256:
                    if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    _1506 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) + 32
                    mem[_1506] = uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5
                    if stor11[stor13[address(arg1)][idx]].field_256:
                        if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                            mem[_1492 + 32] = _1506
                            mem[_1492 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                            mem[_1492 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                            _1541 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1541] = stor11[stor13[address(arg1)][idx]].field_1024
                            mem[_1541 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                            mem[_1541 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                            mem[_1492 + 128] = _1541
                        else:
                            if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                mem[_1506 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                mem[_1492 + 32] = _1506
                                mem[_1492 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_1492 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _1555 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1555] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_1555 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_1555 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_1492 + 128] = _1555
                            else:
                                mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                mem[_1506 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                s = _1506 + 32
                                t = sha3(mem[0])
                                while _1506 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                    mem[0] = address(arg1)
                                    mem[32] = 13
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1492 + 32] = _1506
                                mem[_1492 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_1492 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _2185 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_2185] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_2185 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_2185 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_1492 + 128] = _2185
                    else:
                        if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                            revert with 0, 34
                        if not stor11[stor13[address(arg1)][idx]].field_257:
                            mem[_1492 + 32] = _1506
                            mem[_1492 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                            mem[_1492 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                            _1550 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1550] = stor11[stor13[address(arg1)][idx]].field_1024
                            mem[_1550 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                            mem[_1550 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                            mem[_1492 + 128] = _1550
                        else:
                            if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                mem[_1506 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                mem[_1492 + 32] = _1506
                                mem[_1492 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_1492 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _1567 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1567] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_1567 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_1567 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_1492 + 128] = _1567
                            else:
                                mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                mem[_1506 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                s = _1506 + 32
                                t = sha3(mem[0])
                                while _1506 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                    mem[0] = address(arg1)
                                    mem[32] = 13
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1492 + 32] = _1506
                                mem[_1492 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_1492 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _2186 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_2186] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_2186 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_2186 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_1492 + 128] = _2186
                else:
                    if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                        revert with 0, 34
                    _1516 = mem[64]
                    mem[64] = mem[64] + ceil32(stor11[stor13[address(arg1)][idx]].field_257) + 32
                    mem[_1516] = stor11[stor13[address(arg1)][idx]].field_257
                    if stor11[stor13[address(arg1)][idx]].field_256:
                        if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                            mem[_1492 + 32] = _1516
                            mem[_1492 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                            mem[_1492 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                            _1551 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1551] = stor11[stor13[address(arg1)][idx]].field_1024
                            mem[_1551 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                            mem[_1551 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                            mem[_1492 + 128] = _1551
                        else:
                            if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                mem[_1516 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                mem[_1492 + 32] = _1516
                                mem[_1492 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_1492 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _1568 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1568] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_1568 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_1568 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_1492 + 128] = _1568
                            else:
                                mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                mem[_1516 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                s = _1516 + 32
                                t = sha3(mem[0])
                                while _1516 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                    mem[0] = address(arg1)
                                    mem[32] = 13
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1492 + 32] = _1516
                                mem[_1492 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_1492 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _2187 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_2187] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_2187 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_2187 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_1492 + 128] = _2187
                    else:
                        if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                            revert with 0, 34
                        if not stor11[stor13[address(arg1)][idx]].field_257:
                            mem[_1492 + 32] = _1516
                            mem[_1492 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                            mem[_1492 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                            _1558 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1558] = stor11[stor13[address(arg1)][idx]].field_1024
                            mem[_1558 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                            mem[_1558 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                            mem[_1492 + 128] = _1558
                        else:
                            if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                mem[_1516 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                mem[_1492 + 32] = _1516
                                mem[_1492 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_1492 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _1583 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1583] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_1583 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_1583 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_1492 + 128] = _1583
                            else:
                                mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                mem[_1516 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                s = _1516 + 32
                                t = sha3(mem[0])
                                while _1516 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                    mem[0] = address(arg1)
                                    mem[32] = 13
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1492 + 32] = _1516
                                mem[_1492 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_1492 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _2188 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_2188] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_2188 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_2188 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_1492 + 128] = _2188
                mem[_1492 + 160] = stor11[stor13[address(arg1)][idx]].field_1792
                if stor11[stor13[address(arg1)][idx]].field_2048 > 2:
                    revert with 0, 33
                mem[_1492 + 192] = stor11[stor13[address(arg1)][idx]].field_2048
                mem[_1492 + 224] = stor11[stor13[address(arg1)][idx]].field_2304
                mem[_1492 + 256] = stor11[stor13[address(arg1)][idx]].field_2560
                mem[_1492 + 288] = stor11[stor13[address(arg1)][idx]].field_2568
                if not arg2:
                    if 0 >= mem[_748]:
                        revert with 0, 50
                    mem[_748 + 32] = _1492
                else:
                    if stor11[stor13[address(arg1)][idx]].field_1024 == address(arg1):
                        if block.timestamp <= stor11[stor13[address(arg1)][idx]].field_1280:
                            if 0 >= mem[_748]:
                                revert with 0, 50
                            mem[_748 + 32] = _1492
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 13
                idx = idx + 1
                continue 
            mem[_748] = 0
            _1489 = mem[64]
            mem[mem[64]] = 64
            _1497 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 96
            u = mem[64] + 96
            while idx < _1497:
                mem[u] = t + -_1489 - 96
                _2182 = mem[s]
                mem[t] = mem[mem[s]]
                _2184 = mem[_2182 + 32]
                mem[t + 32] = 384
                _2190 = mem[_2184]
                mem[t + 384] = mem[_2184]
                v = 0
                while v < _2190:
                    mem[v + t + 416] = mem[v + _2184 + 32]
                    v = v + 32
                    continue 
                if ceil32(_2190) <= _2190:
                    mem[t + 64] = mem[_2182 + 76 len 20]
                    mem[t + 96] = mem[_2182 + 108 len 20]
                    _2816 = mem[_2182 + 128]
                    mem[t + 128] = mem[mem[_2182 + 128] + 12 len 20]
                    mem[t + 160] = mem[_2816 + 32]
                    mem[t + 192] = mem[_2816 + 92 len 4]
                else:
                    mem[_2190 + t + 416] = 0
                    mem[t + 64] = mem[_2182 + 76 len 20]
                    mem[t + 96] = mem[_2182 + 108 len 20]
                    _2820 = mem[_2182 + 128]
                    mem[t + 128] = mem[mem[_2182 + 128] + 12 len 20]
                    mem[t + 160] = mem[_2820 + 32]
                    mem[t + 192] = mem[_2820 + 92 len 4]
                mem[t + 224] = mem[_2182 + 160]
                if mem[_2182 + 192] >= 3:
                    revert with 0, 33
                mem[t + 256] = mem[_2182 + 192]
                mem[t + 288] = mem[_2182 + 224]
                mem[t + 320] = mem[_2182 + 287 len 1]
                mem[t + 352] = mem[_2182 + 319 len 1]
                idx = idx + 1
                s = s + 32
                t = ceil32(_2190) + t + 416
                u = u + 32
                continue 
            mem[_1489 + 32] = t - _1489
            _2189 = mem[_748]
            mem[t] = mem[_748]
            idx = 0
            s = _748 + 32
            u = t + (32 * _2189) + 32
            v = t + 32
            while idx < _2189:
                mem[v] = u + -t - 32
                _2792 = mem[s]
                mem[u] = mem[mem[s]]
                _2795 = mem[_2792 + 32]
                mem[u + 32] = 384
                _2799 = mem[_2795]
                mem[u + 384] = mem[_2795]
                t = 0
                while t < _2799:
                    mem[t + u + 416] = mem[t + _2795 + 32]
                    t = t + 32
                    continue 
                if ceil32(_2799) <= _2799:
                    mem[u + 64] = mem[_2792 + 76 len 20]
                    mem[u + 96] = mem[_2792 + 108 len 20]
                    _3764 = mem[_2792 + 128]
                    mem[u + 128] = mem[mem[_2792 + 128] + 12 len 20]
                    mem[u + 160] = mem[_3764 + 32]
                    mem[u + 192] = mem[_3764 + 92 len 4]
                else:
                    mem[_2799 + u + 416] = 0
                    mem[u + 64] = mem[_2792 + 76 len 20]
                    mem[u + 96] = mem[_2792 + 108 len 20]
                    _3768 = mem[_2792 + 128]
                    mem[u + 128] = mem[mem[_2792 + 128] + 12 len 20]
                    mem[u + 160] = mem[_3768 + 32]
                    mem[u + 192] = mem[_3768 + 92 len 4]
                mem[u + 224] = mem[_2792 + 160]
                if mem[_2792 + 192] >= 3:
                    revert with 0, 33
                mem[u + 256] = mem[_2792 + 192]
                mem[u + 288] = mem[_2792 + 224]
                mem[u + 320] = mem[_2792 + 287 len 1]
                mem[u + 352] = mem[_2792 + 319 len 1]
                idx = idx + 1
                s = s + 32
                u = ceil32(_2799) + u + 416
                v = v + 32
                continue 
            return memory
              from mem[64]
               len u - mem[64]
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 32] = 0
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 64] = 96
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 96] = 0
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 128] = 0
        mem[64] = _748 + (32 * sub_73a4b755[address(arg1)]) + 448
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 352] = 0
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 384] = 0
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 416] = 0
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 160] = _748 + (32 * sub_73a4b755[address(arg1)]) + 352
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 192] = 0
        mem[var27002] = 0
        mem[var27002 + 32] = 0
        mem[var27002 + 64] = 0
        mem[var27002 + 96] = 0
        mem[var29002] = var29001
        if not var29003 - 1:
            mem[0] = address(arg1)
            mem[32] = 13
            idx = 0
            while idx < sub_73a4b755[address(arg1)]:
                if idx >= sub_73a4b755[address(arg1)]:
                    revert with 0, 50
                mem[0] = sub_73a4b755[address(arg1)][idx]
                mem[32] = 11
                _4822 = mem[64]
                mem[64] = mem[64] + 320
                mem[_4822] = stor11[stor13[address(arg1)][idx]].field_0
                if stor11[stor13[address(arg1)][idx]].field_256:
                    if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    _4842 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) + 32
                    mem[_4842] = uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5
                    if stor11[stor13[address(arg1)][idx]].field_256:
                        if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                            mem[_4822 + 32] = _4842
                            mem[_4822 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                            mem[_4822 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                            _4891 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4891] = stor11[stor13[address(arg1)][idx]].field_1024
                            mem[_4891 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                            mem[_4891 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                            mem[_4822 + 128] = _4891
                        else:
                            if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                mem[_4842 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                mem[_4822 + 32] = _4842
                                mem[_4822 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_4822 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _4919 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4919] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_4919 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_4919 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_4822 + 128] = _4919
                            else:
                                mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                mem[_4842 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                s = _4842 + 32
                                t = sha3(mem[0])
                                while _4842 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                    mem[0] = address(arg1)
                                    mem[32] = 13
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_4822 + 32] = _4842
                                mem[_4822 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_4822 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _5822 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_5822] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_5822 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_5822 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_4822 + 128] = _5822
                    else:
                        if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                            revert with 0, 34
                        if not stor11[stor13[address(arg1)][idx]].field_257:
                            mem[_4822 + 32] = _4842
                            mem[_4822 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                            mem[_4822 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                            _4906 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4906] = stor11[stor13[address(arg1)][idx]].field_1024
                            mem[_4906 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                            mem[_4906 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                            mem[_4822 + 128] = _4906
                        else:
                            if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                mem[_4842 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                mem[_4822 + 32] = _4842
                                mem[_4822 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_4822 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _4937 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4937] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_4937 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_4937 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_4822 + 128] = _4937
                            else:
                                mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                mem[_4842 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                s = _4842 + 32
                                t = sha3(mem[0])
                                while _4842 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                    mem[0] = address(arg1)
                                    mem[32] = 13
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_4822 + 32] = _4842
                                mem[_4822 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_4822 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _5823 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_5823] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_5823 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_5823 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_4822 + 128] = _5823
                else:
                    if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                        revert with 0, 34
                    _4855 = mem[64]
                    mem[64] = mem[64] + ceil32(stor11[stor13[address(arg1)][idx]].field_257) + 32
                    mem[_4855] = stor11[stor13[address(arg1)][idx]].field_257
                    if stor11[stor13[address(arg1)][idx]].field_256:
                        if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                            mem[_4822 + 32] = _4855
                            mem[_4822 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                            mem[_4822 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                            _4907 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4907] = stor11[stor13[address(arg1)][idx]].field_1024
                            mem[_4907 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                            mem[_4907 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                            mem[_4822 + 128] = _4907
                        else:
                            if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                mem[_4855 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                mem[_4822 + 32] = _4855
                                mem[_4822 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_4822 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _4938 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4938] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_4938 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_4938 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_4822 + 128] = _4938
                            else:
                                mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                mem[_4855 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                s = _4855 + 32
                                t = sha3(mem[0])
                                while _4855 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                    mem[0] = address(arg1)
                                    mem[32] = 13
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_4822 + 32] = _4855
                                mem[_4822 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_4822 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _5824 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_5824] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_5824 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_5824 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_4822 + 128] = _5824
                    else:
                        if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                            revert with 0, 34
                        if not stor11[stor13[address(arg1)][idx]].field_257:
                            mem[_4822 + 32] = _4855
                            mem[_4822 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                            mem[_4822 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                            _4922 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4922] = stor11[stor13[address(arg1)][idx]].field_1024
                            mem[_4922 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                            mem[_4922 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                            mem[_4822 + 128] = _4922
                        else:
                            if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                mem[_4855 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                mem[_4822 + 32] = _4855
                                mem[_4822 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_4822 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _4960 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4960] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_4960 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_4960 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_4822 + 128] = _4960
                            else:
                                mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                mem[_4855 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                s = _4855 + 32
                                t = sha3(mem[0])
                                while _4855 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                    mem[0] = address(arg1)
                                    mem[32] = 13
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_4822 + 32] = _4855
                                mem[_4822 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_4822 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _5825 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_5825] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_5825 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_5825 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_4822 + 128] = _5825
                mem[_4822 + 160] = stor11[stor13[address(arg1)][idx]].field_1792
                if stor11[stor13[address(arg1)][idx]].field_2048 > 2:
                    revert with 0, 33
                mem[_4822 + 192] = stor11[stor13[address(arg1)][idx]].field_2048
                mem[_4822 + 224] = stor11[stor13[address(arg1)][idx]].field_2304
                mem[_4822 + 256] = stor11[stor13[address(arg1)][idx]].field_2560
                mem[_4822 + 288] = stor11[stor13[address(arg1)][idx]].field_2568
                if not arg2:
                    if 0 >= mem[_748]:
                        revert with 0, 50
                    mem[_748 + 32] = _4822
                else:
                    if stor11[stor13[address(arg1)][idx]].field_1024 == address(arg1):
                        if block.timestamp <= stor11[stor13[address(arg1)][idx]].field_1280:
                            if 0 >= mem[_748]:
                                revert with 0, 50
                            mem[_748 + 32] = _4822
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 13
                idx = idx + 1
                continue 
            mem[_748] = 0
            _4819 = mem[64]
            mem[mem[64]] = 64
            _4831 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 96
            u = mem[64] + 96
            while idx < _4831:
                mem[u] = t + -_4819 - 96
                _5818 = mem[s]
                mem[t] = mem[mem[s]]
                _5821 = mem[_5818 + 32]
                mem[t + 32] = 384
                _5833 = mem[_5821]
                mem[t + 384] = mem[_5821]
                v = 0
                while v < _5833:
                    mem[v + t + 416] = mem[v + _5821 + 32]
                    v = v + 32
                    continue 
                if ceil32(_5833) <= _5833:
                    mem[t + 64] = mem[_5818 + 76 len 20]
                    mem[t + 96] = mem[_5818 + 108 len 20]
                    _6709 = mem[_5818 + 128]
                    mem[t + 128] = mem[mem[_5818 + 128] + 12 len 20]
                    mem[t + 160] = mem[_6709 + 32]
                    mem[t + 192] = mem[_6709 + 92 len 4]
                else:
                    mem[_5833 + t + 416] = 0
                    mem[t + 64] = mem[_5818 + 76 len 20]
                    mem[t + 96] = mem[_5818 + 108 len 20]
                    _6713 = mem[_5818 + 128]
                    mem[t + 128] = mem[mem[_5818 + 128] + 12 len 20]
                    mem[t + 160] = mem[_6713 + 32]
                    mem[t + 192] = mem[_6713 + 92 len 4]
                mem[t + 224] = mem[_5818 + 160]
                if mem[_5818 + 192] >= 3:
                    revert with 0, 33
                mem[t + 256] = mem[_5818 + 192]
                mem[t + 288] = mem[_5818 + 224]
                mem[t + 320] = mem[_5818 + 287 len 1]
                mem[t + 352] = mem[_5818 + 319 len 1]
                idx = idx + 1
                s = s + 32
                t = ceil32(_5833) + t + 416
                u = u + 32
                continue 
            mem[_4819 + 32] = t - _4819
            _5832 = mem[_748]
            mem[t] = mem[_748]
            idx = 0
            s = _748 + 32
            u = t + (32 * _5832) + 32
            v = t + 32
            while idx < _5832:
                mem[v] = u + -t - 32
                _6667 = mem[s]
                mem[u] = mem[mem[s]]
                _6672 = mem[_6667 + 32]
                mem[u + 32] = 384
                _6680 = mem[_6672]
                mem[u + 384] = mem[_6672]
                t = 0
                while t < _6680:
                    mem[t + u + 416] = mem[t + _6672 + 32]
                    t = t + 32
                    continue 
                if ceil32(_6680) <= _6680:
                    mem[u + 64] = mem[_6667 + 76 len 20]
                    mem[u + 96] = mem[_6667 + 108 len 20]
                    _7858 = mem[_6667 + 128]
                    mem[u + 128] = mem[mem[_6667 + 128] + 12 len 20]
                    mem[u + 160] = mem[_7858 + 32]
                    mem[u + 192] = mem[_7858 + 92 len 4]
                else:
                    mem[_6680 + u + 416] = 0
                    mem[u + 64] = mem[_6667 + 76 len 20]
                    mem[u + 96] = mem[_6667 + 108 len 20]
                    _7862 = mem[_6667 + 128]
                    mem[u + 128] = mem[mem[_6667 + 128] + 12 len 20]
                    mem[u + 160] = mem[_7862 + 32]
                    mem[u + 192] = mem[_7862 + 92 len 4]
                mem[u + 224] = mem[_6667 + 160]
                if mem[_6667 + 192] >= 3:
                    revert with 0, 33
                mem[u + 256] = mem[_6667 + 192]
                mem[u + 288] = mem[_6667 + 224]
                mem[u + 320] = mem[_6667 + 287 len 1]
                mem[u + 352] = mem[_6667 + 319 len 1]
                idx = idx + 1
                s = s + 32
                u = ceil32(_6680) + u + 416
                v = v + 32
                continue 
            return memory
              from mem[64]
               len u - mem[64]
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 448] = 0
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 480] = 96
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 512] = 0
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 544] = 0
        mem[64] = _748 + (32 * sub_73a4b755[address(arg1)]) + 864
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 768] = 0
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 800] = 0
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 832] = 0
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 576] = _748 + (32 * sub_73a4b755[address(arg1)]) + 768
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 608] = 0
        mem[var35002] = 0
        mem[var35002 + 32] = 0
        mem[var35002 + 64] = 0
        mem[var35002 + 96] = 0
        mem[var37002] = var37001
        if not var37003 - 1:
            mem[0] = address(arg1)
            mem[32] = 13
            idx = 0
            while idx < sub_73a4b755[address(arg1)]:
                if idx >= sub_73a4b755[address(arg1)]:
                    revert with 0, 50
                mem[0] = sub_73a4b755[address(arg1)][idx]
                mem[32] = 11
                _9238 = mem[64]
                mem[64] = mem[64] + 320
                mem[_9238] = stor11[stor13[address(arg1)][idx]].field_0
                if stor11[stor13[address(arg1)][idx]].field_256:
                    if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    _9263 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) + 32
                    mem[_9263] = uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5
                    if stor11[stor13[address(arg1)][idx]].field_256:
                        if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                            mem[_9238 + 32] = _9263
                            mem[_9238 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                            mem[_9238 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                            _9327 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_9327] = stor11[stor13[address(arg1)][idx]].field_1024
                            mem[_9327 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                            mem[_9327 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                            mem[_9238 + 128] = _9327
                        else:
                            if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                mem[_9263 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                mem[_9238 + 32] = _9263
                                mem[_9238 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_9238 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _9366 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_9366] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_9366 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_9366 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_9238 + 128] = _9366
                            else:
                                mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                mem[_9263 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                s = _9263 + 32
                                t = sha3(mem[0])
                                while _9263 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                    mem[0] = address(arg1)
                                    mem[32] = 13
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_9238 + 32] = _9263
                                mem[_9238 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_9238 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _10545 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_10545] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_10545 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_10545 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_9238 + 128] = _10545
                    else:
                        if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                            revert with 0, 34
                        if not stor11[stor13[address(arg1)][idx]].field_257:
                            mem[_9238 + 32] = _9263
                            mem[_9238 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                            mem[_9238 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                            _9346 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_9346] = stor11[stor13[address(arg1)][idx]].field_1024
                            mem[_9346 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                            mem[_9346 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                            mem[_9238 + 128] = _9346
                        else:
                            if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                mem[_9263 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                mem[_9238 + 32] = _9263
                                mem[_9238 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_9238 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _9391 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_9391] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_9391 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_9391 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_9238 + 128] = _9391
                            else:
                                mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                mem[_9263 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                s = _9263 + 32
                                t = sha3(mem[0])
                                while _9263 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                    mem[0] = address(arg1)
                                    mem[32] = 13
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_9238 + 32] = _9263
                                mem[_9238 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_9238 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _10546 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_10546] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_10546 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_10546 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_9238 + 128] = _10546
                else:
                    if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                        revert with 0, 34
                    _9279 = mem[64]
                    mem[64] = mem[64] + ceil32(stor11[stor13[address(arg1)][idx]].field_257) + 32
                    mem[_9279] = stor11[stor13[address(arg1)][idx]].field_257
                    if stor11[stor13[address(arg1)][idx]].field_256:
                        if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                            mem[_9238 + 32] = _9279
                            mem[_9238 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                            mem[_9238 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                            _9347 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_9347] = stor11[stor13[address(arg1)][idx]].field_1024
                            mem[_9347 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                            mem[_9347 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                            mem[_9238 + 128] = _9347
                        else:
                            if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                mem[_9279 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                mem[_9238 + 32] = _9279
                                mem[_9238 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_9238 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _9392 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_9392] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_9392 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_9392 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_9238 + 128] = _9392
                            else:
                                mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                mem[_9279 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                s = _9279 + 32
                                t = sha3(mem[0])
                                while _9279 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                    mem[0] = address(arg1)
                                    mem[32] = 13
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_9238 + 32] = _9279
                                mem[_9238 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_9238 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _10547 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_10547] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_10547 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_10547 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_9238 + 128] = _10547
                    else:
                        if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                            revert with 0, 34
                        if not stor11[stor13[address(arg1)][idx]].field_257:
                            mem[_9238 + 32] = _9279
                            mem[_9238 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                            mem[_9238 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                            _9369 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_9369] = stor11[stor13[address(arg1)][idx]].field_1024
                            mem[_9369 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                            mem[_9369 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                            mem[_9238 + 128] = _9369
                        else:
                            if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                mem[_9279 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                mem[_9238 + 32] = _9279
                                mem[_9238 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_9238 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _9423 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_9423] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_9423 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_9423 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_9238 + 128] = _9423
                            else:
                                mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                mem[_9279 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                s = _9279 + 32
                                t = sha3(mem[0])
                                while _9279 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                    mem[0] = address(arg1)
                                    mem[32] = 13
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_9238 + 32] = _9279
                                mem[_9238 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_9238 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _10548 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_10548] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_10548 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_10548 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_9238 + 128] = _10548
                mem[_9238 + 160] = stor11[stor13[address(arg1)][idx]].field_1792
                if stor11[stor13[address(arg1)][idx]].field_2048 > 2:
                    revert with 0, 33
                mem[_9238 + 192] = stor11[stor13[address(arg1)][idx]].field_2048
                mem[_9238 + 224] = stor11[stor13[address(arg1)][idx]].field_2304
                mem[_9238 + 256] = stor11[stor13[address(arg1)][idx]].field_2560
                mem[_9238 + 288] = stor11[stor13[address(arg1)][idx]].field_2568
                if not arg2:
                    if 0 >= mem[_748]:
                        revert with 0, 50
                    mem[_748 + 32] = _9238
                else:
                    if stor11[stor13[address(arg1)][idx]].field_1024 == address(arg1):
                        if block.timestamp <= stor11[stor13[address(arg1)][idx]].field_1280:
                            if 0 >= mem[_748]:
                                revert with 0, 50
                            mem[_748 + 32] = _9238
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 13
                idx = idx + 1
                continue 
            mem[_748] = 0
            _9235 = mem[64]
            mem[mem[64]] = 64
            _9251 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 96
            u = mem[64] + 96
            while idx < _9251:
                mem[u] = t + -_9235 - 96
                _10540 = mem[s]
                mem[t] = mem[mem[s]]
                _10544 = mem[_10540 + 32]
                mem[t + 32] = 384
                _10562 = mem[_10544]
                mem[t + 384] = mem[_10544]
                v = 0
                while v < _10562:
                    mem[v + t + 416] = mem[v + _10544 + 32]
                    v = v + 32
                    continue 
                if ceil32(_10562) <= _10562:
                    mem[t + 64] = mem[_10540 + 76 len 20]
                    mem[t + 96] = mem[_10540 + 108 len 20]
                    _11684 = mem[_10540 + 128]
                    mem[t + 128] = mem[mem[_10540 + 128] + 12 len 20]
                    mem[t + 160] = mem[_11684 + 32]
                    mem[t + 192] = mem[_11684 + 92 len 4]
                else:
                    mem[_10562 + t + 416] = 0
                    mem[t + 64] = mem[_10540 + 76 len 20]
                    mem[t + 96] = mem[_10540 + 108 len 20]
                    _11688 = mem[_10540 + 128]
                    mem[t + 128] = mem[mem[_10540 + 128] + 12 len 20]
                    mem[t + 160] = mem[_11688 + 32]
                    mem[t + 192] = mem[_11688 + 92 len 4]
                mem[t + 224] = mem[_10540 + 160]
                if mem[_10540 + 192] >= 3:
                    revert with 0, 33
                mem[t + 256] = mem[_10540 + 192]
                mem[t + 288] = mem[_10540 + 224]
                mem[t + 320] = mem[_10540 + 287 len 1]
                mem[t + 352] = mem[_10540 + 319 len 1]
                idx = idx + 1
                s = s + 32
                t = ceil32(_10562) + t + 416
                u = u + 32
                continue 
            mem[_9235 + 32] = t - _9235
            _10561 = mem[_748]
            mem[t] = mem[_748]
            idx = 0
            s = _748 + 32
            u = t + (32 * _10561) + 32
            v = t + 32
            while idx < _10561:
                mem[v] = u + -t - 32
                _11628 = mem[s]
                mem[u] = mem[mem[s]]
                _11635 = mem[_11628 + 32]
                mem[u + 32] = 384
                _11645 = mem[_11635]
                mem[u + 384] = mem[_11635]
                t = 0
                while t < _11645:
                    mem[t + u + 416] = mem[t + _11635 + 32]
                    t = t + 32
                    continue 
                if ceil32(_11645) <= _11645:
                    mem[u + 64] = mem[_11628 + 76 len 20]
                    mem[u + 96] = mem[_11628 + 108 len 20]
                    _13038 = mem[_11628 + 128]
                    mem[u + 128] = mem[mem[_11628 + 128] + 12 len 20]
                    mem[u + 160] = mem[_13038 + 32]
                    mem[u + 192] = mem[_13038 + 92 len 4]
                else:
                    mem[_11645 + u + 416] = 0
                    mem[u + 64] = mem[_11628 + 76 len 20]
                    mem[u + 96] = mem[_11628 + 108 len 20]
                    _13042 = mem[_11628 + 128]
                    mem[u + 128] = mem[mem[_11628 + 128] + 12 len 20]
                    mem[u + 160] = mem[_13042 + 32]
                    mem[u + 192] = mem[_13042 + 92 len 4]
                mem[u + 224] = mem[_11628 + 160]
                if mem[_11628 + 192] >= 3:
                    revert with 0, 33
                mem[u + 256] = mem[_11628 + 192]
                mem[u + 288] = mem[_11628 + 224]
                mem[u + 320] = mem[_11628 + 287 len 1]
                mem[u + 352] = mem[_11628 + 319 len 1]
                idx = idx + 1
                s = s + 32
                u = ceil32(_11645) + u + 416
                v = v + 32
                continue 
            return memory
              from mem[64]
               len u - mem[64]
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 864] = 0
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 896] = 96
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 928] = 0
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 960] = 0
        mem[64] = _748 + (32 * sub_73a4b755[address(arg1)]) + 1280
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 1184] = 0
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 1216] = 0
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 1248] = 0
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 992] = _748 + (32 * sub_73a4b755[address(arg1)]) + 1184
        mem[_748 + (32 * sub_73a4b755[address(arg1)]) + 1024] = 0
        mem[var43002] = 0
        mem[var43002 + 32] = 0
        mem[var43002 + 64] = 0
        mem[var43002 + 96] = 0
        mem[var45002] = var45001
        if var45003 - 1:
            mem[64] = _748 + (32 * sub_73a4b755[address(arg1)]) + 1696
            mem[var51002] = 0
            mem[var51002 + 32] = 0
            mem[var51002 + 64] = 0
            mem[var51002 + 96] = 0
            mem[var53002] = var53001
            if not var53003 - 1:
                mem[0] = address(arg1)
                mem[32] = 13
                idx = 0
                while idx < sub_73a4b755[address(arg1)]:
                    if idx >= sub_73a4b755[address(arg1)]:
                        revert with 0, 50
                    mem[0] = sub_73a4b755[address(arg1)][idx]
                    mem[32] = 11
                    _21328 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_21328] = stor11[stor13[address(arg1)][idx]].field_0
                    if stor11[stor13[address(arg1)][idx]].field_256:
                        if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        _21363 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) + 32
                        mem[_21363] = uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5
                        if stor11[stor13[address(arg1)][idx]].field_256:
                            if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                mem[_21328 + 32] = _21363
                                mem[_21328 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_21328 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _21457 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_21457] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_21457 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_21457 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_21328 + 128] = _21457
                            else:
                                if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                    mem[_21363 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                    mem[_21328 + 32] = _21363
                                    mem[_21328 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_21328 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _21518 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_21518] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_21518 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_21518 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_21328 + 128] = _21518
                                else:
                                    mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                    mem[_21363 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                    s = _21363 + 32
                                    t = sha3(mem[0])
                                    while _21363 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                        mem[0] = address(arg1)
                                        mem[32] = 13
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_21328 + 32] = _21363
                                    mem[_21328 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_21328 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _23249 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_23249] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_23249 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_23249 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_21328 + 128] = _23249
                        else:
                            if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                revert with 0, 34
                            if not stor11[stor13[address(arg1)][idx]].field_257:
                                mem[_21328 + 32] = _21363
                                mem[_21328 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_21328 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _21484 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_21484] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_21484 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_21484 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_21328 + 128] = _21484
                            else:
                                if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                    mem[_21363 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                    mem[_21328 + 32] = _21363
                                    mem[_21328 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_21328 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _21557 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_21557] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_21557 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_21557 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_21328 + 128] = _21557
                                else:
                                    mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                    mem[_21363 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                    s = _21363 + 32
                                    t = sha3(mem[0])
                                    while _21363 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                        mem[0] = address(arg1)
                                        mem[32] = 13
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_21328 + 32] = _21363
                                    mem[_21328 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_21328 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _23250 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_23250] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_23250 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_23250 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_21328 + 128] = _23250
                    else:
                        if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                            revert with 0, 34
                        _21385 = mem[64]
                        mem[64] = mem[64] + ceil32(stor11[stor13[address(arg1)][idx]].field_257) + 32
                        mem[_21385] = stor11[stor13[address(arg1)][idx]].field_257
                        if stor11[stor13[address(arg1)][idx]].field_256:
                            if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                mem[_21328 + 32] = _21385
                                mem[_21328 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_21328 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _21485 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_21485] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_21485 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_21485 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_21328 + 128] = _21485
                            else:
                                if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                    mem[_21385 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                    mem[_21328 + 32] = _21385
                                    mem[_21328 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_21328 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _21558 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_21558] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_21558 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_21558 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_21328 + 128] = _21558
                                else:
                                    mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                    mem[_21385 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                    s = _21385 + 32
                                    t = sha3(mem[0])
                                    while _21385 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                        mem[0] = address(arg1)
                                        mem[32] = 13
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_21328 + 32] = _21385
                                    mem[_21328 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_21328 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _23251 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_23251] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_23251 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_23251 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_21328 + 128] = _23251
                        else:
                            if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                revert with 0, 34
                            if not stor11[stor13[address(arg1)][idx]].field_257:
                                mem[_21328 + 32] = _21385
                                mem[_21328 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_21328 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _21521 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_21521] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_21521 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_21521 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_21328 + 128] = _21521
                            else:
                                if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                    mem[_21385 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                    mem[_21328 + 32] = _21385
                                    mem[_21328 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_21328 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _21607 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_21607] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_21607 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_21607 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_21328 + 128] = _21607
                                else:
                                    mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                    mem[_21385 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                    s = _21385 + 32
                                    t = sha3(mem[0])
                                    while _21385 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                        mem[0] = address(arg1)
                                        mem[32] = 13
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_21328 + 32] = _21385
                                    mem[_21328 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_21328 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _23252 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_23252] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_23252 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_23252 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_21328 + 128] = _23252
                    mem[_21328 + 160] = stor11[stor13[address(arg1)][idx]].field_1792
                    if stor11[stor13[address(arg1)][idx]].field_2048 > 2:
                        revert with 0, 33
                    mem[_21328 + 192] = stor11[stor13[address(arg1)][idx]].field_2048
                    mem[_21328 + 224] = stor11[stor13[address(arg1)][idx]].field_2304
                    mem[_21328 + 256] = stor11[stor13[address(arg1)][idx]].field_2560
                    mem[_21328 + 288] = stor11[stor13[address(arg1)][idx]].field_2568
                    if not arg2:
                        if 0 >= mem[_748]:
                            revert with 0, 50
                        mem[_748 + 32] = _21328
                    else:
                        if stor11[stor13[address(arg1)][idx]].field_1024 == address(arg1):
                            if block.timestamp <= stor11[stor13[address(arg1)][idx]].field_1280:
                                if 0 >= mem[_748]:
                                    revert with 0, 50
                                mem[_748 + 32] = _21328
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 13
                    idx = idx + 1
                    continue 
                mem[_748] = 0
                mem[mem[64]] = 64
            # nil
        else:
            mem[0] = address(arg1)
            mem[32] = 13
            idx = 0
            while idx < sub_73a4b755[address(arg1)]:
                if idx >= sub_73a4b755[address(arg1)]:
                    revert with 0, 50
                mem[0] = sub_73a4b755[address(arg1)][idx]
                mem[32] = 11
                _14740 = mem[64]
                mem[64] = mem[64] + 320
                mem[_14740] = stor11[stor13[address(arg1)][idx]].field_0
                if stor11[stor13[address(arg1)][idx]].field_256:
                    if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    _14770 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) + 32
                    mem[_14770] = uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5
                    if stor11[stor13[address(arg1)][idx]].field_256:
                        if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                            mem[_14740 + 32] = _14770
                            mem[_14740 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                            mem[_14740 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                            _14849 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_14849] = stor11[stor13[address(arg1)][idx]].field_1024
                            mem[_14849 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                            mem[_14849 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                            mem[_14740 + 128] = _14849
                        else:
                            if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                mem[_14770 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                mem[_14740 + 32] = _14770
                                mem[_14740 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_14740 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _14899 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_14899] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_14899 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_14899 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_14740 + 128] = _14899
                            else:
                                mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                mem[_14770 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                s = _14770 + 32
                                t = sha3(mem[0])
                                while _14770 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                    mem[0] = address(arg1)
                                    mem[32] = 13
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_14740 + 32] = _14770
                                mem[_14740 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_14740 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _16354 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_16354] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_16354 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_16354 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_14740 + 128] = _16354
                    else:
                        if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                            revert with 0, 34
                        if not stor11[stor13[address(arg1)][idx]].field_257:
                            mem[_14740 + 32] = _14770
                            mem[_14740 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                            mem[_14740 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                            _14872 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_14872] = stor11[stor13[address(arg1)][idx]].field_1024
                            mem[_14872 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                            mem[_14872 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                            mem[_14740 + 128] = _14872
                        else:
                            if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                mem[_14770 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                mem[_14740 + 32] = _14770
                                mem[_14740 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_14740 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _14931 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_14931] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_14931 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_14931 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_14740 + 128] = _14931
                            else:
                                mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                mem[_14770 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                s = _14770 + 32
                                t = sha3(mem[0])
                                while _14770 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                    mem[0] = address(arg1)
                                    mem[32] = 13
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_14740 + 32] = _14770
                                mem[_14740 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_14740 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _16355 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_16355] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_16355 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_16355 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_14740 + 128] = _16355
                else:
                    if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                        revert with 0, 34
                    _14789 = mem[64]
                    mem[64] = mem[64] + ceil32(stor11[stor13[address(arg1)][idx]].field_257) + 32
                    mem[_14789] = stor11[stor13[address(arg1)][idx]].field_257
                    if stor11[stor13[address(arg1)][idx]].field_256:
                        if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                            mem[_14740 + 32] = _14789
                            mem[_14740 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                            mem[_14740 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                            _14873 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_14873] = stor11[stor13[address(arg1)][idx]].field_1024
                            mem[_14873 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                            mem[_14873 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                            mem[_14740 + 128] = _14873
                        else:
                            if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                mem[_14789 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                mem[_14740 + 32] = _14789
                                mem[_14740 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_14740 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _14932 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_14932] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_14932 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_14932 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_14740 + 128] = _14932
                            else:
                                mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                mem[_14789 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                s = _14789 + 32
                                t = sha3(mem[0])
                                while _14789 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                    mem[0] = address(arg1)
                                    mem[32] = 13
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_14740 + 32] = _14789
                                mem[_14740 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_14740 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _16356 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_16356] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_16356 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_16356 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_14740 + 128] = _16356
                    else:
                        if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                            revert with 0, 34
                        if not stor11[stor13[address(arg1)][idx]].field_257:
                            mem[_14740 + 32] = _14789
                            mem[_14740 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                            mem[_14740 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                            _14902 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_14902] = stor11[stor13[address(arg1)][idx]].field_1024
                            mem[_14902 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                            mem[_14902 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                            mem[_14740 + 128] = _14902
                        else:
                            if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                mem[_14789 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                mem[_14740 + 32] = _14789
                                mem[_14740 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_14740 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _14972 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_14972] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_14972 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_14972 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_14740 + 128] = _14972
                            else:
                                mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                mem[_14789 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                s = _14789 + 32
                                t = sha3(mem[0])
                                while _14789 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                    mem[0] = address(arg1)
                                    mem[32] = 13
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_14740 + 32] = _14789
                                mem[_14740 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_14740 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _16357 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_16357] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_16357 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_16357 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_14740 + 128] = _16357
                mem[_14740 + 160] = stor11[stor13[address(arg1)][idx]].field_1792
                if stor11[stor13[address(arg1)][idx]].field_2048 > 2:
                    revert with 0, 33
                mem[_14740 + 192] = stor11[stor13[address(arg1)][idx]].field_2048
                mem[_14740 + 224] = stor11[stor13[address(arg1)][idx]].field_2304
                mem[_14740 + 256] = stor11[stor13[address(arg1)][idx]].field_2560
                mem[_14740 + 288] = stor11[stor13[address(arg1)][idx]].field_2568
                if not arg2:
                    if 0 >= mem[_748]:
                        revert with 0, 50
                    mem[_748 + 32] = _14740
                else:
                    if stor11[stor13[address(arg1)][idx]].field_1024 == address(arg1):
                        if block.timestamp <= stor11[stor13[address(arg1)][idx]].field_1280:
                            if 0 >= mem[_748]:
                                revert with 0, 50
                            mem[_748 + 32] = _14740
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 13
                idx = idx + 1
                continue 
            mem[_748] = 0
            _14737 = mem[64]
            mem[mem[64]] = 64
            _14757 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 96
            u = mem[64] + 96
            while idx < _14757:
                mem[u] = t + -_14737 - 96
                _16348 = mem[s]
                mem[t] = mem[mem[s]]
                _16353 = mem[_16348 + 32]
                mem[t + 32] = 384
                _16377 = mem[_16353]
                mem[t + 384] = mem[_16353]
                v = 0
                while v < _16377:
                    mem[v + t + 416] = mem[v + _16353 + 32]
                    v = v + 32
                    continue 
                if ceil32(_16377) <= _16377:
                    mem[t + 64] = mem[_16348 + 76 len 20]
                    mem[t + 96] = mem[_16348 + 108 len 20]
                    _17745 = mem[_16348 + 128]
                    mem[t + 128] = mem[mem[_16348 + 128] + 12 len 20]
                    mem[t + 160] = mem[_17745 + 32]
                    mem[t + 192] = mem[_17745 + 92 len 4]
                else:
                    mem[_16377 + t + 416] = 0
                    mem[t + 64] = mem[_16348 + 76 len 20]
                    mem[t + 96] = mem[_16348 + 108 len 20]
                    _17749 = mem[_16348 + 128]
                    mem[t + 128] = mem[mem[_16348 + 128] + 12 len 20]
                    mem[t + 160] = mem[_17749 + 32]
                    mem[t + 192] = mem[_17749 + 92 len 4]
                mem[t + 224] = mem[_16348 + 160]
                if mem[_16348 + 192] >= 3:
                    revert with 0, 33
                mem[t + 256] = mem[_16348 + 192]
                mem[t + 288] = mem[_16348 + 224]
                mem[t + 320] = mem[_16348 + 287 len 1]
                mem[t + 352] = mem[_16348 + 319 len 1]
                idx = idx + 1
                s = s + 32
                t = ceil32(_16377) + t + 416
                u = u + 32
                continue 
            mem[_14737 + 32] = t - _14737
            _16376 = mem[_748]
            mem[t] = mem[_748]
            idx = 0
            s = _748 + 32
            u = t + (32 * _16376) + 32
            v = t + 32
            while idx < _16376:
                mem[v] = u + -t - 32
                _17675 = mem[s]
                mem[u] = mem[mem[s]]
                _17684 = mem[_17675 + 32]
                mem[u + 32] = 384
                _17696 = mem[_17684]
                mem[u + 384] = mem[_17684]
                t = 0
                while t < _17696:
                    mem[t + u + 416] = mem[t + _17684 + 32]
                    t = t + 32
                    continue 
                if ceil32(_17696) <= _17696:
                    mem[u + 64] = mem[_17675 + 76 len 20]
                    mem[u + 96] = mem[_17675 + 108 len 20]
                    _19304 = mem[_17675 + 128]
                    mem[u + 128] = mem[mem[_17675 + 128] + 12 len 20]
                    mem[u + 160] = mem[_19304 + 32]
                    mem[u + 192] = mem[_19304 + 92 len 4]
                else:
                    mem[_17696 + u + 416] = 0
                    mem[u + 64] = mem[_17675 + 76 len 20]
                    mem[u + 96] = mem[_17675 + 108 len 20]
                    _19308 = mem[_17675 + 128]
                    mem[u + 128] = mem[mem[_17675 + 128] + 12 len 20]
                    mem[u + 160] = mem[_19308 + 32]
                    mem[u + 192] = mem[_19308 + 92 len 4]
                mem[u + 224] = mem[_17675 + 160]
                if mem[_17675 + 192] >= 3:
                    revert with 0, 33
                mem[u + 256] = mem[_17675 + 192]
                mem[u + 288] = mem[_17675 + 224]
                mem[u + 320] = mem[_17675 + 287 len 1]
                mem[u + 352] = mem[_17675 + 319 len 1]
                idx = idx + 1
                s = s + 32
                u = ceil32(_17696) + u + 416
                v = v + 32
                continue 
            return memory
              from mem[64]
               len u - mem[64]
    else:
        mem[(32 * sub_0316c4ea[address(arg1)]) + 128] = 0
        mem[(32 * sub_0316c4ea[address(arg1)]) + 160] = 96
        mem[(32 * sub_0316c4ea[address(arg1)]) + 192] = 0
        mem[(32 * sub_0316c4ea[address(arg1)]) + 224] = 0
        mem[64] = (32 * sub_0316c4ea[address(arg1)]) + 544
        mem[(32 * sub_0316c4ea[address(arg1)]) + 448] = 0
        mem[(32 * sub_0316c4ea[address(arg1)]) + 480] = 0
        mem[(32 * sub_0316c4ea[address(arg1)]) + 512] = 0
        mem[(32 * sub_0316c4ea[address(arg1)]) + 256] = (32 * sub_0316c4ea[address(arg1)]) + 448
        mem[(32 * sub_0316c4ea[address(arg1)]) + 288] = 0
        mem[var22002] = 0
        mem[var22002 + 32] = 0
        mem[var22002 + 64] = 0
        mem[var22002 + 96] = 0
        mem[var24002] = var24001
        if not var24003 - 1:
            mem[0] = address(arg1)
            idx = 0
            while idx < sub_0316c4ea[address(arg1)]:
                if idx >= sub_0316c4ea[address(arg1)]:
                    revert with 0, 50
                mem[0] = sub_0316c4ea[address(arg1)][idx]
                mem[32] = 11
                _3749 = mem[64]
                mem[64] = mem[64] + 320
                mem[_3749] = stor11[stor12[address(arg1)][idx]].field_0
                if stor11[stor12[address(arg1)][idx]].field_256:
                    if stor11[stor12[address(arg1)][idx]].field_256 == uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5 < 32:
                        revert with 0, 34
                    _3777 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5) + 32
                    mem[_3777] = uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5
                    if stor11[stor12[address(arg1)][idx]].field_256:
                        if stor11[stor12[address(arg1)][idx]].field_256 == uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor11[stor12[address(arg1)][idx]].field_256):
                            mem[_3749 + 32] = _3777
                            mem[_3749 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                            mem[_3749 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                            _3822 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3822] = stor11[stor12[address(arg1)][idx]].field_1024
                            mem[_3822 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                            mem[_3822 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                            mem[_3749 + 128] = _3822
                        else:
                            if 31 >= uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5:
                                mem[_3777 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_264
                                mem[_3749 + 32] = _3777
                                mem[_3749 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                mem[_3749 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                _3841 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3841] = stor11[stor12[address(arg1)][idx]].field_1024
                                mem[_3841 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                mem[_3841 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                mem[_3749 + 128] = _3841
                            else:
                                mem[0] = sha3(sub_0316c4ea[address(arg1)][idx], 11) + 1
                                mem[_3777 + 32] = stor11[stor12[address(arg1)][idx]][1].field_0
                                s = _3777 + 32
                                t = sha3(mem[0])
                                while _3777 + (uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5) > s:
                                    mem[0] = address(arg1)
                                    mem[32] = 12
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_3749 + 32] = _3777
                                mem[_3749 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                mem[_3749 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                _4827 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4827] = stor11[stor12[address(arg1)][idx]].field_1024
                                mem[_4827 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                mem[_4827 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                mem[_3749 + 128] = _4827
                    else:
                        if stor11[stor12[address(arg1)][idx]].field_256 == stor11[stor12[address(arg1)][idx]].field_257 < 32:
                            revert with 0, 34
                        if not stor11[stor12[address(arg1)][idx]].field_257:
                            mem[_3749 + 32] = _3777
                            mem[_3749 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                            mem[_3749 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                            _3835 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3835] = stor11[stor12[address(arg1)][idx]].field_1024
                            mem[_3835 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                            mem[_3835 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                            mem[_3749 + 128] = _3835
                        else:
                            if 31 >= stor11[stor12[address(arg1)][idx]].field_257:
                                mem[_3777 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_264
                                mem[_3749 + 32] = _3777
                                mem[_3749 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                mem[_3749 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                _3856 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3856] = stor11[stor12[address(arg1)][idx]].field_1024
                                mem[_3856 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                mem[_3856 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                mem[_3749 + 128] = _3856
                            else:
                                mem[0] = sha3(sub_0316c4ea[address(arg1)][idx], 11) + 1
                                mem[_3777 + 32] = stor11[stor12[address(arg1)][idx]][1].field_0
                                s = _3777 + 32
                                t = sha3(mem[0])
                                while _3777 + stor11[stor12[address(arg1)][idx]].field_257 > s:
                                    mem[0] = address(arg1)
                                    mem[32] = 12
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_3749 + 32] = _3777
                                mem[_3749 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                mem[_3749 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                _4828 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4828] = stor11[stor12[address(arg1)][idx]].field_1024
                                mem[_4828 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                mem[_4828 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                mem[_3749 + 128] = _4828
                else:
                    if stor11[stor12[address(arg1)][idx]].field_256 == stor11[stor12[address(arg1)][idx]].field_257 < 32:
                        revert with 0, 34
                    _3786 = mem[64]
                    mem[64] = mem[64] + ceil32(stor11[stor12[address(arg1)][idx]].field_257) + 32
                    mem[_3786] = stor11[stor12[address(arg1)][idx]].field_257
                    if stor11[stor12[address(arg1)][idx]].field_256:
                        if stor11[stor12[address(arg1)][idx]].field_256 == uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor11[stor12[address(arg1)][idx]].field_256):
                            mem[_3749 + 32] = _3786
                            mem[_3749 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                            mem[_3749 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                            _3836 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3836] = stor11[stor12[address(arg1)][idx]].field_1024
                            mem[_3836 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                            mem[_3836 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                            mem[_3749 + 128] = _3836
                        else:
                            if 31 >= uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5:
                                mem[_3786 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_264
                                mem[_3749 + 32] = _3786
                                mem[_3749 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                mem[_3749 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                _3857 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3857] = stor11[stor12[address(arg1)][idx]].field_1024
                                mem[_3857 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                mem[_3857 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                mem[_3749 + 128] = _3857
                            else:
                                mem[0] = sha3(sub_0316c4ea[address(arg1)][idx], 11) + 1
                                mem[_3786 + 32] = stor11[stor12[address(arg1)][idx]][1].field_0
                                s = _3786 + 32
                                t = sha3(mem[0])
                                while _3786 + (uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5) > s:
                                    mem[0] = address(arg1)
                                    mem[32] = 12
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_3749 + 32] = _3786
                                mem[_3749 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                mem[_3749 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                _4829 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4829] = stor11[stor12[address(arg1)][idx]].field_1024
                                mem[_4829 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                mem[_4829 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                mem[_3749 + 128] = _4829
                    else:
                        if stor11[stor12[address(arg1)][idx]].field_256 == stor11[stor12[address(arg1)][idx]].field_257 < 32:
                            revert with 0, 34
                        if not stor11[stor12[address(arg1)][idx]].field_257:
                            mem[_3749 + 32] = _3786
                            mem[_3749 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                            mem[_3749 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                            _3844 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_3844] = stor11[stor12[address(arg1)][idx]].field_1024
                            mem[_3844 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                            mem[_3844 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                            mem[_3749 + 128] = _3844
                        else:
                            if 31 >= stor11[stor12[address(arg1)][idx]].field_257:
                                mem[_3786 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_264
                                mem[_3749 + 32] = _3786
                                mem[_3749 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                mem[_3749 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                _3874 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3874] = stor11[stor12[address(arg1)][idx]].field_1024
                                mem[_3874 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                mem[_3874 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                mem[_3749 + 128] = _3874
                            else:
                                mem[0] = sha3(sub_0316c4ea[address(arg1)][idx], 11) + 1
                                mem[_3786 + 32] = stor11[stor12[address(arg1)][idx]][1].field_0
                                s = _3786 + 32
                                t = sha3(mem[0])
                                while _3786 + stor11[stor12[address(arg1)][idx]].field_257 > s:
                                    mem[0] = address(arg1)
                                    mem[32] = 12
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_3749 + 32] = _3786
                                mem[_3749 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                mem[_3749 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                _4830 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4830] = stor11[stor12[address(arg1)][idx]].field_1024
                                mem[_4830 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                mem[_4830 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                mem[_3749 + 128] = _4830
                mem[_3749 + 160] = stor11[stor12[address(arg1)][idx]].field_1792
                if stor11[stor12[address(arg1)][idx]].field_2048 > 2:
                    revert with 0, 33
                mem[_3749 + 192] = stor11[stor12[address(arg1)][idx]].field_2048
                mem[_3749 + 224] = stor11[stor12[address(arg1)][idx]].field_2304
                mem[_3749 + 256] = stor11[stor12[address(arg1)][idx]].field_2560
                mem[_3749 + 288] = stor11[stor12[address(arg1)][idx]].field_2568
                if not arg2:
                    if 0 >= mem[96]:
                        revert with 0, 50
                    mem[128] = _3749
                else:
                    if stor11[stor12[address(arg1)][idx]].field_2048 > 2:
                        revert with 0, 33
                    if not stor11[stor12[address(arg1)][idx]].field_2048:
                        if 0 >= mem[96]:
                            revert with 0, 50
                        mem[128] = _3749
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 12
                idx = idx + 1
                continue 
            mem[96] = 0
            mem[0] = address(arg1)
            mem[32] = 13
            if sub_73a4b755[address(arg1)] > test266151307():
                revert with 0, 65
            _3746 = mem[64]
            mem[mem[64]] = sub_73a4b755[address(arg1)]
            mem[64] = mem[64] + (32 * sub_73a4b755[address(arg1)]) + 32
            if not sub_73a4b755[address(arg1)]:
                mem[0] = address(arg1)
                mem[32] = 13
                idx = 0
                while idx < sub_73a4b755[address(arg1)]:
                    if idx >= sub_73a4b755[address(arg1)]:
                        revert with 0, 50
                    mem[0] = sub_73a4b755[address(arg1)][idx]
                    mem[32] = 11
                    _4826 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_4826] = stor11[stor13[address(arg1)][idx]].field_0
                    if stor11[stor13[address(arg1)][idx]].field_256:
                        if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        _4846 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) + 32
                        mem[_4846] = uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5
                        if stor11[stor13[address(arg1)][idx]].field_256:
                            if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                mem[_4826 + 32] = _4846
                                mem[_4826 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_4826 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _4900 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4900] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_4900 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_4900 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_4826 + 128] = _4900
                            else:
                                if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                    mem[_4846 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                    mem[_4826 + 32] = _4846
                                    mem[_4826 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_4826 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _4924 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4924] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_4924 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_4924 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_4826 + 128] = _4924
                                else:
                                    mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                    mem[_4846 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                    s = _4846 + 32
                                    t = sha3(mem[0])
                                    while _4846 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                        mem[0] = address(arg1)
                                        mem[32] = 13
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_4826 + 32] = _4846
                                    mem[_4826 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_4826 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _5828 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_5828] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_5828 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_5828 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_4826 + 128] = _5828
                        else:
                            if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                revert with 0, 34
                            if not stor11[stor13[address(arg1)][idx]].field_257:
                                mem[_4826 + 32] = _4846
                                mem[_4826 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_4826 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _4912 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4912] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_4912 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_4912 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_4826 + 128] = _4912
                            else:
                                if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                    mem[_4846 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                    mem[_4826 + 32] = _4846
                                    mem[_4826 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_4826 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _4944 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4944] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_4944 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_4944 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_4826 + 128] = _4944
                                else:
                                    mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                    mem[_4846 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                    s = _4846 + 32
                                    t = sha3(mem[0])
                                    while _4846 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                        mem[0] = address(arg1)
                                        mem[32] = 13
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_4826 + 32] = _4846
                                    mem[_4826 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_4826 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _5829 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_5829] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_5829 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_5829 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_4826 + 128] = _5829
                    else:
                        if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                            revert with 0, 34
                        _4862 = mem[64]
                        mem[64] = mem[64] + ceil32(stor11[stor13[address(arg1)][idx]].field_257) + 32
                        mem[_4862] = stor11[stor13[address(arg1)][idx]].field_257
                        if stor11[stor13[address(arg1)][idx]].field_256:
                            if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                mem[_4826 + 32] = _4862
                                mem[_4826 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_4826 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _4913 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4913] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_4913 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_4913 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_4826 + 128] = _4913
                            else:
                                if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                    mem[_4862 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                    mem[_4826 + 32] = _4862
                                    mem[_4826 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_4826 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _4945 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4945] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_4945 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_4945 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_4826 + 128] = _4945
                                else:
                                    mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                    mem[_4862 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                    s = _4862 + 32
                                    t = sha3(mem[0])
                                    while _4862 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                        mem[0] = address(arg1)
                                        mem[32] = 13
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_4826 + 32] = _4862
                                    mem[_4826 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_4826 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _5830 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_5830] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_5830 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_5830 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_4826 + 128] = _5830
                        else:
                            if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                revert with 0, 34
                            if not stor11[stor13[address(arg1)][idx]].field_257:
                                mem[_4826 + 32] = _4862
                                mem[_4826 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_4826 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _4927 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_4927] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_4927 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_4927 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_4826 + 128] = _4927
                            else:
                                if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                    mem[_4862 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                    mem[_4826 + 32] = _4862
                                    mem[_4826 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_4826 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _4975 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4975] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_4975 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_4975 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_4826 + 128] = _4975
                                else:
                                    mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                    mem[_4862 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                    s = _4862 + 32
                                    t = sha3(mem[0])
                                    while _4862 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                        mem[0] = address(arg1)
                                        mem[32] = 13
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_4826 + 32] = _4862
                                    mem[_4826 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_4826 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _5831 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_5831] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_5831 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_5831 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_4826 + 128] = _5831
                    mem[_4826 + 160] = stor11[stor13[address(arg1)][idx]].field_1792
                    if stor11[stor13[address(arg1)][idx]].field_2048 > 2:
                        revert with 0, 33
                    mem[_4826 + 192] = stor11[stor13[address(arg1)][idx]].field_2048
                    mem[_4826 + 224] = stor11[stor13[address(arg1)][idx]].field_2304
                    mem[_4826 + 256] = stor11[stor13[address(arg1)][idx]].field_2560
                    mem[_4826 + 288] = stor11[stor13[address(arg1)][idx]].field_2568
                    if not arg2:
                        if 0 >= mem[_3746]:
                            revert with 0, 50
                        mem[_3746 + 32] = _4826
                    else:
                        if stor11[stor13[address(arg1)][idx]].field_1024 == address(arg1):
                            if block.timestamp <= stor11[stor13[address(arg1)][idx]].field_1280:
                                if 0 >= mem[_3746]:
                                    revert with 0, 50
                                mem[_3746 + 32] = _4826
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 13
                    idx = idx + 1
                    continue 
                mem[_3746] = 0
                _4823 = mem[64]
                mem[mem[64]] = 64
                _4834 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + (32 * mem[96]) + 96
                u = mem[64] + 96
                while idx < _4834:
                    mem[u] = t + -_4823 - 96
                    _5819 = mem[s]
                    mem[t] = mem[mem[s]]
                    _5827 = mem[_5819 + 32]
                    mem[t + 32] = 384
                    _5837 = mem[_5827]
                    mem[t + 384] = mem[_5827]
                    v = 0
                    while v < _5837:
                        mem[v + t + 416] = mem[v + _5827 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_5837) <= _5837:
                        mem[t + 64] = mem[_5819 + 76 len 20]
                        mem[t + 96] = mem[_5819 + 108 len 20]
                        _6718 = mem[_5819 + 128]
                        mem[t + 128] = mem[mem[_5819 + 128] + 12 len 20]
                        mem[t + 160] = mem[_6718 + 32]
                        mem[t + 192] = mem[_6718 + 92 len 4]
                    else:
                        mem[_5837 + t + 416] = 0
                        mem[t + 64] = mem[_5819 + 76 len 20]
                        mem[t + 96] = mem[_5819 + 108 len 20]
                        _6722 = mem[_5819 + 128]
                        mem[t + 128] = mem[mem[_5819 + 128] + 12 len 20]
                        mem[t + 160] = mem[_6722 + 32]
                        mem[t + 192] = mem[_6722 + 92 len 4]
                    mem[t + 224] = mem[_5819 + 160]
                    if mem[_5819 + 192] >= 3:
                        revert with 0, 33
                    mem[t + 256] = mem[_5819 + 192]
                    mem[t + 288] = mem[_5819 + 224]
                    mem[t + 320] = mem[_5819 + 287 len 1]
                    mem[t + 352] = mem[_5819 + 319 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_5837) + t + 416
                    u = u + 32
                    continue 
                mem[_4823 + 32] = t - _4823
                _5836 = mem[_3746]
                mem[t] = mem[_3746]
                idx = 0
                s = _3746 + 32
                u = t + (32 * _5836) + 32
                v = t + 32
                while idx < _5836:
                    mem[v] = u + -t - 32
                    _6669 = mem[s]
                    mem[u] = mem[mem[s]]
                    _6676 = mem[_6669 + 32]
                    mem[u + 32] = 384
                    _6683 = mem[_6676]
                    mem[u + 384] = mem[_6676]
                    t = 0
                    while t < _6683:
                        mem[t + u + 416] = mem[t + _6676 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_6683) <= _6683:
                        mem[u + 64] = mem[_6669 + 76 len 20]
                        mem[u + 96] = mem[_6669 + 108 len 20]
                        _7872 = mem[_6669 + 128]
                        mem[u + 128] = mem[mem[_6669 + 128] + 12 len 20]
                        mem[u + 160] = mem[_7872 + 32]
                        mem[u + 192] = mem[_7872 + 92 len 4]
                    else:
                        mem[_6683 + u + 416] = 0
                        mem[u + 64] = mem[_6669 + 76 len 20]
                        mem[u + 96] = mem[_6669 + 108 len 20]
                        _7876 = mem[_6669 + 128]
                        mem[u + 128] = mem[mem[_6669 + 128] + 12 len 20]
                        mem[u + 160] = mem[_7876 + 32]
                        mem[u + 192] = mem[_7876 + 92 len 4]
                    mem[u + 224] = mem[_6669 + 160]
                    if mem[_6669 + 192] >= 3:
                        revert with 0, 33
                    mem[u + 256] = mem[_6669 + 192]
                    mem[u + 288] = mem[_6669 + 224]
                    mem[u + 320] = mem[_6669 + 287 len 1]
                    mem[u + 352] = mem[_6669 + 319 len 1]
                    idx = idx + 1
                    s = s + 32
                    u = ceil32(_6683) + u + 416
                    v = v + 32
                    continue 
                return memory
                  from mem[64]
                   len u - mem[64]
            mem[_3746 + (32 * sub_73a4b755[address(arg1)]) + 32] = 0
            mem[_3746 + (32 * sub_73a4b755[address(arg1)]) + 64] = 96
            mem[_3746 + (32 * sub_73a4b755[address(arg1)]) + 96] = 0
            mem[_3746 + (32 * sub_73a4b755[address(arg1)]) + 128] = 0
            mem[64] = _3746 + (32 * sub_73a4b755[address(arg1)]) + 448
            mem[_3746 + (32 * sub_73a4b755[address(arg1)]) + 352] = 0
            mem[_3746 + (32 * sub_73a4b755[address(arg1)]) + 384] = 0
            mem[_3746 + (32 * sub_73a4b755[address(arg1)]) + 416] = 0
            mem[_3746 + (32 * sub_73a4b755[address(arg1)]) + 160] = _3746 + (32 * sub_73a4b755[address(arg1)]) + 352
            mem[_3746 + (32 * sub_73a4b755[address(arg1)]) + 192] = 0
            mem[var37002] = 0
            mem[var37002 + 32] = 0
            mem[var37002 + 64] = 0
            mem[var37002 + 96] = 0
            mem[var39002] = var39001
            if not var39003 - 1:
                mem[0] = address(arg1)
                mem[32] = 13
                idx = 0
                while idx < sub_73a4b755[address(arg1)]:
                    if idx >= sub_73a4b755[address(arg1)]:
                        revert with 0, 50
                    mem[0] = sub_73a4b755[address(arg1)][idx]
                    mem[32] = 11
                    _9250 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_9250] = stor11[stor13[address(arg1)][idx]].field_0
                    if stor11[stor13[address(arg1)][idx]].field_256:
                        if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        _9275 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) + 32
                        mem[_9275] = uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5
                        if stor11[stor13[address(arg1)][idx]].field_256:
                            if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                mem[_9250 + 32] = _9275
                                mem[_9250 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_9250 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _9340 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_9340] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_9340 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_9340 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_9250 + 128] = _9340
                            else:
                                if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                    mem[_9275 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                    mem[_9250 + 32] = _9275
                                    mem[_9250 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_9250 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _9381 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_9381] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_9381 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_9381 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_9250 + 128] = _9381
                                else:
                                    mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                    mem[_9275 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                    s = _9275 + 32
                                    t = sha3(mem[0])
                                    while _9275 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                        mem[0] = address(arg1)
                                        mem[32] = 13
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_9250 + 32] = _9275
                                    mem[_9250 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_9250 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _10557 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_10557] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_10557 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_10557 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_9250 + 128] = _10557
                        else:
                            if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                revert with 0, 34
                            if not stor11[stor13[address(arg1)][idx]].field_257:
                                mem[_9250 + 32] = _9275
                                mem[_9250 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_9250 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _9361 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_9361] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_9361 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_9361 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_9250 + 128] = _9361
                            else:
                                if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                    mem[_9275 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                    mem[_9250 + 32] = _9275
                                    mem[_9250 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_9250 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _9409 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_9409] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_9409 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_9409 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_9250 + 128] = _9409
                                else:
                                    mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                    mem[_9275 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                    s = _9275 + 32
                                    t = sha3(mem[0])
                                    while _9275 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                        mem[0] = address(arg1)
                                        mem[32] = 13
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_9250 + 32] = _9275
                                    mem[_9250 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_9250 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _10558 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_10558] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_10558 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_10558 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_9250 + 128] = _10558
                    else:
                        if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                            revert with 0, 34
                        _9291 = mem[64]
                        mem[64] = mem[64] + ceil32(stor11[stor13[address(arg1)][idx]].field_257) + 32
                        mem[_9291] = stor11[stor13[address(arg1)][idx]].field_257
                        if stor11[stor13[address(arg1)][idx]].field_256:
                            if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                mem[_9250 + 32] = _9291
                                mem[_9250 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_9250 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _9362 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_9362] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_9362 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_9362 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_9250 + 128] = _9362
                            else:
                                if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                    mem[_9291 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                    mem[_9250 + 32] = _9291
                                    mem[_9250 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_9250 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _9410 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_9410] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_9410 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_9410 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_9250 + 128] = _9410
                                else:
                                    mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                    mem[_9291 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                    s = _9291 + 32
                                    t = sha3(mem[0])
                                    while _9291 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                        mem[0] = address(arg1)
                                        mem[32] = 13
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_9250 + 32] = _9291
                                    mem[_9250 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_9250 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _10559 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_10559] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_10559 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_10559 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_9250 + 128] = _10559
                        else:
                            if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                revert with 0, 34
                            if not stor11[stor13[address(arg1)][idx]].field_257:
                                mem[_9250 + 32] = _9291
                                mem[_9250 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_9250 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _9384 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_9384] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_9384 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_9384 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_9250 + 128] = _9384
                            else:
                                if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                    mem[_9291 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                    mem[_9250 + 32] = _9291
                                    mem[_9250 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_9250 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _9450 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_9450] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_9450 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_9450 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_9250 + 128] = _9450
                                else:
                                    mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                    mem[_9291 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                    s = _9291 + 32
                                    t = sha3(mem[0])
                                    while _9291 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                        mem[0] = address(arg1)
                                        mem[32] = 13
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_9250 + 32] = _9291
                                    mem[_9250 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_9250 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _10560 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_10560] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_10560 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_10560 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_9250 + 128] = _10560
                    mem[_9250 + 160] = stor11[stor13[address(arg1)][idx]].field_1792
                    if stor11[stor13[address(arg1)][idx]].field_2048 > 2:
                        revert with 0, 33
                    mem[_9250 + 192] = stor11[stor13[address(arg1)][idx]].field_2048
                    mem[_9250 + 224] = stor11[stor13[address(arg1)][idx]].field_2304
                    mem[_9250 + 256] = stor11[stor13[address(arg1)][idx]].field_2560
                    mem[_9250 + 288] = stor11[stor13[address(arg1)][idx]].field_2568
                    if not arg2:
                        if 0 >= mem[_3746]:
                            revert with 0, 50
                        mem[_3746 + 32] = _9250
                    else:
                        if stor11[stor13[address(arg1)][idx]].field_1024 == address(arg1):
                            if block.timestamp <= stor11[stor13[address(arg1)][idx]].field_1280:
                                if 0 >= mem[_3746]:
                                    revert with 0, 50
                                mem[_3746 + 32] = _9250
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 13
                    idx = idx + 1
                    continue 
                mem[_3746] = 0
                _9247 = mem[64]
                mem[mem[64]] = 64
                _9255 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + (32 * mem[96]) + 96
                u = mem[64] + 96
                while idx < _9255:
                    mem[u] = t + -_9247 - 96
                    _10542 = mem[s]
                    mem[t] = mem[mem[s]]
                    _10556 = mem[_10542 + 32]
                    mem[t + 32] = 384
                    _10568 = mem[_10556]
                    mem[t + 384] = mem[_10556]
                    v = 0
                    while v < _10568:
                        mem[v + t + 416] = mem[v + _10556 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_10568) <= _10568:
                        mem[t + 64] = mem[_10542 + 76 len 20]
                        mem[t + 96] = mem[_10542 + 108 len 20]
                        _11710 = mem[_10542 + 128]
                        mem[t + 128] = mem[mem[_10542 + 128] + 12 len 20]
                        mem[t + 160] = mem[_11710 + 32]
                        mem[t + 192] = mem[_11710 + 92 len 4]
                    else:
                        mem[_10568 + t + 416] = 0
                        mem[t + 64] = mem[_10542 + 76 len 20]
                        mem[t + 96] = mem[_10542 + 108 len 20]
                        _11714 = mem[_10542 + 128]
                        mem[t + 128] = mem[mem[_10542 + 128] + 12 len 20]
                        mem[t + 160] = mem[_11714 + 32]
                        mem[t + 192] = mem[_11714 + 92 len 4]
                    mem[t + 224] = mem[_10542 + 160]
                    if mem[_10542 + 192] >= 3:
                        revert with 0, 33
                    mem[t + 256] = mem[_10542 + 192]
                    mem[t + 288] = mem[_10542 + 224]
                    mem[t + 320] = mem[_10542 + 287 len 1]
                    mem[t + 352] = mem[_10542 + 319 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_10568) + t + 416
                    u = u + 32
                    continue 
                mem[_9247 + 32] = t - _9247
                _10567 = mem[_3746]
                mem[t] = mem[_3746]
                idx = 0
                s = _3746 + 32
                u = t + (32 * _10567) + 32
                v = t + 32
                while idx < _10567:
                    mem[v] = u + -t - 32
                    _11632 = mem[s]
                    mem[u] = mem[mem[s]]
                    _11641 = mem[_11632 + 32]
                    mem[u + 32] = 384
                    _11654 = mem[_11641]
                    mem[u + 384] = mem[_11641]
                    t = 0
                    while t < _11654:
                        mem[t + u + 416] = mem[t + _11641 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_11654) <= _11654:
                        mem[u + 64] = mem[_11632 + 76 len 20]
                        mem[u + 96] = mem[_11632 + 108 len 20]
                        _13060 = mem[_11632 + 128]
                        mem[u + 128] = mem[mem[_11632 + 128] + 12 len 20]
                        mem[u + 160] = mem[_13060 + 32]
                        mem[u + 192] = mem[_13060 + 92 len 4]
                    else:
                        mem[_11654 + u + 416] = 0
                        mem[u + 64] = mem[_11632 + 76 len 20]
                        mem[u + 96] = mem[_11632 + 108 len 20]
                        _13064 = mem[_11632 + 128]
                        mem[u + 128] = mem[mem[_11632 + 128] + 12 len 20]
                        mem[u + 160] = mem[_13064 + 32]
                        mem[u + 192] = mem[_13064 + 92 len 4]
                    mem[u + 224] = mem[_11632 + 160]
                    if mem[_11632 + 192] >= 3:
                        revert with 0, 33
                    mem[u + 256] = mem[_11632 + 192]
                    mem[u + 288] = mem[_11632 + 224]
                    mem[u + 320] = mem[_11632 + 287 len 1]
                    mem[u + 352] = mem[_11632 + 319 len 1]
                    idx = idx + 1
                    s = s + 32
                    u = ceil32(_11654) + u + 416
                    v = v + 32
                    continue 
                return memory
                  from mem[64]
                   len u - mem[64]
            mem[_3746 + (32 * sub_73a4b755[address(arg1)]) + 448] = 0
            mem[_3746 + (32 * sub_73a4b755[address(arg1)]) + 480] = 96
            mem[_3746 + (32 * sub_73a4b755[address(arg1)]) + 512] = 0
            mem[_3746 + (32 * sub_73a4b755[address(arg1)]) + 544] = 0
            mem[64] = _3746 + (32 * sub_73a4b755[address(arg1)]) + 864
            mem[_3746 + (32 * sub_73a4b755[address(arg1)]) + 768] = 0
            mem[_3746 + (32 * sub_73a4b755[address(arg1)]) + 800] = 0
            mem[_3746 + (32 * sub_73a4b755[address(arg1)]) + 832] = 0
            mem[_3746 + (32 * sub_73a4b755[address(arg1)]) + 576] = _3746 + (32 * sub_73a4b755[address(arg1)]) + 768
            mem[_3746 + (32 * sub_73a4b755[address(arg1)]) + 608] = 0
            mem[var45002] = 0
            mem[var45002 + 32] = 0
            mem[var45002 + 64] = 0
            mem[var45002 + 96] = 0
            mem[var47002] = var47001
            if var47003 - 1:
                mem[64] = _3746 + (32 * sub_73a4b755[address(arg1)]) + 1280
                mem[var53002] = 0
                mem[var53002 + 32] = 0
                mem[var53002 + 64] = 0
                mem[var53002 + 96] = 0
                mem[var55002] = var55001
                if not var55003 - 1:
                    mem[0] = address(arg1)
                    mem[32] = 13
                    idx = 0
                    while idx < sub_73a4b755[address(arg1)]:
                        if idx >= sub_73a4b755[address(arg1)]:
                            revert with 0, 50
                        mem[0] = sub_73a4b755[address(arg1)][idx]
                        mem[32] = 11
                        _21348 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_21348] = stor11[stor13[address(arg1)][idx]].field_0
                        if stor11[stor13[address(arg1)][idx]].field_256:
                            if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            _21381 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) + 32
                            mem[_21381] = uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5
                            if stor11[stor13[address(arg1)][idx]].field_256:
                                if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                    mem[_21348 + 32] = _21381
                                    mem[_21348 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_21348 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _21478 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_21478] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_21478 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_21478 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_21348 + 128] = _21478
                                else:
                                    if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                        mem[_21381 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                        mem[_21348 + 32] = _21381
                                        mem[_21348 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_21348 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _21547 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_21547] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_21547 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_21547 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_21348 + 128] = _21547
                                    else:
                                        mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                        mem[_21381 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                        s = _21381 + 32
                                        t = sha3(mem[0])
                                        while _21381 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                            mem[0] = address(arg1)
                                            mem[32] = 13
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_21348 + 32] = _21381
                                        mem[_21348 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_21348 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _23273 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_23273] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_23273 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_23273 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_21348 + 128] = _23273
                            else:
                                if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                    revert with 0, 34
                                if not stor11[stor13[address(arg1)][idx]].field_257:
                                    mem[_21348 + 32] = _21381
                                    mem[_21348 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_21348 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _21513 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_21513] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_21513 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_21513 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_21348 + 128] = _21513
                                else:
                                    if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                        mem[_21381 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                        mem[_21348 + 32] = _21381
                                        mem[_21348 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_21348 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _21593 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_21593] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_21593 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_21593 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_21348 + 128] = _21593
                                    else:
                                        mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                        mem[_21381 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                        s = _21381 + 32
                                        t = sha3(mem[0])
                                        while _21381 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                            mem[0] = address(arg1)
                                            mem[32] = 13
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_21348 + 32] = _21381
                                        mem[_21348 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_21348 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _23274 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_23274] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_23274 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_23274 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_21348 + 128] = _23274
                        else:
                            if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                revert with 0, 34
                            _21405 = mem[64]
                            mem[64] = mem[64] + ceil32(stor11[stor13[address(arg1)][idx]].field_257) + 32
                            mem[_21405] = stor11[stor13[address(arg1)][idx]].field_257
                            if stor11[stor13[address(arg1)][idx]].field_256:
                                if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                    mem[_21348 + 32] = _21405
                                    mem[_21348 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_21348 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _21514 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_21514] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_21514 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_21514 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_21348 + 128] = _21514
                                else:
                                    if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                        mem[_21405 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                        mem[_21348 + 32] = _21405
                                        mem[_21348 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_21348 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _21594 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_21594] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_21594 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_21594 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_21348 + 128] = _21594
                                    else:
                                        mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                        mem[_21405 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                        s = _21405 + 32
                                        t = sha3(mem[0])
                                        while _21405 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                            mem[0] = address(arg1)
                                            mem[32] = 13
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_21348 + 32] = _21405
                                        mem[_21348 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_21348 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _23275 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_23275] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_23275 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_23275 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_21348 + 128] = _23275
                            else:
                                if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                    revert with 0, 34
                                if not stor11[stor13[address(arg1)][idx]].field_257:
                                    mem[_21348 + 32] = _21405
                                    mem[_21348 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_21348 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _21550 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_21550] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_21550 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_21550 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_21348 + 128] = _21550
                                else:
                                    if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                        mem[_21405 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                        mem[_21348 + 32] = _21405
                                        mem[_21348 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_21348 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _21658 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_21658] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_21658 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_21658 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_21348 + 128] = _21658
                                    else:
                                        mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                        mem[_21405 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                        s = _21405 + 32
                                        t = sha3(mem[0])
                                        while _21405 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                            mem[0] = address(arg1)
                                            mem[32] = 13
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_21348 + 32] = _21405
                                        mem[_21348 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_21348 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _23276 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_23276] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_23276 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_23276 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_21348 + 128] = _23276
                        mem[_21348 + 160] = stor11[stor13[address(arg1)][idx]].field_1792
                        if stor11[stor13[address(arg1)][idx]].field_2048 > 2:
                            revert with 0, 33
                        mem[_21348 + 192] = stor11[stor13[address(arg1)][idx]].field_2048
                        mem[_21348 + 224] = stor11[stor13[address(arg1)][idx]].field_2304
                        mem[_21348 + 256] = stor11[stor13[address(arg1)][idx]].field_2560
                        mem[_21348 + 288] = stor11[stor13[address(arg1)][idx]].field_2568
                        if not arg2:
                            if 0 >= mem[_3746]:
                                revert with 0, 50
                            mem[_3746 + 32] = _21348
                        else:
                            if stor11[stor13[address(arg1)][idx]].field_1024 == address(arg1):
                                if block.timestamp <= stor11[stor13[address(arg1)][idx]].field_1280:
                                    if 0 >= mem[_3746]:
                                        revert with 0, 50
                                    mem[_3746 + 32] = _21348
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 13
                        idx = idx + 1
                        continue 
                    mem[_3746] = 0
                    mem[mem[64]] = 64
                # nil
            else:
                mem[0] = address(arg1)
                mem[32] = 13
                idx = 0
                while idx < sub_73a4b755[address(arg1)]:
                    if idx >= sub_73a4b755[address(arg1)]:
                        revert with 0, 50
                    mem[0] = sub_73a4b755[address(arg1)][idx]
                    mem[32] = 11
                    _14756 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_14756] = stor11[stor13[address(arg1)][idx]].field_0
                    if stor11[stor13[address(arg1)][idx]].field_256:
                        if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        _14785 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) + 32
                        mem[_14785] = uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5
                        if stor11[stor13[address(arg1)][idx]].field_256:
                            if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                mem[_14756 + 32] = _14785
                                mem[_14756 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_14756 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _14866 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_14866] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_14866 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_14866 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_14756 + 128] = _14866
                            else:
                                if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                    mem[_14785 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                    mem[_14756 + 32] = _14785
                                    mem[_14756 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_14756 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _14921 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_14921] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_14921 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_14921 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_14756 + 128] = _14921
                                else:
                                    mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                    mem[_14785 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                    s = _14785 + 32
                                    t = sha3(mem[0])
                                    while _14785 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                        mem[0] = address(arg1)
                                        mem[32] = 13
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_14756 + 32] = _14785
                                    mem[_14756 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_14756 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _16372 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_16372] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_16372 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_16372 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_14756 + 128] = _16372
                        else:
                            if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                revert with 0, 34
                            if not stor11[stor13[address(arg1)][idx]].field_257:
                                mem[_14756 + 32] = _14785
                                mem[_14756 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_14756 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _14894 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_14894] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_14894 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_14894 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_14756 + 128] = _14894
                            else:
                                if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                    mem[_14785 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                    mem[_14756 + 32] = _14785
                                    mem[_14756 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_14756 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _14958 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_14958] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_14958 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_14958 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_14756 + 128] = _14958
                                else:
                                    mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                    mem[_14785 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                    s = _14785 + 32
                                    t = sha3(mem[0])
                                    while _14785 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                        mem[0] = address(arg1)
                                        mem[32] = 13
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_14756 + 32] = _14785
                                    mem[_14756 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_14756 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _16373 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_16373] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_16373 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_16373 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_14756 + 128] = _16373
                    else:
                        if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                            revert with 0, 34
                        _14805 = mem[64]
                        mem[64] = mem[64] + ceil32(stor11[stor13[address(arg1)][idx]].field_257) + 32
                        mem[_14805] = stor11[stor13[address(arg1)][idx]].field_257
                        if stor11[stor13[address(arg1)][idx]].field_256:
                            if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                mem[_14756 + 32] = _14805
                                mem[_14756 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_14756 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _14895 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_14895] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_14895 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_14895 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_14756 + 128] = _14895
                            else:
                                if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                    mem[_14805 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                    mem[_14756 + 32] = _14805
                                    mem[_14756 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_14756 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _14959 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_14959] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_14959 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_14959 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_14756 + 128] = _14959
                                else:
                                    mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                    mem[_14805 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                    s = _14805 + 32
                                    t = sha3(mem[0])
                                    while _14805 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                        mem[0] = address(arg1)
                                        mem[32] = 13
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_14756 + 32] = _14805
                                    mem[_14756 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_14756 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _16374 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_16374] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_16374 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_16374 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_14756 + 128] = _16374
                        else:
                            if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                revert with 0, 34
                            if not stor11[stor13[address(arg1)][idx]].field_257:
                                mem[_14756 + 32] = _14805
                                mem[_14756 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                mem[_14756 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                _14924 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_14924] = stor11[stor13[address(arg1)][idx]].field_1024
                                mem[_14924 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                mem[_14924 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                mem[_14756 + 128] = _14924
                            else:
                                if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                    mem[_14805 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                    mem[_14756 + 32] = _14805
                                    mem[_14756 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_14756 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _15011 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_15011] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_15011 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_15011 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_14756 + 128] = _15011
                                else:
                                    mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                    mem[_14805 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                    s = _14805 + 32
                                    t = sha3(mem[0])
                                    while _14805 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                        mem[0] = address(arg1)
                                        mem[32] = 13
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_14756 + 32] = _14805
                                    mem[_14756 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_14756 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _16375 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_16375] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_16375 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_16375 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_14756 + 128] = _16375
                    mem[_14756 + 160] = stor11[stor13[address(arg1)][idx]].field_1792
                    if stor11[stor13[address(arg1)][idx]].field_2048 > 2:
                        revert with 0, 33
                    mem[_14756 + 192] = stor11[stor13[address(arg1)][idx]].field_2048
                    mem[_14756 + 224] = stor11[stor13[address(arg1)][idx]].field_2304
                    mem[_14756 + 256] = stor11[stor13[address(arg1)][idx]].field_2560
                    mem[_14756 + 288] = stor11[stor13[address(arg1)][idx]].field_2568
                    if not arg2:
                        if 0 >= mem[_3746]:
                            revert with 0, 50
                        mem[_3746 + 32] = _14756
                    else:
                        if stor11[stor13[address(arg1)][idx]].field_1024 == address(arg1):
                            if block.timestamp <= stor11[stor13[address(arg1)][idx]].field_1280:
                                if 0 >= mem[_3746]:
                                    revert with 0, 50
                                mem[_3746 + 32] = _14756
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 13
                    idx = idx + 1
                    continue 
                mem[_3746] = 0
                _14753 = mem[64]
                mem[mem[64]] = 64
                _14762 = mem[96]
                mem[mem[64] + 64] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + (32 * mem[96]) + 96
                u = mem[64] + 96
                while idx < _14762:
                    mem[u] = t + -_14753 - 96
                    _16351 = mem[s]
                    mem[t] = mem[mem[s]]
                    _16371 = mem[_16351 + 32]
                    mem[t + 32] = 384
                    _16385 = mem[_16371]
                    mem[t + 384] = mem[_16371]
                    v = 0
                    while v < _16385:
                        mem[v + t + 416] = mem[v + _16371 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_16385) <= _16385:
                        mem[t + 64] = mem[_16351 + 76 len 20]
                        mem[t + 96] = mem[_16351 + 108 len 20]
                        _17784 = mem[_16351 + 128]
                        mem[t + 128] = mem[mem[_16351 + 128] + 12 len 20]
                        mem[t + 160] = mem[_17784 + 32]
                        mem[t + 192] = mem[_17784 + 92 len 4]
                    else:
                        mem[_16385 + t + 416] = 0
                        mem[t + 64] = mem[_16351 + 76 len 20]
                        mem[t + 96] = mem[_16351 + 108 len 20]
                        _17788 = mem[_16351 + 128]
                        mem[t + 128] = mem[mem[_16351 + 128] + 12 len 20]
                        mem[t + 160] = mem[_17788 + 32]
                        mem[t + 192] = mem[_17788 + 92 len 4]
                    mem[t + 224] = mem[_16351 + 160]
                    if mem[_16351 + 192] >= 3:
                        revert with 0, 33
                    mem[t + 256] = mem[_16351 + 192]
                    mem[t + 288] = mem[_16351 + 224]
                    mem[t + 320] = mem[_16351 + 287 len 1]
                    mem[t + 352] = mem[_16351 + 319 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_16385) + t + 416
                    u = u + 32
                    continue 
                mem[_14753 + 32] = t - _14753
                _16384 = mem[_3746]
                mem[t] = mem[_3746]
                idx = 0
                s = _3746 + 32
                u = t + (32 * _16384) + 32
                v = t + 32
                while idx < _16384:
                    mem[v] = u + -t - 32
                    _17681 = mem[s]
                    mem[u] = mem[mem[s]]
                    _17692 = mem[_17681 + 32]
                    mem[u + 32] = 384
                    _17709 = mem[_17692]
                    mem[u + 384] = mem[_17692]
                    t = 0
                    while t < _17709:
                        mem[t + u + 416] = mem[t + _17692 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_17709) <= _17709:
                        mem[u + 64] = mem[_17681 + 76 len 20]
                        mem[u + 96] = mem[_17681 + 108 len 20]
                        _19334 = mem[_17681 + 128]
                        mem[u + 128] = mem[mem[_17681 + 128] + 12 len 20]
                        mem[u + 160] = mem[_19334 + 32]
                        mem[u + 192] = mem[_19334 + 92 len 4]
                    else:
                        mem[_17709 + u + 416] = 0
                        mem[u + 64] = mem[_17681 + 76 len 20]
                        mem[u + 96] = mem[_17681 + 108 len 20]
                        _19338 = mem[_17681 + 128]
                        mem[u + 128] = mem[mem[_17681 + 128] + 12 len 20]
                        mem[u + 160] = mem[_19338 + 32]
                        mem[u + 192] = mem[_19338 + 92 len 4]
                    mem[u + 224] = mem[_17681 + 160]
                    if mem[_17681 + 192] >= 3:
                        revert with 0, 33
                    mem[u + 256] = mem[_17681 + 192]
                    mem[u + 288] = mem[_17681 + 224]
                    mem[u + 320] = mem[_17681 + 287 len 1]
                    mem[u + 352] = mem[_17681 + 319 len 1]
                    idx = idx + 1
                    s = s + 32
                    u = ceil32(_17709) + u + 416
                    v = v + 32
                    continue 
                return memory
                  from mem[64]
                   len u - mem[64]
        else:
            mem[(32 * sub_0316c4ea[address(arg1)]) + 544] = 0
            mem[(32 * sub_0316c4ea[address(arg1)]) + 576] = 96
            mem[(32 * sub_0316c4ea[address(arg1)]) + 608] = 0
            mem[(32 * sub_0316c4ea[address(arg1)]) + 640] = 0
            mem[64] = (32 * sub_0316c4ea[address(arg1)]) + 960
            mem[(32 * sub_0316c4ea[address(arg1)]) + 864] = 0
            mem[(32 * sub_0316c4ea[address(arg1)]) + 896] = 0
            mem[(32 * sub_0316c4ea[address(arg1)]) + 928] = 0
            mem[(32 * sub_0316c4ea[address(arg1)]) + 672] = (32 * sub_0316c4ea[address(arg1)]) + 864
            mem[(32 * sub_0316c4ea[address(arg1)]) + 704] = 0
            mem[var30002] = 0
            mem[var30002 + 32] = 0
            mem[var30002 + 64] = 0
            mem[var30002 + 96] = 0
            mem[var32002] = var32001
            if not var32003 - 1:
                mem[0] = address(arg1)
                idx = 0
                while idx < sub_0316c4ea[address(arg1)]:
                    if idx >= sub_0316c4ea[address(arg1)]:
                        revert with 0, 50
                    mem[0] = sub_0316c4ea[address(arg1)][idx]
                    mem[32] = 11
                    _7831 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_7831] = stor11[stor12[address(arg1)][idx]].field_0
                    if stor11[stor12[address(arg1)][idx]].field_256:
                        if stor11[stor12[address(arg1)][idx]].field_256 == uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5 < 32:
                            revert with 0, 34
                        _7871 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5) + 32
                        mem[_7871] = uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5
                        if stor11[stor12[address(arg1)][idx]].field_256:
                            if stor11[stor12[address(arg1)][idx]].field_256 == uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor11[stor12[address(arg1)][idx]].field_256):
                                mem[_7831 + 32] = _7871
                                mem[_7831 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                mem[_7831 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                _7946 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_7946] = stor11[stor12[address(arg1)][idx]].field_1024
                                mem[_7946 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                mem[_7946 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                mem[_7831 + 128] = _7946
                            else:
                                if 31 >= uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5:
                                    mem[_7871 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_264
                                    mem[_7831 + 32] = _7871
                                    mem[_7831 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                    mem[_7831 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                    _7968 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_7968] = stor11[stor12[address(arg1)][idx]].field_1024
                                    mem[_7968 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                    mem[_7968 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                    mem[_7831 + 128] = _7968
                                else:
                                    mem[0] = sha3(sub_0316c4ea[address(arg1)][idx], 11) + 1
                                    mem[_7871 + 32] = stor11[stor12[address(arg1)][idx]][1].field_0
                                    s = _7871 + 32
                                    t = sha3(mem[0])
                                    while _7871 + (uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5) > s:
                                        mem[0] = address(arg1)
                                        mem[32] = 12
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_7831 + 32] = _7871
                                    mem[_7831 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                    mem[_7831 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                    _9243 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_9243] = stor11[stor12[address(arg1)][idx]].field_1024
                                    mem[_9243 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                    mem[_9243 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                    mem[_7831 + 128] = _9243
                        else:
                            if stor11[stor12[address(arg1)][idx]].field_256 == stor11[stor12[address(arg1)][idx]].field_257 < 32:
                                revert with 0, 34
                            if not stor11[stor12[address(arg1)][idx]].field_257:
                                mem[_7831 + 32] = _7871
                                mem[_7831 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                mem[_7831 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                _7962 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_7962] = stor11[stor12[address(arg1)][idx]].field_1024
                                mem[_7962 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                mem[_7962 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                mem[_7831 + 128] = _7962
                            else:
                                if 31 >= stor11[stor12[address(arg1)][idx]].field_257:
                                    mem[_7871 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_264
                                    mem[_7831 + 32] = _7871
                                    mem[_7831 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                    mem[_7831 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                    _7986 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_7986] = stor11[stor12[address(arg1)][idx]].field_1024
                                    mem[_7986 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                    mem[_7986 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                    mem[_7831 + 128] = _7986
                                else:
                                    mem[0] = sha3(sub_0316c4ea[address(arg1)][idx], 11) + 1
                                    mem[_7871 + 32] = stor11[stor12[address(arg1)][idx]][1].field_0
                                    s = _7871 + 32
                                    t = sha3(mem[0])
                                    while _7871 + stor11[stor12[address(arg1)][idx]].field_257 > s:
                                        mem[0] = address(arg1)
                                        mem[32] = 12
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_7831 + 32] = _7871
                                    mem[_7831 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                    mem[_7831 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                    _9244 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_9244] = stor11[stor12[address(arg1)][idx]].field_1024
                                    mem[_9244 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                    mem[_9244 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                    mem[_7831 + 128] = _9244
                    else:
                        if stor11[stor12[address(arg1)][idx]].field_256 == stor11[stor12[address(arg1)][idx]].field_257 < 32:
                            revert with 0, 34
                        _7888 = mem[64]
                        mem[64] = mem[64] + ceil32(stor11[stor12[address(arg1)][idx]].field_257) + 32
                        mem[_7888] = stor11[stor12[address(arg1)][idx]].field_257
                        if stor11[stor12[address(arg1)][idx]].field_256:
                            if stor11[stor12[address(arg1)][idx]].field_256 == uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor11[stor12[address(arg1)][idx]].field_256):
                                mem[_7831 + 32] = _7888
                                mem[_7831 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                mem[_7831 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                _7963 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_7963] = stor11[stor12[address(arg1)][idx]].field_1024
                                mem[_7963 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                mem[_7963 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                mem[_7831 + 128] = _7963
                            else:
                                if 31 >= uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5:
                                    mem[_7888 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_264
                                    mem[_7831 + 32] = _7888
                                    mem[_7831 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                    mem[_7831 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                    _7987 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_7987] = stor11[stor12[address(arg1)][idx]].field_1024
                                    mem[_7987 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                    mem[_7987 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                    mem[_7831 + 128] = _7987
                                else:
                                    mem[0] = sha3(sub_0316c4ea[address(arg1)][idx], 11) + 1
                                    mem[_7888 + 32] = stor11[stor12[address(arg1)][idx]][1].field_0
                                    s = _7888 + 32
                                    t = sha3(mem[0])
                                    while _7888 + (uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5) > s:
                                        mem[0] = address(arg1)
                                        mem[32] = 12
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_7831 + 32] = _7888
                                    mem[_7831 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                    mem[_7831 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                    _9245 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_9245] = stor11[stor12[address(arg1)][idx]].field_1024
                                    mem[_9245 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                    mem[_9245 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                    mem[_7831 + 128] = _9245
                        else:
                            if stor11[stor12[address(arg1)][idx]].field_256 == stor11[stor12[address(arg1)][idx]].field_257 < 32:
                                revert with 0, 34
                            if not stor11[stor12[address(arg1)][idx]].field_257:
                                mem[_7831 + 32] = _7888
                                mem[_7831 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                mem[_7831 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                _7971 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_7971] = stor11[stor12[address(arg1)][idx]].field_1024
                                mem[_7971 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                mem[_7971 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                mem[_7831 + 128] = _7971
                            else:
                                if 31 >= stor11[stor12[address(arg1)][idx]].field_257:
                                    mem[_7888 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_264
                                    mem[_7831 + 32] = _7888
                                    mem[_7831 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                    mem[_7831 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                    _8011 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_8011] = stor11[stor12[address(arg1)][idx]].field_1024
                                    mem[_8011 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                    mem[_8011 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                    mem[_7831 + 128] = _8011
                                else:
                                    mem[0] = sha3(sub_0316c4ea[address(arg1)][idx], 11) + 1
                                    mem[_7888 + 32] = stor11[stor12[address(arg1)][idx]][1].field_0
                                    s = _7888 + 32
                                    t = sha3(mem[0])
                                    while _7888 + stor11[stor12[address(arg1)][idx]].field_257 > s:
                                        mem[0] = address(arg1)
                                        mem[32] = 12
                                        mem[s + 32] = stor1[t].field_0
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_7831 + 32] = _7888
                                    mem[_7831 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                    mem[_7831 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                    _9246 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_9246] = stor11[stor12[address(arg1)][idx]].field_1024
                                    mem[_9246 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                    mem[_9246 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                    mem[_7831 + 128] = _9246
                    mem[_7831 + 160] = stor11[stor12[address(arg1)][idx]].field_1792
                    if stor11[stor12[address(arg1)][idx]].field_2048 > 2:
                        revert with 0, 33
                    mem[_7831 + 192] = stor11[stor12[address(arg1)][idx]].field_2048
                    mem[_7831 + 224] = stor11[stor12[address(arg1)][idx]].field_2304
                    mem[_7831 + 256] = stor11[stor12[address(arg1)][idx]].field_2560
                    mem[_7831 + 288] = stor11[stor12[address(arg1)][idx]].field_2568
                    if not arg2:
                        if 0 >= mem[96]:
                            revert with 0, 50
                        mem[128] = _7831
                    else:
                        if stor11[stor12[address(arg1)][idx]].field_2048 > 2:
                            revert with 0, 33
                        if not stor11[stor12[address(arg1)][idx]].field_2048:
                            if 0 >= mem[96]:
                                revert with 0, 50
                            mem[128] = _7831
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 12
                    idx = idx + 1
                    continue 
                mem[96] = 0
                mem[0] = address(arg1)
                mem[32] = 13
                if sub_73a4b755[address(arg1)] > test266151307():
                    revert with 0, 65
                _7828 = mem[64]
                mem[mem[64]] = sub_73a4b755[address(arg1)]
                mem[64] = mem[64] + (32 * sub_73a4b755[address(arg1)]) + 32
                if not sub_73a4b755[address(arg1)]:
                    mem[0] = address(arg1)
                    mem[32] = 13
                    idx = 0
                    while idx < sub_73a4b755[address(arg1)]:
                        if idx >= sub_73a4b755[address(arg1)]:
                            revert with 0, 50
                        mem[0] = sub_73a4b755[address(arg1)][idx]
                        mem[32] = 11
                        _9242 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_9242] = stor11[stor13[address(arg1)][idx]].field_0
                        if stor11[stor13[address(arg1)][idx]].field_256:
                            if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            _9267 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) + 32
                            mem[_9267] = uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5
                            if stor11[stor13[address(arg1)][idx]].field_256:
                                if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                    mem[_9242 + 32] = _9267
                                    mem[_9242 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_9242 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _9336 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_9336] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_9336 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_9336 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_9242 + 128] = _9336
                                else:
                                    if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                        mem[_9267 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                        mem[_9242 + 32] = _9267
                                        mem[_9242 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_9242 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _9371 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_9371] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_9371 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_9371 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_9242 + 128] = _9371
                                    else:
                                        mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                        mem[_9267 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                        s = _9267 + 32
                                        t = sha3(mem[0])
                                        while _9267 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                            mem[0] = address(arg1)
                                            mem[32] = 13
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_9242 + 32] = _9267
                                        mem[_9242 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_9242 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _10551 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_10551] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_10551 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_10551 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_9242 + 128] = _10551
                            else:
                                if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                    revert with 0, 34
                                if not stor11[stor13[address(arg1)][idx]].field_257:
                                    mem[_9242 + 32] = _9267
                                    mem[_9242 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_9242 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _9352 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_9352] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_9352 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_9352 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_9242 + 128] = _9352
                                else:
                                    if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                        mem[_9267 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                        mem[_9242 + 32] = _9267
                                        mem[_9242 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_9242 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _9398 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_9398] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_9398 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_9398 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_9242 + 128] = _9398
                                    else:
                                        mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                        mem[_9267 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                        s = _9267 + 32
                                        t = sha3(mem[0])
                                        while _9267 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                            mem[0] = address(arg1)
                                            mem[32] = 13
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_9242 + 32] = _9267
                                        mem[_9242 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_9242 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _10552 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_10552] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_10552 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_10552 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_9242 + 128] = _10552
                        else:
                            if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                revert with 0, 34
                            _9286 = mem[64]
                            mem[64] = mem[64] + ceil32(stor11[stor13[address(arg1)][idx]].field_257) + 32
                            mem[_9286] = stor11[stor13[address(arg1)][idx]].field_257
                            if stor11[stor13[address(arg1)][idx]].field_256:
                                if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                    mem[_9242 + 32] = _9286
                                    mem[_9242 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_9242 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _9353 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_9353] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_9353 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_9353 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_9242 + 128] = _9353
                                else:
                                    if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                        mem[_9286 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                        mem[_9242 + 32] = _9286
                                        mem[_9242 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_9242 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _9399 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_9399] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_9399 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_9399 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_9242 + 128] = _9399
                                    else:
                                        mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                        mem[_9286 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                        s = _9286 + 32
                                        t = sha3(mem[0])
                                        while _9286 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                            mem[0] = address(arg1)
                                            mem[32] = 13
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_9242 + 32] = _9286
                                        mem[_9242 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_9242 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _10553 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_10553] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_10553 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_10553 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_9242 + 128] = _10553
                            else:
                                if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                    revert with 0, 34
                                if not stor11[stor13[address(arg1)][idx]].field_257:
                                    mem[_9242 + 32] = _9286
                                    mem[_9242 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_9242 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _9374 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_9374] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_9374 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_9374 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_9242 + 128] = _9374
                                else:
                                    if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                        mem[_9286 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                        mem[_9242 + 32] = _9286
                                        mem[_9242 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_9242 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _9438 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_9438] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_9438 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_9438 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_9242 + 128] = _9438
                                    else:
                                        mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                        mem[_9286 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                        s = _9286 + 32
                                        t = sha3(mem[0])
                                        while _9286 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                            mem[0] = address(arg1)
                                            mem[32] = 13
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_9242 + 32] = _9286
                                        mem[_9242 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_9242 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _10554 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_10554] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_10554 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_10554 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_9242 + 128] = _10554
                        mem[_9242 + 160] = stor11[stor13[address(arg1)][idx]].field_1792
                        if stor11[stor13[address(arg1)][idx]].field_2048 > 2:
                            revert with 0, 33
                        mem[_9242 + 192] = stor11[stor13[address(arg1)][idx]].field_2048
                        mem[_9242 + 224] = stor11[stor13[address(arg1)][idx]].field_2304
                        mem[_9242 + 256] = stor11[stor13[address(arg1)][idx]].field_2560
                        mem[_9242 + 288] = stor11[stor13[address(arg1)][idx]].field_2568
                        if not arg2:
                            if 0 >= mem[_7828]:
                                revert with 0, 50
                            mem[_7828 + 32] = _9242
                        else:
                            if stor11[stor13[address(arg1)][idx]].field_1024 == address(arg1):
                                if block.timestamp <= stor11[stor13[address(arg1)][idx]].field_1280:
                                    if 0 >= mem[_7828]:
                                        revert with 0, 50
                                    mem[_7828 + 32] = _9242
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 13
                        idx = idx + 1
                        continue 
                    mem[_7828] = 0
                    _9239 = mem[64]
                    mem[mem[64]] = 64
                    _9254 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + (32 * mem[96]) + 96
                    u = mem[64] + 96
                    while idx < _9254:
                        mem[u] = t + -_9239 - 96
                        _10541 = mem[s]
                        mem[t] = mem[mem[s]]
                        _10550 = mem[_10541 + 32]
                        mem[t + 32] = 384
                        _10566 = mem[_10550]
                        mem[t + 384] = mem[_10550]
                        v = 0
                        while v < _10566:
                            mem[v + t + 416] = mem[v + _10550 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_10566) <= _10566:
                            mem[t + 64] = mem[_10541 + 76 len 20]
                            mem[t + 96] = mem[_10541 + 108 len 20]
                            _11693 = mem[_10541 + 128]
                            mem[t + 128] = mem[mem[_10541 + 128] + 12 len 20]
                            mem[t + 160] = mem[_11693 + 32]
                            mem[t + 192] = mem[_11693 + 92 len 4]
                        else:
                            mem[_10566 + t + 416] = 0
                            mem[t + 64] = mem[_10541 + 76 len 20]
                            mem[t + 96] = mem[_10541 + 108 len 20]
                            _11697 = mem[_10541 + 128]
                            mem[t + 128] = mem[mem[_10541 + 128] + 12 len 20]
                            mem[t + 160] = mem[_11697 + 32]
                            mem[t + 192] = mem[_11697 + 92 len 4]
                        mem[t + 224] = mem[_10541 + 160]
                        if mem[_10541 + 192] >= 3:
                            revert with 0, 33
                        mem[t + 256] = mem[_10541 + 192]
                        mem[t + 288] = mem[_10541 + 224]
                        mem[t + 320] = mem[_10541 + 287 len 1]
                        mem[t + 352] = mem[_10541 + 319 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_10566) + t + 416
                        u = u + 32
                        continue 
                    mem[_9239 + 32] = t - _9239
                    _10565 = mem[_7828]
                    mem[t] = mem[_7828]
                    idx = 0
                    s = _7828 + 32
                    u = t + (32 * _10565) + 32
                    v = t + 32
                    while idx < _10565:
                        mem[v] = u + -t - 32
                        _11630 = mem[s]
                        mem[u] = mem[mem[s]]
                        _11639 = mem[_11630 + 32]
                        mem[u + 32] = 384
                        _11648 = mem[_11639]
                        mem[u + 384] = mem[_11639]
                        t = 0
                        while t < _11648:
                            mem[t + u + 416] = mem[t + _11639 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_11648) <= _11648:
                            mem[u + 64] = mem[_11630 + 76 len 20]
                            mem[u + 96] = mem[_11630 + 108 len 20]
                            _13052 = mem[_11630 + 128]
                            mem[u + 128] = mem[mem[_11630 + 128] + 12 len 20]
                            mem[u + 160] = mem[_13052 + 32]
                            mem[u + 192] = mem[_13052 + 92 len 4]
                        else:
                            mem[_11648 + u + 416] = 0
                            mem[u + 64] = mem[_11630 + 76 len 20]
                            mem[u + 96] = mem[_11630 + 108 len 20]
                            _13056 = mem[_11630 + 128]
                            mem[u + 128] = mem[mem[_11630 + 128] + 12 len 20]
                            mem[u + 160] = mem[_13056 + 32]
                            mem[u + 192] = mem[_13056 + 92 len 4]
                        mem[u + 224] = mem[_11630 + 160]
                        if mem[_11630 + 192] >= 3:
                            revert with 0, 33
                        mem[u + 256] = mem[_11630 + 192]
                        mem[u + 288] = mem[_11630 + 224]
                        mem[u + 320] = mem[_11630 + 287 len 1]
                        mem[u + 352] = mem[_11630 + 319 len 1]
                        idx = idx + 1
                        s = s + 32
                        u = ceil32(_11648) + u + 416
                        v = v + 32
                        continue 
                    return memory
                      from mem[64]
                       len u - mem[64]
                mem[_7828 + (32 * sub_73a4b755[address(arg1)]) + 32] = 0
                mem[_7828 + (32 * sub_73a4b755[address(arg1)]) + 64] = 96
                mem[_7828 + (32 * sub_73a4b755[address(arg1)]) + 96] = 0
                mem[_7828 + (32 * sub_73a4b755[address(arg1)]) + 128] = 0
                mem[64] = _7828 + (32 * sub_73a4b755[address(arg1)]) + 448
                mem[_7828 + (32 * sub_73a4b755[address(arg1)]) + 352] = 0
                mem[_7828 + (32 * sub_73a4b755[address(arg1)]) + 384] = 0
                mem[_7828 + (32 * sub_73a4b755[address(arg1)]) + 416] = 0
                mem[_7828 + (32 * sub_73a4b755[address(arg1)]) + 160] = _7828 + (32 * sub_73a4b755[address(arg1)]) + 352
                mem[_7828 + (32 * sub_73a4b755[address(arg1)]) + 192] = 0
                mem[var45002] = 0
                mem[var45002 + 32] = 0
                mem[var45002 + 64] = 0
                mem[var45002 + 96] = 0
                mem[var47002] = var47001
                if var47003 - 1:
                    mem[64] = _7828 + (32 * sub_73a4b755[address(arg1)]) + 864
                    mem[var53002] = 0
                    mem[var53002 + 32] = 0
                    mem[var53002 + 64] = 0
                    mem[var53002 + 96] = 0
                    mem[var55002] = var55001
                    if not var55003 - 1:
                        mem[0] = address(arg1)
                        mem[32] = 13
                        idx = 0
                        while idx < sub_73a4b755[address(arg1)]:
                            if idx >= sub_73a4b755[address(arg1)]:
                                revert with 0, 50
                            mem[0] = sub_73a4b755[address(arg1)][idx]
                            mem[32] = 11
                            _21344 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_21344] = stor11[stor13[address(arg1)][idx]].field_0
                            if stor11[stor13[address(arg1)][idx]].field_256:
                                if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                _21378 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) + 32
                                mem[_21378] = uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5
                                if stor11[stor13[address(arg1)][idx]].field_256:
                                    if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                        revert with 0, 34
                                    if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                        mem[_21344 + 32] = _21378
                                        mem[_21344 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_21344 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _21474 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_21474] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_21474 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_21474 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_21344 + 128] = _21474
                                    else:
                                        if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                            mem[_21378 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                            mem[_21344 + 32] = _21378
                                            mem[_21344 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_21344 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _21540 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_21540] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_21540 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_21540 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_21344 + 128] = _21540
                                        else:
                                            mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                            mem[_21378 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                            s = _21378 + 32
                                            t = sha3(mem[0])
                                            while _21378 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                                mem[0] = address(arg1)
                                                mem[32] = 13
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_21344 + 32] = _21378
                                            mem[_21344 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_21344 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _23267 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_23267] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_23267 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_23267 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_21344 + 128] = _23267
                                else:
                                    if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                        revert with 0, 34
                                    if not stor11[stor13[address(arg1)][idx]].field_257:
                                        mem[_21344 + 32] = _21378
                                        mem[_21344 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_21344 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _21506 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_21506] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_21506 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_21506 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_21344 + 128] = _21506
                                    else:
                                        if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                            mem[_21378 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                            mem[_21344 + 32] = _21378
                                            mem[_21344 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_21344 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _21584 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_21584] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_21584 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_21584 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_21344 + 128] = _21584
                                        else:
                                            mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                            mem[_21378 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                            s = _21378 + 32
                                            t = sha3(mem[0])
                                            while _21378 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                                mem[0] = address(arg1)
                                                mem[32] = 13
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_21344 + 32] = _21378
                                            mem[_21344 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_21344 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _23268 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_23268] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_23268 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_23268 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_21344 + 128] = _23268
                            else:
                                if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                    revert with 0, 34
                                _21401 = mem[64]
                                mem[64] = mem[64] + ceil32(stor11[stor13[address(arg1)][idx]].field_257) + 32
                                mem[_21401] = stor11[stor13[address(arg1)][idx]].field_257
                                if stor11[stor13[address(arg1)][idx]].field_256:
                                    if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                        revert with 0, 34
                                    if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                        mem[_21344 + 32] = _21401
                                        mem[_21344 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_21344 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _21507 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_21507] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_21507 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_21507 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_21344 + 128] = _21507
                                    else:
                                        if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                            mem[_21401 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                            mem[_21344 + 32] = _21401
                                            mem[_21344 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_21344 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _21585 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_21585] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_21585 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_21585 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_21344 + 128] = _21585
                                        else:
                                            mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                            mem[_21401 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                            s = _21401 + 32
                                            t = sha3(mem[0])
                                            while _21401 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                                mem[0] = address(arg1)
                                                mem[32] = 13
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_21344 + 32] = _21401
                                            mem[_21344 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_21344 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _23269 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_23269] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_23269 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_23269 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_21344 + 128] = _23269
                                else:
                                    if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                        revert with 0, 34
                                    if not stor11[stor13[address(arg1)][idx]].field_257:
                                        mem[_21344 + 32] = _21401
                                        mem[_21344 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_21344 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _21543 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_21543] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_21543 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_21543 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_21344 + 128] = _21543
                                    else:
                                        if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                            mem[_21401 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                            mem[_21344 + 32] = _21401
                                            mem[_21344 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_21344 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _21646 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_21646] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_21646 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_21646 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_21344 + 128] = _21646
                                        else:
                                            mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                            mem[_21401 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                            s = _21401 + 32
                                            t = sha3(mem[0])
                                            while _21401 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                                mem[0] = address(arg1)
                                                mem[32] = 13
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_21344 + 32] = _21401
                                            mem[_21344 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_21344 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _23270 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_23270] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_23270 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_23270 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_21344 + 128] = _23270
                            mem[_21344 + 160] = stor11[stor13[address(arg1)][idx]].field_1792
                            if stor11[stor13[address(arg1)][idx]].field_2048 > 2:
                                revert with 0, 33
                            mem[_21344 + 192] = stor11[stor13[address(arg1)][idx]].field_2048
                            mem[_21344 + 224] = stor11[stor13[address(arg1)][idx]].field_2304
                            mem[_21344 + 256] = stor11[stor13[address(arg1)][idx]].field_2560
                            mem[_21344 + 288] = stor11[stor13[address(arg1)][idx]].field_2568
                            if not arg2:
                                if 0 >= mem[_7828]:
                                    revert with 0, 50
                                mem[_7828 + 32] = _21344
                            else:
                                if stor11[stor13[address(arg1)][idx]].field_1024 == address(arg1):
                                    if block.timestamp <= stor11[stor13[address(arg1)][idx]].field_1280:
                                        if 0 >= mem[_7828]:
                                            revert with 0, 50
                                        mem[_7828 + 32] = _21344
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 13
                            idx = idx + 1
                            continue 
                        mem[_7828] = 0
                        mem[mem[64]] = 64
                    # nil
                else:
                    mem[0] = address(arg1)
                    mem[32] = 13
                    idx = 0
                    while idx < sub_73a4b755[address(arg1)]:
                        if idx >= sub_73a4b755[address(arg1)]:
                            revert with 0, 50
                        mem[0] = sub_73a4b755[address(arg1)][idx]
                        mem[32] = 11
                        _14752 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_14752] = stor11[stor13[address(arg1)][idx]].field_0
                        if stor11[stor13[address(arg1)][idx]].field_256:
                            if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            _14782 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) + 32
                            mem[_14782] = uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5
                            if stor11[stor13[address(arg1)][idx]].field_256:
                                if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                    mem[_14752 + 32] = _14782
                                    mem[_14752 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_14752 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _14862 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_14862] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_14862 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_14862 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_14752 + 128] = _14862
                                else:
                                    if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                        mem[_14782 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                        mem[_14752 + 32] = _14782
                                        mem[_14752 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_14752 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _14914 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_14914] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_14914 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_14914 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_14752 + 128] = _14914
                                    else:
                                        mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                        mem[_14782 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                        s = _14782 + 32
                                        t = sha3(mem[0])
                                        while _14782 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                            mem[0] = address(arg1)
                                            mem[32] = 13
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_14752 + 32] = _14782
                                        mem[_14752 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_14752 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _16366 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_16366] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_16366 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_16366 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_14752 + 128] = _16366
                            else:
                                if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                    revert with 0, 34
                                if not stor11[stor13[address(arg1)][idx]].field_257:
                                    mem[_14752 + 32] = _14782
                                    mem[_14752 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_14752 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _14887 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_14887] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_14887 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_14887 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_14752 + 128] = _14887
                                else:
                                    if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                        mem[_14782 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                        mem[_14752 + 32] = _14782
                                        mem[_14752 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_14752 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _14949 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_14949] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_14949 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_14949 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_14752 + 128] = _14949
                                    else:
                                        mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                        mem[_14782 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                        s = _14782 + 32
                                        t = sha3(mem[0])
                                        while _14782 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                            mem[0] = address(arg1)
                                            mem[32] = 13
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_14752 + 32] = _14782
                                        mem[_14752 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_14752 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _16367 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_16367] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_16367 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_16367 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_14752 + 128] = _16367
                        else:
                            if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                revert with 0, 34
                            _14801 = mem[64]
                            mem[64] = mem[64] + ceil32(stor11[stor13[address(arg1)][idx]].field_257) + 32
                            mem[_14801] = stor11[stor13[address(arg1)][idx]].field_257
                            if stor11[stor13[address(arg1)][idx]].field_256:
                                if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                    mem[_14752 + 32] = _14801
                                    mem[_14752 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_14752 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _14888 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_14888] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_14888 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_14888 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_14752 + 128] = _14888
                                else:
                                    if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                        mem[_14801 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                        mem[_14752 + 32] = _14801
                                        mem[_14752 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_14752 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _14950 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_14950] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_14950 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_14950 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_14752 + 128] = _14950
                                    else:
                                        mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                        mem[_14801 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                        s = _14801 + 32
                                        t = sha3(mem[0])
                                        while _14801 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                            mem[0] = address(arg1)
                                            mem[32] = 13
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_14752 + 32] = _14801
                                        mem[_14752 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_14752 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _16368 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_16368] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_16368 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_16368 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_14752 + 128] = _16368
                            else:
                                if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                    revert with 0, 34
                                if not stor11[stor13[address(arg1)][idx]].field_257:
                                    mem[_14752 + 32] = _14801
                                    mem[_14752 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                    mem[_14752 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                    _14917 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_14917] = stor11[stor13[address(arg1)][idx]].field_1024
                                    mem[_14917 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                    mem[_14917 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                    mem[_14752 + 128] = _14917
                                else:
                                    if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                        mem[_14801 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                        mem[_14752 + 32] = _14801
                                        mem[_14752 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_14752 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _14999 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_14999] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_14999 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_14999 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_14752 + 128] = _14999
                                    else:
                                        mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                        mem[_14801 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                        s = _14801 + 32
                                        t = sha3(mem[0])
                                        while _14801 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                            mem[0] = address(arg1)
                                            mem[32] = 13
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_14752 + 32] = _14801
                                        mem[_14752 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_14752 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _16369 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_16369] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_16369 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_16369 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_14752 + 128] = _16369
                        mem[_14752 + 160] = stor11[stor13[address(arg1)][idx]].field_1792
                        if stor11[stor13[address(arg1)][idx]].field_2048 > 2:
                            revert with 0, 33
                        mem[_14752 + 192] = stor11[stor13[address(arg1)][idx]].field_2048
                        mem[_14752 + 224] = stor11[stor13[address(arg1)][idx]].field_2304
                        mem[_14752 + 256] = stor11[stor13[address(arg1)][idx]].field_2560
                        mem[_14752 + 288] = stor11[stor13[address(arg1)][idx]].field_2568
                        if not arg2:
                            if 0 >= mem[_7828]:
                                revert with 0, 50
                            mem[_7828 + 32] = _14752
                        else:
                            if stor11[stor13[address(arg1)][idx]].field_1024 == address(arg1):
                                if block.timestamp <= stor11[stor13[address(arg1)][idx]].field_1280:
                                    if 0 >= mem[_7828]:
                                        revert with 0, 50
                                    mem[_7828 + 32] = _14752
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 13
                        idx = idx + 1
                        continue 
                    mem[_7828] = 0
                    _14749 = mem[64]
                    mem[mem[64]] = 64
                    _14761 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + (32 * mem[96]) + 96
                    u = mem[64] + 96
                    while idx < _14761:
                        mem[u] = t + -_14749 - 96
                        _16350 = mem[s]
                        mem[t] = mem[mem[s]]
                        _16365 = mem[_16350 + 32]
                        mem[t + 32] = 384
                        _16383 = mem[_16365]
                        mem[t + 384] = mem[_16365]
                        v = 0
                        while v < _16383:
                            mem[v + t + 416] = mem[v + _16365 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_16383) <= _16383:
                            mem[t + 64] = mem[_16350 + 76 len 20]
                            mem[t + 96] = mem[_16350 + 108 len 20]
                            _17771 = mem[_16350 + 128]
                            mem[t + 128] = mem[mem[_16350 + 128] + 12 len 20]
                            mem[t + 160] = mem[_17771 + 32]
                            mem[t + 192] = mem[_17771 + 92 len 4]
                        else:
                            mem[_16383 + t + 416] = 0
                            mem[t + 64] = mem[_16350 + 76 len 20]
                            mem[t + 96] = mem[_16350 + 108 len 20]
                            _17775 = mem[_16350 + 128]
                            mem[t + 128] = mem[mem[_16350 + 128] + 12 len 20]
                            mem[t + 160] = mem[_17775 + 32]
                            mem[t + 192] = mem[_17775 + 92 len 4]
                        mem[t + 224] = mem[_16350 + 160]
                        if mem[_16350 + 192] >= 3:
                            revert with 0, 33
                        mem[t + 256] = mem[_16350 + 192]
                        mem[t + 288] = mem[_16350 + 224]
                        mem[t + 320] = mem[_16350 + 287 len 1]
                        mem[t + 352] = mem[_16350 + 319 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_16383) + t + 416
                        u = u + 32
                        continue 
                    mem[_14749 + 32] = t - _14749
                    _16382 = mem[_7828]
                    mem[t] = mem[_7828]
                    idx = 0
                    s = _7828 + 32
                    u = t + (32 * _16382) + 32
                    v = t + 32
                    while idx < _16382:
                        mem[v] = u + -t - 32
                        _17679 = mem[s]
                        mem[u] = mem[mem[s]]
                        _17690 = mem[_17679 + 32]
                        mem[u + 32] = 384
                        _17705 = mem[_17690]
                        mem[u + 384] = mem[_17690]
                        t = 0
                        while t < _17705:
                            mem[t + u + 416] = mem[t + _17690 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_17705) <= _17705:
                            mem[u + 64] = mem[_17679 + 76 len 20]
                            mem[u + 96] = mem[_17679 + 108 len 20]
                            _19326 = mem[_17679 + 128]
                            mem[u + 128] = mem[mem[_17679 + 128] + 12 len 20]
                            mem[u + 160] = mem[_19326 + 32]
                            mem[u + 192] = mem[_19326 + 92 len 4]
                        else:
                            mem[_17705 + u + 416] = 0
                            mem[u + 64] = mem[_17679 + 76 len 20]
                            mem[u + 96] = mem[_17679 + 108 len 20]
                            _19330 = mem[_17679 + 128]
                            mem[u + 128] = mem[mem[_17679 + 128] + 12 len 20]
                            mem[u + 160] = mem[_19330 + 32]
                            mem[u + 192] = mem[_19330 + 92 len 4]
                        mem[u + 224] = mem[_17679 + 160]
                        if mem[_17679 + 192] >= 3:
                            revert with 0, 33
                        mem[u + 256] = mem[_17679 + 192]
                        mem[u + 288] = mem[_17679 + 224]
                        mem[u + 320] = mem[_17679 + 287 len 1]
                        mem[u + 352] = mem[_17679 + 319 len 1]
                        idx = idx + 1
                        s = s + 32
                        u = ceil32(_17705) + u + 416
                        v = v + 32
                        continue 
                    return memory
                      from mem[64]
                       len u - mem[64]
            else:
                mem[(32 * sub_0316c4ea[address(arg1)]) + 960] = 0
                mem[(32 * sub_0316c4ea[address(arg1)]) + 992] = 96
                mem[(32 * sub_0316c4ea[address(arg1)]) + 1024] = 0
                mem[(32 * sub_0316c4ea[address(arg1)]) + 1056] = 0
                mem[64] = (32 * sub_0316c4ea[address(arg1)]) + 1376
                mem[(32 * sub_0316c4ea[address(arg1)]) + 1280] = 0
                mem[(32 * sub_0316c4ea[address(arg1)]) + 1312] = 0
                mem[(32 * sub_0316c4ea[address(arg1)]) + 1344] = 0
                mem[(32 * sub_0316c4ea[address(arg1)]) + 1088] = (32 * sub_0316c4ea[address(arg1)]) + 1280
                mem[(32 * sub_0316c4ea[address(arg1)]) + 1120] = 0
                mem[var38002] = 0
                mem[var38002 + 32] = 0
                mem[var38002 + 64] = 0
                mem[var38002 + 96] = 0
                mem[var40002] = var40001
                if not var40003 - 1:
                    mem[0] = address(arg1)
                    idx = 0
                    while idx < sub_0316c4ea[address(arg1)]:
                        if idx >= sub_0316c4ea[address(arg1)]:
                            revert with 0, 50
                        mem[0] = sub_0316c4ea[address(arg1)][idx]
                        mem[32] = 11
                        _12999 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_12999] = stor11[stor12[address(arg1)][idx]].field_0
                        if stor11[stor12[address(arg1)][idx]].field_256:
                            if stor11[stor12[address(arg1)][idx]].field_256 == uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5 < 32:
                                revert with 0, 34
                            _13051 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5) + 32
                            mem[_13051] = uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5
                            if stor11[stor12[address(arg1)][idx]].field_256:
                                if stor11[stor12[address(arg1)][idx]].field_256 == uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                if not Mask(256, -1, stor11[stor12[address(arg1)][idx]].field_256):
                                    mem[_12999 + 32] = _13051
                                    mem[_12999 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                    mem[_12999 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                    _13156 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_13156] = stor11[stor12[address(arg1)][idx]].field_1024
                                    mem[_13156 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                    mem[_13156 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                    mem[_12999 + 128] = _13156
                                else:
                                    if 31 >= uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5:
                                        mem[_13051 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_264
                                        mem[_12999 + 32] = _13051
                                        mem[_12999 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                        mem[_12999 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                        _13181 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_13181] = stor11[stor12[address(arg1)][idx]].field_1024
                                        mem[_13181 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                        mem[_13181 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                        mem[_12999 + 128] = _13181
                                    else:
                                        mem[0] = sha3(sub_0316c4ea[address(arg1)][idx], 11) + 1
                                        mem[_13051 + 32] = stor11[stor12[address(arg1)][idx]][1].field_0
                                        s = _13051 + 32
                                        t = sha3(mem[0])
                                        while _13051 + (uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5) > s:
                                            mem[0] = address(arg1)
                                            mem[32] = 12
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_12999 + 32] = _13051
                                        mem[_12999 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                        mem[_12999 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                        _14745 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_14745] = stor11[stor12[address(arg1)][idx]].field_1024
                                        mem[_14745 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                        mem[_14745 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                        mem[_12999 + 128] = _14745
                            else:
                                if stor11[stor12[address(arg1)][idx]].field_256 == stor11[stor12[address(arg1)][idx]].field_257 < 32:
                                    revert with 0, 34
                                if not stor11[stor12[address(arg1)][idx]].field_257:
                                    mem[_12999 + 32] = _13051
                                    mem[_12999 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                    mem[_12999 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                    _13175 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_13175] = stor11[stor12[address(arg1)][idx]].field_1024
                                    mem[_13175 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                    mem[_13175 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                    mem[_12999 + 128] = _13175
                                else:
                                    if 31 >= stor11[stor12[address(arg1)][idx]].field_257:
                                        mem[_13051 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_264
                                        mem[_12999 + 32] = _13051
                                        mem[_12999 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                        mem[_12999 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                        _13202 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_13202] = stor11[stor12[address(arg1)][idx]].field_1024
                                        mem[_13202 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                        mem[_13202 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                        mem[_12999 + 128] = _13202
                                    else:
                                        mem[0] = sha3(sub_0316c4ea[address(arg1)][idx], 11) + 1
                                        mem[_13051 + 32] = stor11[stor12[address(arg1)][idx]][1].field_0
                                        s = _13051 + 32
                                        t = sha3(mem[0])
                                        while _13051 + stor11[stor12[address(arg1)][idx]].field_257 > s:
                                            mem[0] = address(arg1)
                                            mem[32] = 12
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_12999 + 32] = _13051
                                        mem[_12999 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                        mem[_12999 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                        _14746 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_14746] = stor11[stor12[address(arg1)][idx]].field_1024
                                        mem[_14746 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                        mem[_14746 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                        mem[_12999 + 128] = _14746
                        else:
                            if stor11[stor12[address(arg1)][idx]].field_256 == stor11[stor12[address(arg1)][idx]].field_257 < 32:
                                revert with 0, 34
                            _13076 = mem[64]
                            mem[64] = mem[64] + ceil32(stor11[stor12[address(arg1)][idx]].field_257) + 32
                            mem[_13076] = stor11[stor12[address(arg1)][idx]].field_257
                            if stor11[stor12[address(arg1)][idx]].field_256:
                                if stor11[stor12[address(arg1)][idx]].field_256 == uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                if not Mask(256, -1, stor11[stor12[address(arg1)][idx]].field_256):
                                    mem[_12999 + 32] = _13076
                                    mem[_12999 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                    mem[_12999 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                    _13176 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_13176] = stor11[stor12[address(arg1)][idx]].field_1024
                                    mem[_13176 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                    mem[_13176 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                    mem[_12999 + 128] = _13176
                                else:
                                    if 31 >= uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5:
                                        mem[_13076 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_264
                                        mem[_12999 + 32] = _13076
                                        mem[_12999 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                        mem[_12999 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                        _13203 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_13203] = stor11[stor12[address(arg1)][idx]].field_1024
                                        mem[_13203 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                        mem[_13203 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                        mem[_12999 + 128] = _13203
                                    else:
                                        mem[0] = sha3(sub_0316c4ea[address(arg1)][idx], 11) + 1
                                        mem[_13076 + 32] = stor11[stor12[address(arg1)][idx]][1].field_0
                                        s = _13076 + 32
                                        t = sha3(mem[0])
                                        while _13076 + (uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5) > s:
                                            mem[0] = address(arg1)
                                            mem[32] = 12
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_12999 + 32] = _13076
                                        mem[_12999 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                        mem[_12999 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                        _14747 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_14747] = stor11[stor12[address(arg1)][idx]].field_1024
                                        mem[_14747 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                        mem[_14747 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                        mem[_12999 + 128] = _14747
                            else:
                                if stor11[stor12[address(arg1)][idx]].field_256 == stor11[stor12[address(arg1)][idx]].field_257 < 32:
                                    revert with 0, 34
                                if not stor11[stor12[address(arg1)][idx]].field_257:
                                    mem[_12999 + 32] = _13076
                                    mem[_12999 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                    mem[_12999 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                    _13184 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_13184] = stor11[stor12[address(arg1)][idx]].field_1024
                                    mem[_13184 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                    mem[_13184 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                    mem[_12999 + 128] = _13184
                                else:
                                    if 31 >= stor11[stor12[address(arg1)][idx]].field_257:
                                        mem[_13076 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_264
                                        mem[_12999 + 32] = _13076
                                        mem[_12999 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                        mem[_12999 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                        _13234 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_13234] = stor11[stor12[address(arg1)][idx]].field_1024
                                        mem[_13234 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                        mem[_13234 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                        mem[_12999 + 128] = _13234
                                    else:
                                        mem[0] = sha3(sub_0316c4ea[address(arg1)][idx], 11) + 1
                                        mem[_13076 + 32] = stor11[stor12[address(arg1)][idx]][1].field_0
                                        s = _13076 + 32
                                        t = sha3(mem[0])
                                        while _13076 + stor11[stor12[address(arg1)][idx]].field_257 > s:
                                            mem[0] = address(arg1)
                                            mem[32] = 12
                                            mem[s + 32] = stor1[t].field_0
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_12999 + 32] = _13076
                                        mem[_12999 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                        mem[_12999 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                        _14748 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_14748] = stor11[stor12[address(arg1)][idx]].field_1024
                                        mem[_14748 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                        mem[_14748 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                        mem[_12999 + 128] = _14748
                        mem[_12999 + 160] = stor11[stor12[address(arg1)][idx]].field_1792
                        if stor11[stor12[address(arg1)][idx]].field_2048 > 2:
                            revert with 0, 33
                        mem[_12999 + 192] = stor11[stor12[address(arg1)][idx]].field_2048
                        mem[_12999 + 224] = stor11[stor12[address(arg1)][idx]].field_2304
                        mem[_12999 + 256] = stor11[stor12[address(arg1)][idx]].field_2560
                        mem[_12999 + 288] = stor11[stor12[address(arg1)][idx]].field_2568
                        if not arg2:
                            if 0 >= mem[96]:
                                revert with 0, 50
                            mem[128] = _12999
                        else:
                            if stor11[stor12[address(arg1)][idx]].field_2048 > 2:
                                revert with 0, 33
                            if not stor11[stor12[address(arg1)][idx]].field_2048:
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                mem[128] = _12999
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 12
                        idx = idx + 1
                        continue 
                    mem[96] = 0
                    mem[0] = address(arg1)
                    mem[32] = 13
                    if sub_73a4b755[address(arg1)] > test266151307():
                        revert with 0, 65
                    _12996 = mem[64]
                    mem[mem[64]] = sub_73a4b755[address(arg1)]
                    mem[64] = mem[64] + (32 * sub_73a4b755[address(arg1)]) + 32
                    if not sub_73a4b755[address(arg1)]:
                        mem[0] = address(arg1)
                        mem[32] = 13
                        idx = 0
                        while idx < sub_73a4b755[address(arg1)]:
                            if idx >= sub_73a4b755[address(arg1)]:
                                revert with 0, 50
                            mem[0] = sub_73a4b755[address(arg1)][idx]
                            mem[32] = 11
                            _14744 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_14744] = stor11[stor13[address(arg1)][idx]].field_0
                            if stor11[stor13[address(arg1)][idx]].field_256:
                                if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                _14774 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) + 32
                                mem[_14774] = uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5
                                if stor11[stor13[address(arg1)][idx]].field_256:
                                    if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                        revert with 0, 34
                                    if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                        mem[_14744 + 32] = _14774
                                        mem[_14744 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_14744 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _14858 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_14858] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_14858 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_14858 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_14744 + 128] = _14858
                                    else:
                                        if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                            mem[_14774 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                            mem[_14744 + 32] = _14774
                                            mem[_14744 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_14744 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _14904 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_14904] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_14904 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_14904 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_14744 + 128] = _14904
                                        else:
                                            mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                            mem[_14774 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                            s = _14774 + 32
                                            t = sha3(mem[0])
                                            while _14774 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                                mem[0] = address(arg1)
                                                mem[32] = 13
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_14744 + 32] = _14774
                                            mem[_14744 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_14744 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _16360 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_16360] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_16360 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_16360 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_14744 + 128] = _16360
                                else:
                                    if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                        revert with 0, 34
                                    if not stor11[stor13[address(arg1)][idx]].field_257:
                                        mem[_14744 + 32] = _14774
                                        mem[_14744 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_14744 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _14878 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_14878] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_14878 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_14878 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_14744 + 128] = _14878
                                    else:
                                        if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                            mem[_14774 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                            mem[_14744 + 32] = _14774
                                            mem[_14744 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_14744 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _14938 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_14938] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_14938 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_14938 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_14744 + 128] = _14938
                                        else:
                                            mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                            mem[_14774 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                            s = _14774 + 32
                                            t = sha3(mem[0])
                                            while _14774 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                                mem[0] = address(arg1)
                                                mem[32] = 13
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_14744 + 32] = _14774
                                            mem[_14744 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_14744 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _16361 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_16361] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_16361 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_16361 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_14744 + 128] = _16361
                            else:
                                if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                    revert with 0, 34
                                _14796 = mem[64]
                                mem[64] = mem[64] + ceil32(stor11[stor13[address(arg1)][idx]].field_257) + 32
                                mem[_14796] = stor11[stor13[address(arg1)][idx]].field_257
                                if stor11[stor13[address(arg1)][idx]].field_256:
                                    if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                        revert with 0, 34
                                    if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                        mem[_14744 + 32] = _14796
                                        mem[_14744 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_14744 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _14879 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_14879] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_14879 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_14879 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_14744 + 128] = _14879
                                    else:
                                        if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                            mem[_14796 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                            mem[_14744 + 32] = _14796
                                            mem[_14744 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_14744 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _14939 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_14939] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_14939 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_14939 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_14744 + 128] = _14939
                                        else:
                                            mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                            mem[_14796 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                            s = _14796 + 32
                                            t = sha3(mem[0])
                                            while _14796 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                                mem[0] = address(arg1)
                                                mem[32] = 13
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_14744 + 32] = _14796
                                            mem[_14744 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_14744 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _16362 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_16362] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_16362 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_16362 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_14744 + 128] = _16362
                                else:
                                    if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                        revert with 0, 34
                                    if not stor11[stor13[address(arg1)][idx]].field_257:
                                        mem[_14744 + 32] = _14796
                                        mem[_14744 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_14744 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _14907 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_14907] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_14907 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_14907 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_14744 + 128] = _14907
                                    else:
                                        if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                            mem[_14796 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                            mem[_14744 + 32] = _14796
                                            mem[_14744 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_14744 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _14987 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_14987] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_14987 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_14987 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_14744 + 128] = _14987
                                        else:
                                            mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                            mem[_14796 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                            s = _14796 + 32
                                            t = sha3(mem[0])
                                            while _14796 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                                mem[0] = address(arg1)
                                                mem[32] = 13
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_14744 + 32] = _14796
                                            mem[_14744 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_14744 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _16363 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_16363] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_16363 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_16363 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_14744 + 128] = _16363
                            mem[_14744 + 160] = stor11[stor13[address(arg1)][idx]].field_1792
                            if stor11[stor13[address(arg1)][idx]].field_2048 > 2:
                                revert with 0, 33
                            mem[_14744 + 192] = stor11[stor13[address(arg1)][idx]].field_2048
                            mem[_14744 + 224] = stor11[stor13[address(arg1)][idx]].field_2304
                            mem[_14744 + 256] = stor11[stor13[address(arg1)][idx]].field_2560
                            mem[_14744 + 288] = stor11[stor13[address(arg1)][idx]].field_2568
                            if not arg2:
                                if 0 >= mem[_12996]:
                                    revert with 0, 50
                                mem[_12996 + 32] = _14744
                            else:
                                if stor11[stor13[address(arg1)][idx]].field_1024 == address(arg1):
                                    if block.timestamp <= stor11[stor13[address(arg1)][idx]].field_1280:
                                        if 0 >= mem[_12996]:
                                            revert with 0, 50
                                        mem[_12996 + 32] = _14744
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 13
                            idx = idx + 1
                            continue 
                        mem[_12996] = 0
                        _14741 = mem[64]
                        mem[mem[64]] = 64
                        _14760 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + (32 * mem[96]) + 96
                        u = mem[64] + 96
                        while idx < _14760:
                            mem[u] = t + -_14741 - 96
                            _16349 = mem[s]
                            mem[t] = mem[mem[s]]
                            _16359 = mem[_16349 + 32]
                            mem[t + 32] = 384
                            _16381 = mem[_16359]
                            mem[t + 384] = mem[_16359]
                            v = 0
                            while v < _16381:
                                mem[v + t + 416] = mem[v + _16359 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_16381) <= _16381:
                                mem[t + 64] = mem[_16349 + 76 len 20]
                                mem[t + 96] = mem[_16349 + 108 len 20]
                                _17754 = mem[_16349 + 128]
                                mem[t + 128] = mem[mem[_16349 + 128] + 12 len 20]
                                mem[t + 160] = mem[_17754 + 32]
                                mem[t + 192] = mem[_17754 + 92 len 4]
                            else:
                                mem[_16381 + t + 416] = 0
                                mem[t + 64] = mem[_16349 + 76 len 20]
                                mem[t + 96] = mem[_16349 + 108 len 20]
                                _17758 = mem[_16349 + 128]
                                mem[t + 128] = mem[mem[_16349 + 128] + 12 len 20]
                                mem[t + 160] = mem[_17758 + 32]
                                mem[t + 192] = mem[_17758 + 92 len 4]
                            mem[t + 224] = mem[_16349 + 160]
                            if mem[_16349 + 192] >= 3:
                                revert with 0, 33
                            mem[t + 256] = mem[_16349 + 192]
                            mem[t + 288] = mem[_16349 + 224]
                            mem[t + 320] = mem[_16349 + 287 len 1]
                            mem[t + 352] = mem[_16349 + 319 len 1]
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_16381) + t + 416
                            u = u + 32
                            continue 
                        mem[_14741 + 32] = t - _14741
                        _16380 = mem[_12996]
                        mem[t] = mem[_12996]
                        idx = 0
                        s = _12996 + 32
                        u = t + (32 * _16380) + 32
                        v = t + 32
                        while idx < _16380:
                            mem[v] = u + -t - 32
                            _17677 = mem[s]
                            mem[u] = mem[mem[s]]
                            _17688 = mem[_17677 + 32]
                            mem[u + 32] = 384
                            _17699 = mem[_17688]
                            mem[u + 384] = mem[_17688]
                            t = 0
                            while t < _17699:
                                mem[t + u + 416] = mem[t + _17688 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_17699) <= _17699:
                                mem[u + 64] = mem[_17677 + 76 len 20]
                                mem[u + 96] = mem[_17677 + 108 len 20]
                                _19318 = mem[_17677 + 128]
                                mem[u + 128] = mem[mem[_17677 + 128] + 12 len 20]
                                mem[u + 160] = mem[_19318 + 32]
                                mem[u + 192] = mem[_19318 + 92 len 4]
                            else:
                                mem[_17699 + u + 416] = 0
                                mem[u + 64] = mem[_17677 + 76 len 20]
                                mem[u + 96] = mem[_17677 + 108 len 20]
                                _19322 = mem[_17677 + 128]
                                mem[u + 128] = mem[mem[_17677 + 128] + 12 len 20]
                                mem[u + 160] = mem[_19322 + 32]
                                mem[u + 192] = mem[_19322 + 92 len 4]
                            mem[u + 224] = mem[_17677 + 160]
                            if mem[_17677 + 192] >= 3:
                                revert with 0, 33
                            mem[u + 256] = mem[_17677 + 192]
                            mem[u + 288] = mem[_17677 + 224]
                            mem[u + 320] = mem[_17677 + 287 len 1]
                            mem[u + 352] = mem[_17677 + 319 len 1]
                            idx = idx + 1
                            s = s + 32
                            u = ceil32(_17699) + u + 416
                            v = v + 32
                            continue 
                        return memory
                          from mem[64]
                           len u - mem[64]
                    mem[_12996 + (32 * sub_73a4b755[address(arg1)]) + 32] = 0
                    mem[_12996 + (32 * sub_73a4b755[address(arg1)]) + 64] = 96
                    mem[_12996 + (32 * sub_73a4b755[address(arg1)]) + 96] = 0
                    mem[64] = _12996 + (32 * sub_73a4b755[address(arg1)]) + 448
                    mem[var53002] = 0
                    mem[var53002 + 32] = 0
                    mem[var53002 + 64] = 0
                    mem[var53002 + 96] = 0
                    mem[var55002] = var55001
                    if not var55003 - 1:
                        mem[0] = address(arg1)
                        mem[32] = 13
                        idx = 0
                        while idx < sub_73a4b755[address(arg1)]:
                            if idx >= sub_73a4b755[address(arg1)]:
                                revert with 0, 50
                            mem[0] = sub_73a4b755[address(arg1)][idx]
                            mem[32] = 11
                            _21340 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_21340] = stor11[stor13[address(arg1)][idx]].field_0
                            if stor11[stor13[address(arg1)][idx]].field_256:
                                if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                _21375 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) + 32
                                mem[_21375] = uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5
                                if stor11[stor13[address(arg1)][idx]].field_256:
                                    if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                        revert with 0, 34
                                    if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                        mem[_21340 + 32] = _21375
                                        mem[_21340 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_21340 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _21470 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_21470] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_21470 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_21470 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_21340 + 128] = _21470
                                    else:
                                        if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                            mem[_21375 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                            mem[_21340 + 32] = _21375
                                            mem[_21340 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_21340 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _21533 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_21533] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_21533 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_21533 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_21340 + 128] = _21533
                                        else:
                                            mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                            mem[_21375 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                            s = _21375 + 32
                                            t = sha3(mem[0])
                                            while _21375 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                                mem[0] = address(arg1)
                                                mem[32] = 13
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_21340 + 32] = _21375
                                            mem[_21340 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_21340 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _23261 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_23261] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_23261 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_23261 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_21340 + 128] = _23261
                                else:
                                    if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                        revert with 0, 34
                                    if not stor11[stor13[address(arg1)][idx]].field_257:
                                        mem[_21340 + 32] = _21375
                                        mem[_21340 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_21340 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _21499 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_21499] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_21499 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_21499 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_21340 + 128] = _21499
                                    else:
                                        if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                            mem[_21375 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                            mem[_21340 + 32] = _21375
                                            mem[_21340 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_21340 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _21575 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_21575] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_21575 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_21575 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_21340 + 128] = _21575
                                        else:
                                            mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                            mem[_21375 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                            s = _21375 + 32
                                            t = sha3(mem[0])
                                            while _21375 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                                mem[0] = address(arg1)
                                                mem[32] = 13
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_21340 + 32] = _21375
                                            mem[_21340 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_21340 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _23262 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_23262] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_23262 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_23262 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_21340 + 128] = _23262
                            else:
                                if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                    revert with 0, 34
                                _21397 = mem[64]
                                mem[64] = mem[64] + ceil32(stor11[stor13[address(arg1)][idx]].field_257) + 32
                                mem[_21397] = stor11[stor13[address(arg1)][idx]].field_257
                                if stor11[stor13[address(arg1)][idx]].field_256:
                                    if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                        revert with 0, 34
                                    if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                        mem[_21340 + 32] = _21397
                                        mem[_21340 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_21340 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _21500 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_21500] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_21500 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_21500 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_21340 + 128] = _21500
                                    else:
                                        if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                            mem[_21397 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                            mem[_21340 + 32] = _21397
                                            mem[_21340 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_21340 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _21576 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_21576] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_21576 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_21576 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_21340 + 128] = _21576
                                        else:
                                            mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                            mem[_21397 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                            s = _21397 + 32
                                            t = sha3(mem[0])
                                            while _21397 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                                mem[0] = address(arg1)
                                                mem[32] = 13
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_21340 + 32] = _21397
                                            mem[_21340 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_21340 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _23263 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_23263] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_23263 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_23263 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_21340 + 128] = _23263
                                else:
                                    if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                        revert with 0, 34
                                    if not stor11[stor13[address(arg1)][idx]].field_257:
                                        mem[_21340 + 32] = _21397
                                        mem[_21340 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                        mem[_21340 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                        _21536 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_21536] = stor11[stor13[address(arg1)][idx]].field_1024
                                        mem[_21536 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                        mem[_21536 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                        mem[_21340 + 128] = _21536
                                    else:
                                        if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                            mem[_21397 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                            mem[_21340 + 32] = _21397
                                            mem[_21340 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_21340 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _21634 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_21634] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_21634 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_21634 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_21340 + 128] = _21634
                                        else:
                                            mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                            mem[_21397 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                            s = _21397 + 32
                                            t = sha3(mem[0])
                                            while _21397 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                                mem[0] = address(arg1)
                                                mem[32] = 13
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_21340 + 32] = _21397
                                            mem[_21340 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_21340 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _23264 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_23264] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_23264 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_23264 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_21340 + 128] = _23264
                            mem[_21340 + 160] = stor11[stor13[address(arg1)][idx]].field_1792
                            if stor11[stor13[address(arg1)][idx]].field_2048 > 2:
                                revert with 0, 33
                            mem[_21340 + 192] = stor11[stor13[address(arg1)][idx]].field_2048
                            mem[_21340 + 224] = stor11[stor13[address(arg1)][idx]].field_2304
                            mem[_21340 + 256] = stor11[stor13[address(arg1)][idx]].field_2560
                            mem[_21340 + 288] = stor11[stor13[address(arg1)][idx]].field_2568
                            if not arg2:
                                if 0 >= mem[_12996]:
                                    revert with 0, 50
                                mem[_12996 + 32] = _21340
                            else:
                                if stor11[stor13[address(arg1)][idx]].field_1024 == address(arg1):
                                    if block.timestamp <= stor11[stor13[address(arg1)][idx]].field_1280:
                                        if 0 >= mem[_12996]:
                                            revert with 0, 50
                                        mem[_12996 + 32] = _21340
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 13
                            idx = idx + 1
                            continue 
                        mem[_12996] = 0
                        mem[mem[64]] = 64
                    # nil
                else:
                    mem[(32 * sub_0316c4ea[address(arg1)]) + 1376] = 0
                    mem[(32 * sub_0316c4ea[address(arg1)]) + 1408] = 96
                    mem[(32 * sub_0316c4ea[address(arg1)]) + 1440] = 0
                    mem[(32 * sub_0316c4ea[address(arg1)]) + 1472] = 0
                    mem[64] = (32 * sub_0316c4ea[address(arg1)]) + 1792
                    mem[(32 * sub_0316c4ea[address(arg1)]) + 1696] = 0
                    mem[(32 * sub_0316c4ea[address(arg1)]) + 1728] = 0
                    mem[(32 * sub_0316c4ea[address(arg1)]) + 1760] = 0
                    mem[(32 * sub_0316c4ea[address(arg1)]) + 1504] = (32 * sub_0316c4ea[address(arg1)]) + 1696
                    mem[(32 * sub_0316c4ea[address(arg1)]) + 1536] = 0
                    mem[var46002] = 0
                    mem[var46002 + 32] = 0
                    mem[var46002 + 64] = 0
                    mem[var46002 + 96] = 0
                    mem[var48002] = var48001
                    if var48003 - 1:
                        # nil
                    else:
                        mem[0] = address(arg1)
                        idx = 0
                        while idx < sub_0316c4ea[address(arg1)]:
                            if idx >= sub_0316c4ea[address(arg1)]:
                                revert with 0, 50
                            mem[0] = sub_0316c4ea[address(arg1)][idx]
                            mem[32] = 11
                            _19253 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_19253] = stor11[stor12[address(arg1)][idx]].field_0
                            if stor11[stor12[address(arg1)][idx]].field_256:
                                if stor11[stor12[address(arg1)][idx]].field_256 == uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                _19317 = mem[64]
                                mem[64] = mem[64] + ceil32(uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5) + 32
                                mem[_19317] = uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5
                                if stor11[stor12[address(arg1)][idx]].field_256:
                                    if stor11[stor12[address(arg1)][idx]].field_256 == uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5 < 32:
                                        revert with 0, 34
                                    if not Mask(256, -1, stor11[stor12[address(arg1)][idx]].field_256):
                                        mem[_19253 + 32] = _19317
                                        mem[_19253 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                        mem[_19253 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                        _19452 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_19452] = stor11[stor12[address(arg1)][idx]].field_1024
                                        mem[_19452 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                        mem[_19452 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                        mem[_19253 + 128] = _19452
                                    else:
                                        if 31 >= uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5:
                                            mem[_19317 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_264
                                            mem[_19253 + 32] = _19317
                                            mem[_19253 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                            mem[_19253 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                            _19480 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_19480] = stor11[stor12[address(arg1)][idx]].field_1024
                                            mem[_19480 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                            mem[_19480 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                            mem[_19253 + 128] = _19480
                                        else:
                                            mem[0] = sha3(sub_0316c4ea[address(arg1)][idx], 11) + 1
                                            mem[_19317 + 32] = stor11[stor12[address(arg1)][idx]][1].field_0
                                            s = _19317 + 32
                                            t = sha3(mem[0])
                                            while _19317 + (uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5) > s:
                                                mem[0] = address(arg1)
                                                mem[32] = 12
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_19253 + 32] = _19317
                                            mem[_19253 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                            mem[_19253 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                            _21333 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_21333] = stor11[stor12[address(arg1)][idx]].field_1024
                                            mem[_21333 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                            mem[_21333 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                            mem[_19253 + 128] = _21333
                                else:
                                    if stor11[stor12[address(arg1)][idx]].field_256 == stor11[stor12[address(arg1)][idx]].field_257 < 32:
                                        revert with 0, 34
                                    if not stor11[stor12[address(arg1)][idx]].field_257:
                                        mem[_19253 + 32] = _19317
                                        mem[_19253 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                        mem[_19253 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                        _19474 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_19474] = stor11[stor12[address(arg1)][idx]].field_1024
                                        mem[_19474 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                        mem[_19474 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                        mem[_19253 + 128] = _19474
                                    else:
                                        if 31 >= stor11[stor12[address(arg1)][idx]].field_257:
                                            mem[_19317 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_264
                                            mem[_19253 + 32] = _19317
                                            mem[_19253 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                            mem[_19253 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                            _19504 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_19504] = stor11[stor12[address(arg1)][idx]].field_1024
                                            mem[_19504 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                            mem[_19504 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                            mem[_19253 + 128] = _19504
                                        else:
                                            mem[0] = sha3(sub_0316c4ea[address(arg1)][idx], 11) + 1
                                            mem[_19317 + 32] = stor11[stor12[address(arg1)][idx]][1].field_0
                                            s = _19317 + 32
                                            t = sha3(mem[0])
                                            while _19317 + stor11[stor12[address(arg1)][idx]].field_257 > s:
                                                mem[0] = address(arg1)
                                                mem[32] = 12
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_19253 + 32] = _19317
                                            mem[_19253 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                            mem[_19253 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                            _21334 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_21334] = stor11[stor12[address(arg1)][idx]].field_1024
                                            mem[_21334 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                            mem[_21334 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                            mem[_19253 + 128] = _21334
                            else:
                                if stor11[stor12[address(arg1)][idx]].field_256 == stor11[stor12[address(arg1)][idx]].field_257 < 32:
                                    revert with 0, 34
                                _19350 = mem[64]
                                mem[64] = mem[64] + ceil32(stor11[stor12[address(arg1)][idx]].field_257) + 32
                                mem[_19350] = stor11[stor12[address(arg1)][idx]].field_257
                                if stor11[stor12[address(arg1)][idx]].field_256:
                                    if stor11[stor12[address(arg1)][idx]].field_256 == uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5 < 32:
                                        revert with 0, 34
                                    if not Mask(256, -1, stor11[stor12[address(arg1)][idx]].field_256):
                                        mem[_19253 + 32] = _19350
                                        mem[_19253 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                        mem[_19253 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                        _19475 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_19475] = stor11[stor12[address(arg1)][idx]].field_1024
                                        mem[_19475 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                        mem[_19475 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                        mem[_19253 + 128] = _19475
                                    else:
                                        if 31 >= uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5:
                                            mem[_19350 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_264
                                            mem[_19253 + 32] = _19350
                                            mem[_19253 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                            mem[_19253 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                            _19505 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_19505] = stor11[stor12[address(arg1)][idx]].field_1024
                                            mem[_19505 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                            mem[_19505 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                            mem[_19253 + 128] = _19505
                                        else:
                                            mem[0] = sha3(sub_0316c4ea[address(arg1)][idx], 11) + 1
                                            mem[_19350 + 32] = stor11[stor12[address(arg1)][idx]][1].field_0
                                            s = _19350 + 32
                                            t = sha3(mem[0])
                                            while _19350 + (uint255(stor11[stor12[address(arg1)][idx]].field_256) * 0.5) > s:
                                                mem[0] = address(arg1)
                                                mem[32] = 12
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_19253 + 32] = _19350
                                            mem[_19253 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                            mem[_19253 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                            _21335 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_21335] = stor11[stor12[address(arg1)][idx]].field_1024
                                            mem[_21335 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                            mem[_21335 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                            mem[_19253 + 128] = _21335
                                else:
                                    if stor11[stor12[address(arg1)][idx]].field_256 == stor11[stor12[address(arg1)][idx]].field_257 < 32:
                                        revert with 0, 34
                                    if not stor11[stor12[address(arg1)][idx]].field_257:
                                        mem[_19253 + 32] = _19350
                                        mem[_19253 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                        mem[_19253 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                        _19483 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_19483] = stor11[stor12[address(arg1)][idx]].field_1024
                                        mem[_19483 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                        mem[_19483 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                        mem[_19253 + 128] = _19483
                                    else:
                                        if 31 >= stor11[stor12[address(arg1)][idx]].field_257:
                                            mem[_19350 + 32] = 256 * stor11[stor12[address(arg1)][idx]].field_264
                                            mem[_19253 + 32] = _19350
                                            mem[_19253 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                            mem[_19253 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                            _19543 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_19543] = stor11[stor12[address(arg1)][idx]].field_1024
                                            mem[_19543 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                            mem[_19543 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                            mem[_19253 + 128] = _19543
                                        else:
                                            mem[0] = sha3(sub_0316c4ea[address(arg1)][idx], 11) + 1
                                            mem[_19350 + 32] = stor11[stor12[address(arg1)][idx]][1].field_0
                                            s = _19350 + 32
                                            t = sha3(mem[0])
                                            while _19350 + stor11[stor12[address(arg1)][idx]].field_257 > s:
                                                mem[0] = address(arg1)
                                                mem[32] = 12
                                                mem[s + 32] = stor1[t].field_0
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_19253 + 32] = _19350
                                            mem[_19253 + 64] = stor11[stor12[address(arg1)][idx]].field_512
                                            mem[_19253 + 96] = stor11[stor12[address(arg1)][idx]].field_768
                                            _21336 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_21336] = stor11[stor12[address(arg1)][idx]].field_1024
                                            mem[_21336 + 32] = stor11[stor12[address(arg1)][idx]].field_1280
                                            mem[_21336 + 64] = stor11[stor12[address(arg1)][idx]].field_1536
                                            mem[_19253 + 128] = _21336
                            mem[_19253 + 160] = stor11[stor12[address(arg1)][idx]].field_1792
                            if stor11[stor12[address(arg1)][idx]].field_2048 > 2:
                                revert with 0, 33
                            mem[_19253 + 192] = stor11[stor12[address(arg1)][idx]].field_2048
                            mem[_19253 + 224] = stor11[stor12[address(arg1)][idx]].field_2304
                            mem[_19253 + 256] = stor11[stor12[address(arg1)][idx]].field_2560
                            mem[_19253 + 288] = stor11[stor12[address(arg1)][idx]].field_2568
                            if not arg2:
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                mem[128] = _19253
                            else:
                                if stor11[stor12[address(arg1)][idx]].field_2048 > 2:
                                    revert with 0, 33
                                if not stor11[stor12[address(arg1)][idx]].field_2048:
                                    if 0 >= mem[96]:
                                        revert with 0, 50
                                    mem[128] = _19253
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 12
                            idx = idx + 1
                            continue 
                        mem[96] = 0
                        if sub_73a4b755[address(arg1)] > test266151307():
                            revert with 0, 65
                        _19250 = mem[64]
                        mem[mem[64]] = sub_73a4b755[address(arg1)]
                        mem[64] = mem[64] + (32 * sub_73a4b755[address(arg1)]) + 32
                        if not sub_73a4b755[address(arg1)]:
                            mem[0] = address(arg1)
                            mem[32] = 13
                            idx = 0
                            while idx < sub_73a4b755[address(arg1)]:
                                if idx >= sub_73a4b755[address(arg1)]:
                                    revert with 0, 50
                                mem[0] = sub_73a4b755[address(arg1)][idx]
                                mem[32] = 11
                                _21332 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_21332] = stor11[stor13[address(arg1)][idx]].field_0
                                if stor11[stor13[address(arg1)][idx]].field_256:
                                    if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                        revert with 0, 34
                                    _21367 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) + 32
                                    mem[_21367] = uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5
                                    if stor11[stor13[address(arg1)][idx]].field_256:
                                        if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                            mem[_21332 + 32] = _21367
                                            mem[_21332 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_21332 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _21466 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_21466] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_21466 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_21466 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_21332 + 128] = _21466
                                        else:
                                            if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                                mem[_21367 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                                mem[_21332 + 32] = _21367
                                                mem[_21332 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                                mem[_21332 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                                _21523 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_21523] = stor11[stor13[address(arg1)][idx]].field_1024
                                                mem[_21523 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                                mem[_21523 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                                mem[_21332 + 128] = _21523
                                            else:
                                                mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                                mem[_21367 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                                s = _21367 + 32
                                                t = sha3(mem[0])
                                                while _21367 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                                    mem[0] = address(arg1)
                                                    mem[32] = 13
                                                    mem[s + 32] = stor1[t].field_0
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                mem[_21332 + 32] = _21367
                                                mem[_21332 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                                mem[_21332 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                                _23255 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_23255] = stor11[stor13[address(arg1)][idx]].field_1024
                                                mem[_23255 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                                mem[_23255 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                                mem[_21332 + 128] = _23255
                                    else:
                                        if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                            revert with 0, 34
                                        if not stor11[stor13[address(arg1)][idx]].field_257:
                                            mem[_21332 + 32] = _21367
                                            mem[_21332 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_21332 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _21490 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_21490] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_21490 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_21490 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_21332 + 128] = _21490
                                        else:
                                            if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                                mem[_21367 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                                mem[_21332 + 32] = _21367
                                                mem[_21332 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                                mem[_21332 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                                _21564 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_21564] = stor11[stor13[address(arg1)][idx]].field_1024
                                                mem[_21564 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                                mem[_21564 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                                mem[_21332 + 128] = _21564
                                            else:
                                                mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                                mem[_21367 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                                s = _21367 + 32
                                                t = sha3(mem[0])
                                                while _21367 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                                    mem[0] = address(arg1)
                                                    mem[32] = 13
                                                    mem[s + 32] = stor1[t].field_0
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                mem[_21332 + 32] = _21367
                                                mem[_21332 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                                mem[_21332 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                                _23256 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_23256] = stor11[stor13[address(arg1)][idx]].field_1024
                                                mem[_23256 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                                mem[_23256 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                                mem[_21332 + 128] = _23256
                                else:
                                    if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                        revert with 0, 34
                                    _21392 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor11[stor13[address(arg1)][idx]].field_257) + 32
                                    mem[_21392] = stor11[stor13[address(arg1)][idx]].field_257
                                    if stor11[stor13[address(arg1)][idx]].field_256:
                                        if stor11[stor13[address(arg1)][idx]].field_256 == uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        if not Mask(256, -1, stor11[stor13[address(arg1)][idx]].field_256):
                                            mem[_21332 + 32] = _21392
                                            mem[_21332 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_21332 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _21491 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_21491] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_21491 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_21491 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_21332 + 128] = _21491
                                        else:
                                            if 31 >= uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5:
                                                mem[_21392 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                                mem[_21332 + 32] = _21392
                                                mem[_21332 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                                mem[_21332 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                                _21565 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_21565] = stor11[stor13[address(arg1)][idx]].field_1024
                                                mem[_21565 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                                mem[_21565 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                                mem[_21332 + 128] = _21565
                                            else:
                                                mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                                mem[_21392 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                                s = _21392 + 32
                                                t = sha3(mem[0])
                                                while _21392 + (uint255(stor11[stor13[address(arg1)][idx]].field_256) * 0.5) > s:
                                                    mem[0] = address(arg1)
                                                    mem[32] = 13
                                                    mem[s + 32] = stor1[t].field_0
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                mem[_21332 + 32] = _21392
                                                mem[_21332 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                                mem[_21332 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                                _23257 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_23257] = stor11[stor13[address(arg1)][idx]].field_1024
                                                mem[_23257 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                                mem[_23257 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                                mem[_21332 + 128] = _23257
                                    else:
                                        if stor11[stor13[address(arg1)][idx]].field_256 == stor11[stor13[address(arg1)][idx]].field_257 < 32:
                                            revert with 0, 34
                                        if not stor11[stor13[address(arg1)][idx]].field_257:
                                            mem[_21332 + 32] = _21392
                                            mem[_21332 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                            mem[_21332 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                            _21526 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_21526] = stor11[stor13[address(arg1)][idx]].field_1024
                                            mem[_21526 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                            mem[_21526 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                            mem[_21332 + 128] = _21526
                                        else:
                                            if 31 >= stor11[stor13[address(arg1)][idx]].field_257:
                                                mem[_21392 + 32] = 256 * stor11[stor13[address(arg1)][idx]].field_264
                                                mem[_21332 + 32] = _21392
                                                mem[_21332 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                                mem[_21332 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                                _21622 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_21622] = stor11[stor13[address(arg1)][idx]].field_1024
                                                mem[_21622 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                                mem[_21622 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                                mem[_21332 + 128] = _21622
                                            else:
                                                mem[0] = sha3(sub_73a4b755[address(arg1)][idx], 11) + 1
                                                mem[_21392 + 32] = stor11[stor13[address(arg1)][idx]][1].field_0
                                                s = _21392 + 32
                                                t = sha3(mem[0])
                                                while _21392 + stor11[stor13[address(arg1)][idx]].field_257 > s:
                                                    mem[0] = address(arg1)
                                                    mem[32] = 13
                                                    mem[s + 32] = stor1[t].field_0
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                mem[_21332 + 32] = _21392
                                                mem[_21332 + 64] = stor11[stor13[address(arg1)][idx]].field_512
                                                mem[_21332 + 96] = stor11[stor13[address(arg1)][idx]].field_768
                                                _23258 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_23258] = stor11[stor13[address(arg1)][idx]].field_1024
                                                mem[_23258 + 32] = stor11[stor13[address(arg1)][idx]].field_1280
                                                mem[_23258 + 64] = stor11[stor13[address(arg1)][idx]].field_1536
                                                mem[_21332 + 128] = _23258
                                mem[_21332 + 160] = stor11[stor13[address(arg1)][idx]].field_1792
                                if stor11[stor13[address(arg1)][idx]].field_2048 > 2:
                                    revert with 0, 33
                                mem[_21332 + 192] = stor11[stor13[address(arg1)][idx]].field_2048
                                mem[_21332 + 224] = stor11[stor13[address(arg1)][idx]].field_2304
                                mem[_21332 + 256] = stor11[stor13[address(arg1)][idx]].field_2560
                                mem[_21332 + 288] = stor11[stor13[address(arg1)][idx]].field_2568
                                if not arg2:
                                    if 0 >= mem[_19250]:
                                        revert with 0, 50
                                    mem[_19250 + 32] = _21332
                                else:
                                    if stor11[stor13[address(arg1)][idx]].field_1024 == address(arg1):
                                        if block.timestamp <= stor11[stor13[address(arg1)][idx]].field_1280:
                                            if 0 >= mem[_19250]:
                                                revert with 0, 50
                                            mem[_19250 + 32] = _21332
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 13
                                idx = idx + 1
                                continue 
                            mem[_19250] = 0
                            mem[mem[64]] = 64
                        # nil
}



}
