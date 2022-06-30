contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
array of uint256 stor1;
array of struct stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
array of uint256 stor8;
array of uint8 stor9;
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
        if bool(uint8(stor552[stor151[address(arg1)][idx]].field_2304)) != 1:
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
    if bool(stor552[arg2].field_512):
        if bool(stor552[arg2].field_512) == uint255(stor552[arg2].field_512) * 0.5 < 32:
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
        if bool(stor552[arg2].field_512) == stor552[arg2].field_513 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor552[arg2][2][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor552[arg2].field_512 = 0
            idx = 0
            while stor552[arg2].field_513 % 128 + 31 / 32 > idx:
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
        uint255(stor101.length.field_1) = 14
        Mask(112, 0, stor101.length.field_144) = 0x41726d792053776f7264204e4654
        idx = 0
        while (uint255(stor101.length) * 0.5) + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
            revert with 0, 34
        bool(stor101.length) = 0
        uint255(stor101.length.field_1) = 14
        Mask(112, 0, stor101.length.field_144) = 0x41726d792053776f7264204e4654
        idx = 0
        while stor101.length.field_1 % 128 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor102.length) = 0
        uint255(stor102.length.field_1) = 5
        stor102.length.field_216 % 1099511627776 = 357947101764
        idx = 0
        while (uint255(stor102.length) * 0.5) + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
            revert with 0, 34
        bool(stor102.length) = 0
        uint255(stor102.length.field_1) = 5
        stor102.length.field_216 % 1099511627776 = 357947101764
        idx = 0
        while stor102.length.field_1 % 128 + 31 / 32 > idx:
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor552[arg1].field_512):
        if bool(stor552[arg1].field_512) == uint255(stor552[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if bool(stor552[arg1].field_512):
            if bool(stor552[arg1].field_512) == uint255(stor552[arg1].field_512) * 0.5 < 32:
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
            if bool(stor552[arg1].field_512) == stor552[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if stor552[arg1].field_513 % 128:
                if 31 < stor552[arg1].field_513 % 128:
                    idx = 448
                    s = 0
                    while stor552[arg1].field_513 % 128 + 416 > idx:
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
    if bool(stor552[arg1].field_512) == stor552[arg1].field_513 % 128 < 32:
        revert with 0, 34
    if bool(stor552[arg1].field_512):
        if bool(stor552[arg1].field_512) == uint255(stor552[arg1].field_512) * 0.5 < 32:
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
        if bool(stor552[arg1].field_512) == stor552[arg1].field_513 % 128 < 32:
            revert with 0, 34
        if stor552[arg1].field_513 % 128:
            if 31 < stor552[arg1].field_513 % 128:
                idx = 448
                s = 0
                while stor552[arg1].field_513 % 128 + 416 > idx:
                    mem[idx + 32] = stor552[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if not stor552[arg1].field_256:
        return 32, 78, 
               0x6e68747470733a2f2f697066732e696f2f697066732f516d56645a35726f4769714344416f4d6f78716a4c4a314c4b7a52504465395a614b5a4872457768623938757a782f53776f72642e6a736f, mem[ceil32(stor552[arg1].field_513 % 128) + 558 len 18] >> 368,
               0
    if stor552[arg1].field_256 != 1:
        return ''
    return 32, 79, 
           0xfe68747470733a2f2f697066732e696f2f697066732f516d56645a35726f4769714344416f4d6f78716a4c4a314c4b7a52504465395a614b5a4872457768623938757a782f536869656c642e6a736f, mem[ceil32(stor552[arg1].field_513 % 128) + 559 len 17] >> 376,
           0
}

function sub_6bcf0441(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor552[arg1].field_512):
        if bool(stor552[arg1].field_512) == uint255(stor552[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if bool(stor552[arg1].field_512):
            if bool(stor552[arg1].field_512) == uint255(stor552[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor552[arg1].field_512):
                if 31 >= uint255(stor552[arg1].field_512) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor552[arg1].field_520)
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
            if bool(stor552[arg1].field_512) == stor552[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if stor552[arg1].field_513 % 128:
                if 31 >= stor552[arg1].field_513 % 128:
                    mem[128] = 256 * Mask(248, 0, stor552[arg1].field_520)
                else:
                    mem[128] = stor552[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor552[arg1].field_513 % 128 + 96 > idx:
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
               bool(uint8(stor552[arg1].field_2304))
    if bool(stor552[arg1].field_512) == stor552[arg1].field_513 % 128 < 32:
        revert with 0, 34
    if bool(stor552[arg1].field_512):
        if bool(stor552[arg1].field_512) == uint255(stor552[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor552[arg1].field_512):
            if 31 >= uint255(stor552[arg1].field_512) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor552[arg1].field_520)
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
        if bool(stor552[arg1].field_512) == stor552[arg1].field_513 % 128 < 32:
            revert with 0, 34
        if stor552[arg1].field_513 % 128:
            if 31 >= stor552[arg1].field_513 % 128:
                mem[128] = 256 * Mask(248, 0, stor552[arg1].field_520)
            else:
                mem[128] = stor552[arg1][2].field_0
                idx = 128
                s = 0
                while stor552[arg1].field_513 % 128 + 96 > idx:
                    mem[idx + 32] = stor552[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor552[arg1].field_0, 
           stor552[arg1].field_256,
           Array(len=stor552[arg1].field_512 % 128, data=mem[128 len ceil32(stor552[arg1].field_513 % 128)]),
           stor552[arg1].field_768,
           stor552[arg1].field_1024,
           stor552[arg1].field_1280,
           stor552[arg1].field_1536,
           stor552[arg1].field_1792,
           stor552[arg1].field_2048,
           bool(uint8(stor552[arg1].field_2304))
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
                mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
        else:
            if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
        mem[ceil32(uint255(stor101.length) * 0.5) + 192 len ceil32(uint255(stor101.length) * 0.5)] = mem[128 len ceil32(uint255(stor101.length) * 0.5)]
        if ceil32(uint255(stor101.length) * 0.5) > uint255(stor101.length) * 0.5:
            mem[ceil32(uint255(stor101.length) * 0.5) + (uint255(stor101.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)], mem[(2 * ceil32(uint255(stor101.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor101.length) * 0.5)]), 
    if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
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
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
    else:
        if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
            revert with 0, 34
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
                mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
        else:
            if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
        mem[ceil32(uint255(stor102.length) * 0.5) + 192 len ceil32(uint255(stor102.length) * 0.5)] = mem[128 len ceil32(uint255(stor102.length) * 0.5)]
        if ceil32(uint255(stor102.length) * 0.5) > uint255(stor102.length) * 0.5:
            mem[ceil32(uint255(stor102.length) * 0.5) + (uint255(stor102.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)], mem[(2 * ceil32(uint255(stor102.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor102.length) * 0.5)]), 
    if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
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
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
    else:
        if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
            revert with 0, 34
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
    if bool(stor552[stor551].field_512):
        if bool(stor552[stor551].field_512) == uint255(stor552[stor551].field_512) * 0.5 < 32:
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
        if bool(stor552[stor551].field_512) == stor552[stor551].field_513 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor552[stor551][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor552[stor551].field_512 = 0
            idx = 0
            while stor552[stor551].field_513 % 128 + 31 / 32 > idx:
                stor552[stor551][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    stor552[stor551].field_768 = block.timestamp
    stor552[stor551].field_1024 = arg3 - (arg3 * sub_1270c4cc / 10000)
    stor552[stor551].field_1280 = 0
    stor552[stor551].field_1536 = 0
    stor552[stor551].field_1792 = 0
    stor552[stor551].field_2048 = 0
    uint8(stor552[stor551].field_2304) = 1
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
    if not uint8(stor552[arg2].field_2304):
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
    if bool(stor201[arg2].field_0):
        if bool(stor201[arg2].field_0) == uint255(stor201[arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor201[arg2].field_0):
            if bool(stor201[arg2].field_0):
                if bool(stor201[arg2].field_0) == uint255(stor201[arg2].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor201[arg2].field_0 = 0
                if 31 < uint255(stor201[arg2].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor201[arg2].field_0) * 0.5) + 31 / 32 > idx:
                        stor201[arg2][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor201[arg2].field_0) == stor201[arg2].field_1 % 128 < 32:
                    revert with 0, 34
                stor201[arg2].field_0 = 0
                if 31 < stor201[arg2].field_1 % 128:
                    idx = 0
                    while stor201[arg2].field_1 % 128 + 31 / 32 > idx:
                        stor201[arg2][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if bool(stor201[arg2].field_0) == stor201[arg2].field_1 % 128 < 32:
            revert with 0, 34
        if stor201[arg2].field_1 % 128:
            if bool(stor201[arg2].field_0):
                if bool(stor201[arg2].field_0) == uint255(stor201[arg2].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor201[arg2].field_0 = 0
                if 31 < uint255(stor201[arg2].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor201[arg2].field_0) * 0.5) + 31 / 32 > idx:
                        stor201[arg2][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor201[arg2].field_0) == stor201[arg2].field_1 % 128 < 32:
                    revert with 0, 34
                stor201[arg2].field_0 = 0
                if 31 < stor201[arg2].field_1 % 128:
                    idx = 0
                    while stor201[arg2].field_1 % 128 + 31 / 32 > idx:
                        stor201[arg2][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    stor552[arg2].field_0 = 0
    stor552[arg2].field_256 = 0
    if bool(stor552[arg2].field_512):
        if bool(stor552[arg2].field_512) == uint255(stor552[arg2].field_512) * 0.5 < 32:
            revert with 0, 34
        stor552[arg2].field_512 = 0
        if 31 < uint255(stor552[arg2].field_512) * 0.5:
            idx = 0
            while (uint255(stor552[arg2].field_512) * 0.5) + 31 / 32 > idx:
                stor552[arg2][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor552[arg2].field_512) == stor552[arg2].field_513 % 128 < 32:
            revert with 0, 34
        stor552[arg2].field_512 = 0
        if 31 < stor552[arg2].field_513 % 128:
            idx = 0
            while stor552[arg2].field_513 % 128 + 31 / 32 > idx:
                stor552[arg2][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    stor552[arg2].field_768 = 0
    stor552[arg2].field_1024 = 0
    stor552[arg2].field_1280 = 0
    stor552[arg2].field_1536 = 0
    stor552[arg2].field_1792 = 0
    stor552[arg2].field_2048 = 0
    uint8(stor552[arg2].field_2304) = 0
    return stor552[arg2].field_1024
}

function sub_622f7b6b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    else:
        if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
            revert with 0, 65
        else:
            mem[96] = ('cd', 4).length
            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
            s = 128
            idx = cd[4] + 36
            while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                mem[s] = cd[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if ('cd', 4).length > test266151307():
                revert with 0, 65
            else:
                mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
                mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
                if not ('cd', 4).length:
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        else:
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 552
                            _197 = sha3(mem[(32 * idx) + 128], 552)
                            _198 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_198] = stor552[mem[(32 * idx) + 128]].field_0
                            mem[_198 + 32] = stor1[_197]
                            if bool(stor2[_197].field_0):
                                if bool(stor2[_197].field_0) == uint255(stor2[_197].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                else:
                                    _209 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor2[_197].field_0) * 0.5) + 32
                                    mem[_209] = uint255(stor2[_197].field_0) * 0.5
                                    if bool(stor2[_197].field_0):
                                        if bool(stor2[_197].field_0) == uint255(stor2[_197].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        else:
                                            if not Mask(256, -1, stor2[_197].field_0):
                                                mem[_198 + 64] = _209
                                                mem[_198 + 96] = stor3[_197]
                                                mem[_198 + 128] = stor4[_197]
                                                mem[_198 + 160] = stor5[_197]
                                                mem[_198 + 192] = stor6[_197]
                                                mem[_198 + 224] = stor7[_197]
                                                mem[_198 + 256] = stor8[_197]
                                                mem[_198 + 288] = bool(stor9[_197])
                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                    revert with 0, 50
                                                else:
                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _198
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                if 31 < uint255(stor2[_197].field_0) * 0.5:
                                                    mem[0] = _197 + 2
                                                    mem[_209 + 32] = stor[sha3(_197 + 2)]
                                                    s = _209 + 32
                                                    t = sha3(_197 + 2)
                                                    while _209 + (uint255(stor2[_197].field_0) * 0.5) > s:
                                                        mem[s + 32] = stor1[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    mem[_198 + 64] = _209
                                                    mem[_198 + 96] = stor3[_197]
                                                    mem[_198 + 128] = stor4[_197]
                                                    mem[_198 + 160] = stor5[_197]
                                                    mem[_198 + 192] = stor6[_197]
                                                    mem[_198 + 224] = stor7[_197]
                                                    mem[_198 + 256] = stor8[_197]
                                                    mem[_198 + 288] = bool(stor9[_197])
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                        revert with 0, 50
                                                    else:
                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _198
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                                else:
                                                    mem[_209 + 32] = 256 * Mask(248, 0, stor2[_197].field_8)
                                                    mem[_198 + 64] = _209
                                                    mem[_198 + 96] = stor3[_197]
                                                    mem[_198 + 128] = stor4[_197]
                                                    mem[_198 + 160] = stor5[_197]
                                                    mem[_198 + 192] = stor6[_197]
                                                    mem[_198 + 224] = stor7[_197]
                                                    mem[_198 + 256] = stor8[_197]
                                                    mem[_198 + 288] = bool(stor9[_197])
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                        revert with 0, 50
                                                    else:
                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _198
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                    else:
                                        if bool(stor2[_197].field_0) == stor2[_197].field_1 % 128 < 32:
                                            revert with 0, 34
                                        else:
                                            if not stor2[_197].field_1 % 128:
                                                mem[_198 + 64] = _209
                                                mem[_198 + 96] = stor3[_197]
                                                mem[_198 + 128] = stor4[_197]
                                                mem[_198 + 160] = stor5[_197]
                                                mem[_198 + 192] = stor6[_197]
                                                mem[_198 + 224] = stor7[_197]
                                                mem[_198 + 256] = stor8[_197]
                                                mem[_198 + 288] = bool(stor9[_197])
                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                    revert with 0, 50
                                                else:
                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _198
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                if 31 < stor2[_197].field_1 % 128:
                                                    mem[0] = _197 + 2
                                                    mem[_209 + 32] = stor[sha3(_197 + 2)]
                                                    s = _209 + 32
                                                    t = sha3(_197 + 2)
                                                    while _209 + stor2[_197].field_1 % 128 > s:
                                                        mem[s + 32] = stor1[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    mem[_198 + 64] = _209
                                                    mem[_198 + 96] = stor3[_197]
                                                    mem[_198 + 128] = stor4[_197]
                                                    mem[_198 + 160] = stor5[_197]
                                                    mem[_198 + 192] = stor6[_197]
                                                    mem[_198 + 224] = stor7[_197]
                                                    mem[_198 + 256] = stor8[_197]
                                                    mem[_198 + 288] = bool(stor9[_197])
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                        revert with 0, 50
                                                    else:
                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _198
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                                else:
                                                    mem[_209 + 32] = 256 * Mask(248, 0, stor2[_197].field_8)
                                                    mem[_198 + 64] = _209
                                                    mem[_198 + 96] = stor3[_197]
                                                    mem[_198 + 128] = stor4[_197]
                                                    mem[_198 + 160] = stor5[_197]
                                                    mem[_198 + 192] = stor6[_197]
                                                    mem[_198 + 224] = stor7[_197]
                                                    mem[_198 + 256] = stor8[_197]
                                                    mem[_198 + 288] = bool(stor9[_197])
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                        revert with 0, 50
                                                    else:
                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _198
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                            else:
                                if bool(stor2[_197].field_0) == stor2[_197].field_1 % 128 < 32:
                                    revert with 0, 34
                                else:
                                    _214 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor2[_197].field_1 % 128) + 32
                                    mem[_214] = stor2[_197].field_1 % 128
                                    if bool(stor2[_197].field_0):
                                        if bool(stor2[_197].field_0) == uint255(stor2[_197].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        else:
                                            if not Mask(256, -1, stor2[_197].field_0):
                                                mem[_198 + 64] = _214
                                                mem[_198 + 96] = stor3[_197]
                                                mem[_198 + 128] = stor4[_197]
                                                mem[_198 + 160] = stor5[_197]
                                                mem[_198 + 192] = stor6[_197]
                                                mem[_198 + 224] = stor7[_197]
                                                mem[_198 + 256] = stor8[_197]
                                                mem[_198 + 288] = bool(stor9[_197])
                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                    revert with 0, 50
                                                else:
                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _198
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                if 31 < uint255(stor2[_197].field_0) * 0.5:
                                                    mem[0] = _197 + 2
                                                    mem[_214 + 32] = stor[sha3(_197 + 2)]
                                                    s = _214 + 32
                                                    t = sha3(_197 + 2)
                                                    while _214 + (uint255(stor2[_197].field_0) * 0.5) > s:
                                                        mem[s + 32] = stor1[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    mem[_198 + 64] = _214
                                                    mem[_198 + 96] = stor3[_197]
                                                    mem[_198 + 128] = stor4[_197]
                                                    mem[_198 + 160] = stor5[_197]
                                                    mem[_198 + 192] = stor6[_197]
                                                    mem[_198 + 224] = stor7[_197]
                                                    mem[_198 + 256] = stor8[_197]
                                                    mem[_198 + 288] = bool(stor9[_197])
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                        revert with 0, 50
                                                    else:
                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _198
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                                else:
                                                    mem[_214 + 32] = 256 * Mask(248, 0, stor2[_197].field_8)
                                                    mem[_198 + 64] = _214
                                                    mem[_198 + 96] = stor3[_197]
                                                    mem[_198 + 128] = stor4[_197]
                                                    mem[_198 + 160] = stor5[_197]
                                                    mem[_198 + 192] = stor6[_197]
                                                    mem[_198 + 224] = stor7[_197]
                                                    mem[_198 + 256] = stor8[_197]
                                                    mem[_198 + 288] = bool(stor9[_197])
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                        revert with 0, 50
                                                    else:
                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _198
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                    else:
                                        if bool(stor2[_197].field_0) == stor2[_197].field_1 % 128 < 32:
                                            revert with 0, 34
                                        else:
                                            if not stor2[_197].field_1 % 128:
                                                mem[_198 + 64] = _214
                                                mem[_198 + 96] = stor3[_197]
                                                mem[_198 + 128] = stor4[_197]
                                                mem[_198 + 160] = stor5[_197]
                                                mem[_198 + 192] = stor6[_197]
                                                mem[_198 + 224] = stor7[_197]
                                                mem[_198 + 256] = stor8[_197]
                                                mem[_198 + 288] = bool(stor9[_197])
                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                    revert with 0, 50
                                                else:
                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _198
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                if 31 < stor2[_197].field_1 % 128:
                                                    mem[0] = _197 + 2
                                                    mem[_214 + 32] = stor[sha3(_197 + 2)]
                                                    s = _214 + 32
                                                    t = sha3(_197 + 2)
                                                    while _214 + stor2[_197].field_1 % 128 > s:
                                                        mem[s + 32] = stor1[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    mem[_198 + 64] = _214
                                                    mem[_198 + 96] = stor3[_197]
                                                    mem[_198 + 128] = stor4[_197]
                                                    mem[_198 + 160] = stor5[_197]
                                                    mem[_198 + 192] = stor6[_197]
                                                    mem[_198 + 224] = stor7[_197]
                                                    mem[_198 + 256] = stor8[_197]
                                                    mem[_198 + 288] = bool(stor9[_197])
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                        revert with 0, 50
                                                    else:
                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _198
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                                else:
                                                    mem[_214 + 32] = 256 * Mask(248, 0, stor2[_197].field_8)
                                                    mem[_198 + 64] = _214
                                                    mem[_198 + 96] = stor3[_197]
                                                    mem[_198 + 128] = stor4[_197]
                                                    mem[_198 + 160] = stor5[_197]
                                                    mem[_198 + 192] = stor6[_197]
                                                    mem[_198 + 224] = stor7[_197]
                                                    mem[_198 + 256] = stor8[_197]
                                                    mem[_198 + 288] = bool(stor9[_197])
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                        revert with 0, 50
                                                    else:
                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _198
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                    _195 = mem[64]
                    mem[mem[64]] = 32
                    _200 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + 129
                    t = mem[64] + (32 * _200) + 64
                    u = mem[64] + 64
                    while idx < _200:
                        mem[u] = t + -_195 - 64
                        _286 = mem[s]
                        mem[t] = mem[mem[s]]
                        mem[t + 32] = mem[_286 + 32]
                        _289 = mem[_286 + 64]
                        mem[t + 64] = 320
                        _292 = mem[_289]
                        mem[t + 320] = mem[_289]
                        v = 0
                        while v < _292:
                            mem[v + t + 352] = mem[_289 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_292) <= _292:
                            mem[t + 96] = mem[_286 + 96]
                            mem[t + 128] = mem[_286 + 128]
                            mem[t + 160] = mem[_286 + 160]
                            mem[t + 192] = mem[_286 + 192]
                            mem[t + 224] = mem[_286 + 224]
                            mem[t + 256] = mem[_286 + 256]
                            mem[t + 288] = bool(mem[_286 + 288])
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_292) + t + 352
                            u = u + 32
                            continue 
                        else:
                            mem[t + _292 + 352] = 0
                            mem[t + 96] = mem[_286 + 96]
                            mem[t + 128] = mem[_286 + 128]
                            mem[t + 160] = mem[_286 + 160]
                            mem[t + 192] = mem[_286 + 192]
                            mem[t + 224] = mem[_286 + 224]
                            mem[t + 256] = mem[_286 + 256]
                            mem[t + 288] = bool(mem[_286 + 288])
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_292) + t + 352
                            u = u + 32
                            continue 
                    return memory
                      from mem[64]
                       len t - mem[64]
                else:
                    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 449
                    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 96
                    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 321] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 385] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 417] = 0
                    mem[var22002] = var22001
                    if var22003 - 1:
                        mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 769
                        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
                        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 481] = 0
                        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 513] = 96
                        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 545] = 0
                        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 577] = 0
                        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 609] = 0
                        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 641] = 0
                        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 673] = 0
                        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 705] = 0
                        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 737] = 0
                        mem[var26002] = var26001
                        if var26003 - 1:
                            mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1089
                            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 769] = 0
                            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 801] = 0
                            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 833] = 96
                            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 865] = 0
                            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 897] = 0
                            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 929] = 0
                            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 961] = 0
                            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 993] = 0
                            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1025] = 0
                            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1057] = 0
                            mem[var30002] = var30001
                            if var30003 - 1:
                                mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1409
                                mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1089] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1121] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1153] = 96
                                mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1185] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1217] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1249] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1281] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1313] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1345] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1377] = 0
                                mem[var34002] = var34001
                                if var34003 - 1:
                                    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1729
                                    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1409] = 0
                                    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1441] = 0
                                    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1473] = 96
                                    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1505] = 0
                                    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1537] = 0
                                    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1569] = 0
                                    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1601] = 0
                                    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1633] = 0
                                    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1665] = 0
                                    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1697] = 0
                                    mem[var38002] = var38001
                                    if var38003 - 1:
                                        mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2049
                                        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1729] = 0
                                        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1761] = 0
                                        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1793] = 96
                                        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1825] = 0
                                        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1857] = 0
                                        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1889] = 0
                                        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1921] = 0
                                        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1953] = 0
                                        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1985] = 0
                                        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2017] = 0
                                        mem[var42002] = var42001
                                        if var42003 - 1:
                                            mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2369
                                            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2049] = 0
                                            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2081] = 0
                                            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2113] = 96
                                            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2145] = 0
                                            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2177] = 0
                                            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2209] = 0
                                            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2241] = 0
                                            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2273] = 0
                                            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2305] = 0
                                            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2337] = 0
                                            mem[var46002] = var46001
                                            if var46003 - 1:
                                                mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2689
                                                mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2369] = 0
                                                mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2401] = 0
                                                mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2433] = 96
                                                mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2465] = 0
                                                mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2497] = 0
                                                mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2529] = 0
                                                mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2561] = 0
                                                mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2593] = 0
                                                mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2625] = 0
                                                mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2657] = 0
                                                mem[var50002] = var50001
                                                if var50003 - 1:
                                                    if var54003 - 1:
                                                        # nil
                                                    else:
                                                        # nil
                                                else:
                                                    idx = 0
                                                    while idx < ('cd', 4).length:
                                                        if idx >= mem[96]:
                                                            revert with 0, 50
                                                        else:
                                                            mem[0] = mem[(32 * idx) + 128]
                                                            mem[32] = 552
                                                            _2000 = sha3(mem[(32 * idx) + 128], 552)
                                                            _2001 = mem[64]
                                                            mem[64] = mem[64] + 320
                                                            mem[_2001] = stor552[mem[(32 * idx) + 128]].field_0
                                                            mem[_2001 + 32] = stor1[_2000]
                                                            if bool(stor2[_2000].field_0):
                                                                if bool(stor2[_2000].field_0) == uint255(stor2[_2000].field_0) * 0.5 < 32:
                                                                    revert with 0, 34
                                                                else:
                                                                    _2029 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(uint255(stor2[_2000].field_0) * 0.5) + 32
                                                                    mem[_2029] = uint255(stor2[_2000].field_0) * 0.5
                                                                    if bool(stor2[_2000].field_0):
                                                                        if bool(stor2[_2000].field_0) == uint255(stor2[_2000].field_0) * 0.5 < 32:
                                                                            revert with 0, 34
                                                                        else:
                                                                            if not Mask(256, -1, stor2[_2000].field_0):
                                                                                mem[_2001 + 64] = _2029
                                                                                mem[_2001 + 96] = stor3[_2000]
                                                                                mem[_2001 + 128] = stor4[_2000]
                                                                                mem[_2001 + 160] = stor5[_2000]
                                                                                mem[_2001 + 192] = stor6[_2000]
                                                                                mem[_2001 + 224] = stor7[_2000]
                                                                                mem[_2001 + 256] = stor8[_2000]
                                                                                mem[_2001 + 288] = bool(stor9[_2000])
                                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _2001
                                                                                    if idx == -1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                            else:
                                                                                if 31 < uint255(stor2[_2000].field_0) * 0.5:
                                                                                    mem[0] = _2000 + 2
                                                                                    mem[_2029 + 32] = stor[sha3(_2000 + 2)]
                                                                                    s = _2029 + 32
                                                                                    t = sha3(_2000 + 2)
                                                                                    while _2029 + (uint255(stor2[_2000].field_0) * 0.5) > s:
                                                                                        mem[s + 32] = stor1[t]
                                                                                        s = s + 32
                                                                                        t = t + 1
                                                                                        continue 
                                                                                    mem[_2001 + 64] = _2029
                                                                                    mem[_2001 + 96] = stor3[_2000]
                                                                                    mem[_2001 + 128] = stor4[_2000]
                                                                                    mem[_2001 + 160] = stor5[_2000]
                                                                                    mem[_2001 + 192] = stor6[_2000]
                                                                                    mem[_2001 + 224] = stor7[_2000]
                                                                                    mem[_2001 + 256] = stor8[_2000]
                                                                                    mem[_2001 + 288] = bool(stor9[_2000])
                                                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                        revert with 0, 50
                                                                                    else:
                                                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _2001
                                                                                        if idx == -1:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                else:
                                                                                    mem[_2029 + 32] = 256 * Mask(248, 0, stor2[_2000].field_8)
                                                                                    mem[_2001 + 64] = _2029
                                                                                    mem[_2001 + 96] = stor3[_2000]
                                                                                    mem[_2001 + 128] = stor4[_2000]
                                                                                    mem[_2001 + 160] = stor5[_2000]
                                                                                    mem[_2001 + 192] = stor6[_2000]
                                                                                    mem[_2001 + 224] = stor7[_2000]
                                                                                    mem[_2001 + 256] = stor8[_2000]
                                                                                    mem[_2001 + 288] = bool(stor9[_2000])
                                                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                        revert with 0, 50
                                                                                    else:
                                                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _2001
                                                                                        if idx == -1:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                    else:
                                                                        if bool(stor2[_2000].field_0) == stor2[_2000].field_1 % 128 < 32:
                                                                            revert with 0, 34
                                                                        else:
                                                                            if not stor2[_2000].field_1 % 128:
                                                                                mem[_2001 + 64] = _2029
                                                                                mem[_2001 + 96] = stor3[_2000]
                                                                                mem[_2001 + 128] = stor4[_2000]
                                                                                mem[_2001 + 160] = stor5[_2000]
                                                                                mem[_2001 + 192] = stor6[_2000]
                                                                                mem[_2001 + 224] = stor7[_2000]
                                                                                mem[_2001 + 256] = stor8[_2000]
                                                                                mem[_2001 + 288] = bool(stor9[_2000])
                                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _2001
                                                                                    if idx == -1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                            else:
                                                                                if 31 < stor2[_2000].field_1 % 128:
                                                                                    mem[0] = _2000 + 2
                                                                                    mem[_2029 + 32] = stor[sha3(_2000 + 2)]
                                                                                    s = _2029 + 32
                                                                                    t = sha3(_2000 + 2)
                                                                                    while _2029 + stor2[_2000].field_1 % 128 > s:
                                                                                        mem[s + 32] = stor1[t]
                                                                                        s = s + 32
                                                                                        t = t + 1
                                                                                        continue 
                                                                                    mem[_2001 + 64] = _2029
                                                                                    mem[_2001 + 96] = stor3[_2000]
                                                                                    mem[_2001 + 128] = stor4[_2000]
                                                                                    mem[_2001 + 160] = stor5[_2000]
                                                                                    mem[_2001 + 192] = stor6[_2000]
                                                                                    mem[_2001 + 224] = stor7[_2000]
                                                                                    mem[_2001 + 256] = stor8[_2000]
                                                                                    mem[_2001 + 288] = bool(stor9[_2000])
                                                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                        revert with 0, 50
                                                                                    else:
                                                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _2001
                                                                                        if idx == -1:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                else:
                                                                                    mem[_2029 + 32] = 256 * Mask(248, 0, stor2[_2000].field_8)
                                                                                    mem[_2001 + 64] = _2029
                                                                                    mem[_2001 + 96] = stor3[_2000]
                                                                                    mem[_2001 + 128] = stor4[_2000]
                                                                                    mem[_2001 + 160] = stor5[_2000]
                                                                                    mem[_2001 + 192] = stor6[_2000]
                                                                                    mem[_2001 + 224] = stor7[_2000]
                                                                                    mem[_2001 + 256] = stor8[_2000]
                                                                                    mem[_2001 + 288] = bool(stor9[_2000])
                                                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                        revert with 0, 50
                                                                                    else:
                                                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _2001
                                                                                        if idx == -1:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            idx = idx + 1
                                                                                            continue 
                                                            else:
                                                                if bool(stor2[_2000].field_0) == stor2[_2000].field_1 % 128 < 32:
                                                                    revert with 0, 34
                                                                else:
                                                                    _2031 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(stor2[_2000].field_1 % 128) + 32
                                                                    mem[_2031] = stor2[_2000].field_1 % 128
                                                                    if bool(stor2[_2000].field_0):
                                                                        if bool(stor2[_2000].field_0) == uint255(stor2[_2000].field_0) * 0.5 < 32:
                                                                            revert with 0, 34
                                                                        else:
                                                                            if not Mask(256, -1, stor2[_2000].field_0):
                                                                                mem[_2001 + 64] = _2031
                                                                                mem[_2001 + 96] = stor3[_2000]
                                                                                mem[_2001 + 128] = stor4[_2000]
                                                                                mem[_2001 + 160] = stor5[_2000]
                                                                                mem[_2001 + 192] = stor6[_2000]
                                                                                mem[_2001 + 224] = stor7[_2000]
                                                                                mem[_2001 + 256] = stor8[_2000]
                                                                                mem[_2001 + 288] = bool(stor9[_2000])
                                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _2001
                                                                                    if idx == -1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                            else:
                                                                                if 31 < uint255(stor2[_2000].field_0) * 0.5:
                                                                                    mem[0] = _2000 + 2
                                                                                    mem[_2031 + 32] = stor[sha3(_2000 + 2)]
                                                                                    s = _2031 + 32
                                                                                    t = sha3(_2000 + 2)
                                                                                    while _2031 + (uint255(stor2[_2000].field_0) * 0.5) > s:
                                                                                        mem[s + 32] = stor1[t]
                                                                                        s = s + 32
                                                                                        t = t + 1
                                                                                        continue 
                                                                                    mem[_2001 + 64] = _2031
                                                                                    mem[_2001 + 96] = stor3[_2000]
                                                                                    mem[_2001 + 128] = stor4[_2000]
                                                                                    mem[_2001 + 160] = stor5[_2000]
                                                                                    mem[_2001 + 192] = stor6[_2000]
                                                                                    mem[_2001 + 224] = stor7[_2000]
                                                                                    mem[_2001 + 256] = stor8[_2000]
                                                                                    mem[_2001 + 288] = bool(stor9[_2000])
                                                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                        revert with 0, 50
                                                                                    else:
                                                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _2001
                                                                                        if idx == -1:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                else:
                                                                                    mem[_2031 + 32] = 256 * Mask(248, 0, stor2[_2000].field_8)
                                                                                    mem[_2001 + 64] = _2031
                                                                                    mem[_2001 + 96] = stor3[_2000]
                                                                                    mem[_2001 + 128] = stor4[_2000]
                                                                                    mem[_2001 + 160] = stor5[_2000]
                                                                                    mem[_2001 + 192] = stor6[_2000]
                                                                                    mem[_2001 + 224] = stor7[_2000]
                                                                                    mem[_2001 + 256] = stor8[_2000]
                                                                                    mem[_2001 + 288] = bool(stor9[_2000])
                                                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                        revert with 0, 50
                                                                                    else:
                                                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _2001
                                                                                        if idx == -1:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                    else:
                                                                        if bool(stor2[_2000].field_0) == stor2[_2000].field_1 % 128 < 32:
                                                                            revert with 0, 34
                                                                        else:
                                                                            if not stor2[_2000].field_1 % 128:
                                                                                mem[_2001 + 64] = _2031
                                                                                mem[_2001 + 96] = stor3[_2000]
                                                                                mem[_2001 + 128] = stor4[_2000]
                                                                                mem[_2001 + 160] = stor5[_2000]
                                                                                mem[_2001 + 192] = stor6[_2000]
                                                                                mem[_2001 + 224] = stor7[_2000]
                                                                                mem[_2001 + 256] = stor8[_2000]
                                                                                mem[_2001 + 288] = bool(stor9[_2000])
                                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _2001
                                                                                    if idx == -1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                            else:
                                                                                if 31 < stor2[_2000].field_1 % 128:
                                                                                    mem[0] = _2000 + 2
                                                                                    mem[_2031 + 32] = stor[sha3(_2000 + 2)]
                                                                                    s = _2031 + 32
                                                                                    t = sha3(_2000 + 2)
                                                                                    while _2031 + stor2[_2000].field_1 % 128 > s:
                                                                                        mem[s + 32] = stor1[t]
                                                                                        s = s + 32
                                                                                        t = t + 1
                                                                                        continue 
                                                                                    mem[_2001 + 64] = _2031
                                                                                    mem[_2001 + 96] = stor3[_2000]
                                                                                    mem[_2001 + 128] = stor4[_2000]
                                                                                    mem[_2001 + 160] = stor5[_2000]
                                                                                    mem[_2001 + 192] = stor6[_2000]
                                                                                    mem[_2001 + 224] = stor7[_2000]
                                                                                    mem[_2001 + 256] = stor8[_2000]
                                                                                    mem[_2001 + 288] = bool(stor9[_2000])
                                                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                        revert with 0, 50
                                                                                    else:
                                                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _2001
                                                                                        if idx == -1:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                else:
                                                                                    mem[_2031 + 32] = 256 * Mask(248, 0, stor2[_2000].field_8)
                                                                                    mem[_2001 + 64] = _2031
                                                                                    mem[_2001 + 96] = stor3[_2000]
                                                                                    mem[_2001 + 128] = stor4[_2000]
                                                                                    mem[_2001 + 160] = stor5[_2000]
                                                                                    mem[_2001 + 192] = stor6[_2000]
                                                                                    mem[_2001 + 224] = stor7[_2000]
                                                                                    mem[_2001 + 256] = stor8[_2000]
                                                                                    mem[_2001 + 288] = bool(stor9[_2000])
                                                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                        revert with 0, 50
                                                                                    else:
                                                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _2001
                                                                                        if idx == -1:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            idx = idx + 1
                                                                                            continue 
                                                    mem[mem[64]] = 32
                                                    _2002 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                    if var65001 >= _2002:
                                                        return memory
                                                          from mem[64]
                                                           len var65003 - mem[64]
                                                    else:
                                                        # nil
                                            else:
                                                idx = 0
                                                while idx < ('cd', 4).length:
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    else:
                                                        mem[0] = mem[(32 * idx) + 128]
                                                        mem[32] = 552
                                                        _1773 = sha3(mem[(32 * idx) + 128], 552)
                                                        _1774 = mem[64]
                                                        mem[64] = mem[64] + 320
                                                        mem[_1774] = stor552[mem[(32 * idx) + 128]].field_0
                                                        mem[_1774 + 32] = stor1[_1773]
                                                        if bool(stor2[_1773].field_0):
                                                            if bool(stor2[_1773].field_0) == uint255(stor2[_1773].field_0) * 0.5 < 32:
                                                                revert with 0, 34
                                                            else:
                                                                _1802 = mem[64]
                                                                mem[64] = mem[64] + ceil32(uint255(stor2[_1773].field_0) * 0.5) + 32
                                                                mem[_1802] = uint255(stor2[_1773].field_0) * 0.5
                                                                if bool(stor2[_1773].field_0):
                                                                    if bool(stor2[_1773].field_0) == uint255(stor2[_1773].field_0) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    else:
                                                                        if not Mask(256, -1, stor2[_1773].field_0):
                                                                            mem[_1774 + 64] = _1802
                                                                            mem[_1774 + 96] = stor3[_1773]
                                                                            mem[_1774 + 128] = stor4[_1773]
                                                                            mem[_1774 + 160] = stor5[_1773]
                                                                            mem[_1774 + 192] = stor6[_1773]
                                                                            mem[_1774 + 224] = stor7[_1773]
                                                                            mem[_1774 + 256] = stor8[_1773]
                                                                            mem[_1774 + 288] = bool(stor9[_1773])
                                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                revert with 0, 50
                                                                            else:
                                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1774
                                                                                if idx == -1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                        else:
                                                                            if 31 < uint255(stor2[_1773].field_0) * 0.5:
                                                                                mem[0] = _1773 + 2
                                                                                mem[_1802 + 32] = stor[sha3(_1773 + 2)]
                                                                                s = _1802 + 32
                                                                                t = sha3(_1773 + 2)
                                                                                while _1802 + (uint255(stor2[_1773].field_0) * 0.5) > s:
                                                                                    mem[s + 32] = stor1[t]
                                                                                    s = s + 32
                                                                                    t = t + 1
                                                                                    continue 
                                                                                mem[_1774 + 64] = _1802
                                                                                mem[_1774 + 96] = stor3[_1773]
                                                                                mem[_1774 + 128] = stor4[_1773]
                                                                                mem[_1774 + 160] = stor5[_1773]
                                                                                mem[_1774 + 192] = stor6[_1773]
                                                                                mem[_1774 + 224] = stor7[_1773]
                                                                                mem[_1774 + 256] = stor8[_1773]
                                                                                mem[_1774 + 288] = bool(stor9[_1773])
                                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1774
                                                                                    if idx == -1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                            else:
                                                                                mem[_1802 + 32] = 256 * Mask(248, 0, stor2[_1773].field_8)
                                                                                mem[_1774 + 64] = _1802
                                                                                mem[_1774 + 96] = stor3[_1773]
                                                                                mem[_1774 + 128] = stor4[_1773]
                                                                                mem[_1774 + 160] = stor5[_1773]
                                                                                mem[_1774 + 192] = stor6[_1773]
                                                                                mem[_1774 + 224] = stor7[_1773]
                                                                                mem[_1774 + 256] = stor8[_1773]
                                                                                mem[_1774 + 288] = bool(stor9[_1773])
                                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1774
                                                                                    if idx == -1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                else:
                                                                    if bool(stor2[_1773].field_0) == stor2[_1773].field_1 % 128 < 32:
                                                                        revert with 0, 34
                                                                    else:
                                                                        if not stor2[_1773].field_1 % 128:
                                                                            mem[_1774 + 64] = _1802
                                                                            mem[_1774 + 96] = stor3[_1773]
                                                                            mem[_1774 + 128] = stor4[_1773]
                                                                            mem[_1774 + 160] = stor5[_1773]
                                                                            mem[_1774 + 192] = stor6[_1773]
                                                                            mem[_1774 + 224] = stor7[_1773]
                                                                            mem[_1774 + 256] = stor8[_1773]
                                                                            mem[_1774 + 288] = bool(stor9[_1773])
                                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                revert with 0, 50
                                                                            else:
                                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1774
                                                                                if idx == -1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                        else:
                                                                            if 31 < stor2[_1773].field_1 % 128:
                                                                                mem[0] = _1773 + 2
                                                                                mem[_1802 + 32] = stor[sha3(_1773 + 2)]
                                                                                s = _1802 + 32
                                                                                t = sha3(_1773 + 2)
                                                                                while _1802 + stor2[_1773].field_1 % 128 > s:
                                                                                    mem[s + 32] = stor1[t]
                                                                                    s = s + 32
                                                                                    t = t + 1
                                                                                    continue 
                                                                                mem[_1774 + 64] = _1802
                                                                                mem[_1774 + 96] = stor3[_1773]
                                                                                mem[_1774 + 128] = stor4[_1773]
                                                                                mem[_1774 + 160] = stor5[_1773]
                                                                                mem[_1774 + 192] = stor6[_1773]
                                                                                mem[_1774 + 224] = stor7[_1773]
                                                                                mem[_1774 + 256] = stor8[_1773]
                                                                                mem[_1774 + 288] = bool(stor9[_1773])
                                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1774
                                                                                    if idx == -1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                            else:
                                                                                mem[_1802 + 32] = 256 * Mask(248, 0, stor2[_1773].field_8)
                                                                                mem[_1774 + 64] = _1802
                                                                                mem[_1774 + 96] = stor3[_1773]
                                                                                mem[_1774 + 128] = stor4[_1773]
                                                                                mem[_1774 + 160] = stor5[_1773]
                                                                                mem[_1774 + 192] = stor6[_1773]
                                                                                mem[_1774 + 224] = stor7[_1773]
                                                                                mem[_1774 + 256] = stor8[_1773]
                                                                                mem[_1774 + 288] = bool(stor9[_1773])
                                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1774
                                                                                    if idx == -1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                        else:
                                                            if bool(stor2[_1773].field_0) == stor2[_1773].field_1 % 128 < 32:
                                                                revert with 0, 34
                                                            else:
                                                                _1804 = mem[64]
                                                                mem[64] = mem[64] + ceil32(stor2[_1773].field_1 % 128) + 32
                                                                mem[_1804] = stor2[_1773].field_1 % 128
                                                                if bool(stor2[_1773].field_0):
                                                                    if bool(stor2[_1773].field_0) == uint255(stor2[_1773].field_0) * 0.5 < 32:
                                                                        revert with 0, 34
                                                                    else:
                                                                        if not Mask(256, -1, stor2[_1773].field_0):
                                                                            mem[_1774 + 64] = _1804
                                                                            mem[_1774 + 96] = stor3[_1773]
                                                                            mem[_1774 + 128] = stor4[_1773]
                                                                            mem[_1774 + 160] = stor5[_1773]
                                                                            mem[_1774 + 192] = stor6[_1773]
                                                                            mem[_1774 + 224] = stor7[_1773]
                                                                            mem[_1774 + 256] = stor8[_1773]
                                                                            mem[_1774 + 288] = bool(stor9[_1773])
                                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                revert with 0, 50
                                                                            else:
                                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1774
                                                                                if idx == -1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                        else:
                                                                            if 31 < uint255(stor2[_1773].field_0) * 0.5:
                                                                                mem[0] = _1773 + 2
                                                                                mem[_1804 + 32] = stor[sha3(_1773 + 2)]
                                                                                s = _1804 + 32
                                                                                t = sha3(_1773 + 2)
                                                                                while _1804 + (uint255(stor2[_1773].field_0) * 0.5) > s:
                                                                                    mem[s + 32] = stor1[t]
                                                                                    s = s + 32
                                                                                    t = t + 1
                                                                                    continue 
                                                                                mem[_1774 + 64] = _1804
                                                                                mem[_1774 + 96] = stor3[_1773]
                                                                                mem[_1774 + 128] = stor4[_1773]
                                                                                mem[_1774 + 160] = stor5[_1773]
                                                                                mem[_1774 + 192] = stor6[_1773]
                                                                                mem[_1774 + 224] = stor7[_1773]
                                                                                mem[_1774 + 256] = stor8[_1773]
                                                                                mem[_1774 + 288] = bool(stor9[_1773])
                                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1774
                                                                                    if idx == -1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                            else:
                                                                                mem[_1804 + 32] = 256 * Mask(248, 0, stor2[_1773].field_8)
                                                                                mem[_1774 + 64] = _1804
                                                                                mem[_1774 + 96] = stor3[_1773]
                                                                                mem[_1774 + 128] = stor4[_1773]
                                                                                mem[_1774 + 160] = stor5[_1773]
                                                                                mem[_1774 + 192] = stor6[_1773]
                                                                                mem[_1774 + 224] = stor7[_1773]
                                                                                mem[_1774 + 256] = stor8[_1773]
                                                                                mem[_1774 + 288] = bool(stor9[_1773])
                                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1774
                                                                                    if idx == -1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                else:
                                                                    if bool(stor2[_1773].field_0) == stor2[_1773].field_1 % 128 < 32:
                                                                        revert with 0, 34
                                                                    else:
                                                                        if not stor2[_1773].field_1 % 128:
                                                                            mem[_1774 + 64] = _1804
                                                                            mem[_1774 + 96] = stor3[_1773]
                                                                            mem[_1774 + 128] = stor4[_1773]
                                                                            mem[_1774 + 160] = stor5[_1773]
                                                                            mem[_1774 + 192] = stor6[_1773]
                                                                            mem[_1774 + 224] = stor7[_1773]
                                                                            mem[_1774 + 256] = stor8[_1773]
                                                                            mem[_1774 + 288] = bool(stor9[_1773])
                                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                revert with 0, 50
                                                                            else:
                                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1774
                                                                                if idx == -1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                        else:
                                                                            if 31 < stor2[_1773].field_1 % 128:
                                                                                mem[0] = _1773 + 2
                                                                                mem[_1804 + 32] = stor[sha3(_1773 + 2)]
                                                                                s = _1804 + 32
                                                                                t = sha3(_1773 + 2)
                                                                                while _1804 + stor2[_1773].field_1 % 128 > s:
                                                                                    mem[s + 32] = stor1[t]
                                                                                    s = s + 32
                                                                                    t = t + 1
                                                                                    continue 
                                                                                mem[_1774 + 64] = _1804
                                                                                mem[_1774 + 96] = stor3[_1773]
                                                                                mem[_1774 + 128] = stor4[_1773]
                                                                                mem[_1774 + 160] = stor5[_1773]
                                                                                mem[_1774 + 192] = stor6[_1773]
                                                                                mem[_1774 + 224] = stor7[_1773]
                                                                                mem[_1774 + 256] = stor8[_1773]
                                                                                mem[_1774 + 288] = bool(stor9[_1773])
                                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1774
                                                                                    if idx == -1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                            else:
                                                                                mem[_1804 + 32] = 256 * Mask(248, 0, stor2[_1773].field_8)
                                                                                mem[_1774 + 64] = _1804
                                                                                mem[_1774 + 96] = stor3[_1773]
                                                                                mem[_1774 + 128] = stor4[_1773]
                                                                                mem[_1774 + 160] = stor5[_1773]
                                                                                mem[_1774 + 192] = stor6[_1773]
                                                                                mem[_1774 + 224] = stor7[_1773]
                                                                                mem[_1774 + 256] = stor8[_1773]
                                                                                mem[_1774 + 288] = bool(stor9[_1773])
                                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1774
                                                                                    if idx == -1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                _1771 = mem[64]
                                                mem[mem[64]] = 32
                                                _1775 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                idx = 0
                                                s = ceil32(32 * ('cd', 4).length) + 129
                                                t = mem[64] + (32 * _1775) + 64
                                                u = mem[64] + 64
                                                while idx < _1775:
                                                    mem[u] = t + -_1771 - 64
                                                    _1876 = mem[s]
                                                    mem[t] = mem[mem[s]]
                                                    mem[t + 32] = mem[_1876 + 32]
                                                    _1879 = mem[_1876 + 64]
                                                    mem[t + 64] = 320
                                                    _1881 = mem[_1879]
                                                    mem[t + 320] = mem[_1879]
                                                    v = 0
                                                    while v < _1881:
                                                        mem[v + t + 352] = mem[_1879 + v + 32]
                                                        v = v + 32
                                                        continue 
                                                    if ceil32(_1881) <= _1881:
                                                        mem[t + 96] = mem[_1876 + 96]
                                                        mem[t + 128] = mem[_1876 + 128]
                                                        mem[t + 160] = mem[_1876 + 160]
                                                        mem[t + 192] = mem[_1876 + 192]
                                                        mem[t + 224] = mem[_1876 + 224]
                                                        mem[t + 256] = mem[_1876 + 256]
                                                        mem[t + 288] = bool(mem[_1876 + 288])
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = ceil32(_1881) + t + 352
                                                        u = u + 32
                                                        continue 
                                                    else:
                                                        mem[t + _1881 + 352] = 0
                                                        mem[t + 96] = mem[_1876 + 96]
                                                        mem[t + 128] = mem[_1876 + 128]
                                                        mem[t + 160] = mem[_1876 + 160]
                                                        mem[t + 192] = mem[_1876 + 192]
                                                        mem[t + 224] = mem[_1876 + 224]
                                                        mem[t + 256] = mem[_1876 + 256]
                                                        mem[t + 288] = bool(mem[_1876 + 288])
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = ceil32(_1881) + t + 352
                                                        u = u + 32
                                                        continue 
                                                return memory
                                                  from mem[64]
                                                   len t - mem[64]
                                        else:
                                            idx = 0
                                            while idx < ('cd', 4).length:
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                else:
                                                    mem[0] = mem[(32 * idx) + 128]
                                                    mem[32] = 552
                                                    _1546 = sha3(mem[(32 * idx) + 128], 552)
                                                    _1547 = mem[64]
                                                    mem[64] = mem[64] + 320
                                                    mem[_1547] = stor552[mem[(32 * idx) + 128]].field_0
                                                    mem[_1547 + 32] = stor1[_1546]
                                                    if bool(stor2[_1546].field_0):
                                                        if bool(stor2[_1546].field_0) == uint255(stor2[_1546].field_0) * 0.5 < 32:
                                                            revert with 0, 34
                                                        else:
                                                            _1575 = mem[64]
                                                            mem[64] = mem[64] + ceil32(uint255(stor2[_1546].field_0) * 0.5) + 32
                                                            mem[_1575] = uint255(stor2[_1546].field_0) * 0.5
                                                            if bool(stor2[_1546].field_0):
                                                                if bool(stor2[_1546].field_0) == uint255(stor2[_1546].field_0) * 0.5 < 32:
                                                                    revert with 0, 34
                                                                else:
                                                                    if not Mask(256, -1, stor2[_1546].field_0):
                                                                        mem[_1547 + 64] = _1575
                                                                        mem[_1547 + 96] = stor3[_1546]
                                                                        mem[_1547 + 128] = stor4[_1546]
                                                                        mem[_1547 + 160] = stor5[_1546]
                                                                        mem[_1547 + 192] = stor6[_1546]
                                                                        mem[_1547 + 224] = stor7[_1546]
                                                                        mem[_1547 + 256] = stor8[_1546]
                                                                        mem[_1547 + 288] = bool(stor9[_1546])
                                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                            revert with 0, 50
                                                                        else:
                                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1547
                                                                            if idx == -1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                continue 
                                                                    else:
                                                                        if 31 < uint255(stor2[_1546].field_0) * 0.5:
                                                                            mem[0] = _1546 + 2
                                                                            mem[_1575 + 32] = stor[sha3(_1546 + 2)]
                                                                            s = _1575 + 32
                                                                            t = sha3(_1546 + 2)
                                                                            while _1575 + (uint255(stor2[_1546].field_0) * 0.5) > s:
                                                                                mem[s + 32] = stor1[t]
                                                                                s = s + 32
                                                                                t = t + 1
                                                                                continue 
                                                                            mem[_1547 + 64] = _1575
                                                                            mem[_1547 + 96] = stor3[_1546]
                                                                            mem[_1547 + 128] = stor4[_1546]
                                                                            mem[_1547 + 160] = stor5[_1546]
                                                                            mem[_1547 + 192] = stor6[_1546]
                                                                            mem[_1547 + 224] = stor7[_1546]
                                                                            mem[_1547 + 256] = stor8[_1546]
                                                                            mem[_1547 + 288] = bool(stor9[_1546])
                                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                revert with 0, 50
                                                                            else:
                                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1547
                                                                                if idx == -1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                        else:
                                                                            mem[_1575 + 32] = 256 * Mask(248, 0, stor2[_1546].field_8)
                                                                            mem[_1547 + 64] = _1575
                                                                            mem[_1547 + 96] = stor3[_1546]
                                                                            mem[_1547 + 128] = stor4[_1546]
                                                                            mem[_1547 + 160] = stor5[_1546]
                                                                            mem[_1547 + 192] = stor6[_1546]
                                                                            mem[_1547 + 224] = stor7[_1546]
                                                                            mem[_1547 + 256] = stor8[_1546]
                                                                            mem[_1547 + 288] = bool(stor9[_1546])
                                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                revert with 0, 50
                                                                            else:
                                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1547
                                                                                if idx == -1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                            else:
                                                                if bool(stor2[_1546].field_0) == stor2[_1546].field_1 % 128 < 32:
                                                                    revert with 0, 34
                                                                else:
                                                                    if not stor2[_1546].field_1 % 128:
                                                                        mem[_1547 + 64] = _1575
                                                                        mem[_1547 + 96] = stor3[_1546]
                                                                        mem[_1547 + 128] = stor4[_1546]
                                                                        mem[_1547 + 160] = stor5[_1546]
                                                                        mem[_1547 + 192] = stor6[_1546]
                                                                        mem[_1547 + 224] = stor7[_1546]
                                                                        mem[_1547 + 256] = stor8[_1546]
                                                                        mem[_1547 + 288] = bool(stor9[_1546])
                                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                            revert with 0, 50
                                                                        else:
                                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1547
                                                                            if idx == -1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                continue 
                                                                    else:
                                                                        if 31 < stor2[_1546].field_1 % 128:
                                                                            mem[0] = _1546 + 2
                                                                            mem[_1575 + 32] = stor[sha3(_1546 + 2)]
                                                                            s = _1575 + 32
                                                                            t = sha3(_1546 + 2)
                                                                            while _1575 + stor2[_1546].field_1 % 128 > s:
                                                                                mem[s + 32] = stor1[t]
                                                                                s = s + 32
                                                                                t = t + 1
                                                                                continue 
                                                                            mem[_1547 + 64] = _1575
                                                                            mem[_1547 + 96] = stor3[_1546]
                                                                            mem[_1547 + 128] = stor4[_1546]
                                                                            mem[_1547 + 160] = stor5[_1546]
                                                                            mem[_1547 + 192] = stor6[_1546]
                                                                            mem[_1547 + 224] = stor7[_1546]
                                                                            mem[_1547 + 256] = stor8[_1546]
                                                                            mem[_1547 + 288] = bool(stor9[_1546])
                                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                revert with 0, 50
                                                                            else:
                                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1547
                                                                                if idx == -1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                        else:
                                                                            mem[_1575 + 32] = 256 * Mask(248, 0, stor2[_1546].field_8)
                                                                            mem[_1547 + 64] = _1575
                                                                            mem[_1547 + 96] = stor3[_1546]
                                                                            mem[_1547 + 128] = stor4[_1546]
                                                                            mem[_1547 + 160] = stor5[_1546]
                                                                            mem[_1547 + 192] = stor6[_1546]
                                                                            mem[_1547 + 224] = stor7[_1546]
                                                                            mem[_1547 + 256] = stor8[_1546]
                                                                            mem[_1547 + 288] = bool(stor9[_1546])
                                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                revert with 0, 50
                                                                            else:
                                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1547
                                                                                if idx == -1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                    else:
                                                        if bool(stor2[_1546].field_0) == stor2[_1546].field_1 % 128 < 32:
                                                            revert with 0, 34
                                                        else:
                                                            _1577 = mem[64]
                                                            mem[64] = mem[64] + ceil32(stor2[_1546].field_1 % 128) + 32
                                                            mem[_1577] = stor2[_1546].field_1 % 128
                                                            if bool(stor2[_1546].field_0):
                                                                if bool(stor2[_1546].field_0) == uint255(stor2[_1546].field_0) * 0.5 < 32:
                                                                    revert with 0, 34
                                                                else:
                                                                    if not Mask(256, -1, stor2[_1546].field_0):
                                                                        mem[_1547 + 64] = _1577
                                                                        mem[_1547 + 96] = stor3[_1546]
                                                                        mem[_1547 + 128] = stor4[_1546]
                                                                        mem[_1547 + 160] = stor5[_1546]
                                                                        mem[_1547 + 192] = stor6[_1546]
                                                                        mem[_1547 + 224] = stor7[_1546]
                                                                        mem[_1547 + 256] = stor8[_1546]
                                                                        mem[_1547 + 288] = bool(stor9[_1546])
                                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                            revert with 0, 50
                                                                        else:
                                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1547
                                                                            if idx == -1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                continue 
                                                                    else:
                                                                        if 31 < uint255(stor2[_1546].field_0) * 0.5:
                                                                            mem[0] = _1546 + 2
                                                                            mem[_1577 + 32] = stor[sha3(_1546 + 2)]
                                                                            s = _1577 + 32
                                                                            t = sha3(_1546 + 2)
                                                                            while _1577 + (uint255(stor2[_1546].field_0) * 0.5) > s:
                                                                                mem[s + 32] = stor1[t]
                                                                                s = s + 32
                                                                                t = t + 1
                                                                                continue 
                                                                            mem[_1547 + 64] = _1577
                                                                            mem[_1547 + 96] = stor3[_1546]
                                                                            mem[_1547 + 128] = stor4[_1546]
                                                                            mem[_1547 + 160] = stor5[_1546]
                                                                            mem[_1547 + 192] = stor6[_1546]
                                                                            mem[_1547 + 224] = stor7[_1546]
                                                                            mem[_1547 + 256] = stor8[_1546]
                                                                            mem[_1547 + 288] = bool(stor9[_1546])
                                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                revert with 0, 50
                                                                            else:
                                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1547
                                                                                if idx == -1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                        else:
                                                                            mem[_1577 + 32] = 256 * Mask(248, 0, stor2[_1546].field_8)
                                                                            mem[_1547 + 64] = _1577
                                                                            mem[_1547 + 96] = stor3[_1546]
                                                                            mem[_1547 + 128] = stor4[_1546]
                                                                            mem[_1547 + 160] = stor5[_1546]
                                                                            mem[_1547 + 192] = stor6[_1546]
                                                                            mem[_1547 + 224] = stor7[_1546]
                                                                            mem[_1547 + 256] = stor8[_1546]
                                                                            mem[_1547 + 288] = bool(stor9[_1546])
                                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                revert with 0, 50
                                                                            else:
                                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1547
                                                                                if idx == -1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                            else:
                                                                if bool(stor2[_1546].field_0) == stor2[_1546].field_1 % 128 < 32:
                                                                    revert with 0, 34
                                                                else:
                                                                    if not stor2[_1546].field_1 % 128:
                                                                        mem[_1547 + 64] = _1577
                                                                        mem[_1547 + 96] = stor3[_1546]
                                                                        mem[_1547 + 128] = stor4[_1546]
                                                                        mem[_1547 + 160] = stor5[_1546]
                                                                        mem[_1547 + 192] = stor6[_1546]
                                                                        mem[_1547 + 224] = stor7[_1546]
                                                                        mem[_1547 + 256] = stor8[_1546]
                                                                        mem[_1547 + 288] = bool(stor9[_1546])
                                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                            revert with 0, 50
                                                                        else:
                                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1547
                                                                            if idx == -1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                continue 
                                                                    else:
                                                                        if 31 < stor2[_1546].field_1 % 128:
                                                                            mem[0] = _1546 + 2
                                                                            mem[_1577 + 32] = stor[sha3(_1546 + 2)]
                                                                            s = _1577 + 32
                                                                            t = sha3(_1546 + 2)
                                                                            while _1577 + stor2[_1546].field_1 % 128 > s:
                                                                                mem[s + 32] = stor1[t]
                                                                                s = s + 32
                                                                                t = t + 1
                                                                                continue 
                                                                            mem[_1547 + 64] = _1577
                                                                            mem[_1547 + 96] = stor3[_1546]
                                                                            mem[_1547 + 128] = stor4[_1546]
                                                                            mem[_1547 + 160] = stor5[_1546]
                                                                            mem[_1547 + 192] = stor6[_1546]
                                                                            mem[_1547 + 224] = stor7[_1546]
                                                                            mem[_1547 + 256] = stor8[_1546]
                                                                            mem[_1547 + 288] = bool(stor9[_1546])
                                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                revert with 0, 50
                                                                            else:
                                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1547
                                                                                if idx == -1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                        else:
                                                                            mem[_1577 + 32] = 256 * Mask(248, 0, stor2[_1546].field_8)
                                                                            mem[_1547 + 64] = _1577
                                                                            mem[_1547 + 96] = stor3[_1546]
                                                                            mem[_1547 + 128] = stor4[_1546]
                                                                            mem[_1547 + 160] = stor5[_1546]
                                                                            mem[_1547 + 192] = stor6[_1546]
                                                                            mem[_1547 + 224] = stor7[_1546]
                                                                            mem[_1547 + 256] = stor8[_1546]
                                                                            mem[_1547 + 288] = bool(stor9[_1546])
                                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                revert with 0, 50
                                                                            else:
                                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1547
                                                                                if idx == -1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    idx = idx + 1
                                                                                    continue 
                                            _1544 = mem[64]
                                            mem[mem[64]] = 32
                                            _1548 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                            idx = 0
                                            s = ceil32(32 * ('cd', 4).length) + 129
                                            t = mem[64] + (32 * _1548) + 64
                                            u = mem[64] + 64
                                            while idx < _1548:
                                                mem[u] = t + -_1544 - 64
                                                _1649 = mem[s]
                                                mem[t] = mem[mem[s]]
                                                mem[t + 32] = mem[_1649 + 32]
                                                _1652 = mem[_1649 + 64]
                                                mem[t + 64] = 320
                                                _1654 = mem[_1652]
                                                mem[t + 320] = mem[_1652]
                                                v = 0
                                                while v < _1654:
                                                    mem[v + t + 352] = mem[_1652 + v + 32]
                                                    v = v + 32
                                                    continue 
                                                if ceil32(_1654) <= _1654:
                                                    mem[t + 96] = mem[_1649 + 96]
                                                    mem[t + 128] = mem[_1649 + 128]
                                                    mem[t + 160] = mem[_1649 + 160]
                                                    mem[t + 192] = mem[_1649 + 192]
                                                    mem[t + 224] = mem[_1649 + 224]
                                                    mem[t + 256] = mem[_1649 + 256]
                                                    mem[t + 288] = bool(mem[_1649 + 288])
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = ceil32(_1654) + t + 352
                                                    u = u + 32
                                                    continue 
                                                else:
                                                    mem[t + _1654 + 352] = 0
                                                    mem[t + 96] = mem[_1649 + 96]
                                                    mem[t + 128] = mem[_1649 + 128]
                                                    mem[t + 160] = mem[_1649 + 160]
                                                    mem[t + 192] = mem[_1649 + 192]
                                                    mem[t + 224] = mem[_1649 + 224]
                                                    mem[t + 256] = mem[_1649 + 256]
                                                    mem[t + 288] = bool(mem[_1649 + 288])
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = ceil32(_1654) + t + 352
                                                    u = u + 32
                                                    continue 
                                            return memory
                                              from mem[64]
                                               len t - mem[64]
                                    else:
                                        idx = 0
                                        while idx < ('cd', 4).length:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 552
                                                _1319 = sha3(mem[(32 * idx) + 128], 552)
                                                _1320 = mem[64]
                                                mem[64] = mem[64] + 320
                                                mem[_1320] = stor552[mem[(32 * idx) + 128]].field_0
                                                mem[_1320 + 32] = stor1[_1319]
                                                if bool(stor2[_1319].field_0):
                                                    if bool(stor2[_1319].field_0) == uint255(stor2[_1319].field_0) * 0.5 < 32:
                                                        revert with 0, 34
                                                    else:
                                                        _1348 = mem[64]
                                                        mem[64] = mem[64] + ceil32(uint255(stor2[_1319].field_0) * 0.5) + 32
                                                        mem[_1348] = uint255(stor2[_1319].field_0) * 0.5
                                                        if bool(stor2[_1319].field_0):
                                                            if bool(stor2[_1319].field_0) == uint255(stor2[_1319].field_0) * 0.5 < 32:
                                                                revert with 0, 34
                                                            else:
                                                                if not Mask(256, -1, stor2[_1319].field_0):
                                                                    mem[_1320 + 64] = _1348
                                                                    mem[_1320 + 96] = stor3[_1319]
                                                                    mem[_1320 + 128] = stor4[_1319]
                                                                    mem[_1320 + 160] = stor5[_1319]
                                                                    mem[_1320 + 192] = stor6[_1319]
                                                                    mem[_1320 + 224] = stor7[_1319]
                                                                    mem[_1320 + 256] = stor8[_1319]
                                                                    mem[_1320 + 288] = bool(stor9[_1319])
                                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                        revert with 0, 50
                                                                    else:
                                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1320
                                                                        if idx == -1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            idx = idx + 1
                                                                            continue 
                                                                else:
                                                                    if 31 < uint255(stor2[_1319].field_0) * 0.5:
                                                                        mem[0] = _1319 + 2
                                                                        mem[_1348 + 32] = stor[sha3(_1319 + 2)]
                                                                        s = _1348 + 32
                                                                        t = sha3(_1319 + 2)
                                                                        while _1348 + (uint255(stor2[_1319].field_0) * 0.5) > s:
                                                                            mem[s + 32] = stor1[t]
                                                                            s = s + 32
                                                                            t = t + 1
                                                                            continue 
                                                                        mem[_1320 + 64] = _1348
                                                                        mem[_1320 + 96] = stor3[_1319]
                                                                        mem[_1320 + 128] = stor4[_1319]
                                                                        mem[_1320 + 160] = stor5[_1319]
                                                                        mem[_1320 + 192] = stor6[_1319]
                                                                        mem[_1320 + 224] = stor7[_1319]
                                                                        mem[_1320 + 256] = stor8[_1319]
                                                                        mem[_1320 + 288] = bool(stor9[_1319])
                                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                            revert with 0, 50
                                                                        else:
                                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1320
                                                                            if idx == -1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                continue 
                                                                    else:
                                                                        mem[_1348 + 32] = 256 * Mask(248, 0, stor2[_1319].field_8)
                                                                        mem[_1320 + 64] = _1348
                                                                        mem[_1320 + 96] = stor3[_1319]
                                                                        mem[_1320 + 128] = stor4[_1319]
                                                                        mem[_1320 + 160] = stor5[_1319]
                                                                        mem[_1320 + 192] = stor6[_1319]
                                                                        mem[_1320 + 224] = stor7[_1319]
                                                                        mem[_1320 + 256] = stor8[_1319]
                                                                        mem[_1320 + 288] = bool(stor9[_1319])
                                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                            revert with 0, 50
                                                                        else:
                                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1320
                                                                            if idx == -1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                continue 
                                                        else:
                                                            if bool(stor2[_1319].field_0) == stor2[_1319].field_1 % 128 < 32:
                                                                revert with 0, 34
                                                            else:
                                                                if not stor2[_1319].field_1 % 128:
                                                                    mem[_1320 + 64] = _1348
                                                                    mem[_1320 + 96] = stor3[_1319]
                                                                    mem[_1320 + 128] = stor4[_1319]
                                                                    mem[_1320 + 160] = stor5[_1319]
                                                                    mem[_1320 + 192] = stor6[_1319]
                                                                    mem[_1320 + 224] = stor7[_1319]
                                                                    mem[_1320 + 256] = stor8[_1319]
                                                                    mem[_1320 + 288] = bool(stor9[_1319])
                                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                        revert with 0, 50
                                                                    else:
                                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1320
                                                                        if idx == -1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            idx = idx + 1
                                                                            continue 
                                                                else:
                                                                    if 31 < stor2[_1319].field_1 % 128:
                                                                        mem[0] = _1319 + 2
                                                                        mem[_1348 + 32] = stor[sha3(_1319 + 2)]
                                                                        s = _1348 + 32
                                                                        t = sha3(_1319 + 2)
                                                                        while _1348 + stor2[_1319].field_1 % 128 > s:
                                                                            mem[s + 32] = stor1[t]
                                                                            s = s + 32
                                                                            t = t + 1
                                                                            continue 
                                                                        mem[_1320 + 64] = _1348
                                                                        mem[_1320 + 96] = stor3[_1319]
                                                                        mem[_1320 + 128] = stor4[_1319]
                                                                        mem[_1320 + 160] = stor5[_1319]
                                                                        mem[_1320 + 192] = stor6[_1319]
                                                                        mem[_1320 + 224] = stor7[_1319]
                                                                        mem[_1320 + 256] = stor8[_1319]
                                                                        mem[_1320 + 288] = bool(stor9[_1319])
                                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                            revert with 0, 50
                                                                        else:
                                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1320
                                                                            if idx == -1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                continue 
                                                                    else:
                                                                        mem[_1348 + 32] = 256 * Mask(248, 0, stor2[_1319].field_8)
                                                                        mem[_1320 + 64] = _1348
                                                                        mem[_1320 + 96] = stor3[_1319]
                                                                        mem[_1320 + 128] = stor4[_1319]
                                                                        mem[_1320 + 160] = stor5[_1319]
                                                                        mem[_1320 + 192] = stor6[_1319]
                                                                        mem[_1320 + 224] = stor7[_1319]
                                                                        mem[_1320 + 256] = stor8[_1319]
                                                                        mem[_1320 + 288] = bool(stor9[_1319])
                                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                            revert with 0, 50
                                                                        else:
                                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1320
                                                                            if idx == -1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                continue 
                                                else:
                                                    if bool(stor2[_1319].field_0) == stor2[_1319].field_1 % 128 < 32:
                                                        revert with 0, 34
                                                    else:
                                                        _1350 = mem[64]
                                                        mem[64] = mem[64] + ceil32(stor2[_1319].field_1 % 128) + 32
                                                        mem[_1350] = stor2[_1319].field_1 % 128
                                                        if bool(stor2[_1319].field_0):
                                                            if bool(stor2[_1319].field_0) == uint255(stor2[_1319].field_0) * 0.5 < 32:
                                                                revert with 0, 34
                                                            else:
                                                                if not Mask(256, -1, stor2[_1319].field_0):
                                                                    mem[_1320 + 64] = _1350
                                                                    mem[_1320 + 96] = stor3[_1319]
                                                                    mem[_1320 + 128] = stor4[_1319]
                                                                    mem[_1320 + 160] = stor5[_1319]
                                                                    mem[_1320 + 192] = stor6[_1319]
                                                                    mem[_1320 + 224] = stor7[_1319]
                                                                    mem[_1320 + 256] = stor8[_1319]
                                                                    mem[_1320 + 288] = bool(stor9[_1319])
                                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                        revert with 0, 50
                                                                    else:
                                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1320
                                                                        if idx == -1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            idx = idx + 1
                                                                            continue 
                                                                else:
                                                                    if 31 < uint255(stor2[_1319].field_0) * 0.5:
                                                                        mem[0] = _1319 + 2
                                                                        mem[_1350 + 32] = stor[sha3(_1319 + 2)]
                                                                        s = _1350 + 32
                                                                        t = sha3(_1319 + 2)
                                                                        while _1350 + (uint255(stor2[_1319].field_0) * 0.5) > s:
                                                                            mem[s + 32] = stor1[t]
                                                                            s = s + 32
                                                                            t = t + 1
                                                                            continue 
                                                                        mem[_1320 + 64] = _1350
                                                                        mem[_1320 + 96] = stor3[_1319]
                                                                        mem[_1320 + 128] = stor4[_1319]
                                                                        mem[_1320 + 160] = stor5[_1319]
                                                                        mem[_1320 + 192] = stor6[_1319]
                                                                        mem[_1320 + 224] = stor7[_1319]
                                                                        mem[_1320 + 256] = stor8[_1319]
                                                                        mem[_1320 + 288] = bool(stor9[_1319])
                                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                            revert with 0, 50
                                                                        else:
                                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1320
                                                                            if idx == -1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                continue 
                                                                    else:
                                                                        mem[_1350 + 32] = 256 * Mask(248, 0, stor2[_1319].field_8)
                                                                        mem[_1320 + 64] = _1350
                                                                        mem[_1320 + 96] = stor3[_1319]
                                                                        mem[_1320 + 128] = stor4[_1319]
                                                                        mem[_1320 + 160] = stor5[_1319]
                                                                        mem[_1320 + 192] = stor6[_1319]
                                                                        mem[_1320 + 224] = stor7[_1319]
                                                                        mem[_1320 + 256] = stor8[_1319]
                                                                        mem[_1320 + 288] = bool(stor9[_1319])
                                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                            revert with 0, 50
                                                                        else:
                                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1320
                                                                            if idx == -1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                continue 
                                                        else:
                                                            if bool(stor2[_1319].field_0) == stor2[_1319].field_1 % 128 < 32:
                                                                revert with 0, 34
                                                            else:
                                                                if not stor2[_1319].field_1 % 128:
                                                                    mem[_1320 + 64] = _1350
                                                                    mem[_1320 + 96] = stor3[_1319]
                                                                    mem[_1320 + 128] = stor4[_1319]
                                                                    mem[_1320 + 160] = stor5[_1319]
                                                                    mem[_1320 + 192] = stor6[_1319]
                                                                    mem[_1320 + 224] = stor7[_1319]
                                                                    mem[_1320 + 256] = stor8[_1319]
                                                                    mem[_1320 + 288] = bool(stor9[_1319])
                                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                        revert with 0, 50
                                                                    else:
                                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1320
                                                                        if idx == -1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            idx = idx + 1
                                                                            continue 
                                                                else:
                                                                    if 31 < stor2[_1319].field_1 % 128:
                                                                        mem[0] = _1319 + 2
                                                                        mem[_1350 + 32] = stor[sha3(_1319 + 2)]
                                                                        s = _1350 + 32
                                                                        t = sha3(_1319 + 2)
                                                                        while _1350 + stor2[_1319].field_1 % 128 > s:
                                                                            mem[s + 32] = stor1[t]
                                                                            s = s + 32
                                                                            t = t + 1
                                                                            continue 
                                                                        mem[_1320 + 64] = _1350
                                                                        mem[_1320 + 96] = stor3[_1319]
                                                                        mem[_1320 + 128] = stor4[_1319]
                                                                        mem[_1320 + 160] = stor5[_1319]
                                                                        mem[_1320 + 192] = stor6[_1319]
                                                                        mem[_1320 + 224] = stor7[_1319]
                                                                        mem[_1320 + 256] = stor8[_1319]
                                                                        mem[_1320 + 288] = bool(stor9[_1319])
                                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                            revert with 0, 50
                                                                        else:
                                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1320
                                                                            if idx == -1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                continue 
                                                                    else:
                                                                        mem[_1350 + 32] = 256 * Mask(248, 0, stor2[_1319].field_8)
                                                                        mem[_1320 + 64] = _1350
                                                                        mem[_1320 + 96] = stor3[_1319]
                                                                        mem[_1320 + 128] = stor4[_1319]
                                                                        mem[_1320 + 160] = stor5[_1319]
                                                                        mem[_1320 + 192] = stor6[_1319]
                                                                        mem[_1320 + 224] = stor7[_1319]
                                                                        mem[_1320 + 256] = stor8[_1319]
                                                                        mem[_1320 + 288] = bool(stor9[_1319])
                                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                            revert with 0, 50
                                                                        else:
                                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1320
                                                                            if idx == -1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                continue 
                                        _1317 = mem[64]
                                        mem[mem[64]] = 32
                                        _1321 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        idx = 0
                                        s = ceil32(32 * ('cd', 4).length) + 129
                                        t = mem[64] + (32 * _1321) + 64
                                        u = mem[64] + 64
                                        while idx < _1321:
                                            mem[u] = t + -_1317 - 64
                                            _1422 = mem[s]
                                            mem[t] = mem[mem[s]]
                                            mem[t + 32] = mem[_1422 + 32]
                                            _1425 = mem[_1422 + 64]
                                            mem[t + 64] = 320
                                            _1427 = mem[_1425]
                                            mem[t + 320] = mem[_1425]
                                            v = 0
                                            while v < _1427:
                                                mem[v + t + 352] = mem[_1425 + v + 32]
                                                v = v + 32
                                                continue 
                                            if ceil32(_1427) <= _1427:
                                                mem[t + 96] = mem[_1422 + 96]
                                                mem[t + 128] = mem[_1422 + 128]
                                                mem[t + 160] = mem[_1422 + 160]
                                                mem[t + 192] = mem[_1422 + 192]
                                                mem[t + 224] = mem[_1422 + 224]
                                                mem[t + 256] = mem[_1422 + 256]
                                                mem[t + 288] = bool(mem[_1422 + 288])
                                                idx = idx + 1
                                                s = s + 32
                                                t = ceil32(_1427) + t + 352
                                                u = u + 32
                                                continue 
                                            else:
                                                mem[t + _1427 + 352] = 0
                                                mem[t + 96] = mem[_1422 + 96]
                                                mem[t + 128] = mem[_1422 + 128]
                                                mem[t + 160] = mem[_1422 + 160]
                                                mem[t + 192] = mem[_1422 + 192]
                                                mem[t + 224] = mem[_1422 + 224]
                                                mem[t + 256] = mem[_1422 + 256]
                                                mem[t + 288] = bool(mem[_1422 + 288])
                                                idx = idx + 1
                                                s = s + 32
                                                t = ceil32(_1427) + t + 352
                                                u = u + 32
                                                continue 
                                        return memory
                                          from mem[64]
                                           len t - mem[64]
                                else:
                                    idx = 0
                                    while idx < ('cd', 4).length:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 552
                                            _1092 = sha3(mem[(32 * idx) + 128], 552)
                                            _1093 = mem[64]
                                            mem[64] = mem[64] + 320
                                            mem[_1093] = stor552[mem[(32 * idx) + 128]].field_0
                                            mem[_1093 + 32] = stor1[_1092]
                                            if bool(stor2[_1092].field_0):
                                                if bool(stor2[_1092].field_0) == uint255(stor2[_1092].field_0) * 0.5 < 32:
                                                    revert with 0, 34
                                                else:
                                                    _1121 = mem[64]
                                                    mem[64] = mem[64] + ceil32(uint255(stor2[_1092].field_0) * 0.5) + 32
                                                    mem[_1121] = uint255(stor2[_1092].field_0) * 0.5
                                                    if bool(stor2[_1092].field_0):
                                                        if bool(stor2[_1092].field_0) == uint255(stor2[_1092].field_0) * 0.5 < 32:
                                                            revert with 0, 34
                                                        else:
                                                            if not Mask(256, -1, stor2[_1092].field_0):
                                                                mem[_1093 + 64] = _1121
                                                                mem[_1093 + 96] = stor3[_1092]
                                                                mem[_1093 + 128] = stor4[_1092]
                                                                mem[_1093 + 160] = stor5[_1092]
                                                                mem[_1093 + 192] = stor6[_1092]
                                                                mem[_1093 + 224] = stor7[_1092]
                                                                mem[_1093 + 256] = stor8[_1092]
                                                                mem[_1093 + 288] = bool(stor9[_1092])
                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                    revert with 0, 50
                                                                else:
                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1093
                                                                    if idx == -1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        idx = idx + 1
                                                                        continue 
                                                            else:
                                                                if 31 < uint255(stor2[_1092].field_0) * 0.5:
                                                                    mem[0] = _1092 + 2
                                                                    mem[_1121 + 32] = stor[sha3(_1092 + 2)]
                                                                    s = _1121 + 32
                                                                    t = sha3(_1092 + 2)
                                                                    while _1121 + (uint255(stor2[_1092].field_0) * 0.5) > s:
                                                                        mem[s + 32] = stor1[t]
                                                                        s = s + 32
                                                                        t = t + 1
                                                                        continue 
                                                                    mem[_1093 + 64] = _1121
                                                                    mem[_1093 + 96] = stor3[_1092]
                                                                    mem[_1093 + 128] = stor4[_1092]
                                                                    mem[_1093 + 160] = stor5[_1092]
                                                                    mem[_1093 + 192] = stor6[_1092]
                                                                    mem[_1093 + 224] = stor7[_1092]
                                                                    mem[_1093 + 256] = stor8[_1092]
                                                                    mem[_1093 + 288] = bool(stor9[_1092])
                                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                        revert with 0, 50
                                                                    else:
                                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1093
                                                                        if idx == -1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            idx = idx + 1
                                                                            continue 
                                                                else:
                                                                    mem[_1121 + 32] = 256 * Mask(248, 0, stor2[_1092].field_8)
                                                                    mem[_1093 + 64] = _1121
                                                                    mem[_1093 + 96] = stor3[_1092]
                                                                    mem[_1093 + 128] = stor4[_1092]
                                                                    mem[_1093 + 160] = stor5[_1092]
                                                                    mem[_1093 + 192] = stor6[_1092]
                                                                    mem[_1093 + 224] = stor7[_1092]
                                                                    mem[_1093 + 256] = stor8[_1092]
                                                                    mem[_1093 + 288] = bool(stor9[_1092])
                                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                        revert with 0, 50
                                                                    else:
                                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1093
                                                                        if idx == -1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            idx = idx + 1
                                                                            continue 
                                                    else:
                                                        if bool(stor2[_1092].field_0) == stor2[_1092].field_1 % 128 < 32:
                                                            revert with 0, 34
                                                        else:
                                                            if not stor2[_1092].field_1 % 128:
                                                                mem[_1093 + 64] = _1121
                                                                mem[_1093 + 96] = stor3[_1092]
                                                                mem[_1093 + 128] = stor4[_1092]
                                                                mem[_1093 + 160] = stor5[_1092]
                                                                mem[_1093 + 192] = stor6[_1092]
                                                                mem[_1093 + 224] = stor7[_1092]
                                                                mem[_1093 + 256] = stor8[_1092]
                                                                mem[_1093 + 288] = bool(stor9[_1092])
                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                    revert with 0, 50
                                                                else:
                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1093
                                                                    if idx == -1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        idx = idx + 1
                                                                        continue 
                                                            else:
                                                                if 31 < stor2[_1092].field_1 % 128:
                                                                    mem[0] = _1092 + 2
                                                                    mem[_1121 + 32] = stor[sha3(_1092 + 2)]
                                                                    s = _1121 + 32
                                                                    t = sha3(_1092 + 2)
                                                                    while _1121 + stor2[_1092].field_1 % 128 > s:
                                                                        mem[s + 32] = stor1[t]
                                                                        s = s + 32
                                                                        t = t + 1
                                                                        continue 
                                                                    mem[_1093 + 64] = _1121
                                                                    mem[_1093 + 96] = stor3[_1092]
                                                                    mem[_1093 + 128] = stor4[_1092]
                                                                    mem[_1093 + 160] = stor5[_1092]
                                                                    mem[_1093 + 192] = stor6[_1092]
                                                                    mem[_1093 + 224] = stor7[_1092]
                                                                    mem[_1093 + 256] = stor8[_1092]
                                                                    mem[_1093 + 288] = bool(stor9[_1092])
                                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                        revert with 0, 50
                                                                    else:
                                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1093
                                                                        if idx == -1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            idx = idx + 1
                                                                            continue 
                                                                else:
                                                                    mem[_1121 + 32] = 256 * Mask(248, 0, stor2[_1092].field_8)
                                                                    mem[_1093 + 64] = _1121
                                                                    mem[_1093 + 96] = stor3[_1092]
                                                                    mem[_1093 + 128] = stor4[_1092]
                                                                    mem[_1093 + 160] = stor5[_1092]
                                                                    mem[_1093 + 192] = stor6[_1092]
                                                                    mem[_1093 + 224] = stor7[_1092]
                                                                    mem[_1093 + 256] = stor8[_1092]
                                                                    mem[_1093 + 288] = bool(stor9[_1092])
                                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                        revert with 0, 50
                                                                    else:
                                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1093
                                                                        if idx == -1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            idx = idx + 1
                                                                            continue 
                                            else:
                                                if bool(stor2[_1092].field_0) == stor2[_1092].field_1 % 128 < 32:
                                                    revert with 0, 34
                                                else:
                                                    _1123 = mem[64]
                                                    mem[64] = mem[64] + ceil32(stor2[_1092].field_1 % 128) + 32
                                                    mem[_1123] = stor2[_1092].field_1 % 128
                                                    if bool(stor2[_1092].field_0):
                                                        if bool(stor2[_1092].field_0) == uint255(stor2[_1092].field_0) * 0.5 < 32:
                                                            revert with 0, 34
                                                        else:
                                                            if not Mask(256, -1, stor2[_1092].field_0):
                                                                mem[_1093 + 64] = _1123
                                                                mem[_1093 + 96] = stor3[_1092]
                                                                mem[_1093 + 128] = stor4[_1092]
                                                                mem[_1093 + 160] = stor5[_1092]
                                                                mem[_1093 + 192] = stor6[_1092]
                                                                mem[_1093 + 224] = stor7[_1092]
                                                                mem[_1093 + 256] = stor8[_1092]
                                                                mem[_1093 + 288] = bool(stor9[_1092])
                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                    revert with 0, 50
                                                                else:
                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1093
                                                                    if idx == -1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        idx = idx + 1
                                                                        continue 
                                                            else:
                                                                if 31 < uint255(stor2[_1092].field_0) * 0.5:
                                                                    mem[0] = _1092 + 2
                                                                    mem[_1123 + 32] = stor[sha3(_1092 + 2)]
                                                                    s = _1123 + 32
                                                                    t = sha3(_1092 + 2)
                                                                    while _1123 + (uint255(stor2[_1092].field_0) * 0.5) > s:
                                                                        mem[s + 32] = stor1[t]
                                                                        s = s + 32
                                                                        t = t + 1
                                                                        continue 
                                                                    mem[_1093 + 64] = _1123
                                                                    mem[_1093 + 96] = stor3[_1092]
                                                                    mem[_1093 + 128] = stor4[_1092]
                                                                    mem[_1093 + 160] = stor5[_1092]
                                                                    mem[_1093 + 192] = stor6[_1092]
                                                                    mem[_1093 + 224] = stor7[_1092]
                                                                    mem[_1093 + 256] = stor8[_1092]
                                                                    mem[_1093 + 288] = bool(stor9[_1092])
                                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                        revert with 0, 50
                                                                    else:
                                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1093
                                                                        if idx == -1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            idx = idx + 1
                                                                            continue 
                                                                else:
                                                                    mem[_1123 + 32] = 256 * Mask(248, 0, stor2[_1092].field_8)
                                                                    mem[_1093 + 64] = _1123
                                                                    mem[_1093 + 96] = stor3[_1092]
                                                                    mem[_1093 + 128] = stor4[_1092]
                                                                    mem[_1093 + 160] = stor5[_1092]
                                                                    mem[_1093 + 192] = stor6[_1092]
                                                                    mem[_1093 + 224] = stor7[_1092]
                                                                    mem[_1093 + 256] = stor8[_1092]
                                                                    mem[_1093 + 288] = bool(stor9[_1092])
                                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                        revert with 0, 50
                                                                    else:
                                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1093
                                                                        if idx == -1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            idx = idx + 1
                                                                            continue 
                                                    else:
                                                        if bool(stor2[_1092].field_0) == stor2[_1092].field_1 % 128 < 32:
                                                            revert with 0, 34
                                                        else:
                                                            if not stor2[_1092].field_1 % 128:
                                                                mem[_1093 + 64] = _1123
                                                                mem[_1093 + 96] = stor3[_1092]
                                                                mem[_1093 + 128] = stor4[_1092]
                                                                mem[_1093 + 160] = stor5[_1092]
                                                                mem[_1093 + 192] = stor6[_1092]
                                                                mem[_1093 + 224] = stor7[_1092]
                                                                mem[_1093 + 256] = stor8[_1092]
                                                                mem[_1093 + 288] = bool(stor9[_1092])
                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                    revert with 0, 50
                                                                else:
                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1093
                                                                    if idx == -1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        idx = idx + 1
                                                                        continue 
                                                            else:
                                                                if 31 < stor2[_1092].field_1 % 128:
                                                                    mem[0] = _1092 + 2
                                                                    mem[_1123 + 32] = stor[sha3(_1092 + 2)]
                                                                    s = _1123 + 32
                                                                    t = sha3(_1092 + 2)
                                                                    while _1123 + stor2[_1092].field_1 % 128 > s:
                                                                        mem[s + 32] = stor1[t]
                                                                        s = s + 32
                                                                        t = t + 1
                                                                        continue 
                                                                    mem[_1093 + 64] = _1123
                                                                    mem[_1093 + 96] = stor3[_1092]
                                                                    mem[_1093 + 128] = stor4[_1092]
                                                                    mem[_1093 + 160] = stor5[_1092]
                                                                    mem[_1093 + 192] = stor6[_1092]
                                                                    mem[_1093 + 224] = stor7[_1092]
                                                                    mem[_1093 + 256] = stor8[_1092]
                                                                    mem[_1093 + 288] = bool(stor9[_1092])
                                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                        revert with 0, 50
                                                                    else:
                                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1093
                                                                        if idx == -1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            idx = idx + 1
                                                                            continue 
                                                                else:
                                                                    mem[_1123 + 32] = 256 * Mask(248, 0, stor2[_1092].field_8)
                                                                    mem[_1093 + 64] = _1123
                                                                    mem[_1093 + 96] = stor3[_1092]
                                                                    mem[_1093 + 128] = stor4[_1092]
                                                                    mem[_1093 + 160] = stor5[_1092]
                                                                    mem[_1093 + 192] = stor6[_1092]
                                                                    mem[_1093 + 224] = stor7[_1092]
                                                                    mem[_1093 + 256] = stor8[_1092]
                                                                    mem[_1093 + 288] = bool(stor9[_1092])
                                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                        revert with 0, 50
                                                                    else:
                                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1093
                                                                        if idx == -1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            idx = idx + 1
                                                                            continue 
                                    _1090 = mem[64]
                                    mem[mem[64]] = 32
                                    _1094 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    idx = 0
                                    s = ceil32(32 * ('cd', 4).length) + 129
                                    t = mem[64] + (32 * _1094) + 64
                                    u = mem[64] + 64
                                    while idx < _1094:
                                        mem[u] = t + -_1090 - 64
                                        _1195 = mem[s]
                                        mem[t] = mem[mem[s]]
                                        mem[t + 32] = mem[_1195 + 32]
                                        _1198 = mem[_1195 + 64]
                                        mem[t + 64] = 320
                                        _1200 = mem[_1198]
                                        mem[t + 320] = mem[_1198]
                                        v = 0
                                        while v < _1200:
                                            mem[v + t + 352] = mem[_1198 + v + 32]
                                            v = v + 32
                                            continue 
                                        if ceil32(_1200) <= _1200:
                                            mem[t + 96] = mem[_1195 + 96]
                                            mem[t + 128] = mem[_1195 + 128]
                                            mem[t + 160] = mem[_1195 + 160]
                                            mem[t + 192] = mem[_1195 + 192]
                                            mem[t + 224] = mem[_1195 + 224]
                                            mem[t + 256] = mem[_1195 + 256]
                                            mem[t + 288] = bool(mem[_1195 + 288])
                                            idx = idx + 1
                                            s = s + 32
                                            t = ceil32(_1200) + t + 352
                                            u = u + 32
                                            continue 
                                        else:
                                            mem[t + _1200 + 352] = 0
                                            mem[t + 96] = mem[_1195 + 96]
                                            mem[t + 128] = mem[_1195 + 128]
                                            mem[t + 160] = mem[_1195 + 160]
                                            mem[t + 192] = mem[_1195 + 192]
                                            mem[t + 224] = mem[_1195 + 224]
                                            mem[t + 256] = mem[_1195 + 256]
                                            mem[t + 288] = bool(mem[_1195 + 288])
                                            idx = idx + 1
                                            s = s + 32
                                            t = ceil32(_1200) + t + 352
                                            u = u + 32
                                            continue 
                                    return memory
                                      from mem[64]
                                       len t - mem[64]
                            else:
                                idx = 0
                                while idx < ('cd', 4).length:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    else:
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 552
                                        _865 = sha3(mem[(32 * idx) + 128], 552)
                                        _866 = mem[64]
                                        mem[64] = mem[64] + 320
                                        mem[_866] = stor552[mem[(32 * idx) + 128]].field_0
                                        mem[_866 + 32] = stor1[_865]
                                        if bool(stor2[_865].field_0):
                                            if bool(stor2[_865].field_0) == uint255(stor2[_865].field_0) * 0.5 < 32:
                                                revert with 0, 34
                                            else:
                                                _894 = mem[64]
                                                mem[64] = mem[64] + ceil32(uint255(stor2[_865].field_0) * 0.5) + 32
                                                mem[_894] = uint255(stor2[_865].field_0) * 0.5
                                                if bool(stor2[_865].field_0):
                                                    if bool(stor2[_865].field_0) == uint255(stor2[_865].field_0) * 0.5 < 32:
                                                        revert with 0, 34
                                                    else:
                                                        if not Mask(256, -1, stor2[_865].field_0):
                                                            mem[_866 + 64] = _894
                                                            mem[_866 + 96] = stor3[_865]
                                                            mem[_866 + 128] = stor4[_865]
                                                            mem[_866 + 160] = stor5[_865]
                                                            mem[_866 + 192] = stor6[_865]
                                                            mem[_866 + 224] = stor7[_865]
                                                            mem[_866 + 256] = stor8[_865]
                                                            mem[_866 + 288] = bool(stor9[_865])
                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                revert with 0, 50
                                                            else:
                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _866
                                                                if idx == -1:
                                                                    revert with 0, 17
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                                        else:
                                                            if 31 < uint255(stor2[_865].field_0) * 0.5:
                                                                mem[0] = _865 + 2
                                                                mem[_894 + 32] = stor[sha3(_865 + 2)]
                                                                s = _894 + 32
                                                                t = sha3(_865 + 2)
                                                                while _894 + (uint255(stor2[_865].field_0) * 0.5) > s:
                                                                    mem[s + 32] = stor1[t]
                                                                    s = s + 32
                                                                    t = t + 1
                                                                    continue 
                                                                mem[_866 + 64] = _894
                                                                mem[_866 + 96] = stor3[_865]
                                                                mem[_866 + 128] = stor4[_865]
                                                                mem[_866 + 160] = stor5[_865]
                                                                mem[_866 + 192] = stor6[_865]
                                                                mem[_866 + 224] = stor7[_865]
                                                                mem[_866 + 256] = stor8[_865]
                                                                mem[_866 + 288] = bool(stor9[_865])
                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                    revert with 0, 50
                                                                else:
                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _866
                                                                    if idx == -1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        idx = idx + 1
                                                                        continue 
                                                            else:
                                                                mem[_894 + 32] = 256 * Mask(248, 0, stor2[_865].field_8)
                                                                mem[_866 + 64] = _894
                                                                mem[_866 + 96] = stor3[_865]
                                                                mem[_866 + 128] = stor4[_865]
                                                                mem[_866 + 160] = stor5[_865]
                                                                mem[_866 + 192] = stor6[_865]
                                                                mem[_866 + 224] = stor7[_865]
                                                                mem[_866 + 256] = stor8[_865]
                                                                mem[_866 + 288] = bool(stor9[_865])
                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                    revert with 0, 50
                                                                else:
                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _866
                                                                    if idx == -1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        idx = idx + 1
                                                                        continue 
                                                else:
                                                    if bool(stor2[_865].field_0) == stor2[_865].field_1 % 128 < 32:
                                                        revert with 0, 34
                                                    else:
                                                        if not stor2[_865].field_1 % 128:
                                                            mem[_866 + 64] = _894
                                                            mem[_866 + 96] = stor3[_865]
                                                            mem[_866 + 128] = stor4[_865]
                                                            mem[_866 + 160] = stor5[_865]
                                                            mem[_866 + 192] = stor6[_865]
                                                            mem[_866 + 224] = stor7[_865]
                                                            mem[_866 + 256] = stor8[_865]
                                                            mem[_866 + 288] = bool(stor9[_865])
                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                revert with 0, 50
                                                            else:
                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _866
                                                                if idx == -1:
                                                                    revert with 0, 17
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                                        else:
                                                            if 31 < stor2[_865].field_1 % 128:
                                                                mem[0] = _865 + 2
                                                                mem[_894 + 32] = stor[sha3(_865 + 2)]
                                                                s = _894 + 32
                                                                t = sha3(_865 + 2)
                                                                while _894 + stor2[_865].field_1 % 128 > s:
                                                                    mem[s + 32] = stor1[t]
                                                                    s = s + 32
                                                                    t = t + 1
                                                                    continue 
                                                                mem[_866 + 64] = _894
                                                                mem[_866 + 96] = stor3[_865]
                                                                mem[_866 + 128] = stor4[_865]
                                                                mem[_866 + 160] = stor5[_865]
                                                                mem[_866 + 192] = stor6[_865]
                                                                mem[_866 + 224] = stor7[_865]
                                                                mem[_866 + 256] = stor8[_865]
                                                                mem[_866 + 288] = bool(stor9[_865])
                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                    revert with 0, 50
                                                                else:
                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _866
                                                                    if idx == -1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        idx = idx + 1
                                                                        continue 
                                                            else:
                                                                mem[_894 + 32] = 256 * Mask(248, 0, stor2[_865].field_8)
                                                                mem[_866 + 64] = _894
                                                                mem[_866 + 96] = stor3[_865]
                                                                mem[_866 + 128] = stor4[_865]
                                                                mem[_866 + 160] = stor5[_865]
                                                                mem[_866 + 192] = stor6[_865]
                                                                mem[_866 + 224] = stor7[_865]
                                                                mem[_866 + 256] = stor8[_865]
                                                                mem[_866 + 288] = bool(stor9[_865])
                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                    revert with 0, 50
                                                                else:
                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _866
                                                                    if idx == -1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        idx = idx + 1
                                                                        continue 
                                        else:
                                            if bool(stor2[_865].field_0) == stor2[_865].field_1 % 128 < 32:
                                                revert with 0, 34
                                            else:
                                                _896 = mem[64]
                                                mem[64] = mem[64] + ceil32(stor2[_865].field_1 % 128) + 32
                                                mem[_896] = stor2[_865].field_1 % 128
                                                if bool(stor2[_865].field_0):
                                                    if bool(stor2[_865].field_0) == uint255(stor2[_865].field_0) * 0.5 < 32:
                                                        revert with 0, 34
                                                    else:
                                                        if not Mask(256, -1, stor2[_865].field_0):
                                                            mem[_866 + 64] = _896
                                                            mem[_866 + 96] = stor3[_865]
                                                            mem[_866 + 128] = stor4[_865]
                                                            mem[_866 + 160] = stor5[_865]
                                                            mem[_866 + 192] = stor6[_865]
                                                            mem[_866 + 224] = stor7[_865]
                                                            mem[_866 + 256] = stor8[_865]
                                                            mem[_866 + 288] = bool(stor9[_865])
                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                revert with 0, 50
                                                            else:
                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _866
                                                                if idx == -1:
                                                                    revert with 0, 17
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                                        else:
                                                            if 31 < uint255(stor2[_865].field_0) * 0.5:
                                                                mem[0] = _865 + 2
                                                                mem[_896 + 32] = stor[sha3(_865 + 2)]
                                                                s = _896 + 32
                                                                t = sha3(_865 + 2)
                                                                while _896 + (uint255(stor2[_865].field_0) * 0.5) > s:
                                                                    mem[s + 32] = stor1[t]
                                                                    s = s + 32
                                                                    t = t + 1
                                                                    continue 
                                                                mem[_866 + 64] = _896
                                                                mem[_866 + 96] = stor3[_865]
                                                                mem[_866 + 128] = stor4[_865]
                                                                mem[_866 + 160] = stor5[_865]
                                                                mem[_866 + 192] = stor6[_865]
                                                                mem[_866 + 224] = stor7[_865]
                                                                mem[_866 + 256] = stor8[_865]
                                                                mem[_866 + 288] = bool(stor9[_865])
                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                    revert with 0, 50
                                                                else:
                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _866
                                                                    if idx == -1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        idx = idx + 1
                                                                        continue 
                                                            else:
                                                                mem[_896 + 32] = 256 * Mask(248, 0, stor2[_865].field_8)
                                                                mem[_866 + 64] = _896
                                                                mem[_866 + 96] = stor3[_865]
                                                                mem[_866 + 128] = stor4[_865]
                                                                mem[_866 + 160] = stor5[_865]
                                                                mem[_866 + 192] = stor6[_865]
                                                                mem[_866 + 224] = stor7[_865]
                                                                mem[_866 + 256] = stor8[_865]
                                                                mem[_866 + 288] = bool(stor9[_865])
                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                    revert with 0, 50
                                                                else:
                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _866
                                                                    if idx == -1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        idx = idx + 1
                                                                        continue 
                                                else:
                                                    if bool(stor2[_865].field_0) == stor2[_865].field_1 % 128 < 32:
                                                        revert with 0, 34
                                                    else:
                                                        if not stor2[_865].field_1 % 128:
                                                            mem[_866 + 64] = _896
                                                            mem[_866 + 96] = stor3[_865]
                                                            mem[_866 + 128] = stor4[_865]
                                                            mem[_866 + 160] = stor5[_865]
                                                            mem[_866 + 192] = stor6[_865]
                                                            mem[_866 + 224] = stor7[_865]
                                                            mem[_866 + 256] = stor8[_865]
                                                            mem[_866 + 288] = bool(stor9[_865])
                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                revert with 0, 50
                                                            else:
                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _866
                                                                if idx == -1:
                                                                    revert with 0, 17
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                                        else:
                                                            if 31 < stor2[_865].field_1 % 128:
                                                                mem[0] = _865 + 2
                                                                mem[_896 + 32] = stor[sha3(_865 + 2)]
                                                                s = _896 + 32
                                                                t = sha3(_865 + 2)
                                                                while _896 + stor2[_865].field_1 % 128 > s:
                                                                    mem[s + 32] = stor1[t]
                                                                    s = s + 32
                                                                    t = t + 1
                                                                    continue 
                                                                mem[_866 + 64] = _896
                                                                mem[_866 + 96] = stor3[_865]
                                                                mem[_866 + 128] = stor4[_865]
                                                                mem[_866 + 160] = stor5[_865]
                                                                mem[_866 + 192] = stor6[_865]
                                                                mem[_866 + 224] = stor7[_865]
                                                                mem[_866 + 256] = stor8[_865]
                                                                mem[_866 + 288] = bool(stor9[_865])
                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                    revert with 0, 50
                                                                else:
                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _866
                                                                    if idx == -1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        idx = idx + 1
                                                                        continue 
                                                            else:
                                                                mem[_896 + 32] = 256 * Mask(248, 0, stor2[_865].field_8)
                                                                mem[_866 + 64] = _896
                                                                mem[_866 + 96] = stor3[_865]
                                                                mem[_866 + 128] = stor4[_865]
                                                                mem[_866 + 160] = stor5[_865]
                                                                mem[_866 + 192] = stor6[_865]
                                                                mem[_866 + 224] = stor7[_865]
                                                                mem[_866 + 256] = stor8[_865]
                                                                mem[_866 + 288] = bool(stor9[_865])
                                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                    revert with 0, 50
                                                                else:
                                                                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _866
                                                                    if idx == -1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        idx = idx + 1
                                                                        continue 
                                _863 = mem[64]
                                mem[mem[64]] = 32
                                _867 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                idx = 0
                                s = ceil32(32 * ('cd', 4).length) + 129
                                t = mem[64] + (32 * _867) + 64
                                u = mem[64] + 64
                                while idx < _867:
                                    mem[u] = t + -_863 - 64
                                    _968 = mem[s]
                                    mem[t] = mem[mem[s]]
                                    mem[t + 32] = mem[_968 + 32]
                                    _971 = mem[_968 + 64]
                                    mem[t + 64] = 320
                                    _973 = mem[_971]
                                    mem[t + 320] = mem[_971]
                                    v = 0
                                    while v < _973:
                                        mem[v + t + 352] = mem[_971 + v + 32]
                                        v = v + 32
                                        continue 
                                    if ceil32(_973) <= _973:
                                        mem[t + 96] = mem[_968 + 96]
                                        mem[t + 128] = mem[_968 + 128]
                                        mem[t + 160] = mem[_968 + 160]
                                        mem[t + 192] = mem[_968 + 192]
                                        mem[t + 224] = mem[_968 + 224]
                                        mem[t + 256] = mem[_968 + 256]
                                        mem[t + 288] = bool(mem[_968 + 288])
                                        idx = idx + 1
                                        s = s + 32
                                        t = ceil32(_973) + t + 352
                                        u = u + 32
                                        continue 
                                    else:
                                        mem[t + _973 + 352] = 0
                                        mem[t + 96] = mem[_968 + 96]
                                        mem[t + 128] = mem[_968 + 128]
                                        mem[t + 160] = mem[_968 + 160]
                                        mem[t + 192] = mem[_968 + 192]
                                        mem[t + 224] = mem[_968 + 224]
                                        mem[t + 256] = mem[_968 + 256]
                                        mem[t + 288] = bool(mem[_968 + 288])
                                        idx = idx + 1
                                        s = s + 32
                                        t = ceil32(_973) + t + 352
                                        u = u + 32
                                        continue 
                                return memory
                                  from mem[64]
                                   len t - mem[64]
                        else:
                            idx = 0
                            while idx < ('cd', 4).length:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                else:
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 552
                                    _638 = sha3(mem[(32 * idx) + 128], 552)
                                    _639 = mem[64]
                                    mem[64] = mem[64] + 320
                                    mem[_639] = stor552[mem[(32 * idx) + 128]].field_0
                                    mem[_639 + 32] = stor1[_638]
                                    if bool(stor2[_638].field_0):
                                        if bool(stor2[_638].field_0) == uint255(stor2[_638].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        else:
                                            _667 = mem[64]
                                            mem[64] = mem[64] + ceil32(uint255(stor2[_638].field_0) * 0.5) + 32
                                            mem[_667] = uint255(stor2[_638].field_0) * 0.5
                                            if bool(stor2[_638].field_0):
                                                if bool(stor2[_638].field_0) == uint255(stor2[_638].field_0) * 0.5 < 32:
                                                    revert with 0, 34
                                                else:
                                                    if not Mask(256, -1, stor2[_638].field_0):
                                                        mem[_639 + 64] = _667
                                                        mem[_639 + 96] = stor3[_638]
                                                        mem[_639 + 128] = stor4[_638]
                                                        mem[_639 + 160] = stor5[_638]
                                                        mem[_639 + 192] = stor6[_638]
                                                        mem[_639 + 224] = stor7[_638]
                                                        mem[_639 + 256] = stor8[_638]
                                                        mem[_639 + 288] = bool(stor9[_638])
                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                            revert with 0, 50
                                                        else:
                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _639
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
                                                    else:
                                                        if 31 < uint255(stor2[_638].field_0) * 0.5:
                                                            mem[0] = _638 + 2
                                                            mem[_667 + 32] = stor[sha3(_638 + 2)]
                                                            s = _667 + 32
                                                            t = sha3(_638 + 2)
                                                            while _667 + (uint255(stor2[_638].field_0) * 0.5) > s:
                                                                mem[s + 32] = stor1[t]
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            mem[_639 + 64] = _667
                                                            mem[_639 + 96] = stor3[_638]
                                                            mem[_639 + 128] = stor4[_638]
                                                            mem[_639 + 160] = stor5[_638]
                                                            mem[_639 + 192] = stor6[_638]
                                                            mem[_639 + 224] = stor7[_638]
                                                            mem[_639 + 256] = stor8[_638]
                                                            mem[_639 + 288] = bool(stor9[_638])
                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                revert with 0, 50
                                                            else:
                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _639
                                                                if idx == -1:
                                                                    revert with 0, 17
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                                        else:
                                                            mem[_667 + 32] = 256 * Mask(248, 0, stor2[_638].field_8)
                                                            mem[_639 + 64] = _667
                                                            mem[_639 + 96] = stor3[_638]
                                                            mem[_639 + 128] = stor4[_638]
                                                            mem[_639 + 160] = stor5[_638]
                                                            mem[_639 + 192] = stor6[_638]
                                                            mem[_639 + 224] = stor7[_638]
                                                            mem[_639 + 256] = stor8[_638]
                                                            mem[_639 + 288] = bool(stor9[_638])
                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                revert with 0, 50
                                                            else:
                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _639
                                                                if idx == -1:
                                                                    revert with 0, 17
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                            else:
                                                if bool(stor2[_638].field_0) == stor2[_638].field_1 % 128 < 32:
                                                    revert with 0, 34
                                                else:
                                                    if not stor2[_638].field_1 % 128:
                                                        mem[_639 + 64] = _667
                                                        mem[_639 + 96] = stor3[_638]
                                                        mem[_639 + 128] = stor4[_638]
                                                        mem[_639 + 160] = stor5[_638]
                                                        mem[_639 + 192] = stor6[_638]
                                                        mem[_639 + 224] = stor7[_638]
                                                        mem[_639 + 256] = stor8[_638]
                                                        mem[_639 + 288] = bool(stor9[_638])
                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                            revert with 0, 50
                                                        else:
                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _639
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
                                                    else:
                                                        if 31 < stor2[_638].field_1 % 128:
                                                            mem[0] = _638 + 2
                                                            mem[_667 + 32] = stor[sha3(_638 + 2)]
                                                            s = _667 + 32
                                                            t = sha3(_638 + 2)
                                                            while _667 + stor2[_638].field_1 % 128 > s:
                                                                mem[s + 32] = stor1[t]
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            mem[_639 + 64] = _667
                                                            mem[_639 + 96] = stor3[_638]
                                                            mem[_639 + 128] = stor4[_638]
                                                            mem[_639 + 160] = stor5[_638]
                                                            mem[_639 + 192] = stor6[_638]
                                                            mem[_639 + 224] = stor7[_638]
                                                            mem[_639 + 256] = stor8[_638]
                                                            mem[_639 + 288] = bool(stor9[_638])
                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                revert with 0, 50
                                                            else:
                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _639
                                                                if idx == -1:
                                                                    revert with 0, 17
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                                        else:
                                                            mem[_667 + 32] = 256 * Mask(248, 0, stor2[_638].field_8)
                                                            mem[_639 + 64] = _667
                                                            mem[_639 + 96] = stor3[_638]
                                                            mem[_639 + 128] = stor4[_638]
                                                            mem[_639 + 160] = stor5[_638]
                                                            mem[_639 + 192] = stor6[_638]
                                                            mem[_639 + 224] = stor7[_638]
                                                            mem[_639 + 256] = stor8[_638]
                                                            mem[_639 + 288] = bool(stor9[_638])
                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                revert with 0, 50
                                                            else:
                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _639
                                                                if idx == -1:
                                                                    revert with 0, 17
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                    else:
                                        if bool(stor2[_638].field_0) == stor2[_638].field_1 % 128 < 32:
                                            revert with 0, 34
                                        else:
                                            _669 = mem[64]
                                            mem[64] = mem[64] + ceil32(stor2[_638].field_1 % 128) + 32
                                            mem[_669] = stor2[_638].field_1 % 128
                                            if bool(stor2[_638].field_0):
                                                if bool(stor2[_638].field_0) == uint255(stor2[_638].field_0) * 0.5 < 32:
                                                    revert with 0, 34
                                                else:
                                                    if not Mask(256, -1, stor2[_638].field_0):
                                                        mem[_639 + 64] = _669
                                                        mem[_639 + 96] = stor3[_638]
                                                        mem[_639 + 128] = stor4[_638]
                                                        mem[_639 + 160] = stor5[_638]
                                                        mem[_639 + 192] = stor6[_638]
                                                        mem[_639 + 224] = stor7[_638]
                                                        mem[_639 + 256] = stor8[_638]
                                                        mem[_639 + 288] = bool(stor9[_638])
                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                            revert with 0, 50
                                                        else:
                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _639
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
                                                    else:
                                                        if 31 < uint255(stor2[_638].field_0) * 0.5:
                                                            mem[0] = _638 + 2
                                                            mem[_669 + 32] = stor[sha3(_638 + 2)]
                                                            s = _669 + 32
                                                            t = sha3(_638 + 2)
                                                            while _669 + (uint255(stor2[_638].field_0) * 0.5) > s:
                                                                mem[s + 32] = stor1[t]
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            mem[_639 + 64] = _669
                                                            mem[_639 + 96] = stor3[_638]
                                                            mem[_639 + 128] = stor4[_638]
                                                            mem[_639 + 160] = stor5[_638]
                                                            mem[_639 + 192] = stor6[_638]
                                                            mem[_639 + 224] = stor7[_638]
                                                            mem[_639 + 256] = stor8[_638]
                                                            mem[_639 + 288] = bool(stor9[_638])
                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                revert with 0, 50
                                                            else:
                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _639
                                                                if idx == -1:
                                                                    revert with 0, 17
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                                        else:
                                                            mem[_669 + 32] = 256 * Mask(248, 0, stor2[_638].field_8)
                                                            mem[_639 + 64] = _669
                                                            mem[_639 + 96] = stor3[_638]
                                                            mem[_639 + 128] = stor4[_638]
                                                            mem[_639 + 160] = stor5[_638]
                                                            mem[_639 + 192] = stor6[_638]
                                                            mem[_639 + 224] = stor7[_638]
                                                            mem[_639 + 256] = stor8[_638]
                                                            mem[_639 + 288] = bool(stor9[_638])
                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                revert with 0, 50
                                                            else:
                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _639
                                                                if idx == -1:
                                                                    revert with 0, 17
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                            else:
                                                if bool(stor2[_638].field_0) == stor2[_638].field_1 % 128 < 32:
                                                    revert with 0, 34
                                                else:
                                                    if not stor2[_638].field_1 % 128:
                                                        mem[_639 + 64] = _669
                                                        mem[_639 + 96] = stor3[_638]
                                                        mem[_639 + 128] = stor4[_638]
                                                        mem[_639 + 160] = stor5[_638]
                                                        mem[_639 + 192] = stor6[_638]
                                                        mem[_639 + 224] = stor7[_638]
                                                        mem[_639 + 256] = stor8[_638]
                                                        mem[_639 + 288] = bool(stor9[_638])
                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                            revert with 0, 50
                                                        else:
                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _639
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
                                                    else:
                                                        if 31 < stor2[_638].field_1 % 128:
                                                            mem[0] = _638 + 2
                                                            mem[_669 + 32] = stor[sha3(_638 + 2)]
                                                            s = _669 + 32
                                                            t = sha3(_638 + 2)
                                                            while _669 + stor2[_638].field_1 % 128 > s:
                                                                mem[s + 32] = stor1[t]
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            mem[_639 + 64] = _669
                                                            mem[_639 + 96] = stor3[_638]
                                                            mem[_639 + 128] = stor4[_638]
                                                            mem[_639 + 160] = stor5[_638]
                                                            mem[_639 + 192] = stor6[_638]
                                                            mem[_639 + 224] = stor7[_638]
                                                            mem[_639 + 256] = stor8[_638]
                                                            mem[_639 + 288] = bool(stor9[_638])
                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                revert with 0, 50
                                                            else:
                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _639
                                                                if idx == -1:
                                                                    revert with 0, 17
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                                        else:
                                                            mem[_669 + 32] = 256 * Mask(248, 0, stor2[_638].field_8)
                                                            mem[_639 + 64] = _669
                                                            mem[_639 + 96] = stor3[_638]
                                                            mem[_639 + 128] = stor4[_638]
                                                            mem[_639 + 160] = stor5[_638]
                                                            mem[_639 + 192] = stor6[_638]
                                                            mem[_639 + 224] = stor7[_638]
                                                            mem[_639 + 256] = stor8[_638]
                                                            mem[_639 + 288] = bool(stor9[_638])
                                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                revert with 0, 50
                                                            else:
                                                                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _639
                                                                if idx == -1:
                                                                    revert with 0, 17
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                            _636 = mem[64]
                            mem[mem[64]] = 32
                            _640 = mem[ceil32(32 * ('cd', 4).length) + 97]
                            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                            idx = 0
                            s = ceil32(32 * ('cd', 4).length) + 129
                            t = mem[64] + (32 * _640) + 64
                            u = mem[64] + 64
                            while idx < _640:
                                mem[u] = t + -_636 - 64
                                _741 = mem[s]
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_741 + 32]
                                _744 = mem[_741 + 64]
                                mem[t + 64] = 320
                                _746 = mem[_744]
                                mem[t + 320] = mem[_744]
                                v = 0
                                while v < _746:
                                    mem[v + t + 352] = mem[_744 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_746) <= _746:
                                    mem[t + 96] = mem[_741 + 96]
                                    mem[t + 128] = mem[_741 + 128]
                                    mem[t + 160] = mem[_741 + 160]
                                    mem[t + 192] = mem[_741 + 192]
                                    mem[t + 224] = mem[_741 + 224]
                                    mem[t + 256] = mem[_741 + 256]
                                    mem[t + 288] = bool(mem[_741 + 288])
                                    idx = idx + 1
                                    s = s + 32
                                    t = ceil32(_746) + t + 352
                                    u = u + 32
                                    continue 
                                else:
                                    mem[t + _746 + 352] = 0
                                    mem[t + 96] = mem[_741 + 96]
                                    mem[t + 128] = mem[_741 + 128]
                                    mem[t + 160] = mem[_741 + 160]
                                    mem[t + 192] = mem[_741 + 192]
                                    mem[t + 224] = mem[_741 + 224]
                                    mem[t + 256] = mem[_741 + 256]
                                    mem[t + 288] = bool(mem[_741 + 288])
                                    idx = idx + 1
                                    s = s + 32
                                    t = ceil32(_746) + t + 352
                                    u = u + 32
                                    continue 
                            return memory
                              from mem[64]
                               len t - mem[64]
                    else:
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= mem[96]:
                                revert with 0, 50
                            else:
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 552
                                _411 = sha3(mem[(32 * idx) + 128], 552)
                                _412 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_412] = stor552[mem[(32 * idx) + 128]].field_0
                                mem[_412 + 32] = stor1[_411]
                                if bool(stor2[_411].field_0):
                                    if bool(stor2[_411].field_0) == uint255(stor2[_411].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    else:
                                        _440 = mem[64]
                                        mem[64] = mem[64] + ceil32(uint255(stor2[_411].field_0) * 0.5) + 32
                                        mem[_440] = uint255(stor2[_411].field_0) * 0.5
                                        if bool(stor2[_411].field_0):
                                            if bool(stor2[_411].field_0) == uint255(stor2[_411].field_0) * 0.5 < 32:
                                                revert with 0, 34
                                            else:
                                                if not Mask(256, -1, stor2[_411].field_0):
                                                    mem[_412 + 64] = _440
                                                    mem[_412 + 96] = stor3[_411]
                                                    mem[_412 + 128] = stor4[_411]
                                                    mem[_412 + 160] = stor5[_411]
                                                    mem[_412 + 192] = stor6[_411]
                                                    mem[_412 + 224] = stor7[_411]
                                                    mem[_412 + 256] = stor8[_411]
                                                    mem[_412 + 288] = bool(stor9[_411])
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                        revert with 0, 50
                                                    else:
                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _412
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                                else:
                                                    if 31 < uint255(stor2[_411].field_0) * 0.5:
                                                        mem[0] = _411 + 2
                                                        mem[_440 + 32] = stor[sha3(_411 + 2)]
                                                        s = _440 + 32
                                                        t = sha3(_411 + 2)
                                                        while _440 + (uint255(stor2[_411].field_0) * 0.5) > s:
                                                            mem[s + 32] = stor1[t]
                                                            s = s + 32
                                                            t = t + 1
                                                            continue 
                                                        mem[_412 + 64] = _440
                                                        mem[_412 + 96] = stor3[_411]
                                                        mem[_412 + 128] = stor4[_411]
                                                        mem[_412 + 160] = stor5[_411]
                                                        mem[_412 + 192] = stor6[_411]
                                                        mem[_412 + 224] = stor7[_411]
                                                        mem[_412 + 256] = stor8[_411]
                                                        mem[_412 + 288] = bool(stor9[_411])
                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                            revert with 0, 50
                                                        else:
                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _412
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
                                                    else:
                                                        mem[_440 + 32] = 256 * Mask(248, 0, stor2[_411].field_8)
                                                        mem[_412 + 64] = _440
                                                        mem[_412 + 96] = stor3[_411]
                                                        mem[_412 + 128] = stor4[_411]
                                                        mem[_412 + 160] = stor5[_411]
                                                        mem[_412 + 192] = stor6[_411]
                                                        mem[_412 + 224] = stor7[_411]
                                                        mem[_412 + 256] = stor8[_411]
                                                        mem[_412 + 288] = bool(stor9[_411])
                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                            revert with 0, 50
                                                        else:
                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _412
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
                                        else:
                                            if bool(stor2[_411].field_0) == stor2[_411].field_1 % 128 < 32:
                                                revert with 0, 34
                                            else:
                                                if not stor2[_411].field_1 % 128:
                                                    mem[_412 + 64] = _440
                                                    mem[_412 + 96] = stor3[_411]
                                                    mem[_412 + 128] = stor4[_411]
                                                    mem[_412 + 160] = stor5[_411]
                                                    mem[_412 + 192] = stor6[_411]
                                                    mem[_412 + 224] = stor7[_411]
                                                    mem[_412 + 256] = stor8[_411]
                                                    mem[_412 + 288] = bool(stor9[_411])
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                        revert with 0, 50
                                                    else:
                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _412
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                                else:
                                                    if 31 < stor2[_411].field_1 % 128:
                                                        mem[0] = _411 + 2
                                                        mem[_440 + 32] = stor[sha3(_411 + 2)]
                                                        s = _440 + 32
                                                        t = sha3(_411 + 2)
                                                        while _440 + stor2[_411].field_1 % 128 > s:
                                                            mem[s + 32] = stor1[t]
                                                            s = s + 32
                                                            t = t + 1
                                                            continue 
                                                        mem[_412 + 64] = _440
                                                        mem[_412 + 96] = stor3[_411]
                                                        mem[_412 + 128] = stor4[_411]
                                                        mem[_412 + 160] = stor5[_411]
                                                        mem[_412 + 192] = stor6[_411]
                                                        mem[_412 + 224] = stor7[_411]
                                                        mem[_412 + 256] = stor8[_411]
                                                        mem[_412 + 288] = bool(stor9[_411])
                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                            revert with 0, 50
                                                        else:
                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _412
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
                                                    else:
                                                        mem[_440 + 32] = 256 * Mask(248, 0, stor2[_411].field_8)
                                                        mem[_412 + 64] = _440
                                                        mem[_412 + 96] = stor3[_411]
                                                        mem[_412 + 128] = stor4[_411]
                                                        mem[_412 + 160] = stor5[_411]
                                                        mem[_412 + 192] = stor6[_411]
                                                        mem[_412 + 224] = stor7[_411]
                                                        mem[_412 + 256] = stor8[_411]
                                                        mem[_412 + 288] = bool(stor9[_411])
                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                            revert with 0, 50
                                                        else:
                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _412
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
                                else:
                                    if bool(stor2[_411].field_0) == stor2[_411].field_1 % 128 < 32:
                                        revert with 0, 34
                                    else:
                                        _442 = mem[64]
                                        mem[64] = mem[64] + ceil32(stor2[_411].field_1 % 128) + 32
                                        mem[_442] = stor2[_411].field_1 % 128
                                        if bool(stor2[_411].field_0):
                                            if bool(stor2[_411].field_0) == uint255(stor2[_411].field_0) * 0.5 < 32:
                                                revert with 0, 34
                                            else:
                                                if not Mask(256, -1, stor2[_411].field_0):
                                                    mem[_412 + 64] = _442
                                                    mem[_412 + 96] = stor3[_411]
                                                    mem[_412 + 128] = stor4[_411]
                                                    mem[_412 + 160] = stor5[_411]
                                                    mem[_412 + 192] = stor6[_411]
                                                    mem[_412 + 224] = stor7[_411]
                                                    mem[_412 + 256] = stor8[_411]
                                                    mem[_412 + 288] = bool(stor9[_411])
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                        revert with 0, 50
                                                    else:
                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _412
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                                else:
                                                    if 31 < uint255(stor2[_411].field_0) * 0.5:
                                                        mem[0] = _411 + 2
                                                        mem[_442 + 32] = stor[sha3(_411 + 2)]
                                                        s = _442 + 32
                                                        t = sha3(_411 + 2)
                                                        while _442 + (uint255(stor2[_411].field_0) * 0.5) > s:
                                                            mem[s + 32] = stor1[t]
                                                            s = s + 32
                                                            t = t + 1
                                                            continue 
                                                        mem[_412 + 64] = _442
                                                        mem[_412 + 96] = stor3[_411]
                                                        mem[_412 + 128] = stor4[_411]
                                                        mem[_412 + 160] = stor5[_411]
                                                        mem[_412 + 192] = stor6[_411]
                                                        mem[_412 + 224] = stor7[_411]
                                                        mem[_412 + 256] = stor8[_411]
                                                        mem[_412 + 288] = bool(stor9[_411])
                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                            revert with 0, 50
                                                        else:
                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _412
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
                                                    else:
                                                        mem[_442 + 32] = 256 * Mask(248, 0, stor2[_411].field_8)
                                                        mem[_412 + 64] = _442
                                                        mem[_412 + 96] = stor3[_411]
                                                        mem[_412 + 128] = stor4[_411]
                                                        mem[_412 + 160] = stor5[_411]
                                                        mem[_412 + 192] = stor6[_411]
                                                        mem[_412 + 224] = stor7[_411]
                                                        mem[_412 + 256] = stor8[_411]
                                                        mem[_412 + 288] = bool(stor9[_411])
                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                            revert with 0, 50
                                                        else:
                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _412
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
                                        else:
                                            if bool(stor2[_411].field_0) == stor2[_411].field_1 % 128 < 32:
                                                revert with 0, 34
                                            else:
                                                if not stor2[_411].field_1 % 128:
                                                    mem[_412 + 64] = _442
                                                    mem[_412 + 96] = stor3[_411]
                                                    mem[_412 + 128] = stor4[_411]
                                                    mem[_412 + 160] = stor5[_411]
                                                    mem[_412 + 192] = stor6[_411]
                                                    mem[_412 + 224] = stor7[_411]
                                                    mem[_412 + 256] = stor8[_411]
                                                    mem[_412 + 288] = bool(stor9[_411])
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                        revert with 0, 50
                                                    else:
                                                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _412
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                                else:
                                                    if 31 < stor2[_411].field_1 % 128:
                                                        mem[0] = _411 + 2
                                                        mem[_442 + 32] = stor[sha3(_411 + 2)]
                                                        s = _442 + 32
                                                        t = sha3(_411 + 2)
                                                        while _442 + stor2[_411].field_1 % 128 > s:
                                                            mem[s + 32] = stor1[t]
                                                            s = s + 32
                                                            t = t + 1
                                                            continue 
                                                        mem[_412 + 64] = _442
                                                        mem[_412 + 96] = stor3[_411]
                                                        mem[_412 + 128] = stor4[_411]
                                                        mem[_412 + 160] = stor5[_411]
                                                        mem[_412 + 192] = stor6[_411]
                                                        mem[_412 + 224] = stor7[_411]
                                                        mem[_412 + 256] = stor8[_411]
                                                        mem[_412 + 288] = bool(stor9[_411])
                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                            revert with 0, 50
                                                        else:
                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _412
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
                                                    else:
                                                        mem[_442 + 32] = 256 * Mask(248, 0, stor2[_411].field_8)
                                                        mem[_412 + 64] = _442
                                                        mem[_412 + 96] = stor3[_411]
                                                        mem[_412 + 128] = stor4[_411]
                                                        mem[_412 + 160] = stor5[_411]
                                                        mem[_412 + 192] = stor6[_411]
                                                        mem[_412 + 224] = stor7[_411]
                                                        mem[_412 + 256] = stor8[_411]
                                                        mem[_412 + 288] = bool(stor9[_411])
                                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                            revert with 0, 50
                                                        else:
                                                            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _412
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
                        _409 = mem[64]
                        mem[mem[64]] = 32
                        _420 = mem[ceil32(32 * ('cd', 4).length) + 97]
                        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                        idx = 0
                        s = ceil32(32 * ('cd', 4).length) + 129
                        t = mem[64] + (32 * _420) + 64
                        u = mem[64] + 64
                        while idx < _420:
                            mem[u] = t + -_409 - 64
                            _514 = mem[s]
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_514 + 32]
                            _517 = mem[_514 + 64]
                            mem[t + 64] = 320
                            _519 = mem[_517]
                            mem[t + 320] = mem[_517]
                            v = 0
                            while v < _519:
                                mem[v + t + 352] = mem[_517 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_519) <= _519:
                                mem[t + 96] = mem[_514 + 96]
                                mem[t + 128] = mem[_514 + 128]
                                mem[t + 160] = mem[_514 + 160]
                                mem[t + 192] = mem[_514 + 192]
                                mem[t + 224] = mem[_514 + 224]
                                mem[t + 256] = mem[_514 + 256]
                                mem[t + 288] = bool(mem[_514 + 288])
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_519) + t + 352
                                u = u + 32
                                continue 
                            else:
                                mem[t + _519 + 352] = 0
                                mem[t + 96] = mem[_514 + 96]
                                mem[t + 128] = mem[_514 + 128]
                                mem[t + 160] = mem[_514 + 160]
                                mem[t + 192] = mem[_514 + 192]
                                mem[t + 224] = mem[_514 + 224]
                                mem[t + 256] = mem[_514 + 256]
                                mem[t + 288] = bool(mem[_514 + 288])
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_519) + t + 352
                                u = u + 32
                                continue 
                        return memory
                          from mem[64]
                           len t - mem[64]
}



}
