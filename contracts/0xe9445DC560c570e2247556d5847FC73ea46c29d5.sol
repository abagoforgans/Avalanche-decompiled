contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const name = '', 0

const symbol = '', 0


address owner;
array of uint256 stor1;
mapping of uint256 _balances;
mapping of address _owners;
mapping of struct stor4;
array of struct sub_3f8ab2ec;
mapping of uint64 sub_5073a9d8;
uint256 sub_d2429d48;
mapping of uint64 sub_279b265d;
mapping of uint64 sub_2562b92d;
uint8 stor10;
mapping of address approved;
mapping of uint8 stor12;
uint256 sub_03577a96;
uint64 sub_b223c617;
array of struct stor15;
array of struct stor16;
uint256 totalSupply;

function sub_03577a96(?) payable {
    return sub_03577a96
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not _owners[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function sub_2562b92d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_2562b92d[arg1]
}

function sub_279b265d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_279b265d[arg1]
}

function sub_3f8ab2ec(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_3f8ab2ec[arg1].field_0
    return sub_3f8ab2ec[arg1][arg2].field_0
}

function sub_5073a9d8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_5073a9d8[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not _owners[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    return _owners[arg1]
}

function _balances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _balances[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return _balances[address(arg1)]
}

function owner() payable {
    return owner
}

function _owners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return _owners[arg1]
}

function sub_a5dc9e1b(?) payable {
    return address(stor1.length)
}

function sub_b223c617(?) payable {
    return sub_b223c617
}

function sub_d2429d48(?) payable {
    return sub_d2429d48
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor12[address(arg1)][address(arg2)])
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

