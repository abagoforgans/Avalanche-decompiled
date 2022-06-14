contract main {




// =====================  Runtime code  =====================


const maxSupply = 1000


array of struct stor0;
array of struct stor1;
array of address ownerOf;
array of uint256 balanceOf;
mapping of address approved;
array of uint8 stor5;
array of struct stor6;
array of uint256 stor7;
array of uint256 stor8;
array of uint256 stor9;
array of uint256 stor10;
mapping of uint8 stor11;
uint256 mintFeeAmount;
array of struct stor13;
uint256 sub_8b0b30ce;
uint8 openForPublic;
mapping of struct moleculeLevel;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor18;
array of uint256 stor19;
mapping of uint256 stor20;
mapping of uint8 stor21;

function getMoleculeLevel(uint256 arg1) {
    require calldata.size - 4 >= 32
    return moleculeLevel[arg1].field_2048
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return address(approved[arg1])
}

function sub_16cf18b0(?) {
    require calldata.size - 4 >= 32
    return moleculeLevel[arg1].field_0, 
           moleculeLevel[arg1].field_256,
           moleculeLevel[arg1].field_512,
           moleculeLevel[arg1].field_768,
           moleculeLevel[arg1].field_1024,
           moleculeLevel[arg1].field_1280,
           bool(moleculeLevel[arg1].field_1536),
           bool(moleculeLevel[arg1].field_1544),
           moleculeLevel[arg1].field_1792,
           moleculeLevel[arg1].field_2048,
           moleculeLevel[arg1].field_2304,
           moleculeLevel[arg1].field_2560
}

function totalSupply() {
    return stor19.length
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

function excludedList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
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
    return stor10.length
}

function sub_8b0b30ce(?) {
    return sub_8b0b30ce
}

function owner() {
    return address(stor6.length)
}

function mintFeeAmount() {
    return mintFeeAmount
}

function getMoleculeKind(uint256 arg1) {
    require calldata.size - 4 >= 32
    return moleculeLevel[arg1].field_1792
}

function authorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor21[arg1])
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(uint8(stor5[address(arg1)][address(arg2)]))
}

function openForPublic() {
    return bool(openForPublic)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if address(stor6.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor6.length) = 0
    emit OwnershipTransferred(address(stor6.length), 0);
}

function addAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor8.length) != msg.sender:
        revert with 0, 'Not owner'
    require arg1
    stor21[address(arg1)] = 1
}

function removeAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor8.length) != msg.sender:
        revert with 0, 'Not owner'
    require arg1
    require arg1 != msg.sender
    stor21[address(arg1)] = 0
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    uint8(stor5[address(msg.sender)][address(arg1)]) = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor6.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(stor6.length) = arg1
    emit OwnershipTransferred(address(stor6.length), arg1);
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

function growMolecule(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor21[msg.sender]:
        if address(stor8.length) != msg.sender:
            revert with 0, 'Not authorized'
    if not ownerOf[arg1]:
        revert with 0, 'token not found'
    if moleculeLevel[arg1].field_2048 > -2:
        revert with 0, 17
    moleculeLevel[arg1].field_256 = moleculeLevel[arg1].field_256
    moleculeLevel[arg1].field_512 = moleculeLevel[arg1].field_512
    moleculeLevel[arg1].field_1536 = uint8(bool(moleculeLevel[arg1].field_1536))
    moleculeLevel[arg1].field_1544 = Mask(248, 0, bool(moleculeLevel[arg1].field_1544))
    moleculeLevel[arg1].field_1552 = Mask(240, 16, bool(moleculeLevel[arg1].field_1536)) >> 16
    moleculeLevel[arg1].field_2048++
    emit moleculeGrown(arg1, moleculeLevel[arg1].field_2048 + 1);
}

