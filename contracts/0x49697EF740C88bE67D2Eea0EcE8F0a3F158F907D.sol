contract main {




// =====================  Runtime code  =====================


#
#  - sub_c033c851(?)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
uint256 stor7;
mapping of struct stor8;

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

function owner() payable {
    return owner
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function sub_173e2ac9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if block.timestamp > 1640944802:
        revert with 0, 'Past New Year'
    if block.timestamp < 1640944790:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0xf068b5ebabf25f5ff69d21c8536b5a5a19c53a10] > -2:
        revert with 0, 17
    balanceOf[0xf068b5ebabf25f5ff69d21c8536b5a5a19c53a10]++
    ownerOf[stor7] = 0xf068b5ebabf25f5ff69d21c8536b5a5a19c53a10
    emit Transfer(0, 0xf068b5ebabf25f5ff69d21c8536b5a5a19c53a10, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = stor7
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_242db336(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if block.timestamp > 1640974502:
        revert with 0, 'Past New Year'
    if block.timestamp < 1640974490:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02] > -2:
        revert with 0, 17
    balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02]++
    ownerOf[stor7] = 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02
    emit Transfer(0, 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = stor7
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_32a5d6de(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if block.timestamp > 1640952002:
        revert with 0, 'Past New Year'
    if block.timestamp < 1640951990:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02] > -2:
        revert with 0, 17
    balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02]++
    ownerOf[stor7] = 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02
    emit Transfer(0, 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = stor7
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_37367da8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if block.timestamp > 1641009602:
        revert with 0, 'Past New Year'
    if block.timestamp < 1641009590:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298] > -2:
        revert with 0, 17
    balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298]++
    ownerOf[stor7] = 0x864dc6a148975630443bcf5a42e8a17a3c118298
    emit Transfer(0, 0x864dc6a148975630443bcf5a42e8a17a3c118298, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = stor7
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_3e1e70bc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if block.timestamp > 1640971802:
        revert with 0, 'Past New Year'
    if block.timestamp < 1640971790:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02] > -2:
        revert with 0, 17
    balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02]++
    ownerOf[stor7] = 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02
    emit Transfer(0, 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = stor7
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_3fc779ac(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if block.timestamp > 1640975402:
        revert with 0, 'Past New Year'
    if block.timestamp < 1640975390:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02] > -2:
        revert with 0, 17
    balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02]++
    ownerOf[stor7] = 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02
    emit Transfer(0, 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = stor7
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_7f6085ec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if block.timestamp > 1641013202:
        revert with 0, 'Past New Year'
    if block.timestamp < 1641013190:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298] > -2:
        revert with 0, 17
    balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298]++
    ownerOf[stor7] = 0x864dc6a148975630443bcf5a42e8a17a3c118298
    emit Transfer(0, 0x864dc6a148975630443bcf5a42e8a17a3c118298, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = stor7
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_82ec2979(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if block.timestamp > 1640979002:
        revert with 0, 'Past New Year'
    if block.timestamp < 1640978990:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298] > -2:
        revert with 0, 17
    balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298]++
    ownerOf[stor7] = 0x864dc6a148975630443bcf5a42e8a17a3c118298
    emit Transfer(0, 0x864dc6a148975630443bcf5a42e8a17a3c118298, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = stor7
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_86526647(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if block.timestamp > 1640962802:
        revert with 0, 'Past New Year'
    if block.timestamp < 1640962790:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02] > -2:
        revert with 0, 17
    balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02]++
    ownerOf[stor7] = 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02
    emit Transfer(0, 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = stor7
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_8f9e1a4d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if block.timestamp > 1640980802:
        revert with 0, 'Past New Year'
    if block.timestamp < 1640980790:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298] > -2:
        revert with 0, 17
    balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298]++
    ownerOf[stor7] = 0x864dc6a148975630443bcf5a42e8a17a3c118298
    emit Transfer(0, 0x864dc6a148975630443bcf5a42e8a17a3c118298, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = stor7
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_b7c9f883(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if block.timestamp > 1640955602:
        revert with 0, 'Past New Year'
    if block.timestamp < 1640955590:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0xf068b5ebabf25f5ff69d21c8536b5a5a19c53a10] > -2:
        revert with 0, 17
    balanceOf[0xf068b5ebabf25f5ff69d21c8536b5a5a19c53a10]++
    ownerOf[stor7] = 0xf068b5ebabf25f5ff69d21c8536b5a5a19c53a10
    emit Transfer(0, 0xf068b5ebabf25f5ff69d21c8536b5a5a19c53a10, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = stor7
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_c1108487(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if block.timestamp > 1640966402:
        revert with 0, 'Past New Year'
    if block.timestamp < 1640966390:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0xf068b5ebabf25f5ff69d21c8536b5a5a19c53a10] > -2:
        revert with 0, 17
    balanceOf[0xf068b5ebabf25f5ff69d21c8536b5a5a19c53a10]++
    ownerOf[stor7] = 0xf068b5ebabf25f5ff69d21c8536b5a5a19c53a10
    emit Transfer(0, 0xf068b5ebabf25f5ff69d21c8536b5a5a19c53a10, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = stor7
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_d4e256da(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if block.timestamp > 1641034802:
        revert with 0, 'Past New Year'
    if block.timestamp < 1641034790:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0xfd7d8399adc92594353971add50f0f5db2e20a94] > -2:
        revert with 0, 17
    balanceOf[0xfd7d8399adc92594353971add50f0f5db2e20a94]++
    ownerOf[stor7] = 0xfd7d8399adc92594353971add50f0f5db2e20a94
    emit Transfer(0, 0xfd7d8399adc92594353971add50f0f5db2e20a94, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = stor7
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_d744ca64(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if block.timestamp > 1641020402:
        revert with 0, 'Past New Year'
    if block.timestamp < 1641020390:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298] > -2:
        revert with 0, 17
    balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298]++
    ownerOf[stor7] = 0x864dc6a148975630443bcf5a42e8a17a3c118298
    emit Transfer(0, 0x864dc6a148975630443bcf5a42e8a17a3c118298, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = stor7
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_e4caf2cf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if block.timestamp > 1640982602:
        revert with 0, 'Past New Year'
    if block.timestamp < 1640982590:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298] > -2:
        revert with 0, 17
    balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298]++
    ownerOf[stor7] = 0x864dc6a148975630443bcf5a42e8a17a3c118298
    emit Transfer(0, 0x864dc6a148975630443bcf5a42e8a17a3c118298, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = stor7
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_e6cfff1b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if block.timestamp > 1640948402:
        revert with 0, 'Past New Year'
    if block.timestamp < 1640948390:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02] > -2:
        revert with 0, 17
    balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02]++
    ownerOf[stor7] = 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02
    emit Transfer(0, 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = stor7
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_f36aa1c8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if block.timestamp > 1641016802:
        revert with 0, 'Past New Year'
    if block.timestamp < 1641016790:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298] > -2:
        revert with 0, 17
    balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298]++
    ownerOf[stor7] = 0x864dc6a148975630443bcf5a42e8a17a3c118298
    emit Transfer(0, 0x864dc6a148975630443bcf5a42e8a17a3c118298, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = stor7
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_fa22ee4f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if block.timestamp > 1640959202:
        revert with 0, 'Past New Year'
    if block.timestamp < 1640959190:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02] > -2:
        revert with 0, 17
    balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02]++
    ownerOf[stor7] = 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02
    emit Transfer(0, 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = stor7
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_6cf5e8a5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if block.timestamp > 1640984402:
        revert with 0, 'Past New Year'
    if block.timestamp < 1640984390:
        revert with 0, 'Not Time to Drink Vodka Yet!'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298] > -2:
        revert with 0, 17
    balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298]++
    ownerOf[stor7] = 0x864dc6a148975630443bcf5a42e8a17a3c118298
    emit Transfer(0, 0x864dc6a148975630443bcf5a42e8a17a3c118298, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = stor7
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
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
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
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
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4.length + arg4 + 36
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
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if not ext_code.size(arg2):
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

function sub_1920cf29(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 160 < 128 or ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307():
        revert with 0, 65
    require calldata.size >= arg2.length + arg2 + 36
    if block.timestamp > 1640995203:
        revert with 0, 'Past New Year'
    if block.timestamp < 1640995190:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298] > -2:
        revert with 0, 17
    balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298]++
    ownerOf[stor7] = 0x864dc6a148975630443bcf5a42e8a17a3c118298
    emit Transfer(0, 0x864dc6a148975630443bcf5a42e8a17a3c118298, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298] > -2:
        revert with 0, 17
    balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298]++
    ownerOf[stor7] = 0x864dc6a148975630443bcf5a42e8a17a3c118298
    emit Transfer(0, 0x864dc6a148975630443bcf5a42e8a17a3c118298, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor8[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor8[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = stor7
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
           mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
}

function sub_1cc112c2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 160 < 128 or ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307():
        revert with 0, 65
    require calldata.size >= arg2.length + arg2 + 36
    if block.timestamp > 1641006002:
        revert with 0, 'Past New Year'
    if block.timestamp < 1641005990:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298] > -2:
        revert with 0, 17
    balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298]++
    ownerOf[stor7] = 0x864dc6a148975630443bcf5a42e8a17a3c118298
    emit Transfer(0, 0x864dc6a148975630443bcf5a42e8a17a3c118298, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298] > -2:
        revert with 0, 17
    balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298]++
    ownerOf[stor7] = 0x864dc6a148975630443bcf5a42e8a17a3c118298
    emit Transfer(0, 0x864dc6a148975630443bcf5a42e8a17a3c118298, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor8[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor8[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = stor7
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
           mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
}

function sub_474cfe07(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 160 < 128 or ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307():
        revert with 0, 65
    require calldata.size >= arg2.length + arg2 + 36
    if block.timestamp > 1640973602:
        revert with 0, 'Past New Year'
    if block.timestamp < 1640973590:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02] > -2:
        revert with 0, 17
    balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02]++
    ownerOf[stor7] = 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02
    emit Transfer(0, 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02] > -2:
        revert with 0, 17
    balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02]++
    ownerOf[stor7] = 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02
    emit Transfer(0, 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor8[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor8[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = stor7
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
           mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
}

function sub_68cedb19(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 160 < 128 or ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307():
        revert with 0, 65
    require calldata.size >= arg2.length + arg2 + 36
    if block.timestamp > 1640988002:
        revert with 0, 'Past New Year'
    if block.timestamp < 1640987990:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298] > -2:
        revert with 0, 17
    balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298]++
    ownerOf[stor7] = 0x864dc6a148975630443bcf5a42e8a17a3c118298
    emit Transfer(0, 0x864dc6a148975630443bcf5a42e8a17a3c118298, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298] > -2:
        revert with 0, 17
    balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298]++
    ownerOf[stor7] = 0x864dc6a148975630443bcf5a42e8a17a3c118298
    emit Transfer(0, 0x864dc6a148975630443bcf5a42e8a17a3c118298, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor8[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor8[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = stor7
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
           mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
}

function sub_a201e7f3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 160 < 128 or ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307():
        revert with 0, 65
    require calldata.size >= arg2.length + arg2 + 36
    if block.timestamp > 1640977202:
        revert with 0, 'Past New Year'
    if block.timestamp < 1640977190:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298] > -2:
        revert with 0, 17
    balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298]++
    ownerOf[stor7] = 0x864dc6a148975630443bcf5a42e8a17a3c118298
    emit Transfer(0, 0x864dc6a148975630443bcf5a42e8a17a3c118298, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298] > -2:
        revert with 0, 17
    balanceOf[0x864dc6a148975630443bcf5a42e8a17a3c118298]++
    ownerOf[stor7] = 0x864dc6a148975630443bcf5a42e8a17a3c118298
    emit Transfer(0, 0x864dc6a148975630443bcf5a42e8a17a3c118298, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor8[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor8[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = stor7
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
           mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
}

function sub_b26a0286(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 160 < 128 or ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307():
        revert with 0, 65
    require calldata.size >= arg2.length + arg2 + 36
    if block.timestamp > 1640970002:
        revert with 0, 'Past New Year'
    if block.timestamp < 1640969990:
        revert with 0, 'Not New Year Yet'
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02] > -2:
        revert with 0, 17
    balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02]++
    ownerOf[stor7] = 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02
    emit Transfer(0, 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor7++
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02] > -2:
        revert with 0, 17
    balanceOf[0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02]++
    ownerOf[stor7] = 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02
    emit Transfer(0, 0xfccc322e69b5f87daf4e71aa8bed264b3cb92f02, stor7);
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor8[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor8[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = stor7
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
           mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if bool(stor0.length):
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
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
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
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
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
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() payable {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if bool(stor1.length):
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
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
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
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
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
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if stor8[arg1].field_0:
        if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
            revert with 0, 34
        if stor8[arg1].field_0:
            if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
                revert with 0, 34
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
                revert with 0, 34
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
        revert with 0, 34
    if stor8[arg1].field_0:
        if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
            revert with 0, 34
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
            revert with 0, 34
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



}