function sub_110969d6(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_03577a96 = arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor12[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
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

function sub_72308ccd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0x52892aa7: address(stor1.length), address(arg1)
    address(stor1.length) = address(arg1)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not _owners[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if arg1 == _owners[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if _owners[arg2] != msg.sender:
        if not stor12[stor3[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not _owners[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    emit Approval(_owners[arg2], arg1, arg2);
}

function sub_ebd67ff1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_3f8ab2ec[address(arg1)].field_0:
        mem[128] = sub_3f8ab2ec[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_3f8ab2ec[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_3f8ab2ec[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_3f8ab2ec[address(arg1)].field_0, data=mem[128 len 32 * sub_3f8ab2ec[address(arg1)].field_0])
    mem[(32 * sub_3f8ab2ec[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_3f8ab2ec[address(arg1)].field_0) + 160] = sub_3f8ab2ec[address(arg1)].field_0
    mem[(32 * sub_3f8ab2ec[address(arg1)].field_0) + 192 len 32 * sub_3f8ab2ec[address(arg1)].field_0] = mem[128 len 32 * sub_3f8ab2ec[address(arg1)].field_0]
    return memory
      from (32 * sub_3f8ab2ec[address(arg1)].field_0) + 128
       len (96 * sub_3f8ab2ec[address(arg1)].field_0) + 64
}

function sub_8edc4edf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
            revert with 0, 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while uint255(stor15.length.field_1) + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while stor15.length.field_1 % 128 + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_c634d427(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length.field_1) < 32:
            revert with 0, 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while uint255(stor16.length.field_1) + 31 / 32 > idx:
                stor16[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while stor16.length.field_1 % 128 + 31 / 32 > idx:
                stor16[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_2e497c11(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg2.length + arg2 + 36
    if not _owners[arg1]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if _owners[arg1] != msg.sender:
        revert with 0, 'MANAGER: You are not the owner'
    if bool(stor4[arg1].field_256):
        if bool(stor4[arg1].field_256) == uint255(stor4[arg1].field_257) < 32:
            revert with 0, 34
        if arg2.length:
            stor4[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4[arg1].field_256 = 0
            idx = 0
            while uint255(stor4[arg1].field_257) + 31 / 32 > idx:
                stor4[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4[arg1].field_256) == stor4[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor4[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4[arg1].field_256 = 0
            idx = 0
            while stor4[arg1].field_257 % 128 + 31 / 32 > idx:
                stor4[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
}

function _deleteNode(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not _owners[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if _balances[stor3[arg1]] < 1:
        revert with 0, 17
    _balances[stor3[arg1]]--
    _owners[arg1] = 0
    stor4[arg1].field_0 = 0
    if bool(stor4[arg1].field_256):
        if bool(stor4[arg1].field_256) == uint255(stor4[arg1].field_257) < 32:
            revert with 0, 34
        stor4[arg1].field_256 = 0
        if 31 < uint255(stor4[arg1].field_257):
            idx = 0
            while uint255(stor4[arg1].field_257) + 31 / 32 > idx:
                stor4[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4[arg1].field_256) == stor4[arg1].field_257 % 128 < 32:
            revert with 0, 34
        stor4[arg1].field_256 = 0
        if 31 < stor4[arg1].field_257 % 128:
            idx = 0
            while stor4[arg1].field_257 % 128 + 31 / 32 > idx:
                stor4[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    Mask(136, 0, stor4[arg1].field_512) = 0
    stor4[arg1].field_768 = 0
    uint64(stor4[arg1].field_1024) = 0
    mem[0] = _owners[arg1]
    idx = 0
    s = sub_3f8ab2ec[mem[0]].field_0
    while idx < sub_3f8ab2ec[stor3[arg1]].field_0:
        mem[0] = sha3(_owners[arg1], 5)
        if idx == -1:
            revert with 0, 17
        if sub_3f8ab2ec[stor3[arg1]][idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = idx
        continue 
    if s < sub_3f8ab2ec[stor3[arg1]].field_0:
        if sub_3f8ab2ec[stor3[arg1]].field_0 < 1:
            revert with 0, 17
        if sub_3f8ab2ec[stor3[arg1]].field_0 - 1 >= sub_3f8ab2ec[stor3[arg1]].field_0:
            revert with 0, 50
        if s >= sub_3f8ab2ec[stor3[arg1]].field_0:
            revert with 0, 50
        sub_3f8ab2ec[stor3[arg1]][s].field_0 = sub_3f8ab2ec[stor3[arg1]][sub_3f8ab2ec[stor3[arg1]].field_0].field_0
        if not sub_3f8ab2ec[stor3[arg1]].field_0:
            revert with 0, 49
        sub_3f8ab2ec[stor3[arg1]][sub_3f8ab2ec[stor3[arg1]].field_0].field_0 = 0
        sub_3f8ab2ec[stor3[arg1]].field_0--
}

function sub_d833069e(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg2.length + arg2 + 36
    require arg3 == uint8(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply > -2:
        revert with 0, 17
    totalSupply++
    if _owners[stor17]:
        revert with 0, 'MANAGER: Solar already exist'
    if uint8(arg3) > stor10:
        revert with 0, 'MANAGER: Tier isn't valid'
    if not uint8(arg3):
        revert with 0, 'MANAGER: Tier isn't valid'
    stor4[stor17].field_0 = totalSupply
    if bool(stor4[stor17].field_256):
        if bool(stor4[stor17].field_256) == uint255(stor4[stor17].field_257) < 32:
            revert with 0, 34
        if arg2.length:
            stor4[stor17][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4[stor17].field_256 = 0
            idx = 0
            while uint255(stor4[stor17].field_257) + 31 / 32 > idx:
                stor4[stor17][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4[stor17].field_256) == stor4[stor17].field_257 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor4[stor17][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4[stor17].field_256 = 0
            idx = 0
            while stor4[stor17].field_257 % 128 + 31 / 32 > idx:
                stor4[stor17][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    uint64(stor4[stor17].field_512) = uint64(block.timestamp)
    uint64(stor4[stor17].field_576) = uint64(block.timestamp)
    uint8(stor4[stor17].field_640) = uint8(arg3)
    stor4[stor17].field_768 = arg4
    uint64(stor4[stor17].field_1024) = 0
    stor4[stor17].field_1280 % 1 = 0
    _owners[stor17] = address(arg1)
    if _balances[address(arg1)] > -2:
        revert with 0, 17
    _balances[address(arg1)]++
    sub_3f8ab2ec[address(arg1)].field_0++
    sub_3f8ab2ec[address(arg1)][sub_3f8ab2ec[address(arg1)].field_0].field_0 = totalSupply
    emit Transfer(0, address(arg1), totalSupply);
}

function sub_8d590803(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg2.length + arg2 + 36
    require arg3 == uint8(arg3)
    if address(stor1.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the helper'
    if arg4 < sub_03577a96:
        revert with 0, 'MANAGER: paid amount is lower than minimum price'
    if totalSupply > -2:
        revert with 0, 17
    totalSupply++
    if _owners[stor17]:
        revert with 0, 'MANAGER: Solar already exist'
    if uint8(arg3) > stor10:
        revert with 0, 'MANAGER: Tier isn't valid'
    if not uint8(arg3):
        revert with 0, 'MANAGER: Tier isn't valid'
    stor4[stor17].field_0 = totalSupply
    if bool(stor4[stor17].field_256):
        if bool(stor4[stor17].field_256) == uint255(stor4[stor17].field_257) < 32:
            revert with 0, 34
        if arg2.length:
            stor4[stor17][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4[stor17].field_256 = 0
            idx = 0
            while uint255(stor4[stor17].field_257) + 31 / 32 > idx:
                stor4[stor17][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4[stor17].field_256) == stor4[stor17].field_257 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor4[stor17][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4[stor17].field_256 = 0
            idx = 0
            while stor4[stor17].field_257 % 128 + 31 / 32 > idx:
                stor4[stor17][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    uint64(stor4[stor17].field_512) = uint64(block.timestamp)
    uint64(stor4[stor17].field_576) = uint64(block.timestamp)
    uint8(stor4[stor17].field_640) = uint8(arg3)
    stor4[stor17].field_768 = arg4
    uint64(stor4[stor17].field_1024) = 0
    stor4[stor17].field_1280 % 1 = 0
    _owners[stor17] = address(arg1)
    if _balances[address(arg1)] > -2:
        revert with 0, 17
    _balances[address(arg1)]++
    sub_3f8ab2ec[address(arg1)].field_0++
    sub_3f8ab2ec[address(arg1)][sub_3f8ab2ec[address(arg1)].field_0].field_0 = totalSupply
    emit Transfer(0, address(arg1), totalSupply);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not _owners[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not _owners[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not _owners[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if _owners[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor12[stor3[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if _owners[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not _owners[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    emit Approval(_owners[arg3], 0, arg3);
    if _balances[address(arg1)] < 1:
        revert with 0, 17
    _balances[address(arg1)]--
    if _balances[address(arg2)] > -2:
        revert with 0, 17
    _balances[address(arg2)]++
    _owners[arg3] = arg2
    sub_3f8ab2ec[address(arg2)].field_0++
    sub_3f8ab2ec[address(arg2)][sub_3f8ab2ec[address(arg2)].field_0].field_0 = arg3
    mem[0] = arg1
    idx = 0
    s = sub_3f8ab2ec[mem[0]].field_0
    while idx < sub_3f8ab2ec[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        if idx == -1:
            revert with 0, 17
        if sub_3f8ab2ec[address(arg1)][idx].field_0 != arg3:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = idx
        continue 
    if s < sub_3f8ab2ec[address(arg1)].field_0:
        if sub_3f8ab2ec[address(arg1)].field_0 < 1:
            revert with 0, 17
        if sub_3f8ab2ec[address(arg1)].field_0 - 1 >= sub_3f8ab2ec[address(arg1)].field_0:
            revert with 0, 50
        if s >= sub_3f8ab2ec[address(arg1)].field_0:
            revert with 0, 50
        sub_3f8ab2ec[address(arg1)][s].field_0 = sub_3f8ab2ec[address(arg1)][sub_3f8ab2ec[address(arg1)].field_0].field_0
        if not sub_3f8ab2ec[address(arg1)].field_0:
            revert with 0, 49
        sub_3f8ab2ec[address(arg1)][sub_3f8ab2ec[address(arg1)].field_0].field_0 = 0
        sub_3f8ab2ec[address(arg1)].field_0--
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not _owners[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not _owners[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not _owners[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if _owners[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor12[stor3[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if _owners[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not _owners[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    emit Approval(_owners[arg3], 0, arg3);
    if _balances[address(arg1)] < 1:
        revert with 0, 17
    _balances[address(arg1)]--
    if _balances[address(arg2)] > -2:
        revert with 0, 17
    _balances[address(arg2)]++
    _owners[arg3] = arg2
    sub_3f8ab2ec[address(arg2)].field_0++
    sub_3f8ab2ec[address(arg2)][sub_3f8ab2ec[address(arg2)].field_0].field_0 = arg3
    mem[0] = arg1
    idx = 0
    s = sub_3f8ab2ec[mem[0]].field_0
    while idx < sub_3f8ab2ec[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        if idx == -1:
            revert with 0, 17
        if sub_3f8ab2ec[address(arg1)][idx].field_0 != arg3:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = idx
        continue 
    if s < sub_3f8ab2ec[address(arg1)].field_0:
        if sub_3f8ab2ec[address(arg1)].field_0 < 1:
            revert with 0, 17
        if sub_3f8ab2ec[address(arg1)].field_0 - 1 >= sub_3f8ab2ec[address(arg1)].field_0:
            revert with 0, 50
        if s >= sub_3f8ab2ec[address(arg1)].field_0:
            revert with 0, 50
        sub_3f8ab2ec[address(arg1)][s].field_0 = sub_3f8ab2ec[address(arg1)][sub_3f8ab2ec[address(arg1)].field_0].field_0
        if not sub_3f8ab2ec[address(arg1)].field_0:
            revert with 0, 49
        sub_3f8ab2ec[address(arg1)][sub_3f8ab2ec[address(arg1)].field_0].field_0 = 0
        sub_3f8ab2ec[address(arg1)].field_0--
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

function claim(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not _owners[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if address(stor1.length) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the helper'
    if not _owners[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if _owners[arg2] != arg1:
        revert with 0, 'MANAGER: account not the owner'
    if bool(stor4[arg2].field_256):
        if bool(stor4[arg2].field_256) == uint255(stor4[arg2].field_257) < 32:
            revert with 0, 34
    else:
        if bool(stor4[arg2].field_256) == stor4[arg2].field_257 % 128 < 32:
            revert with 0, 34
    if bool(stor4[arg2].field_256):
        if bool(stor4[arg2].field_256) == uint255(stor4[arg2].field_257) < 32:
            revert with 0, 34
        if uint255(stor4[arg2].field_257):
            if 31 < uint255(stor4[arg2].field_257):
                idx = 352
                s = 0
                while uint255(stor4[arg2].field_257) + 320 > idx:
                    mem[idx + 32] = stor4[arg2][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor4[arg2].field_256) == stor4[arg2].field_257 % 128 < 32:
            revert with 0, 34
        if stor4[arg2].field_257 % 128:
            if 31 < stor4[arg2].field_257 % 128:
                idx = 352
                s = 0
                while stor4[arg2].field_257 % 128 + 320 > idx:
                    mem[idx + 32] = stor4[arg2][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if block.timestamp < uint64(stor4[arg2].field_576):
        revert with 0, 17
    if sub_5073a9d8[uint8(stor4[arg2].field_512)] > -uint64(stor4[arg2].field_1024) + test266151307():
        revert with 0, 17
    if stor4[arg2].field_768 and uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)]) > -1 / stor4[arg2].field_768:
        revert with 0, 17
    if stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)]) and block.timestamp - uint64(stor4[arg2].field_576) > -1 / stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)]):
        revert with 0, 17
    if not sub_d2429d48:
        revert with 0, 18
    if not sub_b223c617:
        revert with 0, 18
    if not (block.timestamp * stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)])) - (uint64(stor4[arg2].field_576) * stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)])) / sub_d2429d48 / sub_b223c617:
        return 0
    uint64(stor4[arg2].field_576) = uint64(block.timestamp)
    return ((block.timestamp * stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)])) - (uint64(stor4[arg2].field_576) * stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)])) / sub_d2429d48 / sub_b223c617)
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
    if not _owners[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not _owners[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not _owners[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if _owners[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor12[stor3[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if _owners[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not _owners[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    emit Approval(_owners[arg3], 0, arg3);
    if _balances[address(arg1)] < 1:
        revert with 0, 17
    _balances[address(arg1)]--
    if _balances[address(arg2)] > -2:
        revert with 0, 17
    _balances[address(arg2)]++
    _owners[arg3] = arg2
    sub_3f8ab2ec[address(arg2)].field_0++
    sub_3f8ab2ec[address(arg2)][sub_3f8ab2ec[address(arg2)].field_0].field_0 = arg3
    mem[0] = arg1
    idx = 0
    s = sub_3f8ab2ec[mem[0]].field_0
    while idx < sub_3f8ab2ec[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        if idx == -1:
            revert with 0, 17
        if sub_3f8ab2ec[address(arg1)][idx].field_0 != arg3:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = idx
        continue 
    if s < sub_3f8ab2ec[address(arg1)].field_0:
        if sub_3f8ab2ec[address(arg1)].field_0 < 1:
            revert with 0, 17
        if sub_3f8ab2ec[address(arg1)].field_0 - 1 >= sub_3f8ab2ec[address(arg1)].field_0:
            revert with 0, 50
        if s >= sub_3f8ab2ec[address(arg1)].field_0:
            revert with 0, 50
        sub_3f8ab2ec[address(arg1)][s].field_0 = sub_3f8ab2ec[address(arg1)][sub_3f8ab2ec[address(arg1)].field_0].field_0
        if not sub_3f8ab2ec[address(arg1)].field_0:
            revert with 0, 49
        sub_3f8ab2ec[address(arg1)][sub_3f8ab2ec[address(arg1)].field_0].field_0 = 0
        sub_3f8ab2ec[address(arg1)].field_0--
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

function sub_2e7d754b(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor4[arg1].field_256):
        if bool(stor4[arg1].field_256) == uint255(stor4[arg1].field_257) < 32:
            revert with 0, 34
        if bool(stor4[arg1].field_256):
            if bool(stor4[arg1].field_256) == uint255(stor4[arg1].field_257) < 32:
                revert with 0, 34
            if uint255(stor4[arg1].field_257):
                if 31 >= uint255(stor4[arg1].field_257):
                    mem[128] = 256 * Mask(248, 0, stor4[arg1].field_264)
                else:
                    mem[128] = stor4[arg1][1].field_0
                    idx = 128
                    s = 0
                    while uint255(stor4[arg1].field_257) + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor4[arg1].field_256) == stor4[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if stor4[arg1].field_257 % 128:
                if 31 >= stor4[arg1].field_257 % 128:
                    mem[128] = 256 * Mask(248, 0, stor4[arg1].field_264)
                else:
                    mem[128] = stor4[arg1][1].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_257 % 128 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor4[arg1].field_0, 
               Array(len=2 * Mask(256, -1, uint255(stor4[arg1].field_257)), data=mem[128 len ceil32(uint255(stor4[arg1].field_257))]),
               uint64(stor4[arg1].field_512),
               uint64(stor4[arg1].field_512),
               uint8(stor4[arg1].field_512),
               stor4[arg1].field_768,
               uint64(stor4[arg1].field_1024)
    if bool(stor4[arg1].field_256) == stor4[arg1].field_257 % 128 < 32:
        revert with 0, 34
    if bool(stor4[arg1].field_256):
        if bool(stor4[arg1].field_256) == uint255(stor4[arg1].field_257) < 32:
            revert with 0, 34
        if uint255(stor4[arg1].field_257):
            if 31 >= uint255(stor4[arg1].field_257):
                mem[128] = 256 * Mask(248, 0, stor4[arg1].field_264)
            else:
                mem[128] = stor4[arg1][1].field_0
                idx = 128
                s = 0
                while uint255(stor4[arg1].field_257) + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor4[arg1].field_256) == stor4[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if stor4[arg1].field_257 % 128:
            if 31 >= stor4[arg1].field_257 % 128:
                mem[128] = 256 * Mask(248, 0, stor4[arg1].field_264)
            else:
                mem[128] = stor4[arg1][1].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_257 % 128 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor4[arg1].field_0, 
           Array(len=stor4[arg1].field_256 % 128, data=mem[128 len ceil32(stor4[arg1].field_257 % 128)]),
           uint64(stor4[arg1].field_512),
           uint64(stor4[arg1].field_512),
           uint8(stor4[arg1].field_512),
           stor4[arg1].field_768,
           uint64(stor4[arg1].field_1024)
}

function getNode(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not _owners[arg1]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if bool(stor4[arg1].field_256):
        if bool(stor4[arg1].field_256) == uint255(stor4[arg1].field_257) < 32:
            revert with 0, 34
        if bool(stor4[arg1].field_256):
            if bool(stor4[arg1].field_256) == uint255(stor4[arg1].field_257) < 32:
                revert with 0, 34
            if uint255(stor4[arg1].field_257):
                if 31 >= uint255(stor4[arg1].field_257):
                    mem[576] = 256 * Mask(248, 0, stor4[arg1].field_264)
                else:
                    mem[576] = stor4[arg1][1].field_0
                    idx = 576
                    s = 0
                    while uint255(stor4[arg1].field_257) + 544 > idx:
                        mem[idx + 32] = stor4[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor4[arg1].field_256) == stor4[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if stor4[arg1].field_257 % 128:
                if 31 >= stor4[arg1].field_257 % 128:
                    mem[576] = 256 * Mask(248, 0, stor4[arg1].field_264)
                else:
                    mem[576] = stor4[arg1][1].field_0
                    idx = 576
                    s = 0
                    while stor4[arg1].field_257 % 128 + 544 > idx:
                        mem[idx + 32] = stor4[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, stor4[arg1].field_0, 
               224,
               uint64(stor4[arg1].field_512),
               uint64(stor4[arg1].field_512),
               uint8(stor4[arg1].field_512),
               stor4[arg1].field_768,
               uint64(stor4[arg1].field_1024),
               2 * Mask(256, -1, uint255(stor4[arg1].field_257)),
               mem[576 len ceil32(uint255(stor4[arg1].field_257))]
    if bool(stor4[arg1].field_256) == stor4[arg1].field_257 % 128 < 32:
        revert with 0, 34
    if bool(stor4[arg1].field_256):
        if bool(stor4[arg1].field_256) == uint255(stor4[arg1].field_257) < 32:
            revert with 0, 34
        if uint255(stor4[arg1].field_257):
            if 31 >= uint255(stor4[arg1].field_257):
                mem[576] = 256 * Mask(248, 0, stor4[arg1].field_264)
            else:
                mem[576] = stor4[arg1][1].field_0
                idx = 576
                s = 0
                while uint255(stor4[arg1].field_257) + 544 > idx:
                    mem[idx + 32] = stor4[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor4[arg1].field_256) == stor4[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if stor4[arg1].field_257 % 128:
            if 31 >= stor4[arg1].field_257 % 128:
                mem[576] = 256 * Mask(248, 0, stor4[arg1].field_264)
            else:
                mem[576] = stor4[arg1][1].field_0
                idx = 576
                s = 0
                while stor4[arg1].field_257 % 128 + 544 > idx:
                    mem[idx + 32] = stor4[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, stor4[arg1].field_0, 
           224,
           uint64(stor4[arg1].field_512),
           uint64(stor4[arg1].field_512),
           uint8(stor4[arg1].field_512),
           stor4[arg1].field_768,
           uint64(stor4[arg1].field_1024),
           stor4[arg1].field_256 % 128,
           mem[576 len ceil32(stor4[arg1].field_257 % 128)]
}

function sub_d099c891(?) payable {
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length.field_1) < 32:
            revert with 0, 34
        if bool(stor16.length):
            if bool(stor16.length) == uint255(stor16.length.field_1) < 32:
                revert with 0, 34
            if uint255(stor16.length.field_1):
                if 31 < uint255(stor16.length.field_1):
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor16.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor16.length.field_1)), data=mem[128 len ceil32(uint255(stor16.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor16.length.field_8)
        else:
            if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor16.length.field_1 % 128:
                if 31 < stor16.length.field_1 % 128:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor16.length.field_1)), data=mem[128 len ceil32(uint255(stor16.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor16.length.field_8)
        mem[ceil32(uint255(stor16.length.field_1)) + 192 len ceil32(uint255(stor16.length.field_1))] = mem[128 len ceil32(uint255(stor16.length.field_1))]
        if ceil32(uint255(stor16.length.field_1)) > uint255(stor16.length.field_1):
            mem[uint255(stor16.length.field_1) + ceil32(uint255(stor16.length.field_1)) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor16.length.field_1)), data=mem[128 len ceil32(uint255(stor16.length.field_1))], mem[(2 * ceil32(uint255(stor16.length.field_1))) + 192 len 2 * ceil32(uint255(stor16.length.field_1))]), 
    if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length.field_1) < 32:
            revert with 0, 34
        if uint255(stor16.length.field_1):
            if 31 < uint255(stor16.length.field_1):
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while uint255(stor16.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor16.length.field_8)
    else:
        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor16.length.field_1 % 128:
            if 31 < stor16.length.field_1 % 128:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor16.length.field_8)
    mem[ceil32(stor16.length.field_1 % 128) + 192 len ceil32(stor16.length.field_1 % 128)] = mem[128 len ceil32(stor16.length.field_1 % 128)]
    if ceil32(stor16.length.field_1 % 128) > stor16.length.field_1 % 128:
        mem[stor16.length.field_1 % 128 + ceil32(stor16.length.field_1 % 128) + 192] = 0
    return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1 % 128)], mem[(2 * ceil32(stor16.length.field_1 % 128)) + 192 len 2 * ceil32(stor16.length.field_1 % 128)]), 
}

function sub_d2d99fec(?) payable {
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
            revert with 0, 34
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                revert with 0, 34
            if uint255(stor15.length.field_1):
                if 31 < uint255(stor15.length.field_1):
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor15.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor15.length.field_1)), data=mem[128 len ceil32(uint255(stor15.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
        else:
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor15.length.field_1 % 128:
                if 31 < stor15.length.field_1 % 128:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor15.length.field_1)), data=mem[128 len ceil32(uint255(stor15.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
        mem[ceil32(uint255(stor15.length.field_1)) + 192 len ceil32(uint255(stor15.length.field_1))] = mem[128 len ceil32(uint255(stor15.length.field_1))]
        if ceil32(uint255(stor15.length.field_1)) > uint255(stor15.length.field_1):
            mem[uint255(stor15.length.field_1) + ceil32(uint255(stor15.length.field_1)) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor15.length.field_1)), data=mem[128 len ceil32(uint255(stor15.length.field_1))], mem[(2 * ceil32(uint255(stor15.length.field_1))) + 192 len 2 * ceil32(uint255(stor15.length.field_1))]), 
    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
            revert with 0, 34
        if uint255(stor15.length.field_1):
            if 31 < uint255(stor15.length.field_1):
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while uint255(stor15.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
    else:
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor15.length.field_1 % 128:
            if 31 < stor15.length.field_1 % 128:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
    mem[ceil32(stor15.length.field_1 % 128) + 192 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
    if ceil32(stor15.length.field_1 % 128) > stor15.length.field_1 % 128:
        mem[stor15.length.field_1 % 128 + ceil32(stor15.length.field_1 % 128) + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1 % 128)], mem[(2 * ceil32(stor15.length.field_1 % 128)) + 192 len 2 * ceil32(stor15.length.field_1 % 128)]), 
}

function sub_79b112ca(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not _owners[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if address(stor1.length) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the helper'
    if not _owners[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if _owners[arg2] != address(arg1):
        revert with 0, 'MANAGER: account not the owner'
    if bool(stor4[arg2].field_256):
        if bool(stor4[arg2].field_256) == uint255(stor4[arg2].field_257) < 32:
            revert with 0, 34
    else:
        if bool(stor4[arg2].field_256) == stor4[arg2].field_257 % 128 < 32:
            revert with 0, 34
    if bool(stor4[arg2].field_256):
        if bool(stor4[arg2].field_256) == uint255(stor4[arg2].field_257) < 32:
            revert with 0, 34
        if uint255(stor4[arg2].field_257):
            if 31 < uint255(stor4[arg2].field_257):
                idx = 352
                s = 0
                while uint255(stor4[arg2].field_257) + 320 > idx:
                    mem[idx + 32] = stor4[arg2][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor4[arg2].field_256) == stor4[arg2].field_257 % 128 < 32:
            revert with 0, 34
        if stor4[arg2].field_257 % 128:
            if 31 < stor4[arg2].field_257 % 128:
                idx = 352
                s = 0
                while stor4[arg2].field_257 % 128 + 320 > idx:
                    mem[idx + 32] = stor4[arg2][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if block.timestamp < uint64(stor4[arg2].field_576):
        revert with 0, 17
    if sub_5073a9d8[uint8(stor4[arg2].field_512)] > -uint64(stor4[arg2].field_1024) + test266151307():
        revert with 0, 17
    if stor4[arg2].field_768 and uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)]) > -1 / stor4[arg2].field_768:
        revert with 0, 17
    if stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)]) and block.timestamp - uint64(stor4[arg2].field_576) > -1 / stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)]):
        revert with 0, 17
    if not sub_d2429d48:
        revert with 0, 18
    if not sub_b223c617:
        revert with 0, 18
    if (block.timestamp * stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)])) - (uint64(stor4[arg2].field_576) * stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)])) / sub_d2429d48 / sub_b223c617:
        if uint64(stor4[arg2].field_1024) < sub_2562b92d[uint8(stor4[arg2].field_512)]:
            if uint64(block.timestamp) < uint64(stor4[arg2].field_576):
                revert with 0, 17
            if uint64(uint64(block.timestamp) - uint64(stor4[arg2].field_576)) and sub_279b265d[uint8(stor4[arg2].field_512)] > test266151307() / uint64(uint64(block.timestamp) - uint64(stor4[arg2].field_576)):
                revert with 0, 17
            if not sub_b223c617:
                revert with 0, 18
            if uint64(stor4[arg2].field_1024) > -uint64(uint64(sub_279b265d[uint8(stor4[arg2].field_512)] * uint64(uint64(block.timestamp) - uint64(stor4[arg2].field_576))) / sub_b223c617) + test266151307():
                revert with 0, 17
            uint64(stor4[arg2].field_1024) = uint64(uint64(uint64(sub_279b265d[uint8(stor4[arg2].field_512)] * uint64(uint64(block.timestamp) - uint64(stor4[arg2].field_576))) / sub_b223c617) + uint64(stor4[arg2].field_1024))
            if uint64(uint64(uint64(sub_279b265d[uint8(stor4[arg2].field_512)] * uint64(uint64(block.timestamp) - uint64(stor4[arg2].field_576))) / sub_b223c617) + uint64(stor4[arg2].field_1024)) > sub_2562b92d[uint8(stor4[arg2].field_512)]:
                uint64(stor4[arg2].field_1024) = sub_2562b92d[uint8(stor4[arg2].field_512)]
        uint64(stor4[arg2].field_576) = uint64(block.timestamp)
        if stor4[arg2].field_768 > !((block.timestamp * stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)])) - (uint64(stor4[arg2].field_576) * stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)])) / sub_d2429d48 / sub_b223c617):
            revert with 0, 17
        stor4[arg2].field_768 += (block.timestamp * stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)])) - (uint64(stor4[arg2].field_576) * stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)])) / sub_d2429d48 / sub_b223c617
}

function stake(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not _owners[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if address(stor1.length) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the helper'
    if not _owners[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if _owners[arg2] != arg1:
        revert with 0, 'MANAGER: account not the owner'
    if bool(stor4[arg2].field_256):
        if bool(stor4[arg2].field_256) == uint255(stor4[arg2].field_257) < 32:
            revert with 0, 34
    else:
        if bool(stor4[arg2].field_256) == stor4[arg2].field_257 % 128 < 32:
            revert with 0, 34
    if bool(stor4[arg2].field_256):
        if bool(stor4[arg2].field_256) == uint255(stor4[arg2].field_257) < 32:
            revert with 0, 34
        if uint255(stor4[arg2].field_257):
            if 31 < uint255(stor4[arg2].field_257):
                idx = 352
                s = 0
                while uint255(stor4[arg2].field_257) + 320 > idx:
                    mem[idx + 32] = stor4[arg2][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor4[arg2].field_256) == stor4[arg2].field_257 % 128 < 32:
            revert with 0, 34
        if stor4[arg2].field_257 % 128:
            if 31 < stor4[arg2].field_257 % 128:
                idx = 352
                s = 0
                while stor4[arg2].field_257 % 128 + 320 > idx:
                    mem[idx + 32] = stor4[arg2][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if block.timestamp < uint64(stor4[arg2].field_576):
        revert with 0, 17
    if sub_5073a9d8[uint8(stor4[arg2].field_512)] > -uint64(stor4[arg2].field_1024) + test266151307():
        revert with 0, 17
    if stor4[arg2].field_768 and uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)]) > -1 / stor4[arg2].field_768:
        revert with 0, 17
    if stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)]) and block.timestamp - uint64(stor4[arg2].field_576) > -1 / stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)]):
        revert with 0, 17
    if not sub_d2429d48:
        revert with 0, 18
    if not sub_b223c617:
        revert with 0, 18
    if (block.timestamp * stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)])) - (uint64(stor4[arg2].field_576) * stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)])) / sub_d2429d48 / sub_b223c617:
        if uint64(stor4[arg2].field_1024) < sub_2562b92d[uint8(stor4[arg2].field_512)]:
            if uint64(block.timestamp) < uint64(stor4[arg2].field_576):
                revert with 0, 17
            if uint64(uint64(block.timestamp) - uint64(stor4[arg2].field_576)) and sub_279b265d[uint8(stor4[arg2].field_512)] > test266151307() / uint64(uint64(block.timestamp) - uint64(stor4[arg2].field_576)):
                revert with 0, 17
            if not sub_b223c617:
                revert with 0, 18
            if uint64(stor4[arg2].field_1024) > -uint64(uint64(sub_279b265d[uint8(stor4[arg2].field_512)] * uint64(uint64(block.timestamp) - uint64(stor4[arg2].field_576))) / sub_b223c617) + test266151307():
                revert with 0, 17
            uint64(stor4[arg2].field_1024) = uint64(uint64(uint64(sub_279b265d[uint8(stor4[arg2].field_512)] * uint64(uint64(block.timestamp) - uint64(stor4[arg2].field_576))) / sub_b223c617) + uint64(stor4[arg2].field_1024))
            if uint64(uint64(uint64(sub_279b265d[uint8(stor4[arg2].field_512)] * uint64(uint64(block.timestamp) - uint64(stor4[arg2].field_576))) / sub_b223c617) + uint64(stor4[arg2].field_1024)) > sub_2562b92d[uint8(stor4[arg2].field_512)]:
                uint64(stor4[arg2].field_1024) = sub_2562b92d[uint8(stor4[arg2].field_512)]
        uint64(stor4[arg2].field_576) = uint64(block.timestamp)
        if stor4[arg2].field_768 > !((block.timestamp * stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)])) - (uint64(stor4[arg2].field_576) * stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)])) / sub_d2429d48 / sub_b223c617):
            revert with 0, 17
        stor4[arg2].field_768 += (block.timestamp * stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)])) - (uint64(stor4[arg2].field_576) * stor4[arg2].field_768 * uint64(uint64(stor4[arg2].field_1024) + sub_5073a9d8[uint8(stor4[arg2].field_512)])) / sub_d2429d48 / sub_b223c617
    if stor4[arg2].field_768 > !arg3:
        revert with 0, 17
    stor4[arg2].field_768 += arg3
}

