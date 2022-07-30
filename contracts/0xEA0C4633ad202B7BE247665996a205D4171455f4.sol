contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#  - sub_dfad1310(?)
#
const maxSupply = 12000


array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
address stor151;
address stor152;
uint32 stor153;
uint256 stor153; offset 24
uint256 royaltyPercentage;
uint32 sub_9437908e;
uint32 sub_1a62dae4; offset 24
uint256 mintFee;
array of struct stor156;
uint8 openForPublic;
uint256 maxMint;
mapping of struct collectible;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor161;
array of uint256 stor162;
mapping of uint256 stor163;
mapping of uint8 stor164;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function mintFee() {
    return mintFee
}

function totalSupply() {
    return stor162.length
}

function sub_1a62dae4(?) {
    return sub_1a62dae4
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

function collectible(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return collectible[arg1].field_0, 
           collectible[arg1].field_0,
           collectible[arg1].field_0,
           collectible[arg1].field_0,
           collectible[arg1].field_256,
           collectible[arg1].field_512,
           collectible[arg1].field_768,
           bool(collectible[arg1].field_1024)
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

function maxMint() {
    return maxMint
}

function royaltyPercentage() {
    return royaltyPercentage
}

function sub_9437908e(?) {
    return sub_9437908e
}

function authorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor164[arg1])
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

function _fallback() payable {
    revert
}

function addAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor151 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor164[address(arg1)] = 1
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
    if not stor164[address(msg.sender)]:
        if stor151 != msg.sender:
            revert with 0, 'NA'
    collectible[arg1].field_24 = collectible[arg1].field_24
    collectible[arg1].field_48 = arg2 % 16777216
    collectible[arg1].field_72 = collectible[arg1].field_72
    collectible[arg1].field_256 = collectible[arg1].field_256
    collectible[arg1].field_1024 = uint8(bool(collectible[arg1].field_1024))
    emit 0x66833f6d: arg1, arg2, block.timestamp
}

function setPriceForSale(uint256 arg1, uint256 arg2, bool arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg1]:
        revert with 0, 'NE'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'NO'
    collectible[arg1].field_24 = collectible[arg1].field_24
    collectible[arg1].field_48 = collectible[arg1].field_48
    collectible[arg1].field_72 = collectible[arg1].field_72
    collectible[arg1].field_256 = collectible[arg1].field_256
    collectible[arg1].field_768 = arg2
    collectible[arg1].field_1024 = uint8(arg3)
    emit 0xe8aa3292: arg1, arg3, arg2, block.timestamp
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

function sub_ab0ad4f2(?) {
    require calldata.size - 4 >= 224
    require arg1 == bool(arg1)
    require arg2 == arg2 % 16777216
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 == arg5 % 16777216
    require arg6 == arg6
    require arg7 == address(arg7)
    if stor151 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    openForPublic = uint8(bool(arg1))
    stor153.field_0 % 16777216 = arg2 % 16777216
    Mask(232, 0, stor153.field_24) = 0
    mintFee = arg3
    if bool(stor156.length):
        if bool(stor156.length) == stor156.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg4.length:
            stor156[].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor156.length = 0
            idx = 0
            while stor156.length.field_1 + 31 / 32 > idx:
                stor156[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor156.length) == stor156.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg4.length:
            stor156[].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor156.length = 0
            idx = 0
            while stor156.length.field_1 + 31 / 32 > idx:
                stor156[idx].field_0 = 0
                idx = idx + 1
                continue 
    sub_9437908e = arg5 % 16777216
    maxMint = arg6
    stor152 = address(arg7)
}

