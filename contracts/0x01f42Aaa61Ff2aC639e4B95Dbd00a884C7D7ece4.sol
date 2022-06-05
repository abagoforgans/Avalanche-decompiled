contract main {




// =====================  Runtime code  =====================


#
#  - executeTrade(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of struct stor99;
array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
mapping of struct stor151;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor202;
array of uint256 tokenByIndex;
mapping of uint256 stor204;
address owner;
uint256 stor301;
mapping of uint256 stor304;
address stor305;
mapping of struct sub_3eb5a215;
uint256 stor307;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function trades(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(sub_3eb5a215[arg1].field_0), 
           uint256(sub_3eb5a215[arg1].field_256),
           uint256(sub_3eb5a215[arg1].field_512),
           uint256(sub_3eb5a215[arg1].field_768)
}

function getTrade(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(sub_3eb5a215[arg1].field_0), 
           uint256(sub_3eb5a215[arg1].field_256),
           uint256(sub_3eb5a215[arg1].field_512),
           uint256(sub_3eb5a215[arg1].field_768)
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_3eb5a215(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(sub_3eb5a215[stor304[arg1]].field_0), 
           uint256(sub_3eb5a215[stor304[arg1]].field_256),
           uint256(sub_3eb5a215[stor304[arg1]].field_512),
           uint256(sub_3eb5a215[stor304[arg1]].field_768)
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) {
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

function safeMint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg2]:
        revert with 0, 'ERC721: token already minted'
    stor204[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    if arg1:
        tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)]] = arg2
        stor202[arg2] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor204[arg2] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor204[arg2]] = tokenByIndex[tokenByIndex.length]
        stor204[stor203[stor203.length]] = stor204[arg2]
        stor204[arg2] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[arg2] = arg1
    emit Transfer(0, arg1, arg2);
    if ext_code.size(arg1) > 0:
        call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, arg2, 128, 0
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

