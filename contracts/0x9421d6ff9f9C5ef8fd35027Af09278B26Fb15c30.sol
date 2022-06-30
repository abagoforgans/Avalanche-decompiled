contract main {




// =====================  Runtime code  =====================


#
#  - sub_622f7b6b(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor152;
array of uint256 tokenByIndex;
mapping of uint256 stor154;
mapping of struct stor201;
uint8 paused;
address owner;
uint256 stor401;
address sub_4d1c3621Address;
address sub_2cfbfde4Address;
uint256 stor551;
mapping of struct stor552;
uint256 sub_cc0ea2be;
uint256 sub_1270c4cc;
array of uint256 stor51848699043762354786445001410105671568266765734117956169291548475795829136640;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_1270c4cc(?) payable {
    return sub_1270c4cc
}

function totalSupply() payable {
    return tokenByIndex.length
}

function sub_2cfbfde4(?) payable {
    return sub_2cfbfde4Address
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_4d1c3621(?) payable {
    return sub_4d1c3621Address
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() payable {
    return bool(paused)
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

function sub_cc0ea2be(?) payable {
    return sub_cc0ea2be
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function recoverLostAVAX() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_3d7226ba(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SwordNFT: Minimum price to create a Sword must be above 0'
    sub_cc0ea2be = arg1
}

function sub_dfc9f899(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SwordNFT: Maximum fee percent to create a Sword must not be larger than 100'
    sub_1270c4cc = arg1
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

function sub_ecc208ce(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(arg1) == address(arg2):
        revert with 0, 'ERC721: approve to caller'
    stor106[address(arg1)][address(arg2)] = uint8(bool(arg3))
    emit ApprovalForAll(bool(arg3), address(arg1), address(arg2));
}

function recoverLostTokens(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_9ebf906a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(address(arg1)):
        if address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Army: You can only set 0x0 or a contract address as a new implementation'
    sub_4d1c3621Address = address(arg1)
    emit 0xa3e8afe8: sub_4d1c3621Address, address(arg1)
}

function sub_abb47cf0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(address(arg1)):
        if address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'TroopsManager: You can only set 0x0 or a contract address as a new implementation'
    sub_2cfbfde4Address = address(arg1)
    emit 0x2997fe9e: sub_2cfbfde4Address, address(arg1)
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
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
        if not stor106[stor103[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_add32574(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    while idx < balanceOf[address(arg1)]:
        if not address(arg1):
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
        mem[32] = 552
        if bool(stor552[stor151[address(arg1)][idx]].field_2304) != 1:
            revert with 0, 'sword does not exist'
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function sub_e52712a6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if stor401 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor401 = 2
    if not sub_4d1c3621Address:
        revert with 0, 'SwordNFT: Army is not set'
    if not ownerOf[arg2]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != msg.sender:
        revert with 0, 'SwordNFT: Rename context invalid'
    if arg1.length <= 1:
        revert with 0, 'SwordNFT: Rename context invalid'
    if arg1.length >= 32:
        revert with 0, 'SwordNFT: Rename context invalid'
    if stor552[arg2].field_256:
        revert with 0, 'This is not a sword'
    if stor552[arg2].field_512:
        if stor552[arg2].field_512 == uint255(stor552[arg2].field_512) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor552[arg2][2][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor552[arg2].field_512 = 0
            idx = 0
            while (uint255(stor552[arg2].field_512) * 0.5) + 31 / 32 > idx:
                stor552[arg2][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor552[arg2].field_512 == stor552[arg2].field_513 < 32:
            revert with 0, 34
        if arg1.length:
            stor552[arg2][2][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor552[arg2].field_512 = 0
            idx = 0
            while stor552[arg2].field_513 + 31 / 32 > idx:
                stor552[arg2][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    stor401 = 1
}

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0, 'Initializable: contract is not initializing'
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor101.length) = 0
        stor101.length.field_1 = 14
        stor101.length.field_144 = 0x41726d792053776f7264204e4654
        idx = 0
        while (uint255(stor101.length) * 0.5) + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        bool(stor101.length) = 0
        stor101.length.field_1 = 14
        stor101.length.field_144 = 0x41726d792053776f7264204e4654
        idx = 0
        while stor101.length.field_1 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor102.length) = 0
        stor102.length.field_1 = 5
        stor102.length.field_216 = 357947101764
        idx = 0
        while (uint255(stor102.length) * 0.5) + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        bool(stor102.length) = 0
        stor102.length.field_1 = 5
        stor102.length.field_216 = 357947101764
        idx = 0
        while stor102.length.field_1 + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not uint8(stor0.field_8):
        revert with 0, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor401 = 1
    paused = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cc0ea2be = 20000 * 10^18
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1270c4cc = 2000
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor552[arg1].field_512:
        if stor552[arg1].field_512 == uint255(stor552[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if stor552[arg1].field_512:
            if stor552[arg1].field_512 == uint255(stor552[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor552[arg1].field_512):
                if 31 < uint255(stor552[arg1].field_512) * 0.5:
                    idx = 448
                    s = 0
                    while (uint255(stor552[arg1].field_512) * 0.5) + 416 > idx:
                        mem[idx + 32] = stor552[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor552[arg1].field_512 == stor552[arg1].field_513 < 32:
                revert with 0, 34
            if stor552[arg1].field_513:
                if 31 < stor552[arg1].field_513:
                    idx = 448
                    s = 0
                    while stor552[arg1].field_513 + 416 > idx:
                        mem[idx + 32] = stor552[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if not stor552[arg1].field_256:
            return 32, 78, 
                   0x6e68747470733a2f2f697066732e696f2f697066732f516d56645a35726f4769714344416f4d6f78716a4c4a314c4b7a52504465395a614b5a4872457768623938757a782f53776f72642e6a736f, mem[ceil32(uint255(stor552[arg1].field_512) * 0.5) + 558 len 18] >> 368,
                   0
        if stor552[arg1].field_256 != 1:
            return ''
        return 32, 79, 
               0xfe68747470733a2f2f697066732e696f2f697066732f516d56645a35726f4769714344416f4d6f78716a4c4a314c4b7a52504465395a614b5a4872457768623938757a782f536869656c642e6a736f, mem[ceil32(uint255(stor552[arg1].field_512) * 0.5) + 559 len 17] >> 376,
               0
    if stor552[arg1].field_512 == stor552[arg1].field_513 < 32:
        revert with 0, 34
    if stor552[arg1].field_512:
        if stor552[arg1].field_512 == uint255(stor552[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor552[arg1].field_512):
            if 31 < uint255(stor552[arg1].field_512) * 0.5:
                idx = 448
                s = 0
                while (uint255(stor552[arg1].field_512) * 0.5) + 416 > idx:
                    mem[idx + 32] = stor552[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor552[arg1].field_512 == stor552[arg1].field_513 < 32:
            revert with 0, 34
        if stor552[arg1].field_513:
            if 31 < stor552[arg1].field_513:
                idx = 448
                s = 0
                while stor552[arg1].field_513 + 416 > idx:
                    mem[idx + 32] = stor552[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if not stor552[arg1].field_256:
        return 32, 78, 
               0x6e68747470733a2f2f697066732e696f2f697066732f516d56645a35726f4769714344416f4d6f78716a4c4a314c4b7a52504465395a614b5a4872457768623938757a782f53776f72642e6a736f, mem[ceil32(stor552[arg1].field_513) + 558 len 18] >> 368,
               0
    if stor552[arg1].field_256 != 1:
        return ''
    return 32, 79, 
           0xfe68747470733a2f2f697066732e696f2f697066732f516d56645a35726f4769714344416f4d6f78716a4c4a314c4b7a52504465395a614b5a4872457768623938757a782f536869656c642e6a736f, mem[ceil32(stor552[arg1].field_513) + 559 len 17] >> 376,
           0
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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

function sub_6bcf0441(?) payable {
    require calldata.size - 4 >= 32
    if stor552[arg1].field_512:
        if stor552[arg1].field_512 == uint255(stor552[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if stor552[arg1].field_512:
            if stor552[arg1].field_512 == uint255(stor552[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor552[arg1].field_512):
                if 31 >= uint255(stor552[arg1].field_512) * 0.5:
                    mem[128] = 256 * stor552[arg1].field_520
                else:
                    mem[128] = stor552[arg1][2].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor552[arg1].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor552[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor552[arg1].field_512 == stor552[arg1].field_513 < 32:
                revert with 0, 34
            if stor552[arg1].field_513:
                if 31 >= stor552[arg1].field_513:
                    mem[128] = 256 * stor552[arg1].field_520
                else:
                    mem[128] = stor552[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor552[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = stor552[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor552[arg1].field_0, 
               stor552[arg1].field_256,
               Array(len=2 * Mask(256, -1, stor552[arg1].field_512), data=mem[128 len ceil32(uint255(stor552[arg1].field_512) * 0.5)]),
               stor552[arg1].field_768,
               stor552[arg1].field_1024,
               stor552[arg1].field_1280,
               stor552[arg1].field_1536,
               stor552[arg1].field_1792,
               stor552[arg1].field_2048,
               bool(stor552[arg1].field_2304)
    if stor552[arg1].field_512 == stor552[arg1].field_513 < 32:
        revert with 0, 34
    if stor552[arg1].field_512:
        if stor552[arg1].field_512 == uint255(stor552[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor552[arg1].field_512):
            if 31 >= uint255(stor552[arg1].field_512) * 0.5:
                mem[128] = 256 * stor552[arg1].field_520
            else:
                mem[128] = stor552[arg1][2].field_0
                idx = 128
                s = 0
                while (uint255(stor552[arg1].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor552[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor552[arg1].field_512 == stor552[arg1].field_513 < 32:
            revert with 0, 34
        if stor552[arg1].field_513:
            if 31 >= stor552[arg1].field_513:
                mem[128] = 256 * stor552[arg1].field_520
            else:
                mem[128] = stor552[arg1][2].field_0
                idx = 128
                s = 0
                while stor552[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = stor552[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor552[arg1].field_0, 
           stor552[arg1].field_256,
           Array(len=stor552[arg1].field_512, data=mem[128 len ceil32(stor552[arg1].field_513)]),
           stor552[arg1].field_768,
           stor552[arg1].field_1024,
           stor552[arg1].field_1280,
           stor552[arg1].field_1536,
           stor552[arg1].field_1792,
           stor552[arg1].field_2048,
           bool(stor552[arg1].field_2304)
}

function name() payable {
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor101.length):
            if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor101.length):
                if 31 < uint255(stor101.length) * 0.5:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor101.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * stor101.length.field_8
        else:
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * stor101.length.field_8
        mem[ceil32(uint255(stor101.length) * 0.5) + 192 len ceil32(uint255(stor101.length) * 0.5)] = mem[128 len ceil32(uint255(stor101.length) * 0.5)]
        if ceil32(uint255(stor101.length) * 0.5) > uint255(stor101.length) * 0.5:
            mem[ceil32(uint255(stor101.length) * 0.5) + (uint255(stor101.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)], mem[(2 * ceil32(uint255(stor101.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor101.length) * 0.5)]), 
    if bool(stor101.length) == stor101.length.field_1 < 32:
        revert with 0, 34
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor101.length):
            if 31 < uint255(stor101.length) * 0.5:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while (uint255(stor101.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
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
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor102.length):
            if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor102.length):
                if 31 < uint255(stor102.length) * 0.5:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor102.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * stor102.length.field_8
        else:
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * stor102.length.field_8
        mem[ceil32(uint255(stor102.length) * 0.5) + 192 len ceil32(uint255(stor102.length) * 0.5)] = mem[128 len ceil32(uint255(stor102.length) * 0.5)]
        if ceil32(uint255(stor102.length) * 0.5) > uint255(stor102.length) * 0.5:
            mem[ceil32(uint255(stor102.length) * 0.5) + (uint255(stor102.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)], mem[(2 * ceil32(uint255(stor102.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor102.length) * 0.5)]), 
    if bool(stor102.length) == stor102.length.field_1 < 32:
        revert with 0, 34
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor102.length):
            if 31 < uint255(stor102.length) * 0.5:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while (uint255(stor102.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
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
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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

function sub_14604da9(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not sub_2cfbfde4Address:
        revert with 0, 'Implementations: TroopsManager is not set'
    if sub_2cfbfde4Address != msg.sender:
        revert with 0, 'Implementations: Not TroopsManager'
    if arg2.length <= 1:
        revert with 0, 'Troops: name not valid or available, min value, low balance'
    if arg2.length >= 32:
        revert with 0, 'Troops: name not valid or available, min value, low balance'
    if arg3 < sub_cc0ea2be:
        revert with 0, 'Troops: name not valid or available, min value, low balance'
    staticcall sub_4d1c3621Address.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_cc0ea2be:
        revert with 0, 'Troops: name not valid or available, min value, low balance'
    stor551++
    if arg3 and sub_1270c4cc > -1 / arg3:
        revert with 0, 17
    if arg3 < arg3 * sub_1270c4cc / 10000:
        revert with 0, 17
    stor552[stor551].field_0 = stor551
    stor552[stor551].field_256 = 0
    if stor552[stor551].field_512:
        if stor552[stor551].field_512 == uint255(stor552[stor551].field_512) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor552[stor551][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor552[stor551].field_512 = 0
            idx = 0
            while (uint255(stor552[stor551].field_512) * 0.5) + 31 / 32 > idx:
                stor552[stor551][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor552[stor551].field_512 == stor552[stor551].field_513 < 32:
            revert with 0, 34
        if arg2.length:
            stor552[stor551][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor552[stor551].field_512 = 0
            idx = 0
            while stor552[stor551].field_513 + 31 / 32 > idx:
                stor552[stor551][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    stor552[stor551].field_768 = block.timestamp
    stor552[stor551].field_1024 = arg3 - (arg3 * sub_1270c4cc / 10000)
    stor552[stor551].field_1280 = 0
    stor552[stor551].field_1536 = 0
    stor552[stor551].field_1792 = 0
    stor552[stor551].field_2048 = 0
    stor552[stor551].field_2304 = 1
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor551]:
        revert with 0, 'ERC721: token already minted'
    stor154[stor551] = tokenByIndex.length
    tokenByIndex.length++
    stor72A1[stor153.length] = stor551
    if address(arg1):
        if address(arg1):
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)]] = stor551
            stor152[stor551] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[stor551] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[stor551]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[stor551]
        stor154[stor551] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor551] = address(arg1)
    emit Transfer(0, address(arg1), stor551);
    emit Create((arg3 - (arg3 * sub_1270c4cc / 10000)), address(arg1), stor551);
    return stor551, arg3, arg3 * sub_1270c4cc / 10000
}

function sub_12e36401(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not sub_2cfbfde4Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Implementations: TroopsManager is not set'
    if sub_2cfbfde4Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Implementations: Not TroopsManager'
    if not stor552[arg2].field_2304:
        revert with 0, 'non-existent sword NFT'
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if address(arg1) != ownerOf[arg2]:
        revert with 0, 'not owner of this sword NFT'
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2]:
        if not ownerOf[arg2]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor103[arg2]] < 1:
            revert with 0, 17
        if balanceOf[stor103[arg2]] - 1 != stor152[arg2]:
            tokenOfOwnerByIndex[stor103[arg2]][stor152[arg2]] = tokenOfOwnerByIndex[stor103[arg2]][stor104[stor103[arg2]] - 1]
            stor152[stor151[stor103[arg2]][stor104[stor103[arg2]] - 1]] = stor152[arg2]
        stor152[arg2] = 0
        tokenOfOwnerByIndex[stor103[arg2]][stor104[stor103[arg2]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor154[arg2] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor154[arg2]] = tokenByIndex[tokenByIndex.length]
    stor154[stor153[stor153.length]] = stor154[arg2]
    stor154[arg2] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg2] = 0
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], 0, arg2);
    if balanceOf[stor103[arg2]] < 1:
        revert with 0, 17
    balanceOf[stor103[arg2]]--
    ownerOf[arg2] = 0
    emit Transfer(ownerOf[arg2], 0, arg2);
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2]:
        if not ownerOf[arg2]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor103[arg2]] < 1:
            revert with 0, 17
        if balanceOf[stor103[arg2]] - 1 != stor152[arg2]:
            tokenOfOwnerByIndex[stor103[arg2]][stor152[arg2]] = tokenOfOwnerByIndex[stor103[arg2]][stor104[stor103[arg2]] - 1]
            stor152[stor151[stor103[arg2]][stor104[stor103[arg2]] - 1]] = stor152[arg2]
        stor152[arg2] = 0
        tokenOfOwnerByIndex[stor103[arg2]][stor104[stor103[arg2]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor154[arg2] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor154[arg2]] = tokenByIndex[tokenByIndex.length]
    stor154[stor153[stor153.length]] = stor154[arg2]
    stor154[arg2] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg2] = 0
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], 0, arg2);
    if balanceOf[stor103[arg2]] < 1:
        revert with 0, 17
    balanceOf[stor103[arg2]]--
    ownerOf[arg2] = 0
    emit Transfer(ownerOf[arg2], 0, arg2);
    if stor201[arg2].field_0:
        if stor201[arg2].field_0 == uint255(stor201[arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor201[arg2].field_0):
            if stor201[arg2].field_0:
                if stor201[arg2].field_0 == uint255(stor201[arg2].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor201[arg2].field_0 = 0
                if 31 < uint255(stor201[arg2].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor201[arg2].field_0) * 0.5) + 31 / 32 > idx:
                        stor201[arg2][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor201[arg2].field_0 == stor201[arg2].field_1 < 32:
                    revert with 0, 34
                stor201[arg2].field_0 = 0
                if 31 < stor201[arg2].field_1:
                    idx = 0
                    while stor201[arg2].field_1 + 31 / 32 > idx:
                        stor201[arg2][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if stor201[arg2].field_0 == stor201[arg2].field_1 < 32:
            revert with 0, 34
        if stor201[arg2].field_1:
            if stor201[arg2].field_0:
                if stor201[arg2].field_0 == uint255(stor201[arg2].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor201[arg2].field_0 = 0
                if 31 < uint255(stor201[arg2].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor201[arg2].field_0) * 0.5) + 31 / 32 > idx:
                        stor201[arg2][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor201[arg2].field_0 == stor201[arg2].field_1 < 32:
                    revert with 0, 34
                stor201[arg2].field_0 = 0
                if 31 < stor201[arg2].field_1:
                    idx = 0
                    while stor201[arg2].field_1 + 31 / 32 > idx:
                        stor201[arg2][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    stor552[arg2].field_0 = 0
    stor552[arg2].field_256 = 0
    if stor552[arg2].field_512:
        if stor552[arg2].field_512 == uint255(stor552[arg2].field_512) * 0.5 < 32:
            revert with 0, 34
        stor552[arg2].field_512 = 0
        if 31 < uint255(stor552[arg2].field_512) * 0.5:
            idx = 0
            while (uint255(stor552[arg2].field_512) * 0.5) + 31 / 32 > idx:
                stor552[arg2][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor552[arg2].field_512 == stor552[arg2].field_513 < 32:
            revert with 0, 34
        stor552[arg2].field_512 = 0
        if 31 < stor552[arg2].field_513:
            idx = 0
            while stor552[arg2].field_513 + 31 / 32 > idx:
                stor552[arg2][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    stor552[arg2].field_768 = 0
    stor552[arg2].field_1024 = 0
    stor552[arg2].field_1280 = 0
    stor552[arg2].field_1536 = 0
    stor552[arg2].field_1792 = 0
    stor552[arg2].field_2048 = 0
    stor552[arg2].field_2304 = 0
    return stor552[arg2].field_1024
}



}