function sub_27c3928e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if not _owners[cd[((32 * idx) + cd[4] + 36)]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
        if _balances[stor3[cd[((32 * idx) + cd[4] + 36)]]] < 1:
            revert with 0, 17
        _balances[stor3[cd[((32 * idx) + cd[4] + 36)]]]--
        _owners[cd[((32 * idx) + cd[4] + 36)]] = 0
        stor4[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
        if bool(stor4[cd[((32 * idx) + cd[4] + 36)]].field_256):
            if bool(stor4[cd[((32 * idx) + cd[4] + 36)]].field_256) == uint255(stor4[cd[((32 * idx) + cd[4] + 36)]].field_257) < 32:
                revert with 0, 34
            stor4[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
            if 31 >= uint255(stor4[cd[((32 * idx) + cd[4] + 36)]].field_257):
                Mask(136, 0, stor4[cd[((32 * idx) + cd[4] + 36)]].field_512) = 0
                stor4[cd[((32 * idx) + cd[4] + 36)]].field_768 = 0
                uint64(stor4[cd[((32 * idx) + cd[4] + 36)]].field_1024) = 0
                mem[0] = _owners[cd[((32 * idx) + cd[4] + 36)]]
                mem[32] = 5
                s = 0
                t = sub_3f8ab2ec[mem[0]].field_0
                while s < sub_3f8ab2ec[stor3[cd[((32 * s) + cd[4] + 36)]]].field_0:
                    mem[0] = sha3(_owners[cd[((32 * s) + cd[4] + 36)]], 5)
                    if s == -1:
                        revert with 0, 17
                    if sub_3f8ab2ec[stor3[cd[((32 * s) + cd[4] + 36)]]][s].field_0 != cd[((32 * s) + cd[4] + 36)]:
                        s = s + 1
                        t = t
                        continue 
                    s = s + 1
                    t = s
                    continue 
                if t < sub_3f8ab2ec[stor3[cd[((32 * s) + cd[4] + 36)]]].field_0:
                    if sub_3f8ab2ec[stor3[cd[((32 * s) + cd[4] + 36)]]].field_0 < 1:
                        revert with 0, 17
                    if sub_3f8ab2ec[stor3[cd[((32 * s) + cd[4] + 36)]]].field_0 - 1 >= sub_3f8ab2ec[stor3[cd[((32 * s) + cd[4] + 36)]]].field_0:
                        revert with 0, 50
                    if t >= sub_3f8ab2ec[stor3[cd[((32 * s) + cd[4] + 36)]]].field_0:
                        revert with 0, 50
                    sub_3f8ab2ec[stor3[cd[((32 * s) + cd[4] + 36)]]][t].field_0 = sub_3f8ab2ec[stor3[cd[((32 * s) + cd[4] + 36)]]][sub_3f8ab2ec[stor3[cd[((32 * s) + cd[4] + 36)]]].field_0].field_0
                    if not sub_3f8ab2ec[stor3[cd[((32 * s) + cd[4] + 36)]]].field_0:
                        revert with 0, 49
                    mem[0] = sha3(_owners[cd[((32 * s) + cd[4] + 36)]], 5)
                    sub_3f8ab2ec[stor3[cd[((32 * s) + cd[4] + 36)]]][sub_3f8ab2ec[stor3[cd[((32 * s) + cd[4] + 36)]]].field_0].field_0 = 0
                    sub_3f8ab2ec[stor3[cd[((32 * s) + cd[4] + 36)]]].field_0--
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 4) + 1)
            while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 4) + 1) + (uint255(stor4[cd[((32 * idx) + cd[4] + 36)]].field_257) + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        else:
            if bool(stor4[cd[((32 * idx) + cd[4] + 36)]].field_256) == stor4[cd[((32 * idx) + cd[4] + 36)]].field_257 % 128 < 32:
                revert with 0, 34
            stor4[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
            if 31 < stor4[cd[((32 * idx) + cd[4] + 36)]].field_257 % 128:
                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 4) + 1)
                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 4) + 1) + (stor4[cd[((32 * idx) + cd[4] + 36)]].field_257 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        Mask(136, 0, stor4[cd[((32 * idx) + cd[4] + 36)]].field_512) = 0
        stor4[cd[((32 * idx) + cd[4] + 36)]].field_768 = 0
        uint64(stor4[cd[((32 * idx) + cd[4] + 36)]].field_1024) = 0
        mem[0] = _owners[cd[((32 * idx) + cd[4] + 36)]]
        mem[32] = 5
        s = 0
        t = sub_3f8ab2ec[mem[0]].field_0
        while s < sub_3f8ab2ec[stor3[cd[((32 * idx) + cd[4] + 36)]]].field_0:
            mem[0] = sha3(_owners[cd[((32 * idx) + cd[4] + 36)]], 5)
            if s == -1:
                revert with 0, 17
            if sub_3f8ab2ec[stor3[cd[((32 * idx) + cd[4] + 36)]]][s].field_0 != cd[((32 * idx) + cd[4] + 36)]:
                s = s + 1
                t = t
                continue 
            s = s + 1
            t = s
            continue 
        if t < sub_3f8ab2ec[stor3[cd[((32 * idx) + cd[4] + 36)]]].field_0:
            if sub_3f8ab2ec[stor3[cd[((32 * idx) + cd[4] + 36)]]].field_0 < 1:
                revert with 0, 17
            if sub_3f8ab2ec[stor3[cd[((32 * idx) + cd[4] + 36)]]].field_0 - 1 >= sub_3f8ab2ec[stor3[cd[((32 * idx) + cd[4] + 36)]]].field_0:
                revert with 0, 50
            if t >= sub_3f8ab2ec[stor3[cd[((32 * idx) + cd[4] + 36)]]].field_0:
                revert with 0, 50
            sub_3f8ab2ec[stor3[cd[((32 * idx) + cd[4] + 36)]]][t].field_0 = sub_3f8ab2ec[stor3[cd[((32 * idx) + cd[4] + 36)]]][sub_3f8ab2ec[stor3[cd[((32 * idx) + cd[4] + 36)]]].field_0].field_0
            if not sub_3f8ab2ec[stor3[cd[((32 * idx) + cd[4] + 36)]]].field_0:
                revert with 0, 49
            mem[0] = sha3(_owners[cd[((32 * idx) + cd[4] + 36)]], 5)
            sub_3f8ab2ec[stor3[cd[((32 * idx) + cd[4] + 36)]]][sub_3f8ab2ec[stor3[cd[((32 * idx) + cd[4] + 36)]]].field_0].field_0 = 0
            sub_3f8ab2ec[stor3[cd[((32 * idx) + cd[4] + 36)]]].field_0--
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function claimAll(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor1.length) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the helper'
    mem[0] = arg1
    idx = 0
    s = 0
    while idx < sub_3f8ab2ec[address(arg1)].field_0:
        if idx >= sub_3f8ab2ec[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sub_3f8ab2ec[address(arg1)][idx].field_0
        mem[32] = 4
        _81 = mem[64]
        mem[64] = mem[64] + 224
        mem[_81] = stor4[stor5[address(arg1)][idx].field_0].field_0
        if bool(stor4[stor5[address(arg1)][idx].field_0].field_256):
            if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == uint255(stor4[stor5[address(arg1)][idx].field_0].field_257) < 32:
                revert with 0, 34
            _83 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[stor5[address(arg1)][idx].field_0].field_257)) + 32
            mem[_83] = uint255(stor4[stor5[address(arg1)][idx].field_0].field_257)
            if bool(stor4[stor5[address(arg1)][idx].field_0].field_256):
                if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == uint255(stor4[stor5[address(arg1)][idx].field_0].field_257) < 32:
                    revert with 0, 34
                if uint255(stor4[stor5[address(arg1)][idx].field_0].field_257):
                    if 31 >= uint255(stor4[stor5[address(arg1)][idx].field_0].field_257):
                        mem[_83 + 32] = 256 * Mask(248, 0, stor4[stor5[address(arg1)][idx].field_0].field_264)
                    else:
                        mem[0] = sha3(sub_3f8ab2ec[address(arg1)][idx].field_0, 4) + 1
                        mem[_83 + 32] = stor4[stor5[address(arg1)][idx].field_0][1].field_0
                        t = _83 + 32
                        u = sha3(mem[0])
                        while _83 + uint255(stor4[stor5[address(arg1)][idx].field_0].field_257) > t:
                            mem[0] = arg1
                            mem[32] = 5
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
            else:
                if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == stor4[stor5[address(arg1)][idx].field_0].field_257 % 128 < 32:
                    revert with 0, 34
                if stor4[stor5[address(arg1)][idx].field_0].field_257 % 128:
                    if 31 >= stor4[stor5[address(arg1)][idx].field_0].field_257 % 128:
                        mem[_83 + 32] = 256 * Mask(248, 0, stor4[stor5[address(arg1)][idx].field_0].field_264)
                    else:
                        mem[0] = sha3(sub_3f8ab2ec[address(arg1)][idx].field_0, 4) + 1
                        mem[_83 + 32] = stor4[stor5[address(arg1)][idx].field_0][1].field_0
                        t = _83 + 32
                        u = sha3(mem[0])
                        while _83 + stor4[stor5[address(arg1)][idx].field_0].field_257 % 128 > t:
                            mem[0] = arg1
                            mem[32] = 5
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
            mem[_81 + 32] = _83
        else:
            if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == stor4[stor5[address(arg1)][idx].field_0].field_257 % 128 < 32:
                revert with 0, 34
            _84 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[stor5[address(arg1)][idx].field_0].field_257 % 128) + 32
            mem[_84] = stor4[stor5[address(arg1)][idx].field_0].field_257 % 128
            if bool(stor4[stor5[address(arg1)][idx].field_0].field_256):
                if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == uint255(stor4[stor5[address(arg1)][idx].field_0].field_257) < 32:
                    revert with 0, 34
                if uint255(stor4[stor5[address(arg1)][idx].field_0].field_257):
                    if 31 >= uint255(stor4[stor5[address(arg1)][idx].field_0].field_257):
                        mem[_84 + 32] = 256 * Mask(248, 0, stor4[stor5[address(arg1)][idx].field_0].field_264)
                    else:
                        mem[0] = sha3(sub_3f8ab2ec[address(arg1)][idx].field_0, 4) + 1
                        mem[_84 + 32] = stor4[stor5[address(arg1)][idx].field_0][1].field_0
                        t = _84 + 32
                        u = sha3(mem[0])
                        while _84 + uint255(stor4[stor5[address(arg1)][idx].field_0].field_257) > t:
                            mem[0] = arg1
                            mem[32] = 5
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
            else:
                if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == stor4[stor5[address(arg1)][idx].field_0].field_257 % 128 < 32:
                    revert with 0, 34
                if stor4[stor5[address(arg1)][idx].field_0].field_257 % 128:
                    if 31 >= stor4[stor5[address(arg1)][idx].field_0].field_257 % 128:
                        mem[_84 + 32] = 256 * Mask(248, 0, stor4[stor5[address(arg1)][idx].field_0].field_264)
                    else:
                        mem[0] = sha3(sub_3f8ab2ec[address(arg1)][idx].field_0, 4) + 1
                        mem[_84 + 32] = stor4[stor5[address(arg1)][idx].field_0][1].field_0
                        t = _84 + 32
                        u = sha3(mem[0])
                        while _84 + stor4[stor5[address(arg1)][idx].field_0].field_257 % 128 > t:
                            mem[0] = arg1
                            mem[32] = 5
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
            mem[_81 + 32] = _84
        mem[_81 + 64] = uint64(stor4[stor5[address(arg1)][idx].field_0].field_512)
        mem[_81 + 96] = uint64(stor4[stor5[address(arg1)][idx].field_0].field_576)
        mem[_81 + 128] = uint8(stor4[stor5[address(arg1)][idx].field_0].field_640)
        mem[_81 + 160] = stor4[stor5[address(arg1)][idx].field_0].field_768
        mem[_81 + 192] = uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024)
        if block.timestamp < uint64(stor4[stor5[address(arg1)][idx].field_0].field_576):
            revert with 0, 17
        if sub_5073a9d8[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)] > -uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) + test266151307():
            revert with 0, 17
        if stor4[stor5[address(arg1)][idx].field_0].field_768 and uint64(uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) + sub_5073a9d8[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)]) > -1 / stor4[stor5[address(arg1)][idx].field_0].field_768:
            revert with 0, 17
        if stor4[stor5[address(arg1)][idx].field_0].field_768 * uint64(uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) + sub_5073a9d8[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)]) and block.timestamp - uint64(stor4[stor5[address(arg1)][idx].field_0].field_576) > -1 / stor4[stor5[address(arg1)][idx].field_0].field_768 * uint64(uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) + sub_5073a9d8[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)]):
            revert with 0, 17
        if not sub_d2429d48:
            revert with 0, 18
        if not sub_b223c617:
            revert with 0, 18
        uint64(stor4[stor5[address(arg1)][idx].field_0].field_576) = uint64(block.timestamp)
        if s > !((block.timestamp * stor4[stor5[address(arg1)][idx].field_0].field_768 * uint64(uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) + sub_5073a9d8[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)])) - (uint64(stor4[stor5[address(arg1)][idx].field_0].field_576) * stor4[stor5[address(arg1)][idx].field_0].field_768 * uint64(uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) + sub_5073a9d8[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)])) / sub_d2429d48 / sub_b223c617):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 5
        idx = idx + 1
        s = s + ((block.timestamp * stor4[stor5[address(arg1)][idx].field_0].field_768 * uint64(uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) + sub_5073a9d8[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)])) - (uint64(stor4[stor5[address(arg1)][idx].field_0].field_576) * stor4[stor5[address(arg1)][idx].field_0].field_768 * uint64(uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) + sub_5073a9d8[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)])) / sub_d2429d48 / sub_b223c617)
        continue 
    return s
}

