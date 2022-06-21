contract main {




// =====================  Runtime code  =====================


#
#  - sub_28dd1117(?)
#
const maxSupply = 10000

const sub_f91db6c7(?) = 900


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
address stor151;
address stor152;
uint256 royaltyPercentage;
mapping of uint8 stor154;
mapping of uint8 stor155;
address sub_001570deAddress;
uint256 sub_26ed8e7a;
uint256 mintFeeAmount;
array of struct stor159;
uint8 sub_fac1c242;
uint8 openForPublic; offset 8
uint256 stor160; offset 8
uint256 stor161;
mapping of struct sub_9294611e;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor164;
array of uint256 stor165;
mapping of uint256 stor166;
mapping of uint8 stor167;
array of uint256 stor80784079873236441150362748222235201469352902231501241160281673421804559785727;

function sub_001570de(?) {
    return sub_001570deAddress
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return stor165.length
}

function sub_26ed8e7a(?) {
    return sub_26ed8e7a
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0, 'out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_3c2f1ae1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor155[arg1])
}

function excludedList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor154[arg1])
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
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

function royaltyPercentage() {
    return royaltyPercentage
}

function sub_9294611e(?) {
    require calldata.size - 4 >= 32
    return sub_9294611e[arg1].field_0, 
           sub_9294611e[arg1].field_256,
           sub_9294611e[arg1].field_512,
           sub_9294611e[arg1].field_768,
           sub_9294611e[arg1].field_1024,
           sub_9294611e[arg1].field_1280,
           bool(sub_9294611e[arg1].field_1536),
           sub_9294611e[arg1].field_1792
}

function mintFeeAmount() {
    return mintFeeAmount
}

function authorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor167[arg1])
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function openForPublic() {
    return bool(openForPublic)
}

function sub_fac1c242(?) {
    return bool(sub_fac1c242)
}

function _fallback() payable {
    revert
}

function addAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor151 != msg.sender:
        revert with 0, 'Not owner'
    require arg1
    stor167[address(arg1)] = 1
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor151 != msg.sender:
        revert with 0, 'Not owner'
    require arg1
    require arg1 != msg.sender
    stor151 = arg1
}

function removeAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor151 != msg.sender:
        revert with 0, 'Not owner'
    require arg1
    require arg1 != msg.sender
    stor167[address(arg1)] = 0
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

function setLevel(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor167[msg.sender]:
        if stor151 != msg.sender:
            revert with 0, 'Not authorized'
    sub_9294611e[arg1].field_256 = sub_9294611e[arg1].field_256
    sub_9294611e[arg1].field_512 = sub_9294611e[arg1].field_512
    sub_9294611e[arg1].field_1536 = uint8(bool(sub_9294611e[arg1].field_1536))
    sub_9294611e[arg1].field_1792 = arg2
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function setPriceForSale(uint256 arg1, uint256 arg2, bool arg3) {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if not ownerOf[arg1]:
        revert with 0, 'token not found'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'not owner'
    sub_9294611e[arg1].field_256 = sub_9294611e[arg1].field_256
    sub_9294611e[arg1].field_512 = sub_9294611e[arg1].field_512
    sub_9294611e[arg1].field_1024 = arg2
    sub_9294611e[arg1].field_1536 = uint8(arg3)
    emit SaleToggle(arg1, arg3, arg2);
}

function getAllSaleTokens() {
    if stor165.length > test266151307():
        revert with 0, 65
    if stor165.length:
        mem[128 len 32 * stor165.length] = call.data[calldata.size len 32 * stor165.length]
    idx = 1
    s = 0
    while idx <= stor165.length:
        mem[0] = idx
        mem[32] = 162
        if bool(sub_9294611e[idx].field_1536) != 1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 162
        if s >= stor165.length:
            revert with 0, 50
        mem[(32 * s) + 128] = sub_9294611e[idx].field_0
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=stor165.length, data=mem[128 len 32 * stor165.length])
}