function getAllSaleTokens() {
    if stor19.length > test266151307():
        revert with 0, 65
    if stor19.length:
        mem[128 len 32 * stor19.length] = call.data[calldata.size len 32 * stor19.length]
    idx = 1
    s = 0
    while idx <= stor19.length:
        mem[0] = idx
        mem[32] = 16
        if bool(moleculeLevel[idx].field_1536) != 1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 16
        if s >= stor19.length:
            revert with 0, 50
        mem[(32 * s) + 128] = moleculeLevel[idx].field_0
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=stor19.length, data=mem[128 len 32 * stor19.length])
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
    require not moleculeLevel[arg1].field_1544
    moleculeLevel[arg1].field_256 = moleculeLevel[arg1].field_256
    moleculeLevel[arg1].field_512 = moleculeLevel[arg1].field_512
    moleculeLevel[arg1].field_1024 = arg2
    moleculeLevel[arg1].field_1536 = uint8(arg3)
    moleculeLevel[arg1].field_1544 = Mask(248, 0, bool(moleculeLevel[arg1].field_1544))
    moleculeLevel[arg1].field_1552 = Mask(240, 16, arg3) >> 16
    emit SaleToggle(arg1, arg3, arg2);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not uint8(stor5[stor2[arg2]][address(msg.sender)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    address(approved[arg2]) = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function bondMolecule(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not stor21[msg.sender]:
        if address(stor8.length) != msg.sender:
            revert with 0, 'Not authorized'
    if not ownerOf[arg2]:
        revert with 0, 'token not found'
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != arg1:
        revert with 0, 'not owner'
    if moleculeLevel[arg2].field_1544:
        revert with 0, 'Molecule already bonded'
    moleculeLevel[arg2].field_256 = moleculeLevel[arg2].field_256
    moleculeLevel[arg2].field_512 = moleculeLevel[arg2].field_512
    moleculeLevel[arg2].field_1536 = uint8(bool(moleculeLevel[arg2].field_1536))
    moleculeLevel[arg2].field_1544 = 1
    moleculeLevel[arg2].field_1552 = Mask(240, 16, bool(moleculeLevel[arg2].field_1536)) >> 16
    emit moleculeBonded(arg2, address(arg1), arg3);
}

function unbondMolecule(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not stor21[msg.sender]:
        if address(stor8.length) != msg.sender:
            revert with 0, 'Not authorized'
    if not ownerOf[arg2]:
        revert with 0, 'token not found'
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != arg1:
        revert with 0, 'not owner'
    if bool(moleculeLevel[arg2].field_1544) != 1:
        revert with 0, 'Molecule not bonded'
    if moleculeLevel[arg2].field_2560 > !sub_8b0b30ce:
        revert with 0, 17
    if moleculeLevel[arg2].field_2560 + sub_8b0b30ce <= block.timestamp:
        revert with 0, 'You have to wait 7 days from bonding to unbond'
    moleculeLevel[arg2].field_256 = moleculeLevel[arg2].field_256
    moleculeLevel[arg2].field_512 = moleculeLevel[arg2].field_512
    moleculeLevel[arg2].field_1536 = uint8(bool(moleculeLevel[arg2].field_1536))
    moleculeLevel[arg2].field_1544 = 0
    moleculeLevel[arg2].field_1552 = Mask(240, 16, bool(moleculeLevel[arg2].field_1536)) >> 16
    emit moleculeUnbonded(arg2, address(arg1), arg3);
}

function sub_5f823d28(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if address(stor6.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor13.length):
        if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor13[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13.length = 0
            idx = 0
            while (uint255(stor13.length) * 0.5) + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor13[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13.length = 0
            idx = 0
            while stor13.length.field_1 + 31 / 32 > idx:
                stor13[idx].field_0 = 0
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
        if address(approved[arg3]) != msg.sender:
            if not uint8(stor5[stor2[arg3]][address(msg.sender)]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if moleculeLevel[arg3].field_1544:
        revert with 0, 'Molecule is bonded!'
    if moleculeLevel[arg3].field_1280 > -2:
        revert with 0, 17
    moleculeLevel[arg3].field_256 = moleculeLevel[arg3].field_256
    moleculeLevel[arg3].field_512 = arg2
    moleculeLevel[arg3].field_1280++
    moleculeLevel[arg3].field_1536 = 0
    moleculeLevel[arg3].field_1544 = Mask(248, 0, bool(moleculeLevel[arg3].field_1544))
    moleculeLevel[arg3].field_1552 = 0
    if not arg1:
        stor20[arg3] = stor19.length
        stor19.length++
        stor19[stor19.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor18[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor18[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor18[stor17[address(arg1)][stor3[address(arg1)] - 1]] = stor18[arg3]
            stor18[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor18[arg3] = balanceOf[address(arg2)]
    else:
        if stor19.length < 1:
            revert with 0, 17
        if stor19.length - 1 >= stor19.length:
            revert with 0, 50
        if stor20[arg3] >= stor19.length:
            revert with 0, 50
        stor19[stor20[arg3]] = stor19[stor19.length]
        stor20[stor19[stor19.length]] = stor20[arg3]
        stor20[arg3] = 0
        if not stor19.length:
            revert with 0, 49
        stor19[stor19.length] = 0
        stor19.length--
    address(approved[arg3]) = 0
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

function name() {
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

function symbol() {
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

function baseURL() {
    if bool(stor13.length):
        if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor13.length):
            if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor13.length):
                if 31 < uint255(stor13.length) * 0.5:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor13.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length), data=mem[128 len ceil32(uint255(stor13.length) * 0.5)])
                mem[128] = 256 * stor13.length.field_8
        else:
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 0, 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length), data=mem[128 len ceil32(uint255(stor13.length) * 0.5)])
                mem[128] = 256 * stor13.length.field_8
        mem[ceil32(uint255(stor13.length) * 0.5) + 192 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
        if ceil32(uint255(stor13.length) * 0.5) > uint255(stor13.length) * 0.5:
            mem[(uint255(stor13.length) * 0.5) + ceil32(uint255(stor13.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor13.length), data=mem[128 len ceil32(uint255(stor13.length) * 0.5)], mem[(2 * ceil32(uint255(stor13.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor13.length) * 0.5)]), 
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 0, 34
    if bool(stor13.length):
        if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor13.length):
            if 31 < uint255(stor13.length) * 0.5:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while (uint255(stor13.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
    if ceil32(stor13.length.field_1) > stor13.length.field_1:
        mem[stor13.length.field_1 + ceil32(stor13.length.field_1) + 192] = 0
    return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
}

function sub_8e2e1870(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    idx = 0
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if address(stor6.length) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length <= 0:
        revert with 0, 'lists can't be empty'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'both lists should have same length'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        if not ownerOf[mem[(32 * idx) + 128]]:
            revert with 0, 'token not found'
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 16
        _119 = sha3(mem[(32 * idx) + 128], 16)
        _120 = mem[64]
        mem[64] = mem[64] + 384
        mem[_120] = moleculeLevel[mem[(32 * idx) + 128]].field_0
        mem[_120 + 32] = stor1[_119].field_0
        mem[_120 + 64] = ownerOf[_119]
        mem[_120 + 96] = balanceOf[_119]
        mem[_120 + 128] = uint256(approved[_119])
        mem[_120 + 160] = uint256(stor5[_119])
        mem[_120 + 192] = bool(stor6[_119].field_0)
        mem[_120 + 224] = bool(stor6[_119].field_8)
        mem[_120 + 256] = stor7[_119]
        mem[_120 + 288] = uint256(stor8[_119])
        mem[_120 + 320] = uint256(stor9[_119])
        mem[_120 + 352] = stor10[_119]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        mem[_120 + 256] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 16
        moleculeLevel[mem[(32 * idx) + 128]].field_0 = mem[_120]
        moleculeLevel[mem[(32 * idx) + 128]].field_256 = stor1[_119].field_0
        moleculeLevel[mem[(32 * idx) + 128]].field_512 = ownerOf[_119]
        moleculeLevel[mem[(32 * idx) + 128]].field_768 = balanceOf[_119]
        moleculeLevel[mem[(32 * idx) + 128]].field_1024 = uint256(approved[_119])
        moleculeLevel[mem[(32 * idx) + 128]].field_1280 = uint256(stor5[_119])
        moleculeLevel[mem[(32 * idx) + 128]].field_1536 = uint8(bool(stor6[_119].field_0))
        moleculeLevel[mem[(32 * idx) + 128]].field_1544 = Mask(248, 0, bool(stor6[_119].field_8))
        moleculeLevel[mem[(32 * idx) + 128]].field_1552 = Mask(240, 16, bool(stor6[_119].field_0)) >> 16
        moleculeLevel[mem[(32 * idx) + 128]].field_1792 = mem[_120 + 256]
        moleculeLevel[mem[(32 * idx) + 128]].field_2048 = uint256(stor8[_119])
        moleculeLevel[mem[(32 * idx) + 128]].field_2304 = uint256(stor9[_119])
        moleculeLevel[mem[(32 * idx) + 128]].field_2560 = stor10[_119]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
        if address(approved[arg3]) != msg.sender:
            if not uint8(stor5[stor2[arg3]][address(msg.sender)]):
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if moleculeLevel[arg3].field_1544:
        revert with 0, 'Molecule is bonded!'
    if moleculeLevel[arg3].field_1280 > -2:
        revert with 0, 17
    moleculeLevel[arg3].field_256 = moleculeLevel[arg3].field_256
    moleculeLevel[arg3].field_512 = arg2
    moleculeLevel[arg3].field_1280++
    moleculeLevel[arg3].field_1536 = 0
    moleculeLevel[arg3].field_1544 = Mask(248, 0, bool(moleculeLevel[arg3].field_1544))
    moleculeLevel[arg3].field_1552 = 0
    if not arg1:
        stor20[arg3] = stor19.length
        stor19.length++
        stor19[stor19.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor18[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor18[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor18[stor17[address(arg1)][stor3[address(arg1)] - 1]] = stor18[arg3]
            stor18[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor18[arg3] = balanceOf[address(arg2)]
    else:
        if stor19.length < 1:
            revert with 0, 17
        if stor19.length - 1 >= stor19.length:
            revert with 0, 50
        if stor20[arg3] >= stor19.length:
            revert with 0, 50
        stor19[stor20[arg3]] = stor19[stor19.length]
        stor20[stor19[stor19.length]] = stor20[arg3]
        stor20[arg3] = 0
        if not stor19.length:
            revert with 0, 49
        stor19[stor19.length] = 0
        stor19.length--
    address(approved[arg3]) = 0
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
    require msg.value >= moleculeLevel[arg1].field_1024
    require moleculeLevel[arg1].field_1536
    if msg.value and stor10.length > -1 / msg.value:
        revert with 0, 17
    if msg.value < msg.value * stor10.length / 100:
        revert with 0, 17
    call address(stor9.length) with:
       value msg.value * stor10.length / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call moleculeLevel[arg1].field_512 with:
       value msg.value - (msg.value * stor10.length / 100) wei
         gas 2300 * is_zero(value) wei
    if moleculeLevel[arg1].field_1544:
        revert with 0, 'Molecule is Bonded'
    if moleculeLevel[arg1].field_1280 > -2:
        revert with 0, 17
    moleculeLevel[arg1].field_256 = moleculeLevel[arg1].field_256
    moleculeLevel[arg1].field_512 = moleculeLevel[arg1].field_512
    moleculeLevel[arg1].field_768 = moleculeLevel[arg1].field_1024
    moleculeLevel[arg1].field_1024 = 0
    moleculeLevel[arg1].field_1280++
    moleculeLevel[arg1].field_1536 = 0
    moleculeLevel[arg1].field_1544 = 0
    moleculeLevel[arg1].field_1552 = 0
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not msg.sender:
        revert with 0, 'ERC721: transfer to the zero address'
    if moleculeLevel[arg1].field_1544:
        revert with 0, 'Molecule is bonded!'
    if moleculeLevel[arg1].field_1280 > -2:
        revert with 0, 17
    moleculeLevel[arg1].field_256 = moleculeLevel[arg1].field_256
    moleculeLevel[arg1].field_512 = msg.sender
    moleculeLevel[arg1].field_1280++
    moleculeLevel[arg1].field_1536 = 0
    moleculeLevel[arg1].field_1544 = Mask(248, 0, bool(moleculeLevel[arg1].field_1544))
    moleculeLevel[arg1].field_1552 = 0
    if not ownerOf[arg1]:
        stor20[arg1] = stor19.length
        stor19.length++
        stor19[stor19.length] = arg1
    else:
        if ownerOf[arg1] != msg.sender:
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[stor2[arg1]] < 1:
                revert with 0, 17
            if balanceOf[stor2[arg1]] - 1 != stor18[arg1]:
                tokenOfOwnerByIndex[stor2[arg1]][stor18[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
                stor18[stor17[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor18[arg1]
            stor18[arg1] = 0
            tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
    if msg.sender:
        if ownerOf[arg1] != msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = arg1
            stor18[arg1] = balanceOf[address(msg.sender)]
    else:
        if stor19.length < 1:
            revert with 0, 17
        if stor19.length - 1 >= stor19.length:
            revert with 0, 50
        if stor20[arg1] >= stor19.length:
            revert with 0, 50
        stor19[stor20[arg1]] = stor19[stor19.length]
        stor20[stor19[stor19.length]] = stor20[arg1]
        stor20[arg1] = 0
        if not stor19.length:
            revert with 0, 49
        stor19[stor19.length] = 0
        stor19.length--
    address(approved[arg1]) = 0
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor2[arg1]]--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    emit Transfer(ownerOf[arg1], msg.sender, arg1);
    emit PurchaseEvent(arg1, moleculeLevel[arg1].field_512, msg.sender, 0);
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
        if address(approved[arg3]) != msg.sender:
            if not uint8(stor5[stor2[arg3]][address(msg.sender)]):
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if moleculeLevel[arg3].field_1544:
        revert with 0, 'Molecule is bonded!'
    if moleculeLevel[arg3].field_1280 > -2:
        revert with 0, 17
    moleculeLevel[arg3].field_256 = moleculeLevel[arg3].field_256
    moleculeLevel[arg3].field_512 = arg2
    moleculeLevel[arg3].field_1280++
    moleculeLevel[arg3].field_1536 = 0
    moleculeLevel[arg3].field_1544 = Mask(248, 0, bool(moleculeLevel[arg3].field_1544))
    moleculeLevel[arg3].field_1552 = 0
    if not arg1:
        stor20[arg3] = stor19.length
        stor19.length++
        stor19[stor19.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor18[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor18[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor18[stor17[address(arg1)][stor3[address(arg1)] - 1]] = stor18[arg3]
            stor18[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor18[arg3] = balanceOf[address(arg2)]
    else:
        if stor19.length < 1:
            revert with 0, 17
        if stor19.length - 1 >= stor19.length:
            revert with 0, 50
        if stor20[arg3] >= stor19.length:
            revert with 0, 50
        stor19[stor20[arg3]] = stor19[stor19.length]
        stor20[stor19[stor19.length]] = stor20[arg3]
        stor20[arg3] = 0
        if not stor19.length:
            revert with 0, 49
        stor19[stor19.length] = 0
        stor19.length--
    address(approved[arg3]) = 0
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
    if stor19.length > !arg1:
        revert with 0, 17
    if stor19.length + arg1 > 1000:
        revert with 0, 'max supply'
    if arg1 <= 0:
        revert with 0, 'Min 1'
    if arg1 > 3:
        revert with 0, 'Max 3'
    mem[0] = msg.sender
    mem[32] = 11
    if stor11[msg.sender]:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 1
        s = mintFeeAmount
        while idx <= arg1:
            if stor7.length > -2:
                revert with 0, 17
            stor7.length++
            _544 = mem[64]
            mem[64] = mem[64] + 32
            mem[_544] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor7.length]:
                revert with 0, 'ERC721: token already minted'
            mem[0] = stor7.length
            mem[32] = 16
            _555 = mem[64]
            mem[64] = mem[64] + 384
            mem[_555] = moleculeLevel[stor7.length].field_0
            mem[_555 + 32] = moleculeLevel[stor7.length].field_256
            mem[_555 + 96] = moleculeLevel[stor7.length].field_768
            mem[_555 + 128] = moleculeLevel[stor7.length].field_1024
            mem[_555 + 224] = bool(moleculeLevel[stor7.length].field_1544)
            mem[_555 + 256] = moleculeLevel[stor7.length].field_1792
            mem[_555 + 288] = moleculeLevel[stor7.length].field_2048
            mem[_555 + 320] = moleculeLevel[stor7.length].field_2304
            mem[_555 + 352] = moleculeLevel[stor7.length].field_2560
            if moleculeLevel[stor7.length].field_1544:
                revert with 0, 'Molecule is bonded!'
            mem[_555 + 64] = msg.sender
            if moleculeLevel[stor7.length].field_1280 > -2:
                revert with 0, 17
            mem[_555 + 160] = moleculeLevel[stor7.length].field_1280 + 1
            mem[_555 + 192] = 0
            moleculeLevel[stor7.length].field_256 = moleculeLevel[stor7.length].field_256
            moleculeLevel[stor7.length].field_512 = msg.sender
            moleculeLevel[stor7.length].field_1280++
            moleculeLevel[stor7.length].field_1536 = 0
            moleculeLevel[stor7.length].field_1544 = Mask(248, 0, bool(moleculeLevel[stor7.length].field_1544))
            moleculeLevel[stor7.length].field_1552 = 0
            stor20[stor7.length] = stor19.length
            stor19.length++
            stor19[stor19.length] = stor7.length
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor7.length
                    mem[32] = 2
                    ownerOf[stor7.length] = msg.sender
                    emit Transfer(0, msg.sender, stor7.length);
                    if not ext_code.size(msg.sender):
                        _636 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_636] = stor7.length
                        mem[_636 + 32] = msg.sender
                        mem[_636 + 64] = msg.sender
                        mem[_636 + 96] = mintFeeAmount
                        mem[_636 + 128] = 0
                        mem[_636 + 160] = 0
                        mem[_636 + 192] = 0
                        mem[_636 + 224] = 0
                        mem[_636 + 256] = 0
                        mem[_636 + 288] = 1
                        mem[_636 + 320] = 0
                        mem[_636 + 352] = 0
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor7.length
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[t + _544 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor7.length, 128, 0
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
                        _1092 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1092] == Mask(32, 224, mem[_1092])
                        if Mask(32, 224, mem[_1092]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _1236 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_1236] = stor7.length
                        mem[_1236 + 32] = msg.sender
                        mem[_1236 + 64] = msg.sender
                        mem[_1236 + 96] = mintFeeAmount
                        mem[_1236 + 128] = 0
                        mem[_1236 + 160] = 0
                        mem[_1236 + 192] = 0
                        mem[_1236 + 224] = 0
                        mem[_1236 + 256] = 0
                        mem[_1236 + 288] = 1
                        mem[_1236 + 320] = 0
                        mem[_1236 + 352] = 0
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor7.length
                    stor18[stor7.length] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor7.length
                    mem[32] = 2
                    ownerOf[stor7.length] = msg.sender
                    emit Transfer(0, msg.sender, stor7.length);
                    if not ext_code.size(msg.sender):
                        _678 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_678] = stor7.length
                        mem[_678 + 32] = msg.sender
                        mem[_678 + 64] = msg.sender
                        mem[_678 + 96] = mintFeeAmount
                        mem[_678 + 128] = 0
                        mem[_678 + 160] = 0
                        mem[_678 + 192] = 0
                        mem[_678 + 224] = 0
                        mem[_678 + 256] = 0
                        mem[_678 + 288] = 1
                        mem[_678 + 320] = 0
                        mem[_678 + 352] = 0
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor7.length
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[t + _544 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor7.length, 128, 0
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
                        _1094 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1094] == Mask(32, 224, mem[_1094])
                        if Mask(32, 224, mem[_1094]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _1266 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_1266] = stor7.length
                        mem[_1266 + 32] = msg.sender
                        mem[_1266 + 64] = msg.sender
                        mem[_1266 + 96] = mintFeeAmount
                        mem[_1266 + 128] = 0
                        mem[_1266 + 160] = 0
                        mem[_1266 + 192] = 0
                        mem[_1266 + 224] = 0
                        mem[_1266 + 256] = 0
                        mem[_1266 + 288] = 1
                        mem[_1266 + 320] = 0
                        mem[_1266 + 352] = 0
            else:
                if stor19.length < 1:
                    revert with 0, 17
                if stor19.length - 1 >= stor19.length:
                    revert with 0, 50
                if stor20[stor7.length] >= stor19.length:
                    revert with 0, 50
                stor19[stor20[stor7.length]] = stor19[stor19.length]
                stor20[stor19[stor19.length]] = stor20[stor7.length]
                stor20[stor7.length] = 0
                if not stor19.length:
                    revert with 0, 49
                stor19[stor19.length] = 0
                stor19.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor7.length
                mem[32] = 2
                ownerOf[stor7.length] = msg.sender
                emit Transfer(0, msg.sender, stor7.length);
                if not ext_code.size(msg.sender):
                    _716 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_716] = stor7.length
                    mem[_716 + 32] = msg.sender
                    mem[_716 + 64] = msg.sender
                    mem[_716 + 96] = mintFeeAmount
                    mem[_716 + 128] = 0
                    mem[_716 + 160] = 0
                    mem[_716 + 192] = 0
                    mem[_716 + 224] = 0
                    mem[_716 + 256] = 0
                    mem[_716 + 288] = 1
                    mem[_716 + 320] = 0
                    mem[_716 + 352] = 0
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor7.length
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[t + _544 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor7.length, 128, 0
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
                    _1096 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1096] == Mask(32, 224, mem[_1096])
                    if Mask(32, 224, mem[_1096]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    _1296 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_1296] = stor7.length
                    mem[_1296 + 32] = msg.sender
                    mem[_1296 + 64] = msg.sender
                    mem[_1296 + 96] = mintFeeAmount
                    mem[_1296 + 128] = 0
                    mem[_1296 + 160] = 0
                    mem[_1296 + 192] = 0
                    mem[_1296 + 224] = 0
                    mem[_1296 + 256] = 0
                    mem[_1296 + 288] = 1
                    mem[_1296 + 320] = 0
                    mem[_1296 + 352] = 0
            mem[0] = stor7.length
            mem[32] = 16
            moleculeLevel[stor7.length].field_0 = stor7.length
            moleculeLevel[stor7.length].field_256 = msg.sender
            moleculeLevel[stor7.length].field_512 = msg.sender
            moleculeLevel[stor7.length].field_768 = mintFeeAmount
            moleculeLevel[stor7.length].field_1024 = 0
            moleculeLevel[stor7.length].field_1280 = 0
            moleculeLevel[stor7.length].field_1536 = 0
            moleculeLevel[stor7.length].field_1544 = 0
            moleculeLevel[stor7.length].field_1792 = 0
            moleculeLevel[stor7.length].field_2048 = 1
            moleculeLevel[stor7.length].field_2304 = 0
            moleculeLevel[stor7.length].field_2560 = 0
            if stor7.length % 200:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s > -500000000000000001:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 5 * 10^17
            continue 
    else:
        if mintFeeAmount and arg1 > -1 / mintFeeAmount:
            revert with 0, 17
        if msg.value < mintFeeAmount * arg1:
            revert with 0, 'Not enough fee'
        call address(stor9.length) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 1
        s = mintFeeAmount
        while idx <= arg1:
            if stor7.length > -2:
                revert with 0, 17
            stor7.length++
            _545 = mem[64]
            mem[64] = mem[64] + 32
            mem[_545] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor7.length]:
                revert with 0, 'ERC721: token already minted'
            mem[0] = stor7.length
            mem[32] = 16
            _558 = mem[64]
            mem[64] = mem[64] + 384
            mem[_558] = moleculeLevel[stor7.length].field_0
            mem[_558 + 32] = moleculeLevel[stor7.length].field_256
            mem[_558 + 96] = moleculeLevel[stor7.length].field_768
            mem[_558 + 128] = moleculeLevel[stor7.length].field_1024
            mem[_558 + 224] = bool(moleculeLevel[stor7.length].field_1544)
            mem[_558 + 256] = moleculeLevel[stor7.length].field_1792
            mem[_558 + 288] = moleculeLevel[stor7.length].field_2048
            mem[_558 + 320] = moleculeLevel[stor7.length].field_2304
            mem[_558 + 352] = moleculeLevel[stor7.length].field_2560
            if moleculeLevel[stor7.length].field_1544:
                revert with 0, 'Molecule is bonded!'
            mem[_558 + 64] = msg.sender
            if moleculeLevel[stor7.length].field_1280 > -2:
                revert with 0, 17
            mem[_558 + 160] = moleculeLevel[stor7.length].field_1280 + 1
            mem[_558 + 192] = 0
            moleculeLevel[stor7.length].field_256 = moleculeLevel[stor7.length].field_256
            moleculeLevel[stor7.length].field_512 = msg.sender
            moleculeLevel[stor7.length].field_1280++
            moleculeLevel[stor7.length].field_1536 = 0
            moleculeLevel[stor7.length].field_1544 = Mask(248, 0, bool(moleculeLevel[stor7.length].field_1544))
            moleculeLevel[stor7.length].field_1552 = 0
            stor20[stor7.length] = stor19.length
            stor19.length++
            stor19[stor19.length] = stor7.length
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor7.length
                    mem[32] = 2
                    ownerOf[stor7.length] = msg.sender
                    emit Transfer(0, msg.sender, stor7.length);
                    if not ext_code.size(msg.sender):
                        _650 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_650] = stor7.length
                        mem[_650 + 32] = msg.sender
                        mem[_650 + 64] = msg.sender
                        mem[_650 + 96] = mintFeeAmount
                        mem[_650 + 128] = 0
                        mem[_650 + 160] = 0
                        mem[_650 + 192] = 0
                        mem[_650 + 224] = 0
                        mem[_650 + 256] = 0
                        mem[_650 + 288] = 1
                        mem[_650 + 320] = 0
                        mem[_650 + 352] = 0
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor7.length
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[t + _545 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor7.length, 128, 0
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
                        _1098 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1098] == Mask(32, 224, mem[_1098])
                        if Mask(32, 224, mem[_1098]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _1326 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_1326] = stor7.length
                        mem[_1326 + 32] = msg.sender
                        mem[_1326 + 64] = msg.sender
                        mem[_1326 + 96] = mintFeeAmount
                        mem[_1326 + 128] = 0
                        mem[_1326 + 160] = 0
                        mem[_1326 + 192] = 0
                        mem[_1326 + 224] = 0
                        mem[_1326 + 256] = 0
                        mem[_1326 + 288] = 1
                        mem[_1326 + 320] = 0
                        mem[_1326 + 352] = 0
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor7.length
                    stor18[stor7.length] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor7.length
                    mem[32] = 2
                    ownerOf[stor7.length] = msg.sender
                    emit Transfer(0, msg.sender, stor7.length);
                    if not ext_code.size(msg.sender):
                        _694 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_694] = stor7.length
                        mem[_694 + 32] = msg.sender
                        mem[_694 + 64] = msg.sender
                        mem[_694 + 96] = mintFeeAmount
                        mem[_694 + 128] = 0
                        mem[_694 + 160] = 0
                        mem[_694 + 192] = 0
                        mem[_694 + 224] = 0
                        mem[_694 + 256] = 0
                        mem[_694 + 288] = 1
                        mem[_694 + 320] = 0
                        mem[_694 + 352] = 0
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor7.length
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[t + _545 + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor7.length, 128, 0
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
                        _1100 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1100] == Mask(32, 224, mem[_1100])
                        if Mask(32, 224, mem[_1100]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _1356 = mem[64]
                        mem[64] = mem[64] + 384
                        mem[_1356] = stor7.length
                        mem[_1356 + 32] = msg.sender
                        mem[_1356 + 64] = msg.sender
                        mem[_1356 + 96] = mintFeeAmount
                        mem[_1356 + 128] = 0
                        mem[_1356 + 160] = 0
                        mem[_1356 + 192] = 0
                        mem[_1356 + 224] = 0
                        mem[_1356 + 256] = 0
                        mem[_1356 + 288] = 1
                        mem[_1356 + 320] = 0
                        mem[_1356 + 352] = 0
            else:
                if stor19.length < 1:
                    revert with 0, 17
                if stor19.length - 1 >= stor19.length:
                    revert with 0, 50
                if stor20[stor7.length] >= stor19.length:
                    revert with 0, 50
                stor19[stor20[stor7.length]] = stor19[stor19.length]
                stor20[stor19[stor19.length]] = stor20[stor7.length]
                stor20[stor7.length] = 0
                if not stor19.length:
                    revert with 0, 49
                stor19[stor19.length] = 0
                stor19.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor7.length
                mem[32] = 2
                ownerOf[stor7.length] = msg.sender
                emit Transfer(0, msg.sender, stor7.length);
                if not ext_code.size(msg.sender):
                    _730 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_730] = stor7.length
                    mem[_730 + 32] = msg.sender
                    mem[_730 + 64] = msg.sender
                    mem[_730 + 96] = mintFeeAmount
                    mem[_730 + 128] = 0
                    mem[_730 + 160] = 0
                    mem[_730 + 192] = 0
                    mem[_730 + 224] = 0
                    mem[_730 + 256] = 0
                    mem[_730 + 288] = 1
                    mem[_730 + 320] = 0
                    mem[_730 + 352] = 0
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor7.length
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[t + _545 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor7.length, 128, 0
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
                    _1102 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1102] == Mask(32, 224, mem[_1102])
                    if Mask(32, 224, mem[_1102]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    _1386 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_1386] = stor7.length
                    mem[_1386 + 32] = msg.sender
                    mem[_1386 + 64] = msg.sender
                    mem[_1386 + 96] = mintFeeAmount
                    mem[_1386 + 128] = 0
                    mem[_1386 + 160] = 0
                    mem[_1386 + 192] = 0
                    mem[_1386 + 224] = 0
                    mem[_1386 + 256] = 0
                    mem[_1386 + 288] = 1
                    mem[_1386 + 320] = 0
                    mem[_1386 + 352] = 0
            mem[0] = stor7.length
            mem[32] = 16
            moleculeLevel[stor7.length].field_0 = stor7.length
            moleculeLevel[stor7.length].field_256 = msg.sender
            moleculeLevel[stor7.length].field_512 = msg.sender
            moleculeLevel[stor7.length].field_768 = mintFeeAmount
            moleculeLevel[stor7.length].field_1024 = 0
            moleculeLevel[stor7.length].field_1280 = 0
            moleculeLevel[stor7.length].field_1536 = 0
            moleculeLevel[stor7.length].field_1544 = 0
            moleculeLevel[stor7.length].field_1792 = 0
            moleculeLevel[stor7.length].field_2048 = 1
            moleculeLevel[stor7.length].field_2304 = 0
            moleculeLevel[stor7.length].field_2560 = 0
            if stor7.length % 200:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s > -500000000000000001:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 5 * 10^17
            continue 
    mintFeeAmount = s
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor13.length):
        if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
            revert with 0, 34
        mem[96] = uint255(stor13.length) * 0.5
        if not bool(stor13.length):
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 0, 34
            if not stor13.length.field_1:
                if uint255(stor13.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor13.length) * 0.5) + 224 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
                    mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 257] = mem[ceil32(uint255(stor13.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192])] = mem[ceil32(uint255(stor13.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 192]:
                        return Array(len=mem[ceil32(uint255(stor13.length) * 0.5) + 192], data=mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192])]), 
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 192] + ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 289] = 0
                    return 32, mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192]) + 32], 
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
                mem[ceil32(uint255(stor13.length) * 0.5) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(stor13.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
                    if ceil32(uint255(stor13.length) * 0.5) <= uint255(stor13.length) * 0.5:
                        mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
                        mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                        if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                            _3702 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3702)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3702)]
                            if ceil32(_3702) > _3702:
                                mem[_3702 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                            return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3702) + 32], 
                        _3703 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3703)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3703)]
                        if ceil32(_3703) > _3703:
                            mem[_3703 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3703) + 32], 
                    mem[(uint255(stor13.length) * 0.5) + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                        _3704 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3704)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3704)]
                        if ceil32(_3704) > _3704:
                            mem[_3704 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3704) + 32], 
                    _3705 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3705)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3705)]
                    if ceil32(_3705) > _3705:
                        mem[_3705 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3705) + 32], 
                mem[ceil32(uint255(stor13.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor13.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
                if ceil32(uint255(stor13.length) * 0.5) <= uint255(stor13.length) * 0.5:
                    mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                        _3706 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3706)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3706)]
                        if ceil32(_3706) > _3706:
                            mem[_3706 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3706) + 32], 
                    _3707 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3707)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3707)]
                    if ceil32(_3707) > _3707:
                        mem[_3707 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3707) + 32], 
                mem[(uint255(stor13.length) * 0.5) + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                    _3708 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3708)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3708)]
                    if ceil32(_3708) > _3708:
                        mem[_3708 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3708) + 32], 
                _3709 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3709)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3709)]
                if ceil32(_3709) > _3709:
                    mem[_3709 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3709) + 32], 
            if 31 >= stor13.length.field_1:
                mem[128] = 256 * stor13.length.field_8
                if uint255(stor13.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor13.length) * 0.5) + 224 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
                    mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 257] = mem[ceil32(uint255(stor13.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192])] = mem[ceil32(uint255(stor13.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 192]:
                        return Array(len=mem[ceil32(uint255(stor13.length) * 0.5) + 192], data=mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192])]), 
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 192] + ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 289] = 0
                    return 32, mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192]) + 32], 
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
                mem[ceil32(uint255(stor13.length) * 0.5) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(stor13.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
                    if ceil32(uint255(stor13.length) * 0.5) <= uint255(stor13.length) * 0.5:
                        mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
                        mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                        if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                            _3710 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3710)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3710)]
                            if ceil32(_3710) > _3710:
                                mem[_3710 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                            return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3710) + 32], 
                        _3711 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3711)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3711)]
                        if ceil32(_3711) > _3711:
                            mem[_3711 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3711) + 32], 
                    mem[(uint255(stor13.length) * 0.5) + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                        _3712 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3712)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3712)]
                        if ceil32(_3712) > _3712:
                            mem[_3712 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3712) + 32], 
                    _3713 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3713)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3713)]
                    if ceil32(_3713) > _3713:
                        mem[_3713 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3713) + 32], 
                mem[ceil32(uint255(stor13.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor13.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
                if ceil32(uint255(stor13.length) * 0.5) <= uint255(stor13.length) * 0.5:
                    mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                        _3714 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3714)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3714)]
                        if ceil32(_3714) > _3714:
                            mem[_3714 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3714) + 32], 
                    _3715 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3715)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3715)]
                    if ceil32(_3715) > _3715:
                        mem[_3715 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3715) + 32], 
                mem[(uint255(stor13.length) * 0.5) + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                    _3716 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3716)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3716)]
                    if ceil32(_3716) > _3716:
                        mem[_3716 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3716) + 32], 
                _3717 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3717)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3717)]
                if ceil32(_3717) > _3717:
                    mem[_3717 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3717) + 32], 
            mem[0] = 13
            mem[128] = uint256(stor13.field_0)
            idx = 128
            s = 0
            while stor13.length.field_1 + 96 > idx:
                mem[idx + 32] = stor13[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if uint255(stor13.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor13.length) * 0.5) + 224 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
                mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 257] = mem[ceil32(uint255(stor13.length) * 0.5) + 192]
                mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192])] = mem[ceil32(uint255(stor13.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 192]:
                    return Array(len=mem[ceil32(uint255(stor13.length) * 0.5) + 192], data=mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192])]), 
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 192] + ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 289] = 0
                return 32, mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192]) + 32], 
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
            mem[ceil32(uint255(stor13.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor13.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
                if ceil32(uint255(stor13.length) * 0.5) <= uint255(stor13.length) * 0.5:
                    mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                        _4414 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_4414)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_4414)]
                        if ceil32(_4414) > _4414:
                            mem[_4414 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_4414) + 32], 
                    _4415 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_4415)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_4415)]
                    if ceil32(_4415) > _4415:
                        mem[_4415 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_4415) + 32], 
                mem[(uint255(stor13.length) * 0.5) + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                    _4416 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_4416)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_4416)]
                    if ceil32(_4416) > _4416:
                        mem[_4416 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_4416) + 32], 
                _4417 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_4417)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_4417)]
                if ceil32(_4417) > _4417:
                    mem[_4417 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_4417) + 32], 
            mem[ceil32(uint255(stor13.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor13.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
            if ceil32(uint255(stor13.length) * 0.5) <= uint255(stor13.length) * 0.5:
                mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                    _4418 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_4418)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_4418)]
                    if ceil32(_4418) > _4418:
                        mem[_4418 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_4418) + 32], 
                _4419 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_4419)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_4419)]
                if ceil32(_4419) > _4419:
                    mem[_4419 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_4419) + 32], 
            mem[(uint255(stor13.length) * 0.5) + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                _4420 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_4420)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_4420)]
                if ceil32(_4420) > _4420:
                    mem[_4420 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_4420) + 32], 
            _4421 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_4421)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_4421)]
            if ceil32(_4421) > _4421:
                mem[_4421 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_4421) + 32], 
        if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor13.length):
            if uint255(stor13.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor13.length) * 0.5) + 224 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
                mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 257] = mem[ceil32(uint255(stor13.length) * 0.5) + 192]
                mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192])] = mem[ceil32(uint255(stor13.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 192]:
                    return Array(len=mem[ceil32(uint255(stor13.length) * 0.5) + 192], data=mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192])]), 
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 192] + ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 289] = 0
                return 32, mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192]) + 32], 
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
            mem[ceil32(uint255(stor13.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor13.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
                if ceil32(uint255(stor13.length) * 0.5) <= uint255(stor13.length) * 0.5:
                    mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                        _3686 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3686)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3686)]
                        if ceil32(_3686) > _3686:
                            mem[_3686 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3686) + 32], 
                    _3687 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3687)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3687)]
                    if ceil32(_3687) > _3687:
                        mem[_3687 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3687) + 32], 
                mem[(uint255(stor13.length) * 0.5) + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                    _3688 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3688)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3688)]
                    if ceil32(_3688) > _3688:
                        mem[_3688 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3688) + 32], 
                _3689 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3689)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3689)]
                if ceil32(_3689) > _3689:
                    mem[_3689 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3689) + 32], 
            mem[ceil32(uint255(stor13.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor13.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
            if ceil32(uint255(stor13.length) * 0.5) <= uint255(stor13.length) * 0.5:
                mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                    _3690 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3690)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3690)]
                    if ceil32(_3690) > _3690:
                        mem[_3690 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3690) + 32], 
                _3691 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3691)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3691)]
                if ceil32(_3691) > _3691:
                    mem[_3691 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3691) + 32], 
            mem[(uint255(stor13.length) * 0.5) + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                _3692 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3692)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3692)]
                if ceil32(_3692) > _3692:
                    mem[_3692 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3692) + 32], 
            _3693 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3693)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3693)]
            if ceil32(_3693) > _3693:
                mem[_3693 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3693) + 32], 
        if 31 >= uint255(stor13.length) * 0.5:
            mem[128] = 256 * stor13.length.field_8
            if uint255(stor13.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor13.length) * 0.5) + 224 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
                mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 257] = mem[ceil32(uint255(stor13.length) * 0.5) + 192]
                mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192])] = mem[ceil32(uint255(stor13.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 192]:
                    return Array(len=mem[ceil32(uint255(stor13.length) * 0.5) + 192], data=mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192])]), 
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 192] + ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 289] = 0
                return 32, mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192]) + 32], 
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
            mem[ceil32(uint255(stor13.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor13.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
                if ceil32(uint255(stor13.length) * 0.5) <= uint255(stor13.length) * 0.5:
                    mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                        _3694 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3694)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3694)]
                        if ceil32(_3694) > _3694:
                            mem[_3694 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3694) + 32], 
                    _3695 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3695)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3695)]
                    if ceil32(_3695) > _3695:
                        mem[_3695 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3695) + 32], 
                mem[(uint255(stor13.length) * 0.5) + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                    _3696 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3696)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3696)]
                    if ceil32(_3696) > _3696:
                        mem[_3696 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3696) + 32], 
                _3697 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3697)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3697)]
                if ceil32(_3697) > _3697:
                    mem[_3697 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3697) + 32], 
            mem[ceil32(uint255(stor13.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor13.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
            if ceil32(uint255(stor13.length) * 0.5) <= uint255(stor13.length) * 0.5:
                mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                    _3698 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3698)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3698)]
                    if ceil32(_3698) > _3698:
                        mem[_3698 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3698) + 32], 
                _3699 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3699)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3699)]
                if ceil32(_3699) > _3699:
                    mem[_3699 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3699) + 32], 
            mem[(uint255(stor13.length) * 0.5) + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                _3700 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3700)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3700)]
                if ceil32(_3700) > _3700:
                    mem[_3700 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3700) + 32], 
            _3701 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_3701)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_3701)]
            if ceil32(_3701) > _3701:
                mem[_3701 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_3701) + 32], 
        mem[0] = 13
        mem[128] = uint256(stor13.field_0)
        idx = 128
        s = 0
        while (uint255(stor13.length) * 0.5) + 96 > idx:
            mem[idx + 32] = stor13[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if uint255(stor13.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor13.length) * 0.5) + 224 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
            mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 225] = 32
            mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 257] = mem[ceil32(uint255(stor13.length) * 0.5) + 192]
            mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192])] = mem[ceil32(uint255(stor13.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 192]:
                return Array(len=mem[ceil32(uint255(stor13.length) * 0.5) + 192], data=mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192])]), 
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 192] + ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 289] = 0
            return 32, mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 192]) + 32], 
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
        mem[ceil32(uint255(stor13.length) * 0.5) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor13.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
            if ceil32(uint255(stor13.length) * 0.5) <= uint255(stor13.length) * 0.5:
                mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
                if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                    mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                    _4406 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_4406)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_4406)]
                    if ceil32(_4406) > _4406:
                        mem[_4406 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_4406) + 32], 
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 0
                mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                _4407 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_4407)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_4407)]
                if ceil32(_4407) > _4407:
                    mem[_4407 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_4407) + 32], 
            mem[(uint255(stor13.length) * 0.5) + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
            if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                _4408 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_4408)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_4408)]
                if ceil32(_4408) > _4408:
                    mem[_4408 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_4408) + 32], 
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 0
            mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
            _4409 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_4409)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_4409)]
            if ceil32(_4409) > _4409:
                mem[_4409 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_4409) + 32], 
        mem[ceil32(uint255(stor13.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor13.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
        if ceil32(uint255(stor13.length) * 0.5) <= uint255(stor13.length) * 0.5:
            mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
            if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
                mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
                _4410 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_4410)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_4410)]
                if ceil32(_4410) > _4410:
                    mem[_4410 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_4410) + 32], 
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 0
            mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
            _4411 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_4411)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_4411)]
            if ceil32(_4411) > _4411:
                mem[_4411 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_4411) + 32], 
        mem[(uint255(stor13.length) * 0.5) + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])] = mem[ceil32(uint255(stor13.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128])]
        if ceil32(mem[ceil32(uint255(stor13.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor13.length) * 0.5) + 128]:
            mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
            _4412 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_4412)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_4412)]
            if ceil32(_4412) > _4412:
                mem[_4412 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_4412) + 32], 
        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 0
        mem[64] = mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192
        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 192] = 32
        _4413 = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256 len ceil32(_4413)] = mem[ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + 192 len ceil32(_4413)]
        if ceil32(_4413) > _4413:
            mem[_4413 + mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor13.length) * 0.5) + 128] + ceil32(uint255(stor13.length) * 0.5) + ceil32(s) + (uint255(stor13.length) * 0.5) + 224 len ceil32(_4413) + 32], 
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 0, 34
    mem[96] = stor13.length.field_1
    if not bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not stor13.length.field_1:
            if stor13.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor13.length.field_1) + 224 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 225] = 32
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257] = mem[ceil32(stor13.length.field_1) + 192]
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])] = mem[ceil32(stor13.length.field_1) + 224 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor13.length.field_1) + 192]) <= mem[ceil32(stor13.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor13.length.field_1) + 192], data=mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]), 
                mem[mem[ceil32(stor13.length.field_1) + 192] + ceil32(stor13.length.field_1) + stor13.length.field_1 + 289] = 0
                return 32, mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257 len ceil32(mem[ceil32(stor13.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor13.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
                if ceil32(stor13.length.field_1) <= stor13.length.field_1:
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                        _3734 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3734)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3734)]
                        if ceil32(_3734) > _3734:
                            mem[_3734 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3734) + 32], 
                    _3735 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3735)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3735)]
                    if ceil32(_3735) > _3735:
                        mem[_3735 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3735) + 32], 
                mem[stor13.length.field_1 + ceil32(stor13.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                    _3736 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3736)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3736)]
                    if ceil32(_3736) > _3736:
                        mem[_3736 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3736) + 32], 
                _3737 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3737)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3737)]
                if ceil32(_3737) > _3737:
                    mem[_3737 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3737) + 32], 
            mem[ceil32(stor13.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
            if ceil32(stor13.length.field_1) <= stor13.length.field_1:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                    _3738 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3738)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3738)]
                    if ceil32(_3738) > _3738:
                        mem[_3738 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3738) + 32], 
                _3739 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3739)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3739)]
                if ceil32(_3739) > _3739:
                    mem[_3739 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3739) + 32], 
            mem[stor13.length.field_1 + ceil32(stor13.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                _3740 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3740)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3740)]
                if ceil32(_3740) > _3740:
                    mem[_3740 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3740) + 32], 
            _3741 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3741)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3741)]
            if ceil32(_3741) > _3741:
                mem[_3741 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3741) + 32], 
        if 31 >= stor13.length.field_1:
            mem[128] = 256 * stor13.length.field_8
            if stor13.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor13.length.field_1) + 224 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 225] = 32
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257] = mem[ceil32(stor13.length.field_1) + 192]
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])] = mem[ceil32(stor13.length.field_1) + 224 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor13.length.field_1) + 192]) <= mem[ceil32(stor13.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor13.length.field_1) + 192], data=mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]), 
                mem[mem[ceil32(stor13.length.field_1) + 192] + ceil32(stor13.length.field_1) + stor13.length.field_1 + 289] = 0
                return 32, mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257 len ceil32(mem[ceil32(stor13.length.field_1) + 192]) + 32], 
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
            mem[ceil32(stor13.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
                if ceil32(stor13.length.field_1) <= stor13.length.field_1:
                    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                        _3742 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3742)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3742)]
                        if ceil32(_3742) > _3742:
                            mem[_3742 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3742) + 32], 
                    _3743 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3743)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3743)]
                    if ceil32(_3743) > _3743:
                        mem[_3743 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3743) + 32], 
                mem[stor13.length.field_1 + ceil32(stor13.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                    _3744 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3744)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3744)]
                    if ceil32(_3744) > _3744:
                        mem[_3744 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3744) + 32], 
                _3745 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3745)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3745)]
                if ceil32(_3745) > _3745:
                    mem[_3745 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3745) + 32], 
            mem[ceil32(stor13.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
            if ceil32(stor13.length.field_1) <= stor13.length.field_1:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                    _3746 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3746)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3746)]
                    if ceil32(_3746) > _3746:
                        mem[_3746 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3746) + 32], 
                _3747 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3747)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3747)]
                if ceil32(_3747) > _3747:
                    mem[_3747 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3747) + 32], 
            mem[stor13.length.field_1 + ceil32(stor13.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                _3748 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3748)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3748)]
                if ceil32(_3748) > _3748:
                    mem[_3748 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3748) + 32], 
            _3749 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3749)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3749)]
            if ceil32(_3749) > _3749:
                mem[_3749 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3749) + 32], 
        mem[0] = 13
        mem[128] = uint256(stor13.field_0)
        idx = 128
        s = 0
        while stor13.length.field_1 + 96 > idx:
            mem[idx + 32] = stor13[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor13.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor13.length.field_1) + 224 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 225] = 32
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257] = mem[ceil32(stor13.length.field_1) + 192]
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])] = mem[ceil32(stor13.length.field_1) + 224 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor13.length.field_1) + 192]) <= mem[ceil32(stor13.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor13.length.field_1) + 192], data=mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]), 
            mem[mem[ceil32(stor13.length.field_1) + 192] + ceil32(stor13.length.field_1) + stor13.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257 len ceil32(mem[ceil32(stor13.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor13.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
            if ceil32(stor13.length.field_1) <= stor13.length.field_1:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                    _4430 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_4430)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4430)]
                    if ceil32(_4430) > _4430:
                        mem[_4430 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_4430) + 32], 
                _4431 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_4431)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4431)]
                if ceil32(_4431) > _4431:
                    mem[_4431 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_4431) + 32], 
            mem[stor13.length.field_1 + ceil32(stor13.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                _4432 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_4432)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4432)]
                if ceil32(_4432) > _4432:
                    mem[_4432 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_4432) + 32], 
            _4433 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_4433)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4433)]
            if ceil32(_4433) > _4433:
                mem[_4433 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_4433) + 32], 
        mem[ceil32(stor13.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
        if ceil32(stor13.length.field_1) <= stor13.length.field_1:
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                _4434 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_4434)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4434)]
                if ceil32(_4434) > _4434:
                    mem[_4434 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_4434) + 32], 
            _4435 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_4435)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4435)]
            if ceil32(_4435) > _4435:
                mem[_4435 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_4435) + 32], 
        mem[stor13.length.field_1 + ceil32(stor13.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
            _4436 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_4436)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4436)]
            if ceil32(_4436) > _4436:
                mem[_4436 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_4436) + 32], 
        _4437 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_4437)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4437)]
        if ceil32(_4437) > _4437:
            mem[_4437 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_4437) + 32], 
    if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
        revert with 0, 34
    if not Mask(256, -1, stor13.length):
        if stor13.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor13.length.field_1) + 224 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 225] = 32
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257] = mem[ceil32(stor13.length.field_1) + 192]
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])] = mem[ceil32(stor13.length.field_1) + 224 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor13.length.field_1) + 192]) <= mem[ceil32(stor13.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor13.length.field_1) + 192], data=mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]), 
            mem[mem[ceil32(stor13.length.field_1) + 192] + ceil32(stor13.length.field_1) + stor13.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257 len ceil32(mem[ceil32(stor13.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor13.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
            if ceil32(stor13.length.field_1) <= stor13.length.field_1:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                    _3718 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3718)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3718)]
                    if ceil32(_3718) > _3718:
                        mem[_3718 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3718) + 32], 
                _3719 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3719)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3719)]
                if ceil32(_3719) > _3719:
                    mem[_3719 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3719) + 32], 
            mem[stor13.length.field_1 + ceil32(stor13.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                _3720 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3720)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3720)]
                if ceil32(_3720) > _3720:
                    mem[_3720 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3720) + 32], 
            _3721 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3721)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3721)]
            if ceil32(_3721) > _3721:
                mem[_3721 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3721) + 32], 
        mem[ceil32(stor13.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
        if ceil32(stor13.length.field_1) <= stor13.length.field_1:
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                _3722 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3722)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3722)]
                if ceil32(_3722) > _3722:
                    mem[_3722 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3722) + 32], 
            _3723 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3723)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3723)]
            if ceil32(_3723) > _3723:
                mem[_3723 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3723) + 32], 
        mem[stor13.length.field_1 + ceil32(stor13.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
            _3724 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3724)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3724)]
            if ceil32(_3724) > _3724:
                mem[_3724 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3724) + 32], 
        _3725 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3725)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3725)]
        if ceil32(_3725) > _3725:
            mem[_3725 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3725) + 32], 
    if 31 >= uint255(stor13.length) * 0.5:
        mem[128] = 256 * stor13.length.field_8
        if stor13.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor13.length.field_1) + 224 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 225] = 32
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257] = mem[ceil32(stor13.length.field_1) + 192]
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])] = mem[ceil32(stor13.length.field_1) + 224 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor13.length.field_1) + 192]) <= mem[ceil32(stor13.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor13.length.field_1) + 192], data=mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]), 
            mem[mem[ceil32(stor13.length.field_1) + 192] + ceil32(stor13.length.field_1) + stor13.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257 len ceil32(mem[ceil32(stor13.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor13.length.field_1) + 128] = s
        mem[64] = ceil32(stor13.length.field_1) + ceil32(s) + 160
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            if var41001 < stor13.length.field_1:
                mem[var41001 + ceil32(stor13.length.field_1) + ceil32(s) + 192] = mem[var41001 + 128]
                var41001 = var41001 + 32
                continue 
            if var41001 <= stor13.length.field_1:
                mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                    mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
                    _3726 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3726)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3726)]
                    if ceil32(_3726) > _3726:
                        mem[_3726 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3726) + 32], 
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
                mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
                _3727 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3727)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3727)]
                if ceil32(_3727) > _3727:
                    mem[_3727 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3727) + 32], 
            mem[stor13.length.field_1 + ceil32(stor13.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
                _3728 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3728)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3728)]
                if ceil32(_3728) > _3728:
                    mem[_3728 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3728) + 32], 
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
            mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
            _3729 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3729)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3729)]
            if ceil32(_3729) > _3729:
                mem[_3729 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3729) + 32], 
        mem[ceil32(stor13.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
        if ceil32(stor13.length.field_1) <= stor13.length.field_1:
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                _3730 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3730)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3730)]
                if ceil32(_3730) > _3730:
                    mem[_3730 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3730) + 32], 
            _3731 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3731)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3731)]
            if ceil32(_3731) > _3731:
                mem[_3731 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3731) + 32], 
        mem[stor13.length.field_1 + ceil32(stor13.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
            _3732 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3732)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3732)]
            if ceil32(_3732) > _3732:
                mem[_3732 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3732) + 32], 
        _3733 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_3733)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_3733)]
        if ceil32(_3733) > _3733:
            mem[_3733 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_3733) + 32], 
    mem[0] = 13
    mem[128] = uint256(stor13.field_0)
    idx = 128
    s = 0
    while (uint255(stor13.length) * 0.5) + 96 > idx:
        mem[idx + 32] = stor13[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor13.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor13.length.field_1) + 224 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
        mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 225] = 32
        mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257] = mem[ceil32(stor13.length.field_1) + 192]
        mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])] = mem[ceil32(stor13.length.field_1) + 224 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor13.length.field_1) + 192]) <= mem[ceil32(stor13.length.field_1) + 192]:
            return Array(len=mem[ceil32(stor13.length.field_1) + 192], data=mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 289 len ceil32(mem[ceil32(stor13.length.field_1) + 192])]), 
        mem[mem[ceil32(stor13.length.field_1) + 192] + ceil32(stor13.length.field_1) + stor13.length.field_1 + 289] = 0
        return 32, mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 257 len ceil32(mem[ceil32(stor13.length.field_1) + 192]) + 32], 
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
    mem[ceil32(stor13.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
        if ceil32(stor13.length.field_1) <= stor13.length.field_1:
            mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
                mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
                _4422 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_4422)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4422)]
                if ceil32(_4422) > _4422:
                    mem[_4422 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_4422) + 32], 
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
            mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
            _4423 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_4423)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4423)]
            if ceil32(_4423) > _4423:
                mem[_4423 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_4423) + 32], 
        mem[stor13.length.field_1 + ceil32(stor13.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
            mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
            _4424 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_4424)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4424)]
            if ceil32(_4424) > _4424:
                mem[_4424 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_4424) + 32], 
        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
        mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
        _4425 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_4425)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4425)]
        if ceil32(_4425) > _4425:
            mem[_4425 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_4425) + 32], 
    mem[ceil32(stor13.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor13.length.field_1) + 128]:
            revert with 0, 50
        mem[t + ceil32(stor13.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
    if ceil32(stor13.length.field_1) <= stor13.length.field_1:
        mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
            mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
            _4426 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_4426)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4426)]
            if ceil32(_4426) > _4426:
                mem[_4426 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_4426) + 32], 
        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
        mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
        _4427 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_4427)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4427)]
        if ceil32(_4427) > _4427:
            mem[_4427 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_4427) + 32], 
    mem[stor13.length.field_1 + ceil32(stor13.length.field_1) + ceil32(s) + 192] = 0
    mem[ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192 len ceil32(mem[ceil32(stor13.length.field_1) + 128])] = mem[ceil32(stor13.length.field_1) + 160 len ceil32(mem[ceil32(stor13.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor13.length.field_1) + 128]) <= mem[ceil32(stor13.length.field_1) + 128]:
        mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
        _4428 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_4428)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4428)]
        if ceil32(_4428) > _4428:
            mem[_4428 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_4428) + 32], 
    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 0
    mem[64] = mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192
    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 192] = 32
    _4429 = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 160]
    mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256 len ceil32(_4429)] = mem[ceil32(stor13.length.field_1) + ceil32(s) + 192 len ceil32(_4429)]
    if ceil32(_4429) > _4429:
        mem[_4429 + mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 256] = 0
    return 32, mem[mem[ceil32(stor13.length.field_1) + 128] + ceil32(stor13.length.field_1) + ceil32(s) + stor13.length.field_1 + 224 len ceil32(_4429) + 32], 
}



}