function sub_ae1c64b3(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not stor164[address(msg.sender)]:
        if stor151 != msg.sender:
            revert with 0, 'NA'
    if ownerOf[arg2]:
        revert with 0, 'MINTED'
    if arg2 > 4000:
        revert with 0, 'OUT OF RANGE'
    sub_1a62dae4 = sub_1a62dae4 + 1 % 16777216
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg2]:
        revert with 0, 'ERC721: token already minted'
    if collectible[arg2].field_24 > 16777214:
        revert with 'NH{q', 17
    collectible[arg2].field_24 = collectible[arg2].field_24 + 1 % 16777216
    collectible[arg2].field_48 = collectible[arg2].field_48
    collectible[arg2].field_72 = collectible[arg2].field_72
    collectible[arg2].field_256 = address(arg1)
    collectible[arg2].field_1024 = 0
    stor163[arg2] = stor162.length
    stor162.length++
    stor162[stor162.length] = arg2
    if address(arg1):
        tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)]] = arg2
        stor161[arg2] = balanceOf[address(arg1)]
    else:
        if stor162.length < 1:
            revert with 'NH{q', 17
        if stor162.length - 1 >= stor162.length:
            revert with 'NH{q', 50
        if stor163[arg2] >= stor162.length:
            revert with 'NH{q', 50
        stor162[stor163[arg2]] = stor162[stor162.length]
        stor163[stor162[stor162.length]] = stor163[arg2]
        stor163[arg2] = 0
        if not stor162.length:
            revert with 'NH{q', 49
        stor162[stor162.length] = 0
        stor162.length--
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[arg2] = address(arg1)
    emit Transfer(0, address(arg1), arg2);
    if ext_code.size(address(arg1)) > 0:
        require ext_code.size(address(arg1))
        call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, arg2, 128, 0
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
    collectible[arg2].field_0 = arg2 % 16777216
    collectible[arg2].field_24 = 0
    collectible[arg2].field_256 = 0
    collectible[arg2].field_48 = 1
    collectible[arg2].field_56 = 0
    collectible[arg2].field_72 = address(arg1)
    collectible[arg2].field_256 = address(arg1)
    collectible[arg2].field_512 = mintFee
    collectible[arg2].field_768 = 0
    collectible[arg2].field_1024 = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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
    if collectible[arg3].field_24 > 16777214:
        revert with 'NH{q', 17
    collectible[arg3].field_24 = collectible[arg3].field_24 + 1 % 16777216
    collectible[arg3].field_48 = collectible[arg3].field_48
    collectible[arg3].field_72 = collectible[arg3].field_72
    collectible[arg3].field_256 = arg2
    collectible[arg3].field_1024 = 0
    if not arg1:
        stor163[arg3] = stor162.length
        stor162.length++
        stor162[stor162.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor161[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor161[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor161[stor160[address(arg1)][stor104[address(arg1)] - 1]] = stor161[arg3]
            stor161[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor161[arg3] = balanceOf[address(arg2)]
    else:
        if stor162.length < 1:
            revert with 'NH{q', 17
        if stor162.length - 1 >= stor162.length:
            revert with 'NH{q', 50
        if stor163[arg3] >= stor162.length:
            revert with 'NH{q', 50
        stor162[stor163[arg3]] = stor162[stor162.length]
        stor163[stor162[stor162.length]] = stor163[arg3]
        stor163[arg3] = 0
        if not stor162.length:
            revert with 'NH{q', 49
        stor162[stor162.length] = 0
        stor162.length--
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
    if bool(stor156.length):
        if bool(stor156.length) == stor156.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor156.length):
            if bool(stor156.length) == stor156.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor156.length.field_1:
                if 31 < stor156.length.field_1:
                    mem[128] = uint256(stor156.field_0)
                    idx = 128
                    s = 0
                    while stor156.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor156[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor156.length.field_1), data=mem[128 len ceil32(stor156.length.field_1)])
                mem[128] = 256 * stor156.length.field_8
        else:
            if bool(stor156.length) == stor156.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor156.length.field_1:
                if 31 < stor156.length.field_1:
                    mem[128] = uint256(stor156.field_0)
                    idx = 128
                    s = 0
                    while stor156.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor156[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor156.length.field_1), data=mem[128 len ceil32(stor156.length.field_1)])
                mem[128] = 256 * stor156.length.field_8
        mem[ceil32(stor156.length.field_1) + 192 len ceil32(stor156.length.field_1)] = mem[128 len ceil32(stor156.length.field_1)]
        if ceil32(stor156.length.field_1) > stor156.length.field_1:
            mem[ceil32(stor156.length.field_1) + stor156.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor156.length.field_1), data=mem[128 len ceil32(stor156.length.field_1)], mem[(2 * ceil32(stor156.length.field_1)) + 192 len 2 * ceil32(stor156.length.field_1)]), 
    if bool(stor156.length) == stor156.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor156.length):
        if bool(stor156.length) == stor156.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor156.length.field_1:
            if 31 < stor156.length.field_1:
                mem[128] = uint256(stor156.field_0)
                idx = 128
                s = 0
                while stor156.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor156[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor156.length % 128, data=mem[128 len ceil32(stor156.length.field_1)])
            mem[128] = 256 * stor156.length.field_8
    else:
        if bool(stor156.length) == stor156.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor156.length.field_1:
            if 31 < stor156.length.field_1:
                mem[128] = uint256(stor156.field_0)
                idx = 128
                s = 0
                while stor156.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor156[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor156.length % 128, data=mem[128 len ceil32(stor156.length.field_1)])
            mem[128] = 256 * stor156.length.field_8
    mem[ceil32(stor156.length.field_1) + 192 len ceil32(stor156.length.field_1)] = mem[128 len ceil32(stor156.length.field_1)]
    if ceil32(stor156.length.field_1) > stor156.length.field_1:
        mem[ceil32(stor156.length.field_1) + stor156.length.field_1 + 192] = 0
    return Array(len=stor156.length % 128, data=mem[128 len ceil32(stor156.length.field_1)], mem[(2 * ceil32(stor156.length.field_1)) + 192 len 2 * ceil32(stor156.length.field_1)]), 
}

function buyToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] == msg.sender:
        revert with 0, 'OWNED'
    if msg.value < collectible[arg1].field_768:
        revert with 0, 'FEE'
    if not collectible[arg1].field_1024:
        revert with 0, 'SALE'
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
    collectible[arg1].field_24 = collectible[arg1].field_24
    collectible[arg1].field_48 = collectible[arg1].field_48
    collectible[arg1].field_72 = collectible[arg1].field_72
    collectible[arg1].field_256 = collectible[arg1].field_256
    collectible[arg1].field_512 = collectible[arg1].field_768
    collectible[arg1].field_1024 = uint8(bool(collectible[arg1].field_1024))
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not msg.sender:
        revert with 0, 'ERC721: transfer to the zero address'
    if collectible[arg1].field_24 > 16777214:
        revert with 'NH{q', 17
    collectible[arg1].field_24 = collectible[arg1].field_24 + 1 % 16777216
    collectible[arg1].field_48 = collectible[arg1].field_48
    collectible[arg1].field_72 = collectible[arg1].field_72
    collectible[arg1].field_256 = msg.sender
    collectible[arg1].field_1024 = 0
    if not ownerOf[arg1]:
        stor163[arg1] = stor162.length
        stor162.length++
        stor162[stor162.length] = arg1
    else:
        if ownerOf[arg1] != msg.sender:
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[stor103[arg1]] < 1:
                revert with 'NH{q', 17
            if stor161[arg1] != balanceOf[stor103[arg1]] - 1:
                tokenOfOwnerByIndex[stor103[arg1]][stor161[arg1]] = tokenOfOwnerByIndex[stor103[arg1]][stor104[stor103[arg1]] - 1]
                stor161[stor160[stor103[arg1]][stor104[stor103[arg1]] - 1]] = stor161[arg1]
            stor161[arg1] = 0
            tokenOfOwnerByIndex[stor103[arg1]][stor104[stor103[arg1]] - 1] = 0
    if msg.sender:
        if ownerOf[arg1] != msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = arg1
            stor161[arg1] = balanceOf[address(msg.sender)]
    else:
        if stor162.length < 1:
            revert with 'NH{q', 17
        if stor162.length - 1 >= stor162.length:
            revert with 'NH{q', 50
        if stor163[arg1] >= stor162.length:
            revert with 'NH{q', 50
        stor162[stor163[arg1]] = stor162[stor162.length]
        stor163[stor162[stor162.length]] = stor163[arg1]
        stor163[arg1] = 0
        if not stor162.length:
            revert with 'NH{q', 49
        stor162[stor162.length] = 0
        stor162.length--
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
    emit 0x89246780: arg1, ownerOf[arg1], msg.sender, collectible[arg1].field_768, block.timestamp
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
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
    if collectible[arg3].field_24 > 16777214:
        revert with 'NH{q', 17
    collectible[arg3].field_24 = collectible[arg3].field_24 + 1 % 16777216
    collectible[arg3].field_48 = collectible[arg3].field_48
    collectible[arg3].field_72 = collectible[arg3].field_72
    collectible[arg3].field_256 = arg2
    collectible[arg3].field_1024 = 0
    if not arg1:
        stor163[arg3] = stor162.length
        stor162.length++
        stor162[stor162.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor161[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor161[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor161[stor160[address(arg1)][stor104[address(arg1)] - 1]] = stor161[arg3]
            stor161[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor161[arg3] = balanceOf[address(arg2)]
    else:
        if stor162.length < 1:
            revert with 'NH{q', 17
        if stor162.length - 1 >= stor162.length:
            revert with 'NH{q', 50
        if stor163[arg3] >= stor162.length:
            revert with 'NH{q', 50
        stor162[stor163[arg3]] = stor162[stor162.length]
        stor163[stor162[stor162.length]] = stor163[arg3]
        stor163[arg3] = 0
        if not stor162.length:
            revert with 'NH{q', 49
        stor162[stor162.length] = 0
        stor162.length--
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
    if collectible[arg3].field_24 > 16777214:
        revert with 'NH{q', 17
    collectible[arg3].field_24 = collectible[arg3].field_24 + 1 % 16777216
    collectible[arg3].field_48 = collectible[arg3].field_48
    collectible[arg3].field_72 = collectible[arg3].field_72
    collectible[arg3].field_256 = arg2
    collectible[arg3].field_1024 = 0
    if not arg1:
        stor163[arg3] = stor162.length
        stor162.length++
        stor162[stor162.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor161[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor161[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor161[stor160[address(arg1)][stor104[address(arg1)] - 1]] = stor161[arg3]
            stor161[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor161[arg3] = balanceOf[address(arg2)]
    else:
        if stor162.length < 1:
            revert with 'NH{q', 17
        if stor162.length - 1 >= stor162.length:
            revert with 'NH{q', 50
        if stor163[arg3] >= stor162.length:
            revert with 'NH{q', 50
        stor162[stor163[arg3]] = stor162[stor162.length]
        stor163[stor162[stor162.length]] = stor163[arg3]
        stor163[arg3] = 0
        if not stor162.length:
            revert with 'NH{q', 49
        stor162[stor162.length] = 0
        stor162.length--
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

function airdrop(uint256 arg1, address arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor151 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > -sub_9437908e - 1:
        revert with 'NH{q', 17
    if arg1 + sub_9437908e > 12000:
        revert with 0, 'MAX'
    idx = 1
    while idx <= arg1:
        sub_9437908e = sub_9437908e + 1 % 16777216
        _165 = mem[64]
        mem[64] = mem[64] + 32
        mem[_165] = 0
        if not arg2:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor154]:
            revert with 0, 'ERC721: token already minted'
        mem[0] = sub_9437908e
        mem[32] = 159
        _170 = mem[64]
        mem[64] = mem[64] + 256
        mem[_170] = collectible[stor154].field_0
        mem[_170 + 64] = collectible[stor154].field_48
        mem[_170 + 96] = collectible[stor154].field_72
        mem[_170 + 160] = collectible[stor154].field_512
        mem[_170 + 192] = collectible[stor154].field_768
        mem[_170 + 128] = arg2
        if collectible[stor154].field_24 > 16777214:
            revert with 'NH{q', 17
        mem[_170 + 32] = collectible[stor154].field_24 + 1 % 16777216
        mem[_170 + 224] = 0
        collectible[stor154].field_24 = collectible[stor154].field_24 + 1 % 16777216
        collectible[stor154].field_48 = collectible[stor154].field_48
        collectible[stor154].field_72 = collectible[stor154].field_72
        collectible[stor154].field_256 = arg2
        collectible[stor154].field_1024 = 0
        stor163[stor154] = stor162.length
        stor162.length++
        stor162[stor162.length] = sub_9437908e
        if arg2:
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = sub_9437908e
            stor161[stor154] = balanceOf[address(arg2)]
            if balanceOf[address(arg2)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg2)]++
            mem[0] = sub_9437908e
            mem[32] = 103
            ownerOf[stor154] = arg2
            emit Transfer(0, arg2, sub_9437908e);
            if ext_code.size(arg2) <= 0:
                _204 = mem[64]
                mem[64] = mem[64] + 256
                mem[_204] = sub_9437908e
                mem[_204 + 32] = 0
                mem[_204 + 64] = 1
                mem[_204 + 96] = arg2
                mem[_204 + 128] = arg2
                mem[_204 + 160] = mintFee
                mem[_204 + 192] = 0
                mem[_204 + 224] = 0
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = sub_9437908e
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
                    args msg.sender, 0, sub_9437908e, 128, 0
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
                mem[_379] = sub_9437908e
                mem[_379 + 32] = 0
                mem[_379 + 64] = 1
                mem[_379 + 96] = arg2
                mem[_379 + 128] = arg2
                mem[_379 + 160] = mintFee
                mem[_379 + 192] = 0
                mem[_379 + 224] = 0
        else:
            if stor162.length < 1:
                revert with 'NH{q', 17
            if stor162.length - 1 >= stor162.length:
                revert with 'NH{q', 50
            if stor163[stor154] >= stor162.length:
                revert with 'NH{q', 50
            stor162[stor163[stor154]] = stor162[stor162.length]
            stor163[stor162[stor162.length]] = stor163[stor154]
            stor163[stor154] = 0
            if not stor162.length:
                revert with 'NH{q', 49
            stor162[stor162.length] = 0
            stor162.length--
            if balanceOf[address(arg2)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg2)]++
            mem[0] = sub_9437908e
            mem[32] = 103
            ownerOf[stor154] = arg2
            emit Transfer(0, arg2, sub_9437908e);
            if ext_code.size(arg2) <= 0:
                _215 = mem[64]
                mem[64] = mem[64] + 256
                mem[_215] = sub_9437908e
                mem[_215 + 32] = 0
                mem[_215 + 64] = 1
                mem[_215 + 96] = arg2
                mem[_215 + 128] = arg2
                mem[_215 + 160] = mintFee
                mem[_215 + 192] = 0
                mem[_215 + 224] = 0
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = sub_9437908e
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
                    args msg.sender, 0, sub_9437908e, 128, 0
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
                mem[_389] = sub_9437908e
                mem[_389 + 32] = 0
                mem[_389 + 64] = 1
                mem[_389 + 96] = arg2
                mem[_389 + 128] = arg2
                mem[_389 + 160] = mintFee
                mem[_389 + 192] = 0
                mem[_389 + 224] = 0
        mem[0] = sub_9437908e
        mem[32] = 159
        collectible[stor154].field_0 = sub_9437908e
        collectible[stor154].field_24 = 0
        collectible[stor154].field_256 = 0
        collectible[stor154].field_48 = 1
        collectible[stor154].field_56 = 0
        collectible[stor154].field_72 = arg2
        collectible[stor154].field_256 = arg2
        collectible[stor154].field_512 = mintFee
        collectible[stor154].field_768 = 0
        collectible[stor154].field_1024 = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