function sub_84984f46(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor1.length) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the helper'
    mem[0] = address(arg1)
    idx = 0
    while idx < sub_3f8ab2ec[address(arg1)].field_0:
        if idx >= sub_3f8ab2ec[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sub_3f8ab2ec[address(arg1)][idx].field_0
        mem[32] = 4
        _126 = mem[64]
        mem[64] = mem[64] + 224
        mem[_126] = stor4[stor5[address(arg1)][idx].field_0].field_0
        if bool(stor4[stor5[address(arg1)][idx].field_0].field_256):
            if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == uint255(stor4[stor5[address(arg1)][idx].field_0].field_257) < 32:
                revert with 0, 34
            _127 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[stor5[address(arg1)][idx].field_0].field_257)) + 32
            mem[_127] = uint255(stor4[stor5[address(arg1)][idx].field_0].field_257)
            if bool(stor4[stor5[address(arg1)][idx].field_0].field_256):
                if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == uint255(stor4[stor5[address(arg1)][idx].field_0].field_257) < 32:
                    revert with 0, 34
                if uint255(stor4[stor5[address(arg1)][idx].field_0].field_257):
                    if 31 >= uint255(stor4[stor5[address(arg1)][idx].field_0].field_257):
                        mem[_127 + 32] = 256 * Mask(248, 0, stor4[stor5[address(arg1)][idx].field_0].field_264)
                    else:
                        mem[0] = sha3(sub_3f8ab2ec[address(arg1)][idx].field_0, 4) + 1
                        mem[_127 + 32] = stor4[stor5[address(arg1)][idx].field_0][1].field_0
                        s = _127 + 32
                        t = sha3(mem[0])
                        while _127 + uint255(stor4[stor5[address(arg1)][idx].field_0].field_257) > s:
                            mem[0] = address(arg1)
                            mem[32] = 5
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
            else:
                if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == stor4[stor5[address(arg1)][idx].field_0].field_257 % 128 < 32:
                    revert with 0, 34
                if stor4[stor5[address(arg1)][idx].field_0].field_257 % 128:
                    if 31 >= stor4[stor5[address(arg1)][idx].field_0].field_257 % 128:
                        mem[_127 + 32] = 256 * Mask(248, 0, stor4[stor5[address(arg1)][idx].field_0].field_264)
                    else:
                        mem[0] = sha3(sub_3f8ab2ec[address(arg1)][idx].field_0, 4) + 1
                        mem[_127 + 32] = stor4[stor5[address(arg1)][idx].field_0][1].field_0
                        s = _127 + 32
                        t = sha3(mem[0])
                        while _127 + stor4[stor5[address(arg1)][idx].field_0].field_257 % 128 > s:
                            mem[0] = address(arg1)
                            mem[32] = 5
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
            mem[_126 + 32] = _127
        else:
            if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == stor4[stor5[address(arg1)][idx].field_0].field_257 % 128 < 32:
                revert with 0, 34
            _128 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[stor5[address(arg1)][idx].field_0].field_257 % 128) + 32
            mem[_128] = stor4[stor5[address(arg1)][idx].field_0].field_257 % 128
            if bool(stor4[stor5[address(arg1)][idx].field_0].field_256):
                if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == uint255(stor4[stor5[address(arg1)][idx].field_0].field_257) < 32:
                    revert with 0, 34
                if uint255(stor4[stor5[address(arg1)][idx].field_0].field_257):
                    if 31 >= uint255(stor4[stor5[address(arg1)][idx].field_0].field_257):
                        mem[_128 + 32] = 256 * Mask(248, 0, stor4[stor5[address(arg1)][idx].field_0].field_264)
                    else:
                        mem[0] = sha3(sub_3f8ab2ec[address(arg1)][idx].field_0, 4) + 1
                        mem[_128 + 32] = stor4[stor5[address(arg1)][idx].field_0][1].field_0
                        s = _128 + 32
                        t = sha3(mem[0])
                        while _128 + uint255(stor4[stor5[address(arg1)][idx].field_0].field_257) > s:
                            mem[0] = address(arg1)
                            mem[32] = 5
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
            else:
                if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == stor4[stor5[address(arg1)][idx].field_0].field_257 % 128 < 32:
                    revert with 0, 34
                if stor4[stor5[address(arg1)][idx].field_0].field_257 % 128:
                    if 31 >= stor4[stor5[address(arg1)][idx].field_0].field_257 % 128:
                        mem[_128 + 32] = 256 * Mask(248, 0, stor4[stor5[address(arg1)][idx].field_0].field_264)
                    else:
                        mem[0] = sha3(sub_3f8ab2ec[address(arg1)][idx].field_0, 4) + 1
                        mem[_128 + 32] = stor4[stor5[address(arg1)][idx].field_0][1].field_0
                        s = _128 + 32
                        t = sha3(mem[0])
                        while _128 + stor4[stor5[address(arg1)][idx].field_0].field_257 % 128 > s:
                            mem[0] = address(arg1)
                            mem[32] = 5
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
            mem[_126 + 32] = _128
        mem[_126 + 64] = uint64(stor4[stor5[address(arg1)][idx].field_0].field_512)
        mem[_126 + 96] = uint64(stor4[stor5[address(arg1)][idx].field_0].field_576)
        mem[_126 + 128] = uint8(stor4[stor5[address(arg1)][idx].field_0].field_640)
        mem[_126 + 160] = stor4[stor5[address(arg1)][idx].field_0].field_768
        mem[_126 + 192] = uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024)
        if block.timestamp < uint64(stor4[stor5[address(arg1)][idx].field_0].field_576):
            revert with 0, 17
        if sub_5073a9d8[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)] > -uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) + test266151307():
            revert with 0, 17
        if stor4[stor5[address(arg1)][idx].field_0].field_768 and uint64(uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) + sub_5073a9d8[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)]) > -1 / stor4[stor5[address(arg1)][idx].field_0].field_768:
            revert with 0, 17
        if stor4[stor5[address(arg1)][idx].field_0].field_768 * uint64(uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) + sub_5073a9d8[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)]) and block.timestamp - uint64(stor4[stor5[address(arg1)][idx].field_0].field_576) > -1 / stor4[stor5[address(arg1)][idx].field_0].field_768 * uint64(uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) + sub_5073a9d8[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)]):
            revert with 0, 17
        if not sub_d2429d48:
            revert with 0, 18
        if not sub_b223c617:
            revert with 0, 18
        if (block.timestamp * stor4[stor5[address(arg1)][idx].field_0].field_768 * uint64(uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) + sub_5073a9d8[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)])) - (uint64(stor4[stor5[address(arg1)][idx].field_0].field_576) * stor4[stor5[address(arg1)][idx].field_0].field_768 * uint64(uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) + sub_5073a9d8[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)])) / sub_d2429d48 / sub_b223c617:
            if uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) < sub_2562b92d[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)]:
                if uint64(block.timestamp) < uint64(stor4[stor5[address(arg1)][idx].field_0].field_576):
                    revert with 0, 17
                if uint64(uint64(block.timestamp) - uint64(stor4[stor5[address(arg1)][idx].field_0].field_576)) and sub_279b265d[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)] > test266151307() / uint64(uint64(block.timestamp) - uint64(stor4[stor5[address(arg1)][idx].field_0].field_576)):
                    revert with 0, 17
                if not sub_b223c617:
                    revert with 0, 18
                if uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) > -uint64(uint64(sub_279b265d[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)] * uint64(uint64(block.timestamp) - uint64(stor4[stor5[address(arg1)][idx].field_0].field_576))) / sub_b223c617) + test266151307():
                    revert with 0, 17
                uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) = uint64(uint64(uint64(sub_279b265d[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)] * uint64(uint64(block.timestamp) - uint64(stor4[stor5[address(arg1)][idx].field_0].field_576))) / sub_b223c617) + uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024))
                if uint64(uint64(uint64(sub_279b265d[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)] * uint64(uint64(block.timestamp) - uint64(stor4[stor5[address(arg1)][idx].field_0].field_576))) / sub_b223c617) + uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024)) > sub_2562b92d[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)]:
                    uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) = sub_2562b92d[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)]
            uint64(stor4[stor5[address(arg1)][idx].field_0].field_576) = uint64(block.timestamp)
            if stor4[stor5[address(arg1)][idx].field_0].field_768 > !((block.timestamp * stor4[stor5[address(arg1)][idx].field_0].field_768 * uint64(uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) + sub_5073a9d8[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)])) - (uint64(stor4[stor5[address(arg1)][idx].field_0].field_576) * stor4[stor5[address(arg1)][idx].field_0].field_768 * uint64(uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) + sub_5073a9d8[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)])) / sub_d2429d48 / sub_b223c617):
                revert with 0, 17
            stor4[stor5[address(arg1)][idx].field_0].field_768 += (block.timestamp * stor4[stor5[address(arg1)][idx].field_0].field_768 * uint64(uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) + sub_5073a9d8[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)])) - (uint64(stor4[stor5[address(arg1)][idx].field_0].field_576) * stor4[stor5[address(arg1)][idx].field_0].field_768 * uint64(uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024) + sub_5073a9d8[uint8(stor4[stor5[address(arg1)][idx].field_0].field_512)])) / sub_d2429d48 / sub_b223c617
        if idx == -1:
            revert with 0, 17
        mem[0] = address(arg1)
        mem[32] = 5
        idx = idx + 1
        continue 
}