function initialize() {
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
        if bool(stor101.length) == uint255(stor101.length.field_1) < 32:
            revert with 'NH{q', 34
        bool(stor101.length) = 0
        uint255(stor101.length.field_1) = 7
        Mask(248, 0, stor101.length.field_8) = 'swagtag' / 256
        idx = 0
        while uint255(stor101.length.field_1) + 31 / 32 > idx:
            uint256(stor101[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        bool(stor101.length) = 0
        uint255(stor101.length.field_1) = 7
        Mask(248, 0, stor101.length.field_8) = 'swagtag' / 256
        idx = 0
        while stor101.length.field_1 % 128 + 31 / 32 > idx:
            uint256(stor101[idx].field_0) = 0
            idx = idx + 1
            continue 
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length.field_1) < 32:
            revert with 'NH{q', 34
        bool(stor102.length) = 0
        uint255(stor102.length.field_1) = 3
        Mask(248, 0, stor102.length.field_8) = 'SWG' / 256
        idx = 0
        while uint255(stor102.length.field_1) + 31 / 32 > idx:
            uint256(stor102[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        bool(stor102.length) = 0
        uint255(stor102.length.field_1) = 3
        Mask(248, 0, stor102.length.field_8) = 'SWG' / 256
        idx = 0
        while stor102.length.field_1 % 128 + 31 / 32 > idx:
            uint256(stor102[idx].field_0) = 0
            idx = idx + 1
            continue 
    stor307 = 0
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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
    if not arg1:
        stor204[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor202[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor202[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor202[stor201[address(arg1)][stor104[address(arg1)] - 1]] = stor202[arg3]
            stor202[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor202[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor204[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor204[arg3]] = tokenByIndex[tokenByIndex.length]
        stor204[stor203[stor203.length]] = stor204[arg3]
        stor204[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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

function mintToken(string arg1) payable {
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
    stor301++
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 302
    if uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) > 0:
        revert with 0, 'Token already exists'
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor301]:
        revert with 0, 'ERC721: token already minted'
    stor204[stor301] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor301
    if msg.sender:
        tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = stor301
        stor202[stor301] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor204[stor301] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor204[stor301]] = tokenByIndex[tokenByIndex.length]
        stor204[stor203[stor203.length]] = stor204[stor301]
        stor204[stor301] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor301] = msg.sender
    emit Transfer(0, msg.sender, stor301);
    if not ownerOf[stor301]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if bool(stor151[stor301].field_0):
        if bool(stor151[stor301].field_0) == uint255(stor151[stor301].field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor151[stor301][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor151[stor301].field_0) = 0
            idx = 0
            while uint255(stor151[stor301].field_1) + 31 / 32 > idx:
                uint256(stor151[stor301][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor151[stor301].field_0) == stor151[stor301].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor151[stor301][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor151[stor301].field_0) = 0
            idx = 0
            while stor151[stor301].field_1 % 128 + 31 / 32 > idx:
                uint256(stor151[stor301][idx].field_0) = 0
                idx = idx + 1
                continue 
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 302
    uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) = stor301
    call owner with:
       value 10^16 wei
         gas 0 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return stor301
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
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
    if not arg1:
        stor204[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor202[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor202[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor202[stor201[address(arg1)][stor104[address(arg1)] - 1]] = stor202[arg3]
            stor202[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor202[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor204[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor204[arg3]] = tokenByIndex[tokenByIndex.length]
        stor204[stor203[stor203.length]] = stor204[arg3]
        stor204[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
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
    if not arg1:
        stor204[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor202[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor202[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor202[stor201[address(arg1)][stor104[address(arg1)] - 1]] = stor202[arg3]
            stor202[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor202[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor204[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor204[arg3]] = tokenByIndex[tokenByIndex.length]
        stor204[stor203[stor203.length]] = stor204[arg3]
        stor204[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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

function name() {
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
                        mem[idx + 32] = uint256(stor101[s].field_256)
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
                        mem[idx + 32] = uint256(stor101[s].field_256)
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
                    mem[idx + 32] = uint256(stor101[s].field_256)
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
                    mem[idx + 32] = uint256(stor101[s].field_256)
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

function symbol() {
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
                        mem[idx + 32] = uint256(stor102[s].field_256)
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
                        mem[idx + 32] = uint256(stor102[s].field_256)
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
                    mem[idx + 32] = uint256(stor102[s].field_256)
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
                    mem[idx + 32] = uint256(stor102[s].field_256)
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

function pay(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg2 and 100 > -1 / arg2:
        revert with 'NH{q', 17
    call ownerOf[arg1] with:
       value 100 * arg2 / 99 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg2 and 100 > -1 / arg2:
        revert with 'NH{q', 17
    call ownerOf[arg1] with:
       value 100 * arg2 / 99 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if bool(stor151[arg1].field_0):
        if bool(stor151[arg1].field_0) == uint255(stor151[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor151[arg1].field_0):
            if bool(stor151[arg1].field_0) == uint255(stor151[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor151[arg1].field_1):
                if 31 >= uint255(stor151[arg1].field_1):
                    mem[128] = 256 * Mask(248, 0, stor151[arg1].field_8)
                else:
                    mem[128] = uint256(stor151[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor151[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor151[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor151[arg1].field_0) == stor151[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor151[arg1].field_1 % 128:
                if 31 >= stor151[arg1].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor151[arg1].field_8)
                else:
                    mem[128] = uint256(stor151[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor151[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor151[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        emit 0x7398675b: arg2, Array(len=2 * Mask(256, -1, uint255(stor151[arg1].field_1)), data=mem[128 len ceil32(uint255(stor151[arg1].field_1))]), arg1
    else:
        if bool(stor151[arg1].field_0) == stor151[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if bool(stor151[arg1].field_0):
            if bool(stor151[arg1].field_0) == uint255(stor151[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor151[arg1].field_1):
                if 31 >= uint255(stor151[arg1].field_1):
                    mem[128] = 256 * Mask(248, 0, stor151[arg1].field_8)
                else:
                    mem[128] = uint256(stor151[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor151[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor151[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor151[arg1].field_0) == stor151[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor151[arg1].field_1 % 128:
                if 31 >= stor151[arg1].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor151[arg1].field_8)
                else:
                    mem[128] = uint256(stor151[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor151[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor151[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        emit 0x7398675b: arg2, Array(len=stor151[arg1].field_0 % 128, data=mem[128 len ceil32(stor151[arg1].field_1 % 128)]), arg1
}

function openTrade(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor106[address(this.address)][address(msg.sender)]:
        if msg.sender == this.address:
            revert with 0, 'ERC721: approve to caller'
        stor106[address(msg.sender)][address(this.address)] = 1
        emit ApprovalForAll(1, msg.sender, this.address);
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor305)
    call stor305.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    address(sub_3eb5a215[stor307].field_0) = msg.sender
    uint256(sub_3eb5a215[stor307].field_256) = arg1
    uint256(sub_3eb5a215[stor307].field_512) = arg2
    uint256(sub_3eb5a215[stor307].field_768) = 'Open'
    if stor307 > -2:
        revert with 'NH{q', 17
    stor307++
    if stor307 < 1:
        revert with 'NH{q', 17
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if bool(stor151[arg1].field_0):
        if bool(stor151[arg1].field_0) == uint255(stor151[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor151[arg1].field_0):
            if bool(stor151[arg1].field_0) == uint255(stor151[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor151[arg1].field_1):
                if 31 >= uint255(stor151[arg1].field_1):
                    mem[128] = 256 * Mask(248, 0, stor151[arg1].field_8)
                else:
                    mem[128] = uint256(stor151[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor151[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor151[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor151[arg1].field_0) == stor151[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor151[arg1].field_1 % 128:
                if 31 >= stor151[arg1].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor151[arg1].field_8)
                else:
                    mem[128] = uint256(stor151[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor151[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor151[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        emit 0x9ddc6ae7: stor307 - 1, 'Open', arg2, Array(len=2 * Mask(256, -1, uint255(stor151[arg1].field_1)), data=mem[128 len ceil32(uint255(stor151[arg1].field_1))]), arg1
    else:
        if bool(stor151[arg1].field_0) == stor151[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if bool(stor151[arg1].field_0):
            if bool(stor151[arg1].field_0) == uint255(stor151[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor151[arg1].field_1):
                if 31 >= uint255(stor151[arg1].field_1):
                    mem[128] = 256 * Mask(248, 0, stor151[arg1].field_8)
                else:
                    mem[128] = uint256(stor151[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor151[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor151[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor151[arg1].field_0) == stor151[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor151[arg1].field_1 % 128:
                if 31 >= stor151[arg1].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor151[arg1].field_8)
                else:
                    mem[128] = uint256(stor151[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor151[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor151[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        emit 0x9ddc6ae7: stor307 - 1, 'Open', arg2, Array(len=stor151[arg1].field_0 % 128, data=mem[128 len ceil32(stor151[arg1].field_1 % 128)]), arg1
}

function getName(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if bool(stor151[arg1].field_0):
        if bool(stor151[arg1].field_0) == uint255(stor151[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor151[arg1].field_0):
            if bool(stor151[arg1].field_0) == uint255(stor151[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor151[arg1].field_1):
                if 31 < uint255(stor151[arg1].field_1):
                    mem[128] = uint256(stor151[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor151[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor151[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor151[arg1].field_1)), data=mem[128 len ceil32(uint255(stor151[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor151[arg1].field_8)
        else:
            if bool(stor151[arg1].field_0) == stor151[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor151[arg1].field_1 % 128:
                if 31 < stor151[arg1].field_1 % 128:
                    mem[128] = uint256(stor151[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor151[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor151[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor151[arg1].field_1)), data=mem[128 len ceil32(uint255(stor151[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor151[arg1].field_8)
        mem[ceil32(uint255(stor151[arg1].field_1)) + 224 len ceil32(uint255(stor151[arg1].field_1))] = mem[128 len ceil32(uint255(stor151[arg1].field_1))]
        if ceil32(uint255(stor151[arg1].field_1)) > uint255(stor151[arg1].field_1):
            mem[ceil32(uint255(stor151[arg1].field_1)) + uint255(stor151[arg1].field_1) + 224] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor151[arg1].field_1)), data=mem[128 len ceil32(uint255(stor151[arg1].field_1))], mem[(2 * ceil32(uint255(stor151[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor151[arg1].field_1))]), 
    if bool(stor151[arg1].field_0) == stor151[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor151[arg1].field_0):
        if bool(stor151[arg1].field_0) == uint255(stor151[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor151[arg1].field_1):
            if 31 < uint255(stor151[arg1].field_1):
                mem[128] = uint256(stor151[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor151[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor151[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor151[arg1].field_0 % 128, data=mem[128 len ceil32(stor151[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor151[arg1].field_8)
    else:
        if bool(stor151[arg1].field_0) == stor151[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor151[arg1].field_1 % 128:
            if 31 < stor151[arg1].field_1 % 128:
                mem[128] = uint256(stor151[arg1].field_0)
                idx = 128
                s = 0
                while stor151[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor151[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor151[arg1].field_0 % 128, data=mem[128 len ceil32(stor151[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor151[arg1].field_8)
    mem[ceil32(stor151[arg1].field_1 % 128) + 224 len ceil32(stor151[arg1].field_1 % 128)] = mem[128 len ceil32(stor151[arg1].field_1 % 128)]
    if ceil32(stor151[arg1].field_1 % 128) > stor151[arg1].field_1 % 128:
        mem[ceil32(stor151[arg1].field_1 % 128) + stor151[arg1].field_1 % 128 + 224] = 0
    return Array(len=stor151[arg1].field_0 % 128, data=mem[128 len ceil32(stor151[arg1].field_1 % 128)], mem[(2 * ceil32(stor151[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor151[arg1].field_1 % 128)]), 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if bool(stor151[arg1].field_0):
        if bool(stor151[arg1].field_0) == uint255(stor151[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor151[arg1].field_0):
            if bool(stor151[arg1].field_0) == uint255(stor151[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor151[arg1].field_1):
                if 31 < uint255(stor151[arg1].field_1):
                    mem[128] = uint256(stor151[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor151[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor151[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor151[arg1].field_1)), data=mem[128 len ceil32(uint255(stor151[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor151[arg1].field_8)
        else:
            if bool(stor151[arg1].field_0) == stor151[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor151[arg1].field_1 % 128:
                if 31 < stor151[arg1].field_1 % 128:
                    mem[128] = uint256(stor151[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor151[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor151[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor151[arg1].field_1)), data=mem[128 len ceil32(uint255(stor151[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor151[arg1].field_8)
        mem[ceil32(uint255(stor151[arg1].field_1)) + 224 len ceil32(uint255(stor151[arg1].field_1))] = mem[128 len ceil32(uint255(stor151[arg1].field_1))]
        if ceil32(uint255(stor151[arg1].field_1)) > uint255(stor151[arg1].field_1):
            mem[ceil32(uint255(stor151[arg1].field_1)) + uint255(stor151[arg1].field_1) + 224] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor151[arg1].field_1)), data=mem[128 len ceil32(uint255(stor151[arg1].field_1))], mem[(2 * ceil32(uint255(stor151[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor151[arg1].field_1))]), 
    if bool(stor151[arg1].field_0) == stor151[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor151[arg1].field_0):
        if bool(stor151[arg1].field_0) == uint255(stor151[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor151[arg1].field_1):
            if 31 < uint255(stor151[arg1].field_1):
                mem[128] = uint256(stor151[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor151[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor151[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor151[arg1].field_0 % 128, data=mem[128 len ceil32(stor151[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor151[arg1].field_8)
    else:
        if bool(stor151[arg1].field_0) == stor151[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor151[arg1].field_1 % 128:
            if 31 < stor151[arg1].field_1 % 128:
                mem[128] = uint256(stor151[arg1].field_0)
                idx = 128
                s = 0
                while stor151[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor151[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor151[arg1].field_0 % 128, data=mem[128 len ceil32(stor151[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor151[arg1].field_8)
    mem[ceil32(stor151[arg1].field_1 % 128) + 224 len ceil32(stor151[arg1].field_1 % 128)] = mem[128 len ceil32(stor151[arg1].field_1 % 128)]
    if ceil32(stor151[arg1].field_1 % 128) > stor151[arg1].field_1 % 128:
        mem[ceil32(stor151[arg1].field_1 % 128) + stor151[arg1].field_1 % 128 + 224] = 0
    return Array(len=stor151[arg1].field_0 % 128, data=mem[128 len ceil32(stor151[arg1].field_1 % 128)], mem[(2 * ceil32(stor151[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor151[arg1].field_1 % 128)]), 
}

function cancelTrade(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(sub_3eb5a215[arg1].field_0) != msg.sender:
        revert with 0, 'Trade can be cancelled only by poster.'
    if uint256(sub_3eb5a215[arg1].field_768) != 'Open':
        revert with 0, 'Trade is not Open.'
    mem[228] = this.address
    mem[260] = address(sub_3eb5a215[arg1].field_0)
    mem[292] = uint256(sub_3eb5a215[arg1].field_256)
    require ext_code.size(stor305)
    call stor305.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(sub_3eb5a215[arg1].field_0), uint256(sub_3eb5a215[arg1].field_256)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(sub_3eb5a215[arg1].field_768) = 'Cancelled'
    if not ownerOf[uint256(stor306[arg1].field_256)]:
        revert with 0, 'ERC721URIStorage: URI query for nonexistent token'
    if bool(stor151[uint256(stor306[arg1].field_256)].field_0):
        if bool(stor151[uint256(stor306[arg1].field_256)].field_0) == uint255(stor151[uint256(stor306[arg1].field_256)].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor151[uint256(stor306[arg1].field_256)].field_0):
            if bool(stor151[uint256(stor306[arg1].field_256)].field_0) == uint255(stor151[uint256(stor306[arg1].field_256)].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor151[uint256(stor306[arg1].field_256)].field_1):
                if 31 >= uint255(stor151[uint256(stor306[arg1].field_256)].field_1):
                    mem[256] = 256 * Mask(248, 0, stor151[uint256(stor306[arg1].field_256)].field_8)
                else:
                    mem[256] = uint256(stor151[uint256(stor306[arg1].field_256)].field_0)
                    idx = 256
                    s = 0
                    while uint255(stor151[uint256(stor306[arg1].field_256)].field_1) + 224 > idx:
                        mem[idx + 32] = uint256(stor151[uint256(stor306[arg1].field_256)][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor151[uint256(stor306[arg1].field_256)].field_0) == stor151[uint256(stor306[arg1].field_256)].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor151[uint256(stor306[arg1].field_256)].field_1 % 128:
                if 31 >= stor151[uint256(stor306[arg1].field_256)].field_1 % 128:
                    mem[256] = 256 * Mask(248, 0, stor151[uint256(stor306[arg1].field_256)].field_8)
                else:
                    mem[256] = uint256(stor151[uint256(stor306[arg1].field_256)].field_0)
                    idx = 256
                    s = 0
                    while stor151[uint256(stor306[arg1].field_256)].field_1 % 128 + 224 > idx:
                        mem[idx + 32] = uint256(stor151[uint256(stor306[arg1].field_256)][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        emit 0x9ddc6ae7: arg1, 'Cancelled', 0, 160, uint256(sub_3eb5a215[arg1].field_256), 2 * Mask(256, -1, uint255(stor151[uint256(stor306[arg1].field_256)].field_1)), mem[256 len ceil32(uint255(stor151[uint256(stor306[arg1].field_256)].field_1))]
    else:
        if bool(stor151[uint256(stor306[arg1].field_256)].field_0) == stor151[uint256(stor306[arg1].field_256)].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if bool(stor151[uint256(stor306[arg1].field_256)].field_0):
            if bool(stor151[uint256(stor306[arg1].field_256)].field_0) == uint255(stor151[uint256(stor306[arg1].field_256)].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor151[uint256(stor306[arg1].field_256)].field_1):
                if 31 >= uint255(stor151[uint256(stor306[arg1].field_256)].field_1):
                    mem[256] = 256 * Mask(248, 0, stor151[uint256(stor306[arg1].field_256)].field_8)
                else:
                    mem[256] = uint256(stor151[uint256(stor306[arg1].field_256)].field_0)
                    idx = 256
                    s = 0
                    while uint255(stor151[uint256(stor306[arg1].field_256)].field_1) + 224 > idx:
                        mem[idx + 32] = uint256(stor151[uint256(stor306[arg1].field_256)][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor151[uint256(stor306[arg1].field_256)].field_0) == stor151[uint256(stor306[arg1].field_256)].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor151[uint256(stor306[arg1].field_256)].field_1 % 128:
                if 31 >= stor151[uint256(stor306[arg1].field_256)].field_1 % 128:
                    mem[256] = 256 * Mask(248, 0, stor151[uint256(stor306[arg1].field_256)].field_8)
                else:
                    mem[256] = uint256(stor151[uint256(stor306[arg1].field_256)].field_0)
                    idx = 256
                    s = 0
                    while stor151[uint256(stor306[arg1].field_256)].field_1 % 128 + 224 > idx:
                        mem[idx + 32] = uint256(stor151[uint256(stor306[arg1].field_256)][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        emit 0x9ddc6ae7: arg1, 'Cancelled', 0, 160, uint256(sub_3eb5a215[arg1].field_256), stor151[uint256(stor306[arg1].field_256)].field_0 % 128, mem[256 len ceil32(stor151[uint256(stor306[arg1].field_256)].field_1 % 128)]
}

function sub_a22dee04(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307() or ceil32(ceil32(arg2.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not ownerOf[uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 302)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0)]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 302)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0)] != msg.sender:
        revert with 0, 'Only the owner can do this'
    if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 303)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0):
        if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 303)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) == uint255(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 303)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_1) < 32:
            revert with 'NH{q', 34
        if arg2.length:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 303)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 303)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) = 0
            idx = 0
            while uint255(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 303)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_1) + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 303)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 303)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) == stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 303)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 303)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 303)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_0) = 0
            idx = 0
            while stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 303)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256].field_1 % 128 + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 303)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256][idx].field_0) = 0
                idx = idx + 1
                continue 
}

function getAddress(string arg1) {
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
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 303
    if ceil32(arg1.length) <= arg1.length:
        _143 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) == uint255(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1) < 32:
                revert with 'NH{q', 34
            mem[64] = ceil32(ceil32(arg1.length)) + ceil32(uint255(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1)) + 129
            mem[ceil32(ceil32(arg1.length)) + 97] = uint255(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1)
            if bool(stor[_143].field_0):
                if bool(stor[_143].field_0) == uint255(stor[_143].field_1) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor[_143].field_1):
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint255(stor[_143].field_1)
                    mem[mem[64] + 64 len ceil32(uint255(stor[_143].field_1))] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor[_143].field_1))]
                    if ceil32(uint255(stor[_143].field_1)) > uint255(stor[_143].field_1):
                        mem[mem[64] + uint255(stor[_143].field_1) + 64] = 0
                else:
                    if 31 >= uint255(stor[_143].field_1):
                        mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_143].field_8)
                    else:
                        mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_143)].field_0)
                        idx = ceil32(ceil32(arg1.length)) + 129
                        s = 0
                        while ceil32(ceil32(arg1.length)) + uint255(stor[_143].field_1) + 97 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(_143) + 1].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint255(stor[_143].field_1)
                    mem[mem[64] + 64 len ceil32(uint255(stor[_143].field_1))] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor[_143].field_1))]
                    if ceil32(uint255(stor[_143].field_1)) > uint255(stor[_143].field_1):
                        mem[mem[64] + uint255(stor[_143].field_1) + 64] = 0
            else:
                if bool(stor[_143].field_0) == stor[_143].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor[_143].field_1 % 128:
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint255(stor[_143].field_1)
                    mem[mem[64] + 64 len ceil32(uint255(stor[_143].field_1))] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor[_143].field_1))]
                    if ceil32(uint255(stor[_143].field_1)) > uint255(stor[_143].field_1):
                        mem[mem[64] + uint255(stor[_143].field_1) + 64] = 0
                else:
                    if 31 >= stor[_143].field_1 % 128:
                        mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_143].field_8)
                    else:
                        mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_143)].field_0)
                        idx = ceil32(ceil32(arg1.length)) + 129
                        s = 0
                        while ceil32(ceil32(arg1.length)) + stor[_143].field_1 % 128 + 97 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(_143) + 1].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint255(stor[_143].field_1)
                    mem[mem[64] + 64 len ceil32(uint255(stor[_143].field_1))] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor[_143].field_1))]
                    if ceil32(uint255(stor[_143].field_1)) > uint255(stor[_143].field_1):
                        mem[mem[64] + uint255(stor[_143].field_1) + 64] = 0
            return Array(len=2 * Mask(256, -1, uint255(stor[_143].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_143].field_1))]), 
        if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128 < 32:
            revert with 'NH{q', 34
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128) + 129
        mem[ceil32(ceil32(arg1.length)) + 97] = stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128
        if bool(stor[_143].field_0):
            if bool(stor[_143].field_0) == uint255(stor[_143].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor[_143].field_1):
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_143].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_143].field_1 % 128)]
                if ceil32(stor[_143].field_1 % 128) > stor[_143].field_1 % 128:
                    mem[mem[64] + stor[_143].field_1 % 128 + 64] = 0
            else:
                if 31 >= uint255(stor[_143].field_1):
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_143].field_8)
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_143)].field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + uint255(stor[_143].field_1) + 97 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_143) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_143].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_143].field_1 % 128)]
                if ceil32(stor[_143].field_1 % 128) > stor[_143].field_1 % 128:
                    mem[mem[64] + stor[_143].field_1 % 128 + 64] = 0
        else:
            if bool(stor[_143].field_0) == stor[_143].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor[_143].field_1 % 128:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_143].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_143].field_1 % 128)]
                if ceil32(stor[_143].field_1 % 128) > stor[_143].field_1 % 128:
                    mem[mem[64] + stor[_143].field_1 % 128 + 64] = 0
            else:
                if 31 >= stor[_143].field_1 % 128:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_143].field_8)
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_143)].field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor[_143].field_1 % 128 + 97 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_143) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_143].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_143].field_1 % 128)]
                if ceil32(stor[_143].field_1 % 128) > stor[_143].field_1 % 128:
                    mem[mem[64] + stor[_143].field_1 % 128 + 64] = 0
        return Array(len=stor[_143].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_143].field_1 % 128)])
    _145 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
    if not bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
        if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128 < 32:
            revert with 'NH{q', 34
        mem[64] = ceil32(ceil32(arg1.length)) + ceil32(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128) + 129
        mem[ceil32(ceil32(arg1.length)) + 97] = stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1 % 128
        if bool(stor[_145].field_0):
            if bool(stor[_145].field_0) == uint255(stor[_145].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor[_145].field_1):
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_145].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_145].field_1 % 128)]
                if ceil32(stor[_145].field_1 % 128) > stor[_145].field_1 % 128:
                    mem[mem[64] + stor[_145].field_1 % 128 + 64] = 0
            else:
                if 31 >= uint255(stor[_145].field_1):
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_145].field_8)
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_145)].field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + uint255(stor[_145].field_1) + 97 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_145) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_145].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_145].field_1 % 128)]
                if ceil32(stor[_145].field_1 % 128) > stor[_145].field_1 % 128:
                    mem[mem[64] + stor[_145].field_1 % 128 + 64] = 0
        else:
            if bool(stor[_145].field_0) == stor[_145].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor[_145].field_1 % 128:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_145].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_145].field_1 % 128)]
                if ceil32(stor[_145].field_1 % 128) > stor[_145].field_1 % 128:
                    mem[mem[64] + stor[_145].field_1 % 128 + 64] = 0
            else:
                if 31 >= stor[_145].field_1 % 128:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_145].field_8)
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_145)].field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor[_145].field_1 % 128 + 97 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_145) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_145].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor[_145].field_1 % 128)]
                if ceil32(stor[_145].field_1 % 128) > stor[_145].field_1 % 128:
                    mem[mem[64] + stor[_145].field_1 % 128 + 64] = 0
        return Array(len=stor[_145].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_145].field_1 % 128)])
    if bool(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) == uint255(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1) < 32:
        revert with 'NH{q', 34
    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(uint255(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1)) + 129
    mem[ceil32(ceil32(arg1.length)) + 97] = uint255(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_1)
    if bool(stor[_145].field_0):
        if bool(stor[_145].field_0) == uint255(stor[_145].field_1) < 32:
            revert with 'NH{q', 34
        if not uint255(stor[_145].field_1):
            _156 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint255(stor[_145].field_1)
            mem[mem[64] + 64 len ceil32(uint255(stor[_145].field_1))] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor[_145].field_1))]
            if ceil32(uint255(stor[_145].field_1)) <= uint255(stor[_145].field_1):
                return Array(len=2 * Mask(256, -1, uint255(stor[_145].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_145].field_1))]), 
            mem[mem[64] + uint255(stor[_145].field_1) + 64] = 0
            return memory
              from mem[64]
               len _156 + ceil32(uint255(stor[_145].field_1)) + -mem[64] + 64
        if 31 >= uint255(stor[_145].field_1):
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_145].field_8)
            _168 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint255(stor[_145].field_1)
            mem[mem[64] + 64 len ceil32(uint255(stor[_145].field_1))] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor[_145].field_1))]
            if ceil32(uint255(stor[_145].field_1)) <= uint255(stor[_145].field_1):
                return Array(len=2 * Mask(256, -1, uint255(stor[_145].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_145].field_1))]), 
            mem[mem[64] + uint255(stor[_145].field_1) + 64] = 0
            return memory
              from mem[64]
               len _168 + ceil32(uint255(stor[_145].field_1)) + -mem[64] + 64
        mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_145)].field_0)
        idx = ceil32(ceil32(arg1.length)) + 129
        s = 0
        while ceil32(ceil32(arg1.length)) + uint255(stor[_145].field_1) + 97 > idx:
            mem[idx + 32] = uint256(stor[s + sha3(_145) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
        _298 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint255(stor[_145].field_1)
        mem[mem[64] + 64 len ceil32(uint255(stor[_145].field_1))] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor[_145].field_1))]
        if ceil32(uint255(stor[_145].field_1)) <= uint255(stor[_145].field_1):
            return Array(len=2 * Mask(256, -1, uint255(stor[_145].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_145].field_1))]), 
        mem[mem[64] + uint255(stor[_145].field_1) + 64] = 0
        return memory
          from mem[64]
           len _298 + ceil32(uint255(stor[_145].field_1)) + -mem[64] + 64
    if bool(stor[_145].field_0) == stor[_145].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if not stor[_145].field_1 % 128:
        _161 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint255(stor[_145].field_1)
        mem[mem[64] + 64 len ceil32(uint255(stor[_145].field_1))] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor[_145].field_1))]
        if ceil32(uint255(stor[_145].field_1)) <= uint255(stor[_145].field_1):
            return Array(len=2 * Mask(256, -1, uint255(stor[_145].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_145].field_1))]), 
        mem[mem[64] + uint255(stor[_145].field_1) + 64] = 0
        return memory
          from mem[64]
           len _161 + ceil32(uint255(stor[_145].field_1)) + -mem[64] + 64
    if 31 >= stor[_145].field_1 % 128:
        mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor[_145].field_8)
        _176 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint255(stor[_145].field_1)
        mem[mem[64] + 64 len ceil32(uint255(stor[_145].field_1))] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor[_145].field_1))]
        if ceil32(uint255(stor[_145].field_1)) <= uint255(stor[_145].field_1):
            return Array(len=2 * Mask(256, -1, uint255(stor[_145].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_145].field_1))]), 
        mem[mem[64] + uint255(stor[_145].field_1) + 64] = 0
        return memory
          from mem[64]
           len _176 + ceil32(uint255(stor[_145].field_1)) + -mem[64] + 64
    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor[sha3(_145)].field_0)
    idx = ceil32(ceil32(arg1.length)) + 129
    s = 0
    while ceil32(ceil32(arg1.length)) + stor[_145].field_1 % 128 + 97 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(_145) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    _299 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = uint255(stor[_145].field_1)
    mem[mem[64] + 64 len ceil32(uint255(stor[_145].field_1))] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor[_145].field_1))]
    if ceil32(uint255(stor[_145].field_1)) <= uint255(stor[_145].field_1):
        return Array(len=2 * Mask(256, -1, uint255(stor[_145].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_145].field_1))]), 
    mem[mem[64] + uint255(stor[_145].field_1) + 64] = 0
    return memory
      from mem[64]
       len _299 + ceil32(uint255(stor[_145].field_1)) + -mem[64] + 64
}



}
