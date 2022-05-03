contract main {




// =====================  Runtime code  =====================


#
#  - sub_a54dbcf6(?)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
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
array of uint256 stor157;
uint256 mintFeeAmount;
array of struct stor159;
uint8 sub_fac1c242;
uint8 openForPublic; offset 8
uint256 stor160; offset 8
uint256 stor161;
mapping of struct sub_7b26b183;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor164;
array of uint256 stor165;
mapping of uint256 stor166;

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
    return stor157.length
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

function sub_b163fe76(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if stor151 != msg.sender:
        revert with 0, 'Only owner'
    sub_fac1c242 = uint8(bool(arg1))
}

function toggleOpenForPublic(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor151 != msg.sender:
        revert with 0, 'Only owner'
    stor160 = Mask(248, 0, arg1)
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

function sub_f33d627f(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor151 != msg.sender:
        revert with 0, 'Only owner'
    sub_7b26b183[arg1].field_256 = sub_7b26b183[arg1].field_256
    sub_7b26b183[arg1].field_512 = sub_7b26b183[arg1].field_512
    sub_7b26b183[arg1].field_1536 = uint8(bool(sub_7b26b183[arg1].field_1536))
    sub_7b26b183[arg1].field_1792 = arg2
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

function sub_ab8236e0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_001570deAddress)
    staticcall sub_001570deAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0] >= 250 * 10^6 * 3600
}

function setPriceForSale(uint256 arg1, uint256 arg2, bool arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ownerOf[arg1]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg1] == msg.sender
    sub_7b26b183[arg1].field_256 = sub_7b26b183[arg1].field_256
    sub_7b26b183[arg1].field_512 = sub_7b26b183[arg1].field_512
    sub_7b26b183[arg1].field_1024 = arg2
    sub_7b26b183[arg1].field_1536 = uint8(arg3)
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
    call sub_7b26b183[arg1].field_512 with:
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

function sub_6881cd29(?) {
    if bool(sub_fac1c242) != 1:
        revert with 0, 'not open'
    mem[100] = msg.sender
    require ext_code.size(sub_001570deAddress)
    staticcall sub_001570deAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 250 * 10^6 * 3600:
        revert with 0, 'Not valid GB'
    if stor165.length >= 10000:
        revert with 0, 'max supply'
    require stor157.length < 900
    if stor155[address(msg.sender)]:
        revert with 0, 'already minted'
    stor161++
    mem[ceil32(return_data.size) + 96] = 0
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor161]:
        revert with 0, 'ERC721: token already minted'
    mem[ceil32(return_data.size) + 128] = sub_7b26b183[stor161].field_0
    mem[ceil32(return_data.size) + 160] = sub_7b26b183[stor161].field_256
    mem[ceil32(return_data.size) + 224] = sub_7b26b183[stor161].field_768
    mem[ceil32(return_data.size) + 256] = sub_7b26b183[stor161].field_1024
    mem[ceil32(return_data.size) + 352] = sub_7b26b183[stor161].field_1792
    mem[ceil32(return_data.size) + 192] = msg.sender
    if sub_7b26b183[stor161].field_1280 > -2:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 288] = sub_7b26b183[stor161].field_1280 + 1
    mem[ceil32(return_data.size) + 320] = 0
    sub_7b26b183[stor161].field_256 = sub_7b26b183[stor161].field_256
    sub_7b26b183[stor161].field_512 = msg.sender
    sub_7b26b183[stor161].field_1280++
    sub_7b26b183[stor161].field_1536 = 0
    stor166[stor161] = stor165.length
    stor165.length++
    stor165[stor165.length] = stor161
    if msg.sender:
        tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = stor161
        stor164[stor161] = balanceOf[address(msg.sender)]
    else:
        if stor165.length < 1:
            revert with 'NH{q', 17
        if stor165.length - 1 >= stor165.length:
            revert with 'NH{q', 50
        if stor166[stor161] >= stor165.length:
            revert with 'NH{q', 50
        stor165[stor166[stor161]] = stor165[stor165.length]
        stor166[stor165[stor165.length]] = stor166[stor161]
        stor166[stor161] = 0
        if not stor165.length:
            revert with 'NH{q', 49
        stor165[stor165.length] = 0
        stor165.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor161] = msg.sender
    emit Transfer(0, msg.sender, stor161);
    if ext_code.size(msg.sender) > 0:
        mem[ceil32(return_data.size) + 388] = msg.sender
        mem[ceil32(return_data.size) + 420] = 0
        mem[ceil32(return_data.size) + 452] = stor161
        mem[ceil32(return_data.size) + 484] = 128
        mem[ceil32(return_data.size) + 516] = 0
        mem[ceil32(return_data.size) + 548 len 0] = None
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, stor161, 128, 0
        mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
        if not ext_call.success:
            if not return_data.size:
                if not ext_call.return_data[0]:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    sub_7b26b183[stor161].field_0 = stor161
    sub_7b26b183[stor161].field_256 = msg.sender
    sub_7b26b183[stor161].field_512 = msg.sender
    sub_7b26b183[stor161].field_768 = 0
    sub_7b26b183[stor161].field_1024 = 0
    sub_7b26b183[stor161].field_1280 = 0
    sub_7b26b183[stor161].field_1536 = 0
    sub_7b26b183[stor161].field_1792 = 100
    stor155[address(msg.sender)] = 1
    stor157.length++
    stor157[stor157.length] = stor161
}