function approve(address arg1, uint256 arg2) {
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

function sub_5f823d28(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if stor151 != msg.sender:
        revert with 0, 'Only owner'
    if bool(stor159.length):
        if bool(stor159.length) == uint255(stor159.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor159[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor159.length = 0
            idx = 0
            while (uint255(stor159.length) * 0.5) + 31 / 32 > idx:
                stor159[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor159.length) == stor159.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor159[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor159.length = 0
            idx = 0
            while stor159.length.field_1 + 31 / 32 > idx:
                stor159[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if sub_9294611e[arg3].field_1280 > -2:
        revert with 0, 17
    sub_9294611e[arg3].field_256 = sub_9294611e[arg3].field_256
    sub_9294611e[arg3].field_512 = arg2
    sub_9294611e[arg3].field_1280++
    sub_9294611e[arg3].field_1536 = 0
    if not arg1:
        stor166[arg3] = stor165.length
        stor165.length++
        storB29A[stor165.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor164[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor164[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor164[stor163[address(arg1)][stor104[address(arg1)] - 1]] = stor164[arg3]
            stor164[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor164[arg3] = balanceOf[address(arg2)]
    else:
        if stor165.length < 1:
            revert with 0, 17
        if stor165.length - 1 >= stor165.length:
            revert with 0, 50
        if stor166[arg3] >= stor165.length:
            revert with 0, 50
        stor165[stor166[arg3]] = stor165[stor165.length]
        stor166[stor165[stor165.length]] = stor166[arg3]
        stor166[arg3] = 0
        if not stor165.length:
            revert with 0, 49
        stor165[stor165.length] = 0
        stor165.length--
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
}

function sub_cc21096f(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    require arg6 == bool(arg6)
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0, 'Initializable: contract is not initializing'
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor101.length) = 0
        stor101.length.field_1 = 23
        stor101.length.field_8 = 'Vending Machines Tycoon' / 256
        idx = 0
        while (uint255(stor101.length) * 0.5) + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        bool(stor101.length) = 0
        stor101.length.field_1 = 23
        stor101.length.field_8 = 'Vending Machines Tycoon' / 256
        idx = 0
        while stor101.length.field_1 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor102.length) = 0
        stor102.length.field_1 = 3
        stor102.length.field_232 = 5655892
        idx = 0
        while (uint255(stor102.length) * 0.5) + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        bool(stor102.length) = 0
        stor102.length.field_1 = 3
        stor102.length.field_232 = 5655892
        idx = 0
        while stor102.length.field_1 + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    royaltyPercentage = arg3
    stor151 = address(arg1)
    stor152 = address(arg2)
    mintFeeAmount = arg4
    stor154[address(arg1)] = 1
    stor154[address(arg2)] = 1
    if bool(stor159.length):
        if bool(stor159.length) == uint255(stor159.length) * 0.5 < 32:
            revert with 0, 34
        if arg5.length:
            stor159[].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            stor159.length = 0
            idx = 0
            while (uint255(stor159.length) * 0.5) + 31 / 32 > idx:
                stor159[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor159.length) == stor159.length.field_1 < 32:
            revert with 0, 34
        if arg5.length:
            stor159[].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            stor159.length = 0
            idx = 0
            while stor159.length.field_1 + 31 / 32 > idx:
                stor159[idx].field_0 = 0
                idx = idx + 1
                continue 
    stor160 = Mask(248, 0, bool(arg6))
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
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
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if sub_9294611e[arg3].field_1280 > -2:
        revert with 0, 17
    sub_9294611e[arg3].field_256 = sub_9294611e[arg3].field_256
    sub_9294611e[arg3].field_512 = arg2
    sub_9294611e[arg3].field_1280++
    sub_9294611e[arg3].field_1536 = 0
    if not arg1:
        stor166[arg3] = stor165.length
        stor165.length++
        storB29A[stor165.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor164[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor164[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor164[stor163[address(arg1)][stor104[address(arg1)] - 1]] = stor164[arg3]
            stor164[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor164[arg3] = balanceOf[address(arg2)]
    else:
        if stor165.length < 1:
            revert with 0, 17
        if stor165.length - 1 >= stor165.length:
            revert with 0, 50
        if stor166[arg3] >= stor165.length:
            revert with 0, 50
        stor165[stor166[arg3]] = stor165[stor165.length]
        stor166[stor165[stor165.length]] = stor166[arg3]
        stor166[arg3] = 0
        if not stor165.length:
            revert with 0, 49
        stor165[stor165.length] = 0
        stor165.length--
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
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, 128, 0
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

function buyToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg1] != msg.sender
    require msg.value >= sub_9294611e[arg1].field_1024
    require sub_9294611e[arg1].field_1536
    if msg.value and royaltyPercentage > -1 / msg.value:
        revert with 0, 17
    if msg.value < msg.value * royaltyPercentage / 100:
        revert with 0, 17
    call stor152 with:
       value msg.value * royaltyPercentage / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor152)
    call stor152.0xdbceb005 with:
         gas gas_remaining wei
        args (msg.value * royaltyPercentage / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_9294611e[arg1].field_512 with:
       value msg.value - (msg.value * royaltyPercentage / 100) wei
         gas 2300 * is_zero(value) wei
    sub_9294611e[arg1].field_256 = sub_9294611e[arg1].field_256
    sub_9294611e[arg1].field_512 = sub_9294611e[arg1].field_512
    sub_9294611e[arg1].field_768 = sub_9294611e[arg1].field_1024
    sub_9294611e[arg1].field_1536 = uint8(bool(sub_9294611e[arg1].field_1536))
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not msg.sender:
        revert with 0, 'ERC721: transfer to the zero address'
    if sub_9294611e[arg1].field_1280 > -2:
        revert with 0, 17
    sub_9294611e[arg1].field_256 = sub_9294611e[arg1].field_256
    sub_9294611e[arg1].field_512 = msg.sender
    sub_9294611e[arg1].field_1280++
    sub_9294611e[arg1].field_1536 = 0
    if not ownerOf[arg1]:
        stor166[arg1] = stor165.length
        stor165.length++
        storB29A[stor165.length] = arg1
    else:
        if ownerOf[arg1] != msg.sender:
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[stor103[arg1]] < 1:
                revert with 0, 17
            if balanceOf[stor103[arg1]] - 1 != stor164[arg1]:
                tokenOfOwnerByIndex[stor103[arg1]][stor164[arg1]] = tokenOfOwnerByIndex[stor103[arg1]][stor104[stor103[arg1]] - 1]
                stor164[stor163[stor103[arg1]][stor104[stor103[arg1]] - 1]] = stor164[arg1]
            stor164[arg1] = 0
            tokenOfOwnerByIndex[stor103[arg1]][stor104[stor103[arg1]] - 1] = 0
    if msg.sender:
        if ownerOf[arg1] != msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = arg1
            stor164[arg1] = balanceOf[address(msg.sender)]
    else:
        if stor165.length < 1:
            revert with 0, 17
        if stor165.length - 1 >= stor165.length:
            revert with 0, 50
        if stor166[arg1] >= stor165.length:
            revert with 0, 50
        stor165[stor166[arg1]] = stor165[stor165.length]
        stor166[stor165[stor165.length]] = stor166[arg1]
        stor166[arg1] = 0
        if not stor165.length:
            revert with 0, 49
        stor165[stor165.length] = 0
        stor165.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor103[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor103[arg1]]--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    emit Transfer(ownerOf[arg1], msg.sender, arg1);
    emit PurchaseEvent(arg1, sub_9294611e[arg1].field_512, msg.sender, sub_9294611e[arg1].field_1024);
}

function name() {
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
            mem[(uint255(stor101.length) * 0.5) + ceil32(uint255(stor101.length) * 0.5) + 192] = 0
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
        mem[stor101.length.field_1 + ceil32(stor101.length.field_1) + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
}

function symbol() {
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
            mem[(uint255(stor102.length) * 0.5) + ceil32(uint255(stor102.length) * 0.5) + 192] = 0
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
        mem[stor102.length.field_1 + ceil32(stor102.length.field_1) + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
}

function baseURL() {
    if bool(stor159.length):
        if bool(stor159.length) == uint255(stor159.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor159.length):
            if bool(stor159.length) == uint255(stor159.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor159.length):
                if 31 < uint255(stor159.length) * 0.5:
                    mem[128] = uint256(stor159.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor159.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor159[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor159.length), data=mem[128 len ceil32(uint255(stor159.length) * 0.5)])
                mem[128] = 256 * stor159.length.field_8
        else:
            if bool(stor159.length) == stor159.length.field_1 < 32:
                revert with 0, 34
            if stor159.length.field_1:
                if 31 < stor159.length.field_1:
                    mem[128] = uint256(stor159.field_0)
                    idx = 128
                    s = 0
                    while stor159.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor159[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor159.length), data=mem[128 len ceil32(uint255(stor159.length) * 0.5)])
                mem[128] = 256 * stor159.length.field_8
        mem[ceil32(uint255(stor159.length) * 0.5) + 192 len ceil32(uint255(stor159.length) * 0.5)] = mem[128 len ceil32(uint255(stor159.length) * 0.5)]
        if ceil32(uint255(stor159.length) * 0.5) > uint255(stor159.length) * 0.5:
            mem[(uint255(stor159.length) * 0.5) + ceil32(uint255(stor159.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor159.length), data=mem[128 len ceil32(uint255(stor159.length) * 0.5)], mem[(2 * ceil32(uint255(stor159.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor159.length) * 0.5)]), 
    if bool(stor159.length) == stor159.length.field_1 < 32:
        revert with 0, 34
    if bool(stor159.length):
        if bool(stor159.length) == uint255(stor159.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor159.length):
            if 31 < uint255(stor159.length) * 0.5:
                mem[128] = uint256(stor159.field_0)
                idx = 128
                s = 0
                while (uint255(stor159.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor159[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor159.length % 128, data=mem[128 len ceil32(stor159.length.field_1)])
            mem[128] = 256 * stor159.length.field_8
    else:
        if bool(stor159.length) == stor159.length.field_1 < 32:
            revert with 0, 34
        if stor159.length.field_1:
            if 31 < stor159.length.field_1:
                mem[128] = uint256(stor159.field_0)
                idx = 128
                s = 0
                while stor159.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor159[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor159.length % 128, data=mem[128 len ceil32(stor159.length.field_1)])
            mem[128] = 256 * stor159.length.field_8
    mem[ceil32(stor159.length.field_1) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
    if ceil32(stor159.length.field_1) > stor159.length.field_1:
        mem[stor159.length.field_1 + ceil32(stor159.length.field_1) + 192] = 0
    return Array(len=stor159.length % 128, data=mem[128 len ceil32(stor159.length.field_1)], mem[(2 * ceil32(stor159.length.field_1)) + 192 len 2 * ceil32(stor159.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
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
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if sub_9294611e[arg3].field_1280 > -2:
        revert with 0, 17
    sub_9294611e[arg3].field_256 = sub_9294611e[arg3].field_256
    sub_9294611e[arg3].field_512 = arg2
    sub_9294611e[arg3].field_1280++
    sub_9294611e[arg3].field_1536 = 0
    if not arg1:
        stor166[arg3] = stor165.length
        stor165.length++
        storB29A[stor165.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor164[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor164[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor164[stor163[address(arg1)][stor104[address(arg1)] - 1]] = stor164[arg3]
            stor164[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor164[arg3] = balanceOf[address(arg2)]
    else:
        if stor165.length < 1:
            revert with 0, 17
        if stor165.length - 1 >= stor165.length:
            revert with 0, 50
        if stor166[arg3] >= stor165.length:
            revert with 0, 50
        stor165[stor166[arg3]] = stor165[stor165.length]
        stor166[stor165[stor165.length]] = stor166[arg3]
        stor166[arg3] = 0
        if not stor165.length:
            revert with 0, 49
        stor165[stor165.length] = 0
        stor165.length--
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

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if bool(openForPublic) != 1:
        revert with 0, 'not open'
    require msg.sender
    if stor165.length > !arg1:
        revert with 0, 17
    if stor165.length + arg1 > 10000:
        revert with 0, 'max supply'
    if arg1 <= 0:
        revert with 0, 'Min 1'
    if arg1 > 12:
        revert with 0, 'Max 12'
    mem[0] = msg.sender
    mem[32] = 154
    if stor154[msg.sender]:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 1
        while idx <= arg1:
            stor161++
            _460 = mem[64]
            mem[64] = mem[64] + 32
            mem[_460] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor161]:
                revert with 0, 'ERC721: token already minted'
            mem[0] = stor161
            mem[32] = 162
            _471 = mem[64]
            mem[64] = mem[64] + 256
            mem[_471] = sub_9294611e[stor161].field_0
            mem[_471 + 32] = sub_9294611e[stor161].field_256
            mem[_471 + 96] = sub_9294611e[stor161].field_768
            mem[_471 + 128] = sub_9294611e[stor161].field_1024
            mem[_471 + 224] = sub_9294611e[stor161].field_1792
            mem[_471 + 64] = msg.sender
            if sub_9294611e[stor161].field_1280 > -2:
                revert with 0, 17
            mem[_471 + 160] = sub_9294611e[stor161].field_1280 + 1
            mem[_471 + 192] = 0
            sub_9294611e[stor161].field_256 = sub_9294611e[stor161].field_256
            sub_9294611e[stor161].field_512 = msg.sender
            sub_9294611e[stor161].field_1280++
            sub_9294611e[stor161].field_1536 = 0
            stor166[stor161] = stor165.length
            stor165.length++
            storB29A[stor165.length] = stor161
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor161
                    mem[32] = 103
                    ownerOf[stor161] = msg.sender
                    emit Transfer(0, msg.sender, stor161);
                    if not ext_code.size(msg.sender):
                        _538 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_538] = stor161
                        mem[_538 + 32] = msg.sender
                        mem[_538 + 64] = msg.sender
                        mem[_538 + 96] = 0
                        mem[_538 + 128] = 0
                        mem[_538 + 160] = 0
                        mem[_538 + 192] = 0
                        mem[_538 + 224] = 100
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor161
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _460 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor161, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _922 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_922] == Mask(32, 224, mem[_922])
                        if Mask(32, 224, mem[_922]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _1066 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_1066] = stor161
                        mem[_1066 + 32] = msg.sender
                        mem[_1066 + 64] = msg.sender
                        mem[_1066 + 96] = 0
                        mem[_1066 + 128] = 0
                        mem[_1066 + 160] = 0
                        mem[_1066 + 192] = 0
                        mem[_1066 + 224] = 100
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = stor161
                    stor164[stor161] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor161
                    mem[32] = 103
                    ownerOf[stor161] = msg.sender
                    emit Transfer(0, msg.sender, stor161);
                    if not ext_code.size(msg.sender):
                        _572 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_572] = stor161
                        mem[_572 + 32] = msg.sender
                        mem[_572 + 64] = msg.sender
                        mem[_572 + 96] = 0
                        mem[_572 + 128] = 0
                        mem[_572 + 160] = 0
                        mem[_572 + 192] = 0
                        mem[_572 + 224] = 100
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor161
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _460 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor161, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _924 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_924] == Mask(32, 224, mem[_924])
                        if Mask(32, 224, mem[_924]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _1088 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_1088] = stor161
                        mem[_1088 + 32] = msg.sender
                        mem[_1088 + 64] = msg.sender
                        mem[_1088 + 96] = 0
                        mem[_1088 + 128] = 0
                        mem[_1088 + 160] = 0
                        mem[_1088 + 192] = 0
                        mem[_1088 + 224] = 100
            else:
                if stor165.length < 1:
                    revert with 0, 17
                if stor165.length - 1 >= stor165.length:
                    revert with 0, 50
                if stor166[stor161] >= stor165.length:
                    revert with 0, 50
                stor165[stor166[stor161]] = stor165[stor165.length]
                stor166[stor165[stor165.length]] = stor166[stor161]
                stor166[stor161] = 0
                if not stor165.length:
                    revert with 0, 49
                stor165[stor165.length] = 0
                stor165.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor161
                mem[32] = 103
                ownerOf[stor161] = msg.sender
                emit Transfer(0, msg.sender, stor161);
                if not ext_code.size(msg.sender):
                    _602 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_602] = stor161
                    mem[_602 + 32] = msg.sender
                    mem[_602 + 64] = msg.sender
                    mem[_602 + 96] = 0
                    mem[_602 + 128] = 0
                    mem[_602 + 160] = 0
                    mem[_602 + 192] = 0
                    mem[_602 + 224] = 100
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor161
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _460 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor161, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _926 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_926] == Mask(32, 224, mem[_926])
                    if Mask(32, 224, mem[_926]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    _1110 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1110] = stor161
                    mem[_1110 + 32] = msg.sender
                    mem[_1110 + 64] = msg.sender
                    mem[_1110 + 96] = 0
                    mem[_1110 + 128] = 0
                    mem[_1110 + 160] = 0
                    mem[_1110 + 192] = 0
                    mem[_1110 + 224] = 100
            mem[0] = stor161
            mem[32] = 162
            sub_9294611e[stor161].field_0 = stor161
            sub_9294611e[stor161].field_256 = msg.sender
            sub_9294611e[stor161].field_512 = msg.sender
            sub_9294611e[stor161].field_768 = 0
            sub_9294611e[stor161].field_1024 = 0
            sub_9294611e[stor161].field_1280 = 0
            sub_9294611e[stor161].field_1536 = 0
            sub_9294611e[stor161].field_1792 = 100
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if mintFeeAmount and arg1 > -1 / mintFeeAmount:
            revert with 0, 17
        if mintFeeAmount * arg1 != msg.value:
            revert with 0, 'Not enough fee'
        call stor152 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0xdbceb00500000000000000000000000000000000000000000000000000000000
        mem[100] = msg.value
        require ext_code.size(stor152)
        call stor152.0xdbceb005 with:
             gas gas_remaining wei
            args msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 1
        while idx <= arg1:
            stor161++
            _461 = mem[64]
            mem[64] = mem[64] + 32
            mem[_461] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor161]:
                revert with 0, 'ERC721: token already minted'
            mem[0] = stor161
            mem[32] = 162
            _474 = mem[64]
            mem[64] = mem[64] + 256
            mem[_474] = sub_9294611e[stor161].field_0
            mem[_474 + 32] = sub_9294611e[stor161].field_256
            mem[_474 + 96] = sub_9294611e[stor161].field_768
            mem[_474 + 128] = sub_9294611e[stor161].field_1024
            mem[_474 + 224] = sub_9294611e[stor161].field_1792
            mem[_474 + 64] = msg.sender
            if sub_9294611e[stor161].field_1280 > -2:
                revert with 0, 17
            mem[_474 + 160] = sub_9294611e[stor161].field_1280 + 1
            mem[_474 + 192] = 0
            sub_9294611e[stor161].field_256 = sub_9294611e[stor161].field_256
            sub_9294611e[stor161].field_512 = msg.sender
            sub_9294611e[stor161].field_1280++
            sub_9294611e[stor161].field_1536 = 0
            stor166[stor161] = stor165.length
            stor165.length++
            storB29A[stor165.length] = stor161
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor161
                    mem[32] = 103
                    ownerOf[stor161] = msg.sender
                    emit Transfer(0, msg.sender, stor161);
                    if not ext_code.size(msg.sender):
                        _548 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_548] = stor161
                        mem[_548 + 32] = msg.sender
                        mem[_548 + 64] = msg.sender
                        mem[_548 + 96] = 0
                        mem[_548 + 128] = mintFeeAmount * arg1
                        mem[_548 + 160] = 0
                        mem[_548 + 192] = 0
                        mem[_548 + 224] = 100
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor161
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _461 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor161, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _928 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_928] == Mask(32, 224, mem[_928])
                        if Mask(32, 224, mem[_928]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _1132 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_1132] = stor161
                        mem[_1132 + 32] = msg.sender
                        mem[_1132 + 64] = msg.sender
                        mem[_1132 + 96] = 0
                        mem[_1132 + 128] = mintFeeAmount * arg1
                        mem[_1132 + 160] = 0
                        mem[_1132 + 192] = 0
                        mem[_1132 + 224] = 100
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = stor161
                    stor164[stor161] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor161
                    mem[32] = 103
                    ownerOf[stor161] = msg.sender
                    emit Transfer(0, msg.sender, stor161);
                    if not ext_code.size(msg.sender):
                        _584 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_584] = stor161
                        mem[_584 + 32] = msg.sender
                        mem[_584 + 64] = msg.sender
                        mem[_584 + 96] = 0
                        mem[_584 + 128] = mintFeeAmount * arg1
                        mem[_584 + 160] = 0
                        mem[_584 + 192] = 0
                        mem[_584 + 224] = 100
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor161
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _461 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor161, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _930 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_930] == Mask(32, 224, mem[_930])
                        if Mask(32, 224, mem[_930]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _1154 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_1154] = stor161
                        mem[_1154 + 32] = msg.sender
                        mem[_1154 + 64] = msg.sender
                        mem[_1154 + 96] = 0
                        mem[_1154 + 128] = mintFeeAmount * arg1
                        mem[_1154 + 160] = 0
                        mem[_1154 + 192] = 0
                        mem[_1154 + 224] = 100
            else:
                if stor165.length < 1:
                    revert with 0, 17
                if stor165.length - 1 >= stor165.length:
                    revert with 0, 50
                if stor166[stor161] >= stor165.length:
                    revert with 0, 50
                stor165[stor166[stor161]] = stor165[stor165.length]
                stor166[stor165[stor165.length]] = stor166[stor161]
                stor166[stor161] = 0
                if not stor165.length:
                    revert with 0, 49
                stor165[stor165.length] = 0
                stor165.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor161
                mem[32] = 103
                ownerOf[stor161] = msg.sender
                emit Transfer(0, msg.sender, stor161);
                if not ext_code.size(msg.sender):
                    _612 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_612] = stor161
                    mem[_612 + 32] = msg.sender
                    mem[_612 + 64] = msg.sender
                    mem[_612 + 96] = 0
                    mem[_612 + 128] = mintFeeAmount * arg1
                    mem[_612 + 160] = 0
                    mem[_612 + 192] = 0
                    mem[_612 + 224] = 100
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor161
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _461 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor161, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _932 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_932] == Mask(32, 224, mem[_932])
                    if Mask(32, 224, mem[_932]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    _1176 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1176] = stor161
                    mem[_1176 + 32] = msg.sender
                    mem[_1176 + 64] = msg.sender
                    mem[_1176 + 96] = 0
                    mem[_1176 + 128] = mintFeeAmount * arg1
                    mem[_1176 + 160] = 0
                    mem[_1176 + 192] = 0
                    mem[_1176 + 224] = 100
            mem[0] = stor161
            mem[32] = 162
            sub_9294611e[stor161].field_0 = stor161
            sub_9294611e[stor161].field_256 = msg.sender
            sub_9294611e[stor161].field_512 = msg.sender
            sub_9294611e[stor161].field_768 = 0
            sub_9294611e[stor161].field_1024 = mintFeeAmount * arg1
            sub_9294611e[stor161].field_1280 = 0
            sub_9294611e[stor161].field_1536 = 0
            sub_9294611e[stor161].field_1792 = 100
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 103
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor159.length):
        if bool(stor159.length) == uint255(stor159.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor159.length):
            if bool(stor159.length) == uint255(stor159.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor159.length):
                if uint255(stor159.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor159.length) * 0.5) + 224 len ceil32(uint255(stor159.length) * 0.5)] = mem[128 len ceil32(uint255(stor159.length) * 0.5)]
                    mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 257] = mem[ceil32(uint255(stor159.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192])] = mem[ceil32(uint255(stor159.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192]) > mem[ceil32(uint255(stor159.length) * 0.5) + 192]:
                        mem[mem[ceil32(uint255(stor159.length) * 0.5) + 192] + ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 289] = 0
                    return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + 192], data=mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192])]), 
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
                mem[ceil32(uint255(stor159.length) * 0.5) + 128] = s
                if s:
                    mem[ceil32(uint255(stor159.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor159.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor159.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor159.length) * 0.5)] = mem[128 len ceil32(uint255(stor159.length) * 0.5)]
                if ceil32(uint255(stor159.length) * 0.5) > uint255(stor159.length) * 0.5:
                    mem[(uint255(stor159.length) * 0.5) + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])] = mem[ceil32(uint255(stor159.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])]
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192] = 32
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]:
                    mem[mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256] = 0
                return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]), 
            if 31 >= uint255(stor159.length) * 0.5:
                mem[128] = 256 * stor159.length.field_8
                if uint255(stor159.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor159.length) * 0.5) + 224 len ceil32(uint255(stor159.length) * 0.5)] = mem[128 len ceil32(uint255(stor159.length) * 0.5)]
                    mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 257] = mem[ceil32(uint255(stor159.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192])] = mem[ceil32(uint255(stor159.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192]) > mem[ceil32(uint255(stor159.length) * 0.5) + 192]:
                        mem[mem[ceil32(uint255(stor159.length) * 0.5) + 192] + ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 289] = 0
                    return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + 192], data=mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192])]), 
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
                mem[ceil32(uint255(stor159.length) * 0.5) + 128] = s
                if s:
                    mem[ceil32(uint255(stor159.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor159.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor159.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor159.length) * 0.5)] = mem[128 len ceil32(uint255(stor159.length) * 0.5)]
                if ceil32(uint255(stor159.length) * 0.5) > uint255(stor159.length) * 0.5:
                    mem[(uint255(stor159.length) * 0.5) + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])] = mem[ceil32(uint255(stor159.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])]
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192] = 32
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]:
                    mem[mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256] = 0
                return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]), 
            mem[128] = uint256(stor159.field_0)
            idx = 128
            s = 0
            while (uint255(stor159.length) * 0.5) + 96 > idx:
                mem[idx + 32] = stor159[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if uint255(stor159.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor159.length) * 0.5) + 224 len ceil32(uint255(stor159.length) * 0.5)] = mem[128 len ceil32(uint255(stor159.length) * 0.5)]
                mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 257] = mem[ceil32(uint255(stor159.length) * 0.5) + 192]
                mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192])] = mem[ceil32(uint255(stor159.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192]) > mem[ceil32(uint255(stor159.length) * 0.5) + 192]:
                    mem[mem[ceil32(uint255(stor159.length) * 0.5) + 192] + ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 289] = 0
                return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + 192], data=mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192])]), 
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
            mem[ceil32(uint255(stor159.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor159.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor159.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor159.length) * 0.5)] = mem[128 len ceil32(uint255(stor159.length) * 0.5)]
                if ceil32(uint255(stor159.length) * 0.5) > uint255(stor159.length) * 0.5:
                    mem[(uint255(stor159.length) * 0.5) + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192] = 0
            else:
                mem[ceil32(uint255(stor159.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor159.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor159.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor159.length) * 0.5)] = mem[128 len ceil32(uint255(stor159.length) * 0.5)]
                if ceil32(uint255(stor159.length) * 0.5) <= uint255(stor159.length) * 0.5:
                    mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])] = mem[ceil32(uint255(stor159.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])]
                    mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor159.length) * 0.5) + 128]:
                        _4410 = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224 len ceil32(_4410) + 32], 
                    _4411 = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224 len ceil32(_4411) + 32], 
                mem[(uint255(stor159.length) * 0.5) + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])] = mem[ceil32(uint255(stor159.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])]
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192] = 32
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]), 
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) + 32], 
        if bool(stor159.length) == stor159.length.field_1 < 32:
            revert with 0, 34
        if not stor159.length.field_1:
            if uint255(stor159.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor159.length) * 0.5) + 224 len ceil32(uint255(stor159.length) * 0.5)] = mem[128 len ceil32(uint255(stor159.length) * 0.5)]
                mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 257] = mem[ceil32(uint255(stor159.length) * 0.5) + 192]
                mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192])] = mem[ceil32(uint255(stor159.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192]) > mem[ceil32(uint255(stor159.length) * 0.5) + 192]:
                    mem[mem[ceil32(uint255(stor159.length) * 0.5) + 192] + ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 289] = 0
                return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + 192], data=mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192])]), 
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
            mem[ceil32(uint255(stor159.length) * 0.5) + 128] = s
            if s:
                mem[ceil32(uint255(stor159.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor159.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor159.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor159.length) * 0.5)] = mem[128 len ceil32(uint255(stor159.length) * 0.5)]
            if ceil32(uint255(stor159.length) * 0.5) > uint255(stor159.length) * 0.5:
                mem[(uint255(stor159.length) * 0.5) + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])] = mem[ceil32(uint255(stor159.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])]
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192] = 32
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]), 
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) + 32], 
        if 31 >= stor159.length.field_1:
            mem[128] = 256 * stor159.length.field_8
            if uint255(stor159.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor159.length) * 0.5) + 224 len ceil32(uint255(stor159.length) * 0.5)] = mem[128 len ceil32(uint255(stor159.length) * 0.5)]
                mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 257] = mem[ceil32(uint255(stor159.length) * 0.5) + 192]
                mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192])] = mem[ceil32(uint255(stor159.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192]) > mem[ceil32(uint255(stor159.length) * 0.5) + 192]:
                    mem[mem[ceil32(uint255(stor159.length) * 0.5) + 192] + ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 289] = 0
                return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + 192], data=mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192])]), 
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
            mem[ceil32(uint255(stor159.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor159.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor159.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor159.length) * 0.5)] = mem[128 len ceil32(uint255(stor159.length) * 0.5)]
                if ceil32(uint255(stor159.length) * 0.5) <= uint255(stor159.length) * 0.5:
                    mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])] = mem[ceil32(uint255(stor159.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])]
                    mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192] = 32
                    mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) + 32], 
                mem[(uint255(stor159.length) * 0.5) + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])] = mem[ceil32(uint255(stor159.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])]
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128]) > mem[ceil32(uint255(stor159.length) * 0.5) + 128]:
                    mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) + 32], 
                _3728 = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]), 
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224 len ceil32(_3728) + 32], 
            mem[ceil32(uint255(stor159.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor159.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor159.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor159.length) * 0.5)] = mem[128 len ceil32(uint255(stor159.length) * 0.5)]
            if ceil32(uint255(stor159.length) * 0.5) > uint255(stor159.length) * 0.5:
                mem[(uint255(stor159.length) * 0.5) + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])] = mem[ceil32(uint255(stor159.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])]
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192] = 32
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]), 
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) + 32], 
        mem[128] = uint256(stor159.field_0)
        idx = 128
        s = 0
        while stor159.length.field_1 + 96 > idx:
            mem[idx + 32] = stor159[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if uint255(stor159.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor159.length) * 0.5) + 224 len ceil32(uint255(stor159.length) * 0.5)] = mem[128 len ceil32(uint255(stor159.length) * 0.5)]
            mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 225] = 32
            mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 257] = mem[ceil32(uint255(stor159.length) * 0.5) + 192]
            mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192])] = mem[ceil32(uint255(stor159.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192]) > mem[ceil32(uint255(stor159.length) * 0.5) + 192]:
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + 192] + ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 289] = 0
            return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + 192], data=mem[ceil32(uint255(stor159.length) * 0.5) + (uint255(stor159.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 192])]), 
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
        mem[ceil32(uint255(stor159.length) * 0.5) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor159.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor159.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor159.length) * 0.5)] = mem[128 len ceil32(uint255(stor159.length) * 0.5)]
            if ceil32(uint255(stor159.length) * 0.5) <= uint255(stor159.length) * 0.5:
                mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])] = mem[ceil32(uint255(stor159.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])]
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192] = 32
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]), 
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) + 32], 
            mem[(uint255(stor159.length) * 0.5) + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])] = mem[ceil32(uint255(stor159.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])]
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor159.length) * 0.5) + 128]:
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]), 
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) + 32], 
            _4417 = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]), 
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224 len ceil32(_4417) + 32], 
        mem[ceil32(uint255(stor159.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor159.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor159.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor159.length) * 0.5)] = mem[128 len ceil32(uint255(stor159.length) * 0.5)]
        if ceil32(uint255(stor159.length) * 0.5) <= uint255(stor159.length) * 0.5:
            mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])] = mem[ceil32(uint255(stor159.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])]
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor159.length) * 0.5) + 128]:
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]), 
                mem[mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) + 32], 
            _4419 = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]), 
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224 len ceil32(_4419) + 32], 
        mem[(uint255(stor159.length) * 0.5) + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])] = mem[ceil32(uint255(stor159.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128])]
        mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 192] = 32
        if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor159.length) * 0.5) + 128]:
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]), 
            mem[mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) + 32], 
        _4421 = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160])]), 
        mem[mem[ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor159.length) * 0.5) + 128] + ceil32(uint255(stor159.length) * 0.5) + ceil32(s) + (uint255(stor159.length) * 0.5) + 224 len ceil32(_4421) + 32], 
    if bool(stor159.length) == stor159.length.field_1 < 32:
        revert with 0, 34
    mem[96] = stor159.length.field_1
    if bool(stor159.length):
        if bool(stor159.length) == uint255(stor159.length) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor159.length):
            if stor159.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor159.length.field_1) + 224 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
                mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 225] = 32
                mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257] = mem[ceil32(stor159.length.field_1) + 192]
                mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])] = mem[ceil32(stor159.length.field_1) + 224 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor159.length.field_1) + 192]) <= mem[ceil32(stor159.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor159.length.field_1) + 192], data=mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]), 
                mem[mem[ceil32(stor159.length.field_1) + 192] + ceil32(stor159.length.field_1) + stor159.length.field_1 + 289] = 0
                return 32, mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257 len ceil32(mem[ceil32(stor159.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor159.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
                if ceil32(stor159.length.field_1) <= stor159.length.field_1:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
                    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                        _3734 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3734)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3734)]
                        if ceil32(_3734) > _3734:
                            mem[_3734 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3734) + 32], 
                    _3735 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3735)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3735)]
                    if ceil32(_3735) > _3735:
                        mem[_3735 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3735) + 32], 
                mem[stor159.length.field_1 + ceil32(stor159.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                    _3736 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3736)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3736)]
                    if ceil32(_3736) > _3736:
                        mem[_3736 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3736) + 32], 
                _3737 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3737)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3737)]
                if ceil32(_3737) > _3737:
                    mem[_3737 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3737) + 32], 
            mem[ceil32(stor159.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
            if ceil32(stor159.length.field_1) <= stor159.length.field_1:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                    _3738 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3738)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3738)]
                    if ceil32(_3738) > _3738:
                        mem[_3738 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3738) + 32], 
                _3739 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3739)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3739)]
                if ceil32(_3739) > _3739:
                    mem[_3739 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3739) + 32], 
            mem[stor159.length.field_1 + ceil32(stor159.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                _3740 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3740)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3740)]
                if ceil32(_3740) > _3740:
                    mem[_3740 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3740) + 32], 
            _3741 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3741)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3741)]
            if ceil32(_3741) > _3741:
                mem[_3741 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3741) + 32], 
        if 31 >= uint255(stor159.length) * 0.5:
            mem[128] = 256 * stor159.length.field_8
            if stor159.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor159.length.field_1) + 224 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
                mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 225] = 32
                mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257] = mem[ceil32(stor159.length.field_1) + 192]
                mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])] = mem[ceil32(stor159.length.field_1) + 224 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor159.length.field_1) + 192]) <= mem[ceil32(stor159.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor159.length.field_1) + 192], data=mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]), 
                mem[mem[ceil32(stor159.length.field_1) + 192] + ceil32(stor159.length.field_1) + stor159.length.field_1 + 289] = 0
                return 32, mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257 len ceil32(mem[ceil32(stor159.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor159.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
                if ceil32(stor159.length.field_1) <= stor159.length.field_1:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
                    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                        _3750 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3750)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3750)]
                        if ceil32(_3750) > _3750:
                            mem[_3750 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3750) + 32], 
                    _3751 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3751)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3751)]
                    if ceil32(_3751) > _3751:
                        mem[_3751 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3751) + 32], 
                mem[stor159.length.field_1 + ceil32(stor159.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                    _3752 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3752)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3752)]
                    if ceil32(_3752) > _3752:
                        mem[_3752 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3752) + 32], 
                _3753 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3753)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3753)]
                if ceil32(_3753) > _3753:
                    mem[_3753 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3753) + 32], 
            mem[ceil32(stor159.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
            if ceil32(stor159.length.field_1) <= stor159.length.field_1:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                    _3754 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3754)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3754)]
                    if ceil32(_3754) > _3754:
                        mem[_3754 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3754) + 32], 
                _3755 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3755)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3755)]
                if ceil32(_3755) > _3755:
                    mem[_3755 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3755) + 32], 
            mem[stor159.length.field_1 + ceil32(stor159.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                _3756 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3756)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3756)]
                if ceil32(_3756) > _3756:
                    mem[_3756 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3756) + 32], 
            _3757 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3757)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3757)]
            if ceil32(_3757) > _3757:
                mem[_3757 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3757) + 32], 
        mem[0] = 159
        mem[128] = uint256(stor159.field_0)
        idx = 128
        s = 0
        while (uint255(stor159.length) * 0.5) + 96 > idx:
            mem[idx + 32] = stor159[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor159.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor159.length.field_1) + 224 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 225] = 32
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257] = mem[ceil32(stor159.length.field_1) + 192]
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])] = mem[ceil32(stor159.length.field_1) + 224 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor159.length.field_1) + 192]) <= mem[ceil32(stor159.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor159.length.field_1) + 192], data=mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]), 
            mem[mem[ceil32(stor159.length.field_1) + 192] + ceil32(stor159.length.field_1) + stor159.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257 len ceil32(mem[ceil32(stor159.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor159.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
            if ceil32(stor159.length.field_1) <= stor159.length.field_1:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                    _4422 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_4422)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4422)]
                    if ceil32(_4422) > _4422:
                        mem[_4422 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_4422) + 32], 
                _4423 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_4423)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4423)]
                if ceil32(_4423) > _4423:
                    mem[_4423 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_4423) + 32], 
            mem[stor159.length.field_1 + ceil32(stor159.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                _4424 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_4424)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4424)]
                if ceil32(_4424) > _4424:
                    mem[_4424 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_4424) + 32], 
            _4425 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_4425)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4425)]
            if ceil32(_4425) > _4425:
                mem[_4425 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_4425) + 32], 
        mem[ceil32(stor159.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
        if ceil32(stor159.length.field_1) <= stor159.length.field_1:
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                _4426 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_4426)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4426)]
                if ceil32(_4426) > _4426:
                    mem[_4426 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_4426) + 32], 
            _4427 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_4427)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4427)]
            if ceil32(_4427) > _4427:
                mem[_4427 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_4427) + 32], 
        mem[stor159.length.field_1 + ceil32(stor159.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
            _4428 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_4428)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4428)]
            if ceil32(_4428) > _4428:
                mem[_4428 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_4428) + 32], 
        _4429 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_4429)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4429)]
        if ceil32(_4429) > _4429:
            mem[_4429 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_4429) + 32], 
    if bool(stor159.length) == stor159.length.field_1 < 32:
        revert with 0, 34
    if not stor159.length.field_1:
        if stor159.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor159.length.field_1) + 224 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 225] = 32
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257] = mem[ceil32(stor159.length.field_1) + 192]
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])] = mem[ceil32(stor159.length.field_1) + 224 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor159.length.field_1) + 192]) <= mem[ceil32(stor159.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor159.length.field_1) + 192], data=mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]), 
            mem[mem[ceil32(stor159.length.field_1) + 192] + ceil32(stor159.length.field_1) + stor159.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257 len ceil32(mem[ceil32(stor159.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor159.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
            if ceil32(stor159.length.field_1) <= stor159.length.field_1:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                    _3758 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3758)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3758)]
                    if ceil32(_3758) > _3758:
                        mem[_3758 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3758) + 32], 
                _3759 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3759)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3759)]
                if ceil32(_3759) > _3759:
                    mem[_3759 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3759) + 32], 
            mem[stor159.length.field_1 + ceil32(stor159.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                _3760 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3760)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3760)]
                if ceil32(_3760) > _3760:
                    mem[_3760 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3760) + 32], 
            _3761 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3761)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3761)]
            if ceil32(_3761) > _3761:
                mem[_3761 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3761) + 32], 
        mem[ceil32(stor159.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
        if ceil32(stor159.length.field_1) <= stor159.length.field_1:
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                _3762 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3762)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3762)]
                if ceil32(_3762) > _3762:
                    mem[_3762 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3762) + 32], 
            _3763 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3763)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3763)]
            if ceil32(_3763) > _3763:
                mem[_3763 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3763) + 32], 
        mem[stor159.length.field_1 + ceil32(stor159.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
            _3764 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3764)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3764)]
            if ceil32(_3764) > _3764:
                mem[_3764 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3764) + 32], 
        _3765 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3765)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3765)]
        if ceil32(_3765) > _3765:
            mem[_3765 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3765) + 32], 
    if 31 >= stor159.length.field_1:
        mem[128] = 256 * stor159.length.field_8
        if stor159.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor159.length.field_1) + 224 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 225] = 32
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257] = mem[ceil32(stor159.length.field_1) + 192]
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])] = mem[ceil32(stor159.length.field_1) + 224 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor159.length.field_1) + 192]) <= mem[ceil32(stor159.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor159.length.field_1) + 192], data=mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]), 
            mem[mem[ceil32(stor159.length.field_1) + 192] + ceil32(stor159.length.field_1) + stor159.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257 len ceil32(mem[ceil32(stor159.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor159.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
            if ceil32(stor159.length.field_1) <= stor159.length.field_1:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                    _3774 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3774)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3774)]
                    if ceil32(_3774) > _3774:
                        mem[_3774 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3774) + 32], 
                _3775 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3775)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3775)]
                if ceil32(_3775) > _3775:
                    mem[_3775 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3775) + 32], 
            mem[stor159.length.field_1 + ceil32(stor159.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                _3776 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3776)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3776)]
                if ceil32(_3776) > _3776:
                    mem[_3776 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3776) + 32], 
            _3777 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3777)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3777)]
            if ceil32(_3777) > _3777:
                mem[_3777 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3777) + 32], 
        mem[ceil32(stor159.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
        if ceil32(stor159.length.field_1) <= stor159.length.field_1:
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                _3778 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3778)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3778)]
                if ceil32(_3778) > _3778:
                    mem[_3778 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3778) + 32], 
            _3779 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3779)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3779)]
            if ceil32(_3779) > _3779:
                mem[_3779 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3779) + 32], 
        mem[stor159.length.field_1 + ceil32(stor159.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
            _3780 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3780)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3780)]
            if ceil32(_3780) > _3780:
                mem[_3780 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3780) + 32], 
        _3781 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_3781)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3781)]
        if ceil32(_3781) > _3781:
            mem[_3781 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_3781) + 32], 
    mem[0] = 159
    mem[128] = uint256(stor159.field_0)
    idx = 128
    s = 0
    while stor159.length.field_1 + 96 > idx:
        mem[idx + 32] = stor159[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor159.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor159.length.field_1) + 224 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
        mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 225] = 32
        mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257] = mem[ceil32(stor159.length.field_1) + 192]
        mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])] = mem[ceil32(stor159.length.field_1) + 224 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor159.length.field_1) + 192]) <= mem[ceil32(stor159.length.field_1) + 192]:
            return Array(len=mem[ceil32(stor159.length.field_1) + 192], data=mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]), 
        mem[mem[ceil32(stor159.length.field_1) + 192] + ceil32(stor159.length.field_1) + stor159.length.field_1 + 289] = 0
        return 32, mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257 len ceil32(mem[ceil32(stor159.length.field_1) + 192]) + 32], 
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
    mem[ceil32(stor159.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
        if ceil32(stor159.length.field_1) <= stor159.length.field_1:
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                _4430 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_4430)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4430)]
                if ceil32(_4430) > _4430:
                    mem[_4430 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_4430) + 32], 
            _4431 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_4431)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4431)]
            if ceil32(_4431) > _4431:
                mem[_4431 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_4431) + 32], 
        mem[stor159.length.field_1 + ceil32(stor159.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
            _4432 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_4432)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4432)]
            if ceil32(_4432) > _4432:
                mem[_4432 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_4432) + 32], 
        _4433 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_4433)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4433)]
        if ceil32(_4433) > _4433:
            mem[_4433 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_4433) + 32], 
    mem[ceil32(stor159.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
            revert with 0, 50
        mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
    if ceil32(stor159.length.field_1) <= stor159.length.field_1:
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
            _4434 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_4434)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4434)]
            if ceil32(_4434) > _4434:
                mem[_4434 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_4434) + 32], 
        _4435 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_4435)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4435)]
        if ceil32(_4435) > _4435:
            mem[_4435 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_4435) + 32], 
    mem[stor159.length.field_1 + ceil32(stor159.length.field_1) + ceil32(s) + 192] = 0
    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
    mem[64] = mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192
    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 32
    if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
        _4436 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_4436)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4436)]
        if ceil32(_4436) > _4436:
            mem[_4436 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_4436) + 32], 
    _4437 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
    mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256 len ceil32(_4437)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4437)]
    if ceil32(_4437) > _4437:
        mem[_4437 + mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 256] = 0
    return 32, mem[mem[ceil32(stor159.length.field_1) + 128] + ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 224 len ceil32(_4437) + 32], 
}



}
