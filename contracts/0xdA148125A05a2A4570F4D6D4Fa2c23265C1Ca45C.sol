contract main {




// =====================  Runtime code  =====================


#
#  - sub_a54dbcf6(?)
#  - tokenURI(uint256 arg1)
#
const maxSupply = 10000

const sub_f91db6c7(?) = 900


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
mapping of struct sub_7b26b183;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor164;
array of uint256 stor165;
mapping of uint256 stor166;
mapping of uint8 stor167;

function sub_001570de(?) {
    return sub_001570deAddress
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    require arg2 == arg2
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

function sub_7b26b183(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_7b26b183[arg1].field_0, 
           sub_7b26b183[arg1].field_256,
           sub_7b26b183[arg1].field_512,
           sub_7b26b183[arg1].field_768,
           sub_7b26b183[arg1].field_1024,
           sub_7b26b183[arg1].field_1280,
           bool(sub_7b26b183[arg1].field_1536),
           sub_7b26b183[arg1].field_1792
}

function royaltyPercentage() {
    return royaltyPercentage
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
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_f33d627f(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor167[address(msg.sender)]:
        if stor151 != msg.sender:
            revert with 0, 'Not authorized'
    sub_7b26b183[arg1].field_256 = sub_7b26b183[arg1].field_256
    sub_7b26b183[arg1].field_512 = sub_7b26b183[arg1].field_512
    sub_7b26b183[arg1].field_1536 = uint8(bool(sub_7b26b183[arg1].field_1536))
    sub_7b26b183[arg1].field_1792 = arg2
}

function setPriceForSale(uint256 arg1, uint256 arg2, bool arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg1]:
        revert with 0, 'token not found'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'not owner'
    sub_7b26b183[arg1].field_256 = sub_7b26b183[arg1].field_256
    sub_7b26b183[arg1].field_512 = sub_7b26b183[arg1].field_512
    sub_7b26b183[arg1].field_1024 = arg2
    sub_7b26b183[arg1].field_1536 = uint8(arg3)
    emit SaleToggle(arg1, arg3, arg2);
}

function getAllSaleTokens() {
    if stor165.length > test266151307():
        revert with 'NH{q', 65
    if stor165.length:
        mem[128 len 32 * stor165.length] = call.data[calldata.size len 32 * stor165.length]
    idx = 1
    s = 0
    while idx <= stor165.length:
        mem[0] = idx
        mem[32] = 162
        if bool(sub_7b26b183[idx].field_1536) != 1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 162
        if s >= stor165.length:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = sub_7b26b183[idx].field_0
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=stor165.length, data=mem[128 len 32 * stor165.length])
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

function sub_5f823d28(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if stor151 != msg.sender:
        revert with 0, 'Only owner'
    if bool(stor159.length):
        if bool(stor159.length) == stor159.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor159[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor159.length = 0
            idx = 0
            while stor159.length.field_1 + 31 / 32 > idx:
                stor159[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor159.length) == stor159.length.field_1 < 32:
            revert with 'NH{q', 34
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
    if sub_7b26b183[arg3].field_1280 > -2:
        revert with 'NH{q', 17
    sub_7b26b183[arg3].field_256 = sub_7b26b183[arg3].field_256
    sub_7b26b183[arg3].field_512 = arg2
    sub_7b26b183[arg3].field_1280++
    sub_7b26b183[arg3].field_1536 = 0
    if not arg1:
        stor166[arg3] = stor165.length
        stor165.length++
        stor165[stor165.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor164[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if stor165.length - 1 >= stor165.length:
            revert with 'NH{q', 50
        if stor166[arg3] >= stor165.length:
            revert with 'NH{q', 50
        stor165[stor166[arg3]] = stor165[stor165.length]
        stor166[stor165[stor165.length]] = stor166[arg3]
        stor166[arg3] = 0
        if not stor165.length:
            revert with 'NH{q', 49
        stor165[stor165.length] = 0
        stor165.length--
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
}

function buyToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ownerOf[arg1]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg1] != msg.sender
    require msg.value >= sub_7b26b183[arg1].field_1024
    require sub_7b26b183[arg1].field_1536
    if msg.value and royaltyPercentage > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value < msg.value * royaltyPercentage / 100:
        revert with 'NH{q', 17
    call stor152 with:
       value msg.value * royaltyPercentage / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call ownerOf[arg1] with:
       value msg.value - (msg.value * royaltyPercentage / 100) wei
         gas 2300 * is_zero(value) wei
    sub_7b26b183[arg1].field_256 = sub_7b26b183[arg1].field_256
    sub_7b26b183[arg1].field_512 = sub_7b26b183[arg1].field_512
    sub_7b26b183[arg1].field_768 = sub_7b26b183[arg1].field_1024
    sub_7b26b183[arg1].field_1536 = uint8(bool(sub_7b26b183[arg1].field_1536))
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not msg.sender:
        revert with 0, 'ERC721: transfer to the zero address'
    if sub_7b26b183[arg1].field_1280 > -2:
        revert with 'NH{q', 17
    sub_7b26b183[arg1].field_256 = sub_7b26b183[arg1].field_256
    sub_7b26b183[arg1].field_512 = msg.sender
    sub_7b26b183[arg1].field_1280++
    sub_7b26b183[arg1].field_1536 = 0
    if not ownerOf[arg1]:
        stor166[arg1] = stor165.length
        stor165.length++
        stor165[stor165.length] = arg1
    else:
        if ownerOf[arg1] != msg.sender:
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[stor103[arg1]] < 1:
                revert with 'NH{q', 17
            if stor164[arg1] != balanceOf[stor103[arg1]] - 1:
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
            revert with 'NH{q', 17
        if stor165.length - 1 >= stor165.length:
            revert with 'NH{q', 50
        if stor166[arg1] >= stor165.length:
            revert with 'NH{q', 50
        stor165[stor166[arg1]] = stor165[stor165.length]
        stor166[stor165[stor165.length]] = stor166[arg1]
        stor166[arg1] = 0
        if not stor165.length:
            revert with 'NH{q', 49
        stor165[stor165.length] = 0
        stor165.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor103[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor103[arg1]]--
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    emit Transfer(ownerOf[arg1], msg.sender, arg1);
    emit PurchaseEvent(arg1, ownerOf[arg1], msg.sender, sub_7b26b183[arg1].field_1024);
}

function name() {
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor101.length):
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        else:
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
        if ceil32(stor101.length.field_1) > stor101.length.field_1:
            mem[ceil32(stor101.length.field_1) + stor101.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
    if bool(stor101.length) == stor101.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
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

function symbol() {
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor102.length):
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        else:
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
        if ceil32(stor102.length.field_1) > stor102.length.field_1:
            mem[ceil32(stor102.length.field_1) + stor102.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
    if bool(stor102.length) == stor102.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
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

function baseURL() {
    if bool(stor159.length):
        if bool(stor159.length) == stor159.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor159.length):
            if bool(stor159.length) == stor159.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor159.length.field_1), data=mem[128 len ceil32(stor159.length.field_1)])
                mem[128] = 256 * stor159.length.field_8
        else:
            if bool(stor159.length) == stor159.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor159.length.field_1), data=mem[128 len ceil32(stor159.length.field_1)])
                mem[128] = 256 * stor159.length.field_8
        mem[ceil32(stor159.length.field_1) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
        if ceil32(stor159.length.field_1) > stor159.length.field_1:
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor159.length.field_1), data=mem[128 len ceil32(stor159.length.field_1)], mem[(2 * ceil32(stor159.length.field_1)) + 192 len 2 * ceil32(stor159.length.field_1)]), 
    if bool(stor159.length) == stor159.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor159.length):
        if bool(stor159.length) == stor159.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor159.length) == stor159.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 192] = 0
    return Array(len=stor159.length % 128, data=mem[128 len ceil32(stor159.length.field_1)], mem[(2 * ceil32(stor159.length.field_1)) + 192 len 2 * ceil32(stor159.length.field_1)]), 
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
    if sub_7b26b183[arg3].field_1280 > -2:
        revert with 'NH{q', 17
    sub_7b26b183[arg3].field_256 = sub_7b26b183[arg3].field_256
    sub_7b26b183[arg3].field_512 = arg2
    sub_7b26b183[arg3].field_1280++
    sub_7b26b183[arg3].field_1536 = 0
    if not arg1:
        stor166[arg3] = stor165.length
        stor165.length++
        stor165[stor165.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor164[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if stor165.length - 1 >= stor165.length:
            revert with 'NH{q', 50
        if stor166[arg3] >= stor165.length:
            revert with 'NH{q', 50
        stor165[stor166[arg3]] = stor165[stor165.length]
        stor166[stor165[stor165.length]] = stor166[arg3]
        stor166[arg3] = 0
        if not stor165.length:
            revert with 'NH{q', 49
        stor165[stor165.length] = 0
        stor165.length--
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
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
    if sub_7b26b183[arg3].field_1280 > -2:
        revert with 'NH{q', 17
    sub_7b26b183[arg3].field_256 = sub_7b26b183[arg3].field_256
    sub_7b26b183[arg3].field_512 = arg2
    sub_7b26b183[arg3].field_1280++
    sub_7b26b183[arg3].field_1536 = 0
    if not arg1:
        stor166[arg3] = stor165.length
        stor165.length++
        stor165[stor165.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor164[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if stor165.length - 1 >= stor165.length:
            revert with 'NH{q', 50
        if stor166[arg3] >= stor165.length:
            revert with 'NH{q', 50
        stor165[stor166[arg3]] = stor165[stor165.length]
        stor166[stor165[stor165.length]] = stor166[arg3]
        stor166[arg3] = 0
        if not stor165.length:
            revert with 'NH{q', 49
        stor165[stor165.length] = 0
        stor165.length--
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



}