function airdropTokens(uint256 arg1, address arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor151 != msg.sender:
        revert with 0, 'Only owner'
    if arg1 > -stor165.length - 1:
        revert with 'NH{q', 17
    if arg1 + stor165.length >= 10000:
        revert with 0, 'Max supply'
    idx = 1
    while idx <= arg1:
        stor161++
        _165 = mem[64]
        mem[64] = mem[64] + 32
        mem[_165] = 0
        if not arg2:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor161]:
            revert with 0, 'ERC721: token already minted'
        mem[0] = stor161
        mem[32] = 162
        _170 = mem[64]
        mem[64] = mem[64] + 256
        mem[_170] = sub_7b26b183[stor161].field_0
        mem[_170 + 32] = sub_7b26b183[stor161].field_256
        mem[_170 + 96] = sub_7b26b183[stor161].field_768
        mem[_170 + 128] = sub_7b26b183[stor161].field_1024
        mem[_170 + 224] = sub_7b26b183[stor161].field_1792
        mem[_170 + 64] = arg2
        if sub_7b26b183[stor161].field_1280 > -2:
            revert with 'NH{q', 17
        mem[_170 + 160] = sub_7b26b183[stor161].field_1280 + 1
        mem[_170 + 192] = 0
        sub_7b26b183[stor161].field_256 = sub_7b26b183[stor161].field_256
        sub_7b26b183[stor161].field_512 = arg2
        sub_7b26b183[stor161].field_1280++
        sub_7b26b183[stor161].field_1536 = 0
        stor166[stor161] = stor165.length
        stor165.length++
        stor165[stor165.length] = stor161
        if arg2:
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = stor161
            stor164[stor161] = balanceOf[address(arg2)]
            if balanceOf[address(arg2)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg2)]++
            mem[0] = stor161
            mem[32] = 103
            ownerOf[stor161] = arg2
            emit Transfer(0, arg2, stor161);
            if ext_code.size(arg2) <= 0:
                _204 = mem[64]
                mem[64] = mem[64] + 256
                mem[_204] = stor161
                mem[_204 + 32] = msg.sender
                mem[_204 + 64] = arg2
                mem[_204 + 96] = 0
                mem[_204 + 128] = 0
                mem[_204 + 160] = 0
                mem[_204 + 192] = 0
                mem[_204 + 224] = 100
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor161
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_165 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg2)
                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                _331 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_331] == Mask(32, 224, mem[_331])
                if Mask(32, 224, mem[_331]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                _379 = mem[64]
                mem[64] = mem[64] + 256
                mem[_379] = stor161
                mem[_379 + 32] = msg.sender
                mem[_379 + 64] = arg2
                mem[_379 + 96] = 0
                mem[_379 + 128] = 0
                mem[_379 + 160] = 0
                mem[_379 + 192] = 0
                mem[_379 + 224] = 100
        else:
            if stor165.length < 1:
                revert with 'NH{q', 17
            if stor165.length - 1 >= stor165.length:
                revert with 'NH{q', 50
            if stor166[stor161] >= stor165.length:
                revert with 'NH{q', 50
            stor165[stor166[stor161]] = stor165[stor165.length]
            stor166[stor165[stor165.length]] = stor166[stor161]
            stor166[stor161] = 0
            if not stor165.length:
                revert with 'NH{q', 49
            stor165[stor165.length] = 0
            stor165.length--
            if balanceOf[address(arg2)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg2)]++
            mem[0] = stor161
            mem[32] = 103
            ownerOf[stor161] = arg2
            emit Transfer(0, arg2, stor161);
            if ext_code.size(arg2) <= 0:
                _215 = mem[64]
                mem[64] = mem[64] + 256
                mem[_215] = stor161
                mem[_215 + 32] = msg.sender
                mem[_215 + 64] = arg2
                mem[_215 + 96] = 0
                mem[_215 + 128] = 0
                mem[_215 + 160] = 0
                mem[_215 + 192] = 0
                mem[_215 + 224] = 100
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor161
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_165 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg2)
                call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                _332 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_332] == Mask(32, 224, mem[_332])
                if Mask(32, 224, mem[_332]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                _389 = mem[64]
                mem[64] = mem[64] + 256
                mem[_389] = stor161
                mem[_389 + 32] = msg.sender
                mem[_389 + 64] = arg2
                mem[_389 + 96] = 0
                mem[_389 + 128] = 0
                mem[_389 + 160] = 0
                mem[_389 + 192] = 0
                mem[_389 + 224] = 100
        mem[0] = stor161
        mem[32] = 162
        sub_7b26b183[stor161].field_0 = stor161
        sub_7b26b183[stor161].field_256 = msg.sender
        sub_7b26b183[stor161].field_512 = arg2
        sub_7b26b183[stor161].field_768 = 0
        sub_7b26b183[stor161].field_1024 = 0
        sub_7b26b183[stor161].field_1280 = 0
        sub_7b26b183[stor161].field_1536 = 0
        sub_7b26b183[stor161].field_1792 = 100
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(openForPublic) != 1:
        revert with 0, 'not open'
    require msg.sender
    if stor165.length > -arg1 - 1:
        revert with 'NH{q', 17
    if stor165.length + arg1 > 10000:
        revert with 0, 'max supply'
    if arg1 <= 0:
        revert with 0, 'Min 1'
    if arg1 > 12:
        revert with 0, 'Max 12'
    mem[0] = msg.sender
    mem[32] = 154
    if stor154[address(msg.sender)]:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 1
        while idx <= arg1:
            stor161++
            _336 = mem[64]
            mem[64] = mem[64] + 32
            mem[_336] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor161]:
                revert with 0, 'ERC721: token already minted'
            mem[0] = stor161
            mem[32] = 162
            _345 = mem[64]
            mem[64] = mem[64] + 256
            mem[_345] = sub_7b26b183[stor161].field_0
            mem[_345 + 32] = sub_7b26b183[stor161].field_256
            mem[_345 + 96] = sub_7b26b183[stor161].field_768
            mem[_345 + 128] = sub_7b26b183[stor161].field_1024
            mem[_345 + 224] = sub_7b26b183[stor161].field_1792
            mem[_345 + 64] = msg.sender
            if sub_7b26b183[stor161].field_1280 > -2:
                revert with 'NH{q', 17
            mem[_345 + 160] = sub_7b26b183[stor161].field_1280 + 1
            mem[_345 + 192] = 0
            sub_7b26b183[stor161].field_256 = sub_7b26b183[stor161].field_256
            sub_7b26b183[stor161].field_512 = msg.sender
            sub_7b26b183[stor161].field_1280++
            sub_7b26b183[stor161].field_1536 = 0
            stor166[stor161] = stor165.length
            stor165.length++
            stor165[stor165.length] = stor161
            if msg.sender:
                tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = stor161
                stor164[stor161] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor161
                mem[32] = 103
                ownerOf[stor161] = msg.sender
                emit Transfer(0, msg.sender, stor161);
                if ext_code.size(msg.sender) <= 0:
                    _414 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_414] = stor161
                    mem[_414 + 32] = msg.sender
                    mem[_414 + 64] = msg.sender
                    mem[_414 + 96] = 0
                    mem[_414 + 128] = 0
                    mem[_414 + 160] = 0
                    mem[_414 + 192] = 0
                    mem[_414 + 224] = 100
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor161
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_336 + s + 32]
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
                    _668 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_668] == Mask(32, 224, mem[_668])
                    if Mask(32, 224, mem[_668]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    _764 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_764] = stor161
                    mem[_764 + 32] = msg.sender
                    mem[_764 + 64] = msg.sender
                    mem[_764 + 96] = 0
                    mem[_764 + 128] = 0
                    mem[_764 + 160] = 0
                    mem[_764 + 192] = 0
                    mem[_764 + 224] = 100
            else:
                if stor165.length < 1:
                    revert with 'NH{q', 17
                if stor165.length - 1 >= stor165.length:
                    revert with 'NH{q', 50
                if stor166[stor161] >= stor165.length:
                    revert with 'NH{q', 50
                stor165[stor166[stor161]] = stor165[stor165.length]
                stor166[stor165[stor165.length]] = stor166[stor161]
                stor166[stor161] = 0
                if not stor165.length:
                    revert with 'NH{q', 49
                stor165[stor165.length] = 0
                stor165.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor161
                mem[32] = 103
                ownerOf[stor161] = msg.sender
                emit Transfer(0, msg.sender, stor161);
                if ext_code.size(msg.sender) <= 0:
                    _436 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_436] = stor161
                    mem[_436 + 32] = msg.sender
                    mem[_436 + 64] = msg.sender
                    mem[_436 + 96] = 0
                    mem[_436 + 128] = 0
                    mem[_436 + 160] = 0
                    mem[_436 + 192] = 0
                    mem[_436 + 224] = 100
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor161
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_336 + s + 32]
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
                    _669 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_669] == Mask(32, 224, mem[_669])
                    if Mask(32, 224, mem[_669]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    _774 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_774] = stor161
                    mem[_774 + 32] = msg.sender
                    mem[_774 + 64] = msg.sender
                    mem[_774 + 96] = 0
                    mem[_774 + 128] = 0
                    mem[_774 + 160] = 0
                    mem[_774 + 192] = 0
                    mem[_774 + 224] = 100
            mem[0] = stor161
            mem[32] = 162
            sub_7b26b183[stor161].field_0 = stor161
            sub_7b26b183[stor161].field_256 = msg.sender
            sub_7b26b183[stor161].field_512 = msg.sender
            sub_7b26b183[stor161].field_768 = 0
            sub_7b26b183[stor161].field_1024 = 0
            sub_7b26b183[stor161].field_1280 = 0
            sub_7b26b183[stor161].field_1536 = 0
            sub_7b26b183[stor161].field_1792 = 100
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if mintFeeAmount and arg1 > -1 / mintFeeAmount:
            revert with 'NH{q', 17
        if mintFeeAmount * arg1 != msg.value:
            revert with 0, 'Not enough fee'
        call stor152 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 1
        while idx <= arg1:
            stor161++
            _337 = mem[64]
            mem[64] = mem[64] + 32
            mem[_337] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor161]:
                revert with 0, 'ERC721: token already minted'
            mem[0] = stor161
            mem[32] = 162
            _349 = mem[64]
            mem[64] = mem[64] + 256
            mem[_349] = sub_7b26b183[stor161].field_0
            mem[_349 + 32] = sub_7b26b183[stor161].field_256
            mem[_349 + 96] = sub_7b26b183[stor161].field_768
            mem[_349 + 128] = sub_7b26b183[stor161].field_1024
            mem[_349 + 224] = sub_7b26b183[stor161].field_1792
            mem[_349 + 64] = msg.sender
            if sub_7b26b183[stor161].field_1280 > -2:
                revert with 'NH{q', 17
            mem[_349 + 160] = sub_7b26b183[stor161].field_1280 + 1
            mem[_349 + 192] = 0
            sub_7b26b183[stor161].field_256 = sub_7b26b183[stor161].field_256
            sub_7b26b183[stor161].field_512 = msg.sender
            sub_7b26b183[stor161].field_1280++
            sub_7b26b183[stor161].field_1536 = 0
            stor166[stor161] = stor165.length
            stor165.length++
            stor165[stor165.length] = stor161
            if msg.sender:
                tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = stor161
                stor164[stor161] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor161
                mem[32] = 103
                ownerOf[stor161] = msg.sender
                emit Transfer(0, msg.sender, stor161);
                if ext_code.size(msg.sender) <= 0:
                    _424 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_424] = stor161
                    mem[_424 + 32] = msg.sender
                    mem[_424 + 64] = msg.sender
                    mem[_424 + 96] = 0
                    mem[_424 + 128] = mintFeeAmount * arg1
                    mem[_424 + 160] = 0
                    mem[_424 + 192] = 0
                    mem[_424 + 224] = 100
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor161
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_337 + s + 32]
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
                    _670 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_670] == Mask(32, 224, mem[_670])
                    if Mask(32, 224, mem[_670]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    _784 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_784] = stor161
                    mem[_784 + 32] = msg.sender
                    mem[_784 + 64] = msg.sender
                    mem[_784 + 96] = 0
                    mem[_784 + 128] = mintFeeAmount * arg1
                    mem[_784 + 160] = 0
                    mem[_784 + 192] = 0
                    mem[_784 + 224] = 100
            else:
                if stor165.length < 1:
                    revert with 'NH{q', 17
                if stor165.length - 1 >= stor165.length:
                    revert with 'NH{q', 50
                if stor166[stor161] >= stor165.length:
                    revert with 'NH{q', 50
                stor165[stor166[stor161]] = stor165[stor165.length]
                stor166[stor165[stor165.length]] = stor166[stor161]
                stor166[stor161] = 0
                if not stor165.length:
                    revert with 'NH{q', 49
                stor165[stor165.length] = 0
                stor165.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor161
                mem[32] = 103
                ownerOf[stor161] = msg.sender
                emit Transfer(0, msg.sender, stor161);
                if ext_code.size(msg.sender) <= 0:
                    _446 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_446] = stor161
                    mem[_446 + 32] = msg.sender
                    mem[_446 + 64] = msg.sender
                    mem[_446 + 96] = 0
                    mem[_446 + 128] = mintFeeAmount * arg1
                    mem[_446 + 160] = 0
                    mem[_446 + 192] = 0
                    mem[_446 + 224] = 100
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor161
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_337 + s + 32]
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
                    _671 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_671] == Mask(32, 224, mem[_671])
                    if Mask(32, 224, mem[_671]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    _794 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_794] = stor161
                    mem[_794 + 32] = msg.sender
                    mem[_794 + 64] = msg.sender
                    mem[_794 + 96] = 0
                    mem[_794 + 128] = mintFeeAmount * arg1
                    mem[_794 + 160] = 0
                    mem[_794 + 192] = 0
                    mem[_794 + 224] = 100
            mem[0] = stor161
            mem[32] = 162
            sub_7b26b183[stor161].field_0 = stor161
            sub_7b26b183[stor161].field_256 = msg.sender
            sub_7b26b183[stor161].field_512 = msg.sender
            sub_7b26b183[stor161].field_768 = 0
            sub_7b26b183[stor161].field_1024 = mintFeeAmount * arg1
            sub_7b26b183[stor161].field_1280 = 0
            sub_7b26b183[stor161].field_1536 = 0
            sub_7b26b183[stor161].field_1792 = 100
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 103
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor159.length):
        if bool(stor159.length) == stor159.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor159.length.field_1
        if bool(stor159.length):
            if bool(stor159.length) == stor159.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor159.length.field_1:
                if stor159.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor159.length.field_1) + 224 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 224] = '0'
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 225] = 32
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257] = mem[ceil32(stor159.length.field_1) + 192]
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])] = mem[ceil32(stor159.length.field_1) + 224 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor159.length.field_1) + 192]) <= mem[ceil32(stor159.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor159.length.field_1) + 192], data=mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]), 
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257 len ceil32(mem[ceil32(stor159.length.field_1) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor159.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor159.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
                if ceil32(stor159.length.field_1) > stor159.length.field_1:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 0
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor159.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor159.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor159.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor159.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + mem[ceil32(stor159.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]) + 32], 
            if 31 < stor159.length.field_1:
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
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 224] = '0'
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 225] = 32
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257] = mem[ceil32(stor159.length.field_1) + 192]
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])] = mem[ceil32(stor159.length.field_1) + 224 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor159.length.field_1) + 192]) <= mem[ceil32(stor159.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor159.length.field_1) + 192], data=mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]), 
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257 len ceil32(mem[ceil32(stor159.length.field_1) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor159.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor159.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
                if ceil32(stor159.length.field_1) > stor159.length.field_1:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 0
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
            else:
                mem[128] = 256 * stor159.length.field_8
                if stor159.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor159.length.field_1) + 224 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 224] = '0'
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 225] = 32
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257] = mem[ceil32(stor159.length.field_1) + 192]
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])] = mem[ceil32(stor159.length.field_1) + 224 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor159.length.field_1) + 192]) <= mem[ceil32(stor159.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor159.length.field_1) + 192], data=mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]), 
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257 len ceil32(mem[ceil32(stor159.length.field_1) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor159.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor159.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
                if ceil32(stor159.length.field_1) > stor159.length.field_1:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 0
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
        else:
            if bool(stor159.length) == stor159.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor159.length.field_1:
                if stor159.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor159.length.field_1) + 224 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 224] = '0'
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 225] = 32
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257] = mem[ceil32(stor159.length.field_1) + 192]
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])] = mem[ceil32(stor159.length.field_1) + 224 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor159.length.field_1) + 192]) <= mem[ceil32(stor159.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor159.length.field_1) + 192], data=mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]), 
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257 len ceil32(mem[ceil32(stor159.length.field_1) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor159.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor159.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
                if ceil32(stor159.length.field_1) > stor159.length.field_1:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 0
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor159.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor159.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor159.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor159.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + mem[ceil32(stor159.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]) + 32], 
            if 31 < stor159.length.field_1:
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
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 224] = '0'
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 225] = 32
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257] = mem[ceil32(stor159.length.field_1) + 192]
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])] = mem[ceil32(stor159.length.field_1) + 224 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor159.length.field_1) + 192]) <= mem[ceil32(stor159.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor159.length.field_1) + 192], data=mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]), 
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257 len ceil32(mem[ceil32(stor159.length.field_1) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor159.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor159.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
                if ceil32(stor159.length.field_1) > stor159.length.field_1:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 0
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
            else:
                mem[128] = 256 * stor159.length.field_8
                if stor159.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor159.length.field_1) + 224 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 224] = '0'
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 225] = 32
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257] = mem[ceil32(stor159.length.field_1) + 192]
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])] = mem[ceil32(stor159.length.field_1) + 224 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor159.length.field_1) + 192]) <= mem[ceil32(stor159.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor159.length.field_1) + 192], data=mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]), 
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257 len ceil32(mem[ceil32(stor159.length.field_1) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor159.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor159.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
                if ceil32(stor159.length.field_1) > stor159.length.field_1:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 0
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor159.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor159.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + mem[ceil32(stor159.length.field_1) + ceil32(s) + 160] + 256] = 0
        return Array(len=mem[ceil32(stor159.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor159.length.field_1) + ceil32(s) + 160])]), 
    if bool(stor159.length) == stor159.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor159.length.field_1
    if bool(stor159.length):
        if bool(stor159.length) == stor159.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor159.length.field_1:
            if stor159.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor159.length.field_1) + 224 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
                mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 224] = '0'
                mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 225] = 32
                mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257] = mem[ceil32(stor159.length.field_1) + 192]
                mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])] = mem[ceil32(stor159.length.field_1) + 224 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor159.length.field_1) + 192]) > mem[ceil32(stor159.length.field_1) + 192]:
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor159.length.field_1) + 192], data=mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor159.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
                if ceil32(stor159.length.field_1) <= stor159.length.field_1:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                    mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                        _3686 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3686)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3686)]
                        if ceil32(_3686) > _3686:
                            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3686 + 256] = 0
                        return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3686) + 32], 
                    _3722 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3722)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3722)]
                    if ceil32(_3722) > _3722:
                        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3722 + 256] = 0
                    return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3722) + 32], 
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 0
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                    _3687 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3687)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3687)]
                    if ceil32(_3687) > _3687:
                        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3687 + 256] = 0
                    return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3687) + 32], 
                _3723 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3723)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3723)]
                if ceil32(_3723) > _3723:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3723 + 256] = 0
                return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3723) + 32], 
            mem[ceil32(stor159.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
            if ceil32(stor159.length.field_1) <= stor159.length.field_1:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                    _3688 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3688)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3688)]
                    if ceil32(_3688) > _3688:
                        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3688 + 256] = 0
                    return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3688) + 32], 
                _3724 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3724)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3724)]
                if ceil32(_3724) > _3724:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3724 + 256] = 0
                return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3724) + 32], 
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 0
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
            mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                _3689 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3689)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3689)]
                if ceil32(_3689) > _3689:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3689 + 256] = 0
                return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3689) + 32], 
            _3725 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3725)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3725)]
            if ceil32(_3725) > _3725:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3725 + 256] = 0
            return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3725) + 32], 
        if 31 >= stor159.length.field_1:
            mem[128] = 256 * stor159.length.field_8
            if stor159.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor159.length.field_1) + 224 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
                mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 224] = '0'
                mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 225] = 32
                mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257] = mem[ceil32(stor159.length.field_1) + 192]
                mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])] = mem[ceil32(stor159.length.field_1) + 224 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor159.length.field_1) + 192]) > mem[ceil32(stor159.length.field_1) + 192]:
                    mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor159.length.field_1) + 192], data=mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor159.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
                if ceil32(stor159.length.field_1) <= stor159.length.field_1:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                    mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                        _3690 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3690)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3690)]
                        if ceil32(_3690) > _3690:
                            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3690 + 256] = 0
                        return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3690) + 32], 
                    _3728 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3728)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3728)]
                    if ceil32(_3728) > _3728:
                        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3728 + 256] = 0
                    return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3728) + 32], 
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 0
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                    _3691 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3691)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3691)]
                    if ceil32(_3691) > _3691:
                        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3691 + 256] = 0
                    return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3691) + 32], 
                _3729 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3729)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3729)]
                if ceil32(_3729) > _3729:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3729 + 256] = 0
                return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3729) + 32], 
            mem[ceil32(stor159.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
            if ceil32(stor159.length.field_1) <= stor159.length.field_1:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                    _3692 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3692)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3692)]
                    if ceil32(_3692) > _3692:
                        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3692 + 256] = 0
                    return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3692) + 32], 
                _3730 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3730)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3730)]
                if ceil32(_3730) > _3730:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3730 + 256] = 0
                return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3730) + 32], 
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 0
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
            mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                _3693 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3693)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3693)]
                if ceil32(_3693) > _3693:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3693 + 256] = 0
                return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3693) + 32], 
            _3731 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3731)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3731)]
            if ceil32(_3731) > _3731:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3731 + 256] = 0
            return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3731) + 32], 
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
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 224] = '0'
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 225] = 32
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257] = mem[ceil32(stor159.length.field_1) + 192]
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])] = mem[ceil32(stor159.length.field_1) + 224 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor159.length.field_1) + 192]) > mem[ceil32(stor159.length.field_1) + 192]:
                mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor159.length.field_1) + 192], data=mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor159.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
            if ceil32(stor159.length.field_1) <= stor159.length.field_1:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                    mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
                    _4414 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_4414)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4414)]
                    if ceil32(_4414) > _4414:
                        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _4414 + 256] = 0
                    return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_4414) + 32], 
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 0
                mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
                _4430 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_4430)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4430)]
                if ceil32(_4430) > _4430:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _4430 + 256] = 0
                return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_4430) + 32], 
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 0
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
                _4415 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_4415)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4415)]
                if ceil32(_4415) > _4415:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _4415 + 256] = 0
                return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_4415) + 32], 
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
            _4431 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_4431)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4431)]
            if ceil32(_4431) > _4431:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _4431 + 256] = 0
            return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_4431) + 32], 
        mem[ceil32(stor159.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
        if ceil32(stor159.length.field_1) <= stor159.length.field_1:
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
                _4416 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_4416)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4416)]
                if ceil32(_4416) > _4416:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _4416 + 256] = 0
                return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_4416) + 32], 
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
            _4432 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_4432)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4432)]
            if ceil32(_4432) > _4432:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _4432 + 256] = 0
            return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_4432) + 32], 
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 0
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
            mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
            _4417 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_4417)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4417)]
            if ceil32(_4417) > _4417:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _4417 + 256] = 0
            return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_4417) + 32], 
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 0
        mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
        _4433 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_4433)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4433)]
        if ceil32(_4433) > _4433:
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _4433 + 256] = 0
        return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_4433) + 32], 
    if bool(stor159.length) == stor159.length.field_1 < 32:
        revert with 'NH{q', 34
    if not stor159.length.field_1:
        if stor159.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor159.length.field_1) + 224 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 224] = '0'
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 225] = 32
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257] = mem[ceil32(stor159.length.field_1) + 192]
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])] = mem[ceil32(stor159.length.field_1) + 224 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor159.length.field_1) + 192]) > mem[ceil32(stor159.length.field_1) + 192]:
                mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor159.length.field_1) + 192], data=mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor159.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
            if ceil32(stor159.length.field_1) <= stor159.length.field_1:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                    _3694 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3694)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3694)]
                    if ceil32(_3694) > _3694:
                        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3694 + 256] = 0
                    return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3694) + 32], 
                _3732 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3732)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3732)]
                if ceil32(_3732) > _3732:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3732 + 256] = 0
                return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3732) + 32], 
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 0
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
            mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                _3695 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3695)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3695)]
                if ceil32(_3695) > _3695:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3695 + 256] = 0
                return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3695) + 32], 
            _3733 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3733)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3733)]
            if ceil32(_3733) > _3733:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3733 + 256] = 0
            return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3733) + 32], 
        mem[ceil32(stor159.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
        if ceil32(stor159.length.field_1) <= stor159.length.field_1:
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
            mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                _3696 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3696)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3696)]
                if ceil32(_3696) > _3696:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3696 + 256] = 0
                return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3696) + 32], 
            _3734 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3734)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3734)]
            if ceil32(_3734) > _3734:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3734 + 256] = 0
            return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3734) + 32], 
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 0
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
        mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
            _3697 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3697)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3697)]
            if ceil32(_3697) > _3697:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3697 + 256] = 0
            return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3697) + 32], 
        _3735 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3735)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3735)]
        if ceil32(_3735) > _3735:
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3735 + 256] = 0
        return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3735) + 32], 
    if 31 >= stor159.length.field_1:
        mem[128] = 256 * stor159.length.field_8
        if stor159.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor159.length.field_1) + 224 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 224] = '0'
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 225] = 32
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257] = mem[ceil32(stor159.length.field_1) + 192]
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])] = mem[ceil32(stor159.length.field_1) + 224 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor159.length.field_1) + 192]) > mem[ceil32(stor159.length.field_1) + 192]:
                mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor159.length.field_1) + 192], data=mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor159.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
            if ceil32(stor159.length.field_1) <= stor159.length.field_1:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
                mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                    _3698 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3698)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3698)]
                    if ceil32(_3698) > _3698:
                        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3698 + 256] = 0
                    return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3698) + 32], 
                _3738 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3738)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3738)]
                if ceil32(_3738) > _3738:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3738 + 256] = 0
                return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3738) + 32], 
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 0
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
            mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                _3699 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3699)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3699)]
                if ceil32(_3699) > _3699:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3699 + 256] = 0
                return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3699) + 32], 
            _3739 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3739)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3739)]
            if ceil32(_3739) > _3739:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3739 + 256] = 0
            return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3739) + 32], 
        mem[ceil32(stor159.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
        if ceil32(stor159.length.field_1) <= stor159.length.field_1:
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
            mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                _3700 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3700)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3700)]
                if ceil32(_3700) > _3700:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3700 + 256] = 0
                return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3700) + 32], 
            _3740 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3740)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3740)]
            if ceil32(_3740) > _3740:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3740 + 256] = 0
            return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3740) + 32], 
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 0
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
        mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
            _3701 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3701)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3701)]
            if ceil32(_3701) > _3701:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3701 + 256] = 0
            return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3701) + 32], 
        _3741 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_3741)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_3741)]
        if ceil32(_3741) > _3741:
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _3741 + 256] = 0
        return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_3741) + 32], 
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
        mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 224] = '0'
        mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 225] = 32
        mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 257] = mem[ceil32(stor159.length.field_1) + 192]
        mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])] = mem[ceil32(stor159.length.field_1) + 224 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor159.length.field_1) + 192]) > mem[ceil32(stor159.length.field_1) + 192]:
            mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 192] + 289] = 0
        return Array(len=mem[ceil32(stor159.length.field_1) + 192], data=mem[ceil32(stor159.length.field_1) + stor159.length.field_1 + 289 len ceil32(mem[ceil32(stor159.length.field_1) + 192])]), 
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(stor159.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
        if ceil32(stor159.length.field_1) <= stor159.length.field_1:
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
                mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
                _4418 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_4418)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4418)]
                if ceil32(_4418) > _4418:
                    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _4418 + 256] = 0
                return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_4418) + 32], 
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
            _4434 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_4434)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4434)]
            if ceil32(_4434) > _4434:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _4434 + 256] = 0
            return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_4434) + 32], 
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 0
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
            mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
            _4419 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_4419)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4419)]
            if ceil32(_4419) > _4419:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _4419 + 256] = 0
            return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_4419) + 32], 
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 0
        mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
        _4435 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_4435)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4435)]
        if ceil32(_4435) > _4435:
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _4435 + 256] = 0
        return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_4435) + 32], 
    mem[ceil32(stor159.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor159.length.field_1) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor159.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(stor159.length.field_1)] = mem[128 len ceil32(stor159.length.field_1)]
    if ceil32(stor159.length.field_1) <= stor159.length.field_1:
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
            mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
            _4420 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_4420)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4420)]
            if ceil32(_4420) > _4420:
                mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _4420 + 256] = 0
            return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_4420) + 32], 
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 0
        mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
        _4436 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_4436)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4436)]
        if ceil32(_4436) > _4436:
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _4436 + 256] = 0
        return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_4436) + 32], 
    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192] = 0
    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + 192 len ceil32(mem[ceil32(stor159.length.field_1) + 128])] = mem[ceil32(stor159.length.field_1) + 160 len ceil32(mem[ceil32(stor159.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor159.length.field_1) + 128]) <= mem[ceil32(stor159.length.field_1) + 128]:
        mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
        _4421 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_4421)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4421)]
        if ceil32(_4421) > _4421:
            mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _4421 + 256] = 0
        return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_4421) + 32], 
    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 0
    mem[64] = ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192
    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 192] = 32
    _4437 = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 256 len ceil32(_4437)] = mem[ceil32(stor159.length.field_1) + ceil32(s) + 192 len ceil32(_4437)]
    if ceil32(_4437) > _4437:
        mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + _4437 + 256] = 0
    return 32, mem[ceil32(stor159.length.field_1) + ceil32(s) + stor159.length.field_1 + mem[ceil32(stor159.length.field_1) + 128] + 224 len ceil32(_4437) + 32], 
}



}