function sub_e9c974ff(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    if sub_3f8ab2ec[address(arg1)].field_0 > test266151307():
        revert with 0, 65
    mem[96] = sub_3f8ab2ec[address(arg1)].field_0
    mem[64] = (32 * sub_3f8ab2ec[address(arg1)].field_0) + 128
    if not sub_3f8ab2ec[address(arg1)].field_0:
        mem[0] = address(arg1)
        mem[32] = 5
        idx = 0
        while idx < sub_3f8ab2ec[address(arg1)].field_0:
            if idx >= sub_3f8ab2ec[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sub_3f8ab2ec[address(arg1)][idx].field_0
            mem[32] = 4
            _92 = mem[64]
            mem[64] = mem[64] + 224
            mem[_92] = stor4[stor5[address(arg1)][idx].field_0].field_0
            if bool(stor4[stor5[address(arg1)][idx].field_0].field_256):
                if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == uint255(stor4[stor5[address(arg1)][idx].field_0].field_257) < 32:
                    revert with 0, 34
                _99 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor4[stor5[address(arg1)][idx].field_0].field_257)) + 32
                mem[_99] = uint255(stor4[stor5[address(arg1)][idx].field_0].field_257)
                if bool(stor4[stor5[address(arg1)][idx].field_0].field_256):
                    if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == uint255(stor4[stor5[address(arg1)][idx].field_0].field_257) < 32:
                        revert with 0, 34
                    if uint255(stor4[stor5[address(arg1)][idx].field_0].field_257):
                        if 31 >= uint255(stor4[stor5[address(arg1)][idx].field_0].field_257):
                            mem[_99 + 32] = 256 * Mask(248, 0, stor4[stor5[address(arg1)][idx].field_0].field_264)
                        else:
                            mem[0] = sha3(sub_3f8ab2ec[address(arg1)][idx].field_0, 4) + 1
                            mem[_99 + 32] = stor4[stor5[address(arg1)][idx].field_0][1].field_0
                            s = _99 + 32
                            t = sha3(mem[0])
                            while _99 + uint255(stor4[stor5[address(arg1)][idx].field_0].field_257) > s:
                                mem[0] = address(arg1)
                                mem[32] = 5
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == stor4[stor5[address(arg1)][idx].field_0].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor4[stor5[address(arg1)][idx].field_0].field_257 % 128:
                        if 31 >= stor4[stor5[address(arg1)][idx].field_0].field_257 % 128:
                            mem[_99 + 32] = 256 * Mask(248, 0, stor4[stor5[address(arg1)][idx].field_0].field_264)
                        else:
                            mem[0] = sha3(sub_3f8ab2ec[address(arg1)][idx].field_0, 4) + 1
                            mem[_99 + 32] = stor4[stor5[address(arg1)][idx].field_0][1].field_0
                            s = _99 + 32
                            t = sha3(mem[0])
                            while _99 + stor4[stor5[address(arg1)][idx].field_0].field_257 % 128 > s:
                                mem[0] = address(arg1)
                                mem[32] = 5
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_92 + 32] = _99
            else:
                if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == stor4[stor5[address(arg1)][idx].field_0].field_257 % 128 < 32:
                    revert with 0, 34
                _102 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[stor5[address(arg1)][idx].field_0].field_257 % 128) + 32
                mem[_102] = stor4[stor5[address(arg1)][idx].field_0].field_257 % 128
                if bool(stor4[stor5[address(arg1)][idx].field_0].field_256):
                    if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == uint255(stor4[stor5[address(arg1)][idx].field_0].field_257) < 32:
                        revert with 0, 34
                    if uint255(stor4[stor5[address(arg1)][idx].field_0].field_257):
                        if 31 >= uint255(stor4[stor5[address(arg1)][idx].field_0].field_257):
                            mem[_102 + 32] = 256 * Mask(248, 0, stor4[stor5[address(arg1)][idx].field_0].field_264)
                        else:
                            mem[0] = sha3(sub_3f8ab2ec[address(arg1)][idx].field_0, 4) + 1
                            mem[_102 + 32] = stor4[stor5[address(arg1)][idx].field_0][1].field_0
                            s = _102 + 32
                            t = sha3(mem[0])
                            while _102 + uint255(stor4[stor5[address(arg1)][idx].field_0].field_257) > s:
                                mem[0] = address(arg1)
                                mem[32] = 5
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == stor4[stor5[address(arg1)][idx].field_0].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor4[stor5[address(arg1)][idx].field_0].field_257 % 128:
                        if 31 >= stor4[stor5[address(arg1)][idx].field_0].field_257 % 128:
                            mem[_102 + 32] = 256 * Mask(248, 0, stor4[stor5[address(arg1)][idx].field_0].field_264)
                        else:
                            mem[0] = sha3(sub_3f8ab2ec[address(arg1)][idx].field_0, 4) + 1
                            mem[_102 + 32] = stor4[stor5[address(arg1)][idx].field_0][1].field_0
                            s = _102 + 32
                            t = sha3(mem[0])
                            while _102 + stor4[stor5[address(arg1)][idx].field_0].field_257 % 128 > s:
                                mem[0] = address(arg1)
                                mem[32] = 5
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_92 + 32] = _102
            mem[_92 + 64] = uint64(stor4[stor5[address(arg1)][idx].field_0].field_512)
            mem[_92 + 96] = uint64(stor4[stor5[address(arg1)][idx].field_0].field_576)
            mem[_92 + 128] = uint8(stor4[stor5[address(arg1)][idx].field_0].field_640)
            mem[_92 + 160] = stor4[stor5[address(arg1)][idx].field_0].field_768
            mem[_92 + 192] = uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _92
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 5
            idx = idx + 1
            continue 
        _89 = mem[64]
        mem[mem[64]] = 32
        _93 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _93:
            mem[t] = u + -_89 - 64
            _170 = mem[s]
            mem[u] = mem[mem[s]]
            _173 = mem[_170 + 32]
            mem[u + 32] = 224
            _178 = mem[_173]
            mem[u + 224] = mem[_173]
            v = 0
            while v < _178:
                mem[v + u + 256] = mem[v + _173 + 32]
                v = v + 32
                continue 
            if ceil32(_178) > _178:
                mem[_178 + u + 256] = 0
            mem[u + 64] = mem[_170 + 88 len 8]
            mem[u + 96] = mem[_170 + 120 len 8]
            mem[u + 128] = mem[_170 + 159 len 1]
            mem[u + 160] = mem[_170 + 160]
            mem[u + 192] = mem[_170 + 216 len 8]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_178) + u + 256
            continue 
    else:
        mem[64] = (32 * sub_3f8ab2ec[address(arg1)].field_0) + 352
        mem[(32 * sub_3f8ab2ec[address(arg1)].field_0) + 128] = 0
        mem[(32 * sub_3f8ab2ec[address(arg1)].field_0) + 160] = 96
        mem[(32 * sub_3f8ab2ec[address(arg1)].field_0) + 192] = 0
        mem[(32 * sub_3f8ab2ec[address(arg1)].field_0) + 224] = 0
        mem[(32 * sub_3f8ab2ec[address(arg1)].field_0) + 256] = 0
        mem[(32 * sub_3f8ab2ec[address(arg1)].field_0) + 288] = 0
        mem[(32 * sub_3f8ab2ec[address(arg1)].field_0) + 320] = 0
        mem[var14001] = (32 * sub_3f8ab2ec[address(arg1)].field_0) + 128
        s = var14001
        idx = var14002
        while idx - 1:
            mem[64] = mem[64] + 224
            mem[(32 * sub_3f8ab2ec[address(arg1)].field_0) + 128] = 0
            mem[(32 * sub_3f8ab2ec[address(arg1)].field_0) + 160] = 96
            mem[(32 * sub_3f8ab2ec[address(arg1)].field_0) + 192] = 0
            mem[(32 * sub_3f8ab2ec[address(arg1)].field_0) + 224] = 0
            mem[(32 * sub_3f8ab2ec[address(arg1)].field_0) + 256] = 0
            mem[(32 * sub_3f8ab2ec[address(arg1)].field_0) + 288] = 0
            mem[(32 * sub_3f8ab2ec[address(arg1)].field_0) + 320] = 0
            mem[s + 32] = (32 * sub_3f8ab2ec[address(arg1)].field_0) + 128
            s = s + 32
            idx = idx - 1
            continue 
        mem[0] = address(arg1)
        mem[32] = 5
        idx = 0
        while idx < sub_3f8ab2ec[address(arg1)].field_0:
            if idx >= sub_3f8ab2ec[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sub_3f8ab2ec[address(arg1)][idx].field_0
            mem[32] = 4
            _237 = mem[64]
            mem[64] = mem[64] + 224
            mem[_237] = stor4[stor5[address(arg1)][idx].field_0].field_0
            if bool(stor4[stor5[address(arg1)][idx].field_0].field_256):
                if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == uint255(stor4[stor5[address(arg1)][idx].field_0].field_257) < 32:
                    revert with 0, 34
                _253 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor4[stor5[address(arg1)][idx].field_0].field_257)) + 32
                mem[_253] = uint255(stor4[stor5[address(arg1)][idx].field_0].field_257)
                if bool(stor4[stor5[address(arg1)][idx].field_0].field_256):
                    if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == uint255(stor4[stor5[address(arg1)][idx].field_0].field_257) < 32:
                        revert with 0, 34
                    if uint255(stor4[stor5[address(arg1)][idx].field_0].field_257):
                        if 31 >= uint255(stor4[stor5[address(arg1)][idx].field_0].field_257):
                            mem[_253 + 32] = 256 * Mask(248, 0, stor4[stor5[address(arg1)][idx].field_0].field_264)
                        else:
                            mem[0] = sha3(sub_3f8ab2ec[address(arg1)][idx].field_0, 4) + 1
                            mem[_253 + 32] = stor4[stor5[address(arg1)][idx].field_0][1].field_0
                            s = _253 + 32
                            t = sha3(mem[0])
                            while _253 + uint255(stor4[stor5[address(arg1)][idx].field_0].field_257) > s:
                                mem[0] = address(arg1)
                                mem[32] = 5
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == stor4[stor5[address(arg1)][idx].field_0].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor4[stor5[address(arg1)][idx].field_0].field_257 % 128:
                        if 31 >= stor4[stor5[address(arg1)][idx].field_0].field_257 % 128:
                            mem[_253 + 32] = 256 * Mask(248, 0, stor4[stor5[address(arg1)][idx].field_0].field_264)
                        else:
                            mem[0] = sha3(sub_3f8ab2ec[address(arg1)][idx].field_0, 4) + 1
                            mem[_253 + 32] = stor4[stor5[address(arg1)][idx].field_0][1].field_0
                            s = _253 + 32
                            t = sha3(mem[0])
                            while _253 + stor4[stor5[address(arg1)][idx].field_0].field_257 % 128 > s:
                                mem[0] = address(arg1)
                                mem[32] = 5
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_237 + 32] = _253
            else:
                if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == stor4[stor5[address(arg1)][idx].field_0].field_257 % 128 < 32:
                    revert with 0, 34
                _255 = mem[64]
                mem[64] = mem[64] + ceil32(stor4[stor5[address(arg1)][idx].field_0].field_257 % 128) + 32
                mem[_255] = stor4[stor5[address(arg1)][idx].field_0].field_257 % 128
                if bool(stor4[stor5[address(arg1)][idx].field_0].field_256):
                    if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == uint255(stor4[stor5[address(arg1)][idx].field_0].field_257) < 32:
                        revert with 0, 34
                    if uint255(stor4[stor5[address(arg1)][idx].field_0].field_257):
                        if 31 >= uint255(stor4[stor5[address(arg1)][idx].field_0].field_257):
                            mem[_255 + 32] = 256 * Mask(248, 0, stor4[stor5[address(arg1)][idx].field_0].field_264)
                        else:
                            mem[0] = sha3(sub_3f8ab2ec[address(arg1)][idx].field_0, 4) + 1
                            mem[_255 + 32] = stor4[stor5[address(arg1)][idx].field_0][1].field_0
                            s = _255 + 32
                            t = sha3(mem[0])
                            while _255 + uint255(stor4[stor5[address(arg1)][idx].field_0].field_257) > s:
                                mem[0] = address(arg1)
                                mem[32] = 5
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor4[stor5[address(arg1)][idx].field_0].field_256) == stor4[stor5[address(arg1)][idx].field_0].field_257 % 128 < 32:
                        revert with 0, 34
                    if stor4[stor5[address(arg1)][idx].field_0].field_257 % 128:
                        if 31 >= stor4[stor5[address(arg1)][idx].field_0].field_257 % 128:
                            mem[_255 + 32] = 256 * Mask(248, 0, stor4[stor5[address(arg1)][idx].field_0].field_264)
                        else:
                            mem[0] = sha3(sub_3f8ab2ec[address(arg1)][idx].field_0, 4) + 1
                            mem[_255 + 32] = stor4[stor5[address(arg1)][idx].field_0][1].field_0
                            s = _255 + 32
                            t = sha3(mem[0])
                            while _255 + stor4[stor5[address(arg1)][idx].field_0].field_257 % 128 > s:
                                mem[0] = address(arg1)
                                mem[32] = 5
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_237 + 32] = _255
            mem[_237 + 64] = uint64(stor4[stor5[address(arg1)][idx].field_0].field_512)
            mem[_237 + 96] = uint64(stor4[stor5[address(arg1)][idx].field_0].field_576)
            mem[_237 + 128] = uint8(stor4[stor5[address(arg1)][idx].field_0].field_640)
            mem[_237 + 160] = stor4[stor5[address(arg1)][idx].field_0].field_768
            mem[_237 + 192] = uint64(stor4[stor5[address(arg1)][idx].field_0].field_1024)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _237
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 5
            idx = idx + 1
            continue 
        _234 = mem[64]
        mem[mem[64]] = 32
        _238 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _238:
            mem[t] = u + -_234 - 64
            _283 = mem[s]
            mem[u] = mem[mem[s]]
            _286 = mem[_283 + 32]
            mem[u + 32] = 224
            _291 = mem[_286]
            mem[u + 224] = mem[_286]
            v = 0
            while v < _291:
                mem[v + u + 256] = mem[v + _286 + 32]
                v = v + 32
                continue 
            if ceil32(_291) > _291:
                mem[_291 + u + 256] = 0
            mem[u + 64] = mem[_283 + 88 len 8]
            mem[u + 96] = mem[_283 + 120 len 8]
            mem[u + 128] = mem[_283 + 159 len 1]
            mem[u + 160] = mem[_283 + 160]
            mem[u + 192] = mem[_283 + 216 len 8]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_291) + u + 256
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
