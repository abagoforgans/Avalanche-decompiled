contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
address owner;
uint256 stor11;
array of struct stor12;
array of struct stor13;
address treasuryAddress;
uint256 mintFee;
uint256 currentReflection;
uint256 totalReflection;
mapping of uint256 lastReflections;
uint8 stor19;
uint8 paused; offset 8
uint256 stor19; offset 8

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
    return tokenByIndex.length
}

function totalReflection() {
    return totalReflection
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

function currentReflection() {
    return currentReflection
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() {
    return bool(paused)
}

function treasury() {
    return treasuryAddress
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

function lastReflections(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastReflections[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function flipPause() {
    Mask(248, 0, stor19.field_8) = Mask(248, 0, not bool(paused))
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMintFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not paused:
        revert with 0, 'Not Paused'
    mintFee = arg1
    Mask(248, 0, stor19.field_8) = 0
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function raiseReflection() payable {
    if totalReflection > -msg.value - 1:
        revert with 'NH{q', 17
    totalReflection += msg.value
    if not tokenByIndex.length:
        revert with 'NH{q', 18
    if currentReflection > -(msg.value / tokenByIndex.length) - 1:
        revert with 'NH{q', 17
    currentReflection += msg.value / tokenByIndex.length
    emit Reflection(msg.value);
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
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor13[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13.length = 0
            idx = 0
            while stor13.length.field_1 + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor13[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13.length = 0
            idx = 0
            while stor13.length.field_1 + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
    emit BaseURIUpdated(Array(len=arg1.length, data=arg1[all]));
}

function getRewards(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 18
        if currentReflection < lastReflections[mem[(32 * idx) + 128]]:
            revert with 'NH{q', 17
        if s > -currentReflection + lastReflections[mem[(32 * idx) + 128]] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + currentReflection - lastReflections[mem[(32 * idx) + 128]]
        continue 
    return (s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length)
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if paused:
        revert with 0, 'Minting Paused'
    if uint8(stor19.field_0):
        revert with 0, 'Minting In-Progress'
    uint8(stor19.field_0) = 1
    if tokenByIndex.length > -arg1 - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + arg1 > 2800:
        revert with 0, 'Max Supply Reached'
    if arg1 > 20:
        revert with 0, 'Amount Invalid'
    if mintFee and arg1 > -1 / mintFee:
        revert with 'NH{q', 17
    if msg.value < mintFee * arg1:
        revert with 0, 'Fee Insufficient'
    if stor11 > -2:
        revert with 'NH{q', 17
    stor11 += arg1
    idx = stor11 + 1
    while idx <= stor11:
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[idx]:
            revert with 0, 'ERC721: token already minted'
        stor9[idx] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = idx
        if msg.sender:
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = idx
            stor7[idx] = balanceOf[address(msg.sender)]
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[idx] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[idx]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[idx]
            stor9[idx] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        ownerOf[idx] = msg.sender
        emit Transfer(0, msg.sender, idx);
        mem[0] = idx
        mem[32] = 18
        lastReflections[idx] = currentReflection
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if msg.value and 5 > -1 / msg.value:
        revert with 'NH{q', 17
    if totalReflection > -(5 * msg.value / 100) - 1:
        revert with 'NH{q', 17
    totalReflection += 5 * msg.value / 100
    if not tokenByIndex.length:
        revert with 'NH{q', 18
    if currentReflection > -(5 * msg.value / 100 / tokenByIndex.length) - 1:
        revert with 'NH{q', 17
    currentReflection += 5 * msg.value / 100 / tokenByIndex.length
    emit Reflection((5 * msg.value / 100));
    if msg.value < 5 * msg.value / 100:
        revert with 'NH{q', 17
    call treasuryAddress with:
       value msg.value - (5 * msg.value / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor19.field_0) = 0
    return stor11 + 1, stor11
}

function claimRewards(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 18
        if currentReflection < lastReflections[mem[(32 * idx) + 128]]:
            revert with 'NH{q', 17
        if s > -currentReflection + lastReflections[mem[(32 * idx) + 128]] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + currentReflection - lastReflections[mem[(32 * idx) + 128]]
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if not ownerOf[mem[(32 * idx) + 128]]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
            revert with 0, 'Owner Invalid'
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 18
        lastReflections[mem[(32 * idx) + 128]] = currentReflection
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    call msg.sender with:
       value s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
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
                revert with 'NH{q', 34
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
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
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
            revert with 'NH{q', 34
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
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
                revert with 'NH{q', 34
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
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
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
            revert with 'NH{q', 34
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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

function baseURI() {
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor13.length.field_1 > 0:
            if bool(stor13.length):
                if bool(stor13.length) == stor13.length.field_1 < 32:
                    revert with 'NH{q', 34
                if bool(stor13.length):
                    if bool(stor13.length) == stor13.length.field_1 < 32:
                        revert with 'NH{q', 34
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
                            return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                        mem[128] = 256 * stor13.length.field_8
                else:
                    if bool(stor13.length) == stor13.length.field_1 < 32:
                        revert with 'NH{q', 34
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
                            return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                        mem[128] = 256 * stor13.length.field_8
                mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
                if ceil32(stor13.length.field_1) > stor13.length.field_1:
                    mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
                return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if bool(stor13.length):
                if bool(stor13.length) == stor13.length.field_1 < 32:
                    revert with 'NH{q', 34
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
            else:
                if bool(stor13.length) == stor13.length.field_1 < 32:
                    revert with 'NH{q', 34
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
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
            return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor13.length.field_1 > 0:
            if bool(stor13.length):
                if bool(stor13.length) == stor13.length.field_1 < 32:
                    revert with 'NH{q', 34
                if bool(stor13.length):
                    if bool(stor13.length) == stor13.length.field_1 < 32:
                        revert with 'NH{q', 34
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
                            return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                        mem[128] = 256 * stor13.length.field_8
                else:
                    if bool(stor13.length) == stor13.length.field_1 < 32:
                        revert with 'NH{q', 34
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
                            return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                        mem[128] = 256 * stor13.length.field_8
                mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
                if ceil32(stor13.length.field_1) > stor13.length.field_1:
                    mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
                return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if bool(stor13.length):
                if bool(stor13.length) == stor13.length.field_1 < 32:
                    revert with 'NH{q', 34
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
            else:
                if bool(stor13.length) == stor13.length.field_1 < 32:
                    revert with 'NH{q', 34
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
                mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
            return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) > stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
    if ceil32(stor12.length.field_1) > stor12.length.field_1:
        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0, 'Token Invalid'
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor13.length.field_1 > 0:
            if not arg1:
                mem[96] = 1
                mem[128] = '0'
                if bool(stor13.length):
                    if bool(stor13.length) == stor13.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor13.length):
                        mem[192] = Mask(248, 8, stor13.length)
                    else:
                        if bool(stor13.length) != 1:
                            mem[64] = 6
                            _505 = mem[160]
                            mem[38] = mem[160]
                            mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                            if ceil32(_505) > _505:
                                mem[_505 + 70] = 0
                            return memory
                              from mem[64]
                               len ceil32(_505) + -mem[64] + 70
                        idx = 0
                        s = 0
                        while idx < stor13.length.field_1:
                            mem[idx + 192] = stor13[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[stor13.length.field_1 + 192] = '0'
                    mem[stor13.length.field_1 + 193] = '.json'
                    mem[stor13.length.field_1 + 198] = 32
                    mem[stor13.length.field_1 + 230] = mem[160]
                    mem[stor13.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(mem[160]) > mem[160]:
                        mem[stor13.length.field_1 + mem[160] + 262] = 0
                    return Array(len=mem[160], data=mem[stor13.length.field_1 + 262 len ceil32(mem[160])])
                if bool(stor13.length) == stor13.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor13.length):
                    mem[192] = Mask(248, 8, stor13.length)
                else:
                    if bool(stor13.length) != 1:
                        mem[64] = 6
                        _507 = mem[160]
                        mem[38] = mem[160]
                        mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_507) > _507:
                            mem[_507 + 70] = 0
                        return memory
                          from mem[64]
                           len ceil32(_507) + -mem[64] + 70
                    idx = 0
                    s = 0
                    while idx < stor13.length.field_1:
                        mem[idx + 192] = stor13[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[stor13.length.field_1 + 192] = '0'
                mem[stor13.length.field_1 + 193] = '.json'
                mem[stor13.length.field_1 + 198] = 32
                mem[stor13.length.field_1 + 230] = mem[160]
                mem[stor13.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[stor13.length.field_1 + mem[160] + 262] = 0
                return Array(len=mem[160], data=mem[stor13.length.field_1 + 262 len ceil32(mem[160])])
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
            mem[96] = s
            mem[64] = ceil32(s) + 128
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1424 = mem[64]
                if bool(stor13.length):
                    if bool(stor13.length) == stor13.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor13.length):
                        mem[mem[64] + 32] = Mask(248, 8, stor13.length)
                        _1552 = mem[96]
                        mem[mem[64] + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        mem[mem[64] + stor13.length.field_1 + mem[96] + 32] = '.json'
                        if ceil32(mem[96]) <= mem[96]:
                            _2464 = mem[64]
                            mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
                            mem[_1424 + stor13.length.field_1 + mem[96] + 37] = 32
                            _2568 = mem[_2464]
                            mem[_1424 + stor13.length.field_1 + _1552 + 69] = mem[_2464]
                            mem[_1424 + stor13.length.field_1 + _1552 + 101 len ceil32(_2568)] = mem[_2464 + 32 len ceil32(_2568)]
                            if ceil32(_2568) > _2568:
                                mem[_1424 + stor13.length.field_1 + _1552 + _2568 + 101] = 0
                            return 32, mem[_1424 + stor13.length.field_1 + _1552 + 69 len ceil32(_2568) + 32]
                        _2512 = mem[64]
                        mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
                        mem[_1424 + stor13.length.field_1 + mem[96] + 37] = 32
                        _2608 = mem[_2512]
                        mem[_1424 + stor13.length.field_1 + _1552 + 69] = mem[_2512]
                        mem[_1424 + stor13.length.field_1 + _1552 + 101 len ceil32(_2608)] = mem[_2512 + 32 len ceil32(_2608)]
                        if ceil32(_2608) > _2608:
                            mem[_1424 + stor13.length.field_1 + _1552 + _2608 + 101] = 0
                        return 32, mem[_1424 + stor13.length.field_1 + _1552 + 69 len ceil32(_2608) + 32]
                    if bool(stor13.length) != 1:
                        _1568 = mem[96]
                        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        mem[_1568] = '.json'
                        if ceil32(_1568) <= _1568:
                            _2466 = mem[64]
                            mem[64] = _1568 + 5
                            mem[_1568 + 5] = 32
                            _2569 = mem[_2466]
                            mem[_1568 + 37] = mem[_2466]
                            mem[_1568 + 69 len ceil32(_2569)] = mem[_2466 + 32 len ceil32(_2569)]
                            if ceil32(_2569) > _2569:
                                mem[_1568 + _2569 + 69] = 0
                            return 32, mem[_1568 + 37 len ceil32(_2569) + 32]
                        _2513 = mem[64]
                        mem[64] = _1568 + 5
                        mem[_1568 + 5] = 32
                        _2609 = mem[_2513]
                        mem[_1568 + 37] = mem[_2513]
                        mem[_1568 + 69 len ceil32(_2609)] = mem[_2513 + 32 len ceil32(_2609)]
                        if ceil32(_2609) > _2609:
                            mem[_1568 + _2609 + 69] = 0
                        return 32, mem[_1568 + 37 len ceil32(_2609) + 32]
                    mem[0] = 13
                    idx = 0
                    s = 0
                    while idx < stor13.length.field_1:
                        mem[_1424 + idx + 32] = stor13[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _2336 = mem[96]
                    mem[_1424 + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_1424 + stor13.length.field_1 + _2336 + 32] = '.json'
                    if ceil32(_2336) <= _2336:
                        _3224 = mem[64]
                        mem[64] = _1424 + stor13.length.field_1 + _2336 + 37
                        mem[_1424 + stor13.length.field_1 + _2336 + 37] = 32
                        _3264 = mem[_3224]
                        mem[_1424 + stor13.length.field_1 + _2336 + 69] = mem[_3224]
                        mem[_1424 + stor13.length.field_1 + _2336 + 101 len ceil32(_3264)] = mem[_3224 + 32 len ceil32(_3264)]
                        if ceil32(_3264) > _3264:
                            mem[_1424 + stor13.length.field_1 + _2336 + _3264 + 101] = 0
                        return 32, mem[_1424 + stor13.length.field_1 + _2336 + 69 len ceil32(_3264) + 32]
                    _3240 = mem[64]
                    mem[64] = _1424 + stor13.length.field_1 + _2336 + 37
                    mem[_1424 + stor13.length.field_1 + _2336 + 37] = 32
                    _3280 = mem[_3240]
                    mem[_1424 + stor13.length.field_1 + _2336 + 69] = mem[_3240]
                    mem[_1424 + stor13.length.field_1 + _2336 + 101 len ceil32(_3280)] = mem[_3240 + 32 len ceil32(_3280)]
                    if ceil32(_3280) > _3280:
                        mem[_1424 + stor13.length.field_1 + _2336 + _3280 + 101] = 0
                    return 32, mem[_1424 + stor13.length.field_1 + _2336 + 69 len ceil32(_3280) + 32]
                if bool(stor13.length) == stor13.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor13.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor13.length)
                    _1569 = mem[96]
                    mem[mem[64] + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[mem[64] + stor13.length.field_1 + mem[96] + 32] = '.json'
                    if ceil32(mem[96]) <= mem[96]:
                        _2467 = mem[64]
                        mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
                        mem[_1424 + stor13.length.field_1 + mem[96] + 37] = 32
                        _2570 = mem[_2467]
                        mem[_1424 + stor13.length.field_1 + _1569 + 69] = mem[_2467]
                        mem[_1424 + stor13.length.field_1 + _1569 + 101 len ceil32(_2570)] = mem[_2467 + 32 len ceil32(_2570)]
                        if ceil32(_2570) > _2570:
                            mem[_1424 + stor13.length.field_1 + _1569 + _2570 + 101] = 0
                        return 32, mem[_1424 + stor13.length.field_1 + _1569 + 69 len ceil32(_2570) + 32]
                    _2514 = mem[64]
                    mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
                    mem[_1424 + stor13.length.field_1 + mem[96] + 37] = 32
                    _2610 = mem[_2514]
                    mem[_1424 + stor13.length.field_1 + _1569 + 69] = mem[_2514]
                    mem[_1424 + stor13.length.field_1 + _1569 + 101 len ceil32(_2610)] = mem[_2514 + 32 len ceil32(_2610)]
                    if ceil32(_2610) > _2610:
                        mem[_1424 + stor13.length.field_1 + _1569 + _2610 + 101] = 0
                    return 32, mem[_1424 + stor13.length.field_1 + _1569 + 69 len ceil32(_2610) + 32]
                if bool(stor13.length) != 1:
                    _1592 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_1592] = '.json'
                    if ceil32(_1592) <= _1592:
                        _2469 = mem[64]
                        mem[64] = _1592 + 5
                        mem[_1592 + 5] = 32
                        _2571 = mem[_2469]
                        mem[_1592 + 37] = mem[_2469]
                        mem[_1592 + 69 len ceil32(_2571)] = mem[_2469 + 32 len ceil32(_2571)]
                        if ceil32(_2571) > _2571:
                            mem[_1592 + _2571 + 69] = 0
                        return 32, mem[_1592 + 37 len ceil32(_2571) + 32]
                    _2515 = mem[64]
                    mem[64] = _1592 + 5
                    mem[_1592 + 5] = 32
                    _2611 = mem[_2515]
                    mem[_1592 + 37] = mem[_2515]
                    mem[_1592 + 69 len ceil32(_2611)] = mem[_2515 + 32 len ceil32(_2611)]
                    if ceil32(_2611) > _2611:
                        mem[_1592 + _2611 + 69] = 0
                    return 32, mem[_1592 + 37 len ceil32(_2611) + 32]
                mem[0] = 13
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[_1424 + idx + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _2337 = mem[96]
                mem[_1424 + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1424 + stor13.length.field_1 + _2337 + 32] = '.json'
                if ceil32(_2337) <= _2337:
                    _3225 = mem[64]
                    mem[64] = _1424 + stor13.length.field_1 + _2337 + 37
                    mem[_1424 + stor13.length.field_1 + _2337 + 37] = 32
                    _3265 = mem[_3225]
                    mem[_1424 + stor13.length.field_1 + _2337 + 69] = mem[_3225]
                    mem[_1424 + stor13.length.field_1 + _2337 + 101 len ceil32(_3265)] = mem[_3225 + 32 len ceil32(_3265)]
                    if ceil32(_3265) > _3265:
                        mem[_1424 + stor13.length.field_1 + _2337 + _3265 + 101] = 0
                    return 32, mem[_1424 + stor13.length.field_1 + _2337 + 69 len ceil32(_3265) + 32]
                _3241 = mem[64]
                mem[64] = _1424 + stor13.length.field_1 + _2337 + 37
                mem[_1424 + stor13.length.field_1 + _2337 + 37] = 32
                _3281 = mem[_3241]
                mem[_1424 + stor13.length.field_1 + _2337 + 69] = mem[_3241]
                mem[_1424 + stor13.length.field_1 + _2337 + 101 len ceil32(_3281)] = mem[_3241 + 32 len ceil32(_3281)]
                if ceil32(_3281) > _3281:
                    mem[_1424 + stor13.length.field_1 + _2337 + _3281 + 101] = 0
                return 32, mem[_1424 + stor13.length.field_1 + _2337 + 69 len ceil32(_3281) + 32]
            mem[128 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1425 = mem[64]
            if bool(stor13.length):
                if bool(stor13.length) == stor13.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor13.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor13.length)
                    _1553 = mem[96]
                    mem[mem[64] + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[mem[64] + stor13.length.field_1 + mem[96] + 32] = '.json'
                    if ceil32(mem[96]) <= mem[96]:
                        _2470 = mem[64]
                        mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
                        mem[_1425 + stor13.length.field_1 + mem[96] + 37] = 32
                        _2572 = mem[_2470]
                        mem[_1425 + stor13.length.field_1 + _1553 + 69] = mem[_2470]
                        mem[_1425 + stor13.length.field_1 + _1553 + 101 len ceil32(_2572)] = mem[_2470 + 32 len ceil32(_2572)]
                        if ceil32(_2572) > _2572:
                            mem[_1425 + stor13.length.field_1 + _1553 + _2572 + 101] = 0
                        return 32, mem[_1425 + stor13.length.field_1 + _1553 + 69 len ceil32(_2572) + 32]
                    _2516 = mem[64]
                    mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
                    mem[_1425 + stor13.length.field_1 + mem[96] + 37] = 32
                    _2612 = mem[_2516]
                    mem[_1425 + stor13.length.field_1 + _1553 + 69] = mem[_2516]
                    mem[_1425 + stor13.length.field_1 + _1553 + 101 len ceil32(_2612)] = mem[_2516 + 32 len ceil32(_2612)]
                    if ceil32(_2612) > _2612:
                        mem[_1425 + stor13.length.field_1 + _1553 + _2612 + 101] = 0
                    return 32, mem[_1425 + stor13.length.field_1 + _1553 + 69 len ceil32(_2612) + 32]
                if bool(stor13.length) != 1:
                    _1570 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_1570] = '.json'
                    if ceil32(_1570) <= _1570:
                        _2472 = mem[64]
                        mem[64] = _1570 + 5
                        mem[_1570 + 5] = 32
                        _2573 = mem[_2472]
                        mem[_1570 + 37] = mem[_2472]
                        mem[_1570 + 69 len ceil32(_2573)] = mem[_2472 + 32 len ceil32(_2573)]
                        if ceil32(_2573) > _2573:
                            mem[_1570 + _2573 + 69] = 0
                        return 32, mem[_1570 + 37 len ceil32(_2573) + 32]
                    _2517 = mem[64]
                    mem[64] = _1570 + 5
                    mem[_1570 + 5] = 32
                    _2613 = mem[_2517]
                    mem[_1570 + 37] = mem[_2517]
                    mem[_1570 + 69 len ceil32(_2613)] = mem[_2517 + 32 len ceil32(_2613)]
                    if ceil32(_2613) > _2613:
                        mem[_1570 + _2613 + 69] = 0
                    return 32, mem[_1570 + 37 len ceil32(_2613) + 32]
                mem[0] = 13
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[_1425 + idx + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _2338 = mem[96]
                mem[_1425 + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1425 + stor13.length.field_1 + _2338 + 32] = '.json'
                if ceil32(_2338) <= _2338:
                    _3226 = mem[64]
                    mem[64] = _1425 + stor13.length.field_1 + _2338 + 37
                    mem[_1425 + stor13.length.field_1 + _2338 + 37] = 32
                    _3266 = mem[_3226]
                    mem[_1425 + stor13.length.field_1 + _2338 + 69] = mem[_3226]
                    mem[_1425 + stor13.length.field_1 + _2338 + 101 len ceil32(_3266)] = mem[_3226 + 32 len ceil32(_3266)]
                    if ceil32(_3266) > _3266:
                        mem[_1425 + stor13.length.field_1 + _2338 + _3266 + 101] = 0
                    return 32, mem[_1425 + stor13.length.field_1 + _2338 + 69 len ceil32(_3266) + 32]
                _3242 = mem[64]
                mem[64] = _1425 + stor13.length.field_1 + _2338 + 37
                mem[_1425 + stor13.length.field_1 + _2338 + 37] = 32
                _3282 = mem[_3242]
                mem[_1425 + stor13.length.field_1 + _2338 + 69] = mem[_3242]
                mem[_1425 + stor13.length.field_1 + _2338 + 101 len ceil32(_3282)] = mem[_3242 + 32 len ceil32(_3282)]
                if ceil32(_3282) > _3282:
                    mem[_1425 + stor13.length.field_1 + _2338 + _3282 + 101] = 0
                return 32, mem[_1425 + stor13.length.field_1 + _2338 + 69 len ceil32(_3282) + 32]
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor13.length):
                mem[mem[64] + 32] = Mask(248, 8, stor13.length)
                _1571 = mem[96]
                mem[mem[64] + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + stor13.length.field_1 + mem[96] + 32] = '.json'
                if ceil32(mem[96]) <= mem[96]:
                    _2473 = mem[64]
                    mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
                    mem[_1425 + stor13.length.field_1 + mem[96] + 37] = 32
                    _2574 = mem[_2473]
                    mem[_1425 + stor13.length.field_1 + _1571 + 69] = mem[_2473]
                    mem[_1425 + stor13.length.field_1 + _1571 + 101 len ceil32(_2574)] = mem[_2473 + 32 len ceil32(_2574)]
                    if ceil32(_2574) > _2574:
                        mem[_1425 + stor13.length.field_1 + _1571 + _2574 + 101] = 0
                    return 32, mem[_1425 + stor13.length.field_1 + _1571 + 69 len ceil32(_2574) + 32]
                _2518 = mem[64]
                mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
                mem[_1425 + stor13.length.field_1 + mem[96] + 37] = 32
                _2614 = mem[_2518]
                mem[_1425 + stor13.length.field_1 + _1571 + 69] = mem[_2518]
                mem[_1425 + stor13.length.field_1 + _1571 + 101 len ceil32(_2614)] = mem[_2518 + 32 len ceil32(_2614)]
                if ceil32(_2614) > _2614:
                    mem[_1425 + stor13.length.field_1 + _1571 + _2614 + 101] = 0
                return 32, mem[_1425 + stor13.length.field_1 + _1571 + 69 len ceil32(_2614) + 32]
            if bool(stor13.length) != 1:
                _1593 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1593] = '.json'
                if ceil32(_1593) <= _1593:
                    _2475 = mem[64]
                    mem[64] = _1593 + 5
                    mem[_1593 + 5] = 32
                    _2575 = mem[_2475]
                    mem[_1593 + 37] = mem[_2475]
                    mem[_1593 + 69 len ceil32(_2575)] = mem[_2475 + 32 len ceil32(_2575)]
                    if ceil32(_2575) > _2575:
                        mem[_1593 + _2575 + 69] = 0
                    return 32, mem[_1593 + 37 len ceil32(_2575) + 32]
                _2519 = mem[64]
                mem[64] = _1593 + 5
                mem[_1593 + 5] = 32
                _2615 = mem[_2519]
                mem[_1593 + 37] = mem[_2519]
                mem[_1593 + 69 len ceil32(_2615)] = mem[_2519 + 32 len ceil32(_2615)]
                if ceil32(_2615) > _2615:
                    mem[_1593 + _2615 + 69] = 0
                return 32, mem[_1593 + 37 len ceil32(_2615) + 32]
            mem[0] = 13
            idx = 0
            s = 0
            while idx < stor13.length.field_1:
                mem[_1425 + idx + 32] = stor13[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _2339 = mem[96]
            mem[_1425 + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1425 + stor13.length.field_1 + _2339 + 32] = '.json'
            if ceil32(_2339) <= _2339:
                _3227 = mem[64]
                mem[64] = _1425 + stor13.length.field_1 + _2339 + 37
                mem[_1425 + stor13.length.field_1 + _2339 + 37] = 32
                _3267 = mem[_3227]
                mem[_1425 + stor13.length.field_1 + _2339 + 69] = mem[_3227]
                mem[_1425 + stor13.length.field_1 + _2339 + 101 len ceil32(_3267)] = mem[_3227 + 32 len ceil32(_3267)]
                if ceil32(_3267) > _3267:
                    mem[_1425 + stor13.length.field_1 + _2339 + _3267 + 101] = 0
                return 32, mem[_1425 + stor13.length.field_1 + _2339 + 69 len ceil32(_3267) + 32]
            _3243 = mem[64]
            mem[64] = _1425 + stor13.length.field_1 + _2339 + 37
            mem[_1425 + stor13.length.field_1 + _2339 + 37] = 32
            _3283 = mem[_3243]
            mem[_1425 + stor13.length.field_1 + _2339 + 69] = mem[_3243]
            mem[_1425 + stor13.length.field_1 + _2339 + 101 len ceil32(_3283)] = mem[_3243 + 32 len ceil32(_3283)]
            if ceil32(_3283) > _3283:
                mem[_1425 + stor13.length.field_1 + _2339 + _3283 + 101] = 0
            return 32, mem[_1425 + stor13.length.field_1 + _2339 + 69 len ceil32(_3283) + 32]
        if not arg1:
            mem[96] = 1
            mem[128] = '0'
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[192] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 1
                        _440 = mem[160]
                        mem[33] = mem[160]
                        mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_440) > _440:
                            mem[_440 + 65] = 0
                        return memory
                          from mem[64]
                           len ceil32(_440) + -mem[64] + 65
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[idx + 192] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[stor12.length.field_1 + 192] = '0'
                mem[stor12.length.field_1 + 193] = 32
                mem[stor12.length.field_1 + 225] = mem[160]
                mem[stor12.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[stor12.length.field_1 + mem[160] + 257] = 0
                return Array(len=mem[160], data=mem[stor12.length.field_1 + 257 len ceil32(mem[160])])
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[192] = Mask(248, 8, stor12.length)
            else:
                if bool(stor12.length) != 1:
                    mem[64] = 1
                    _443 = mem[160]
                    mem[33] = mem[160]
                    mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_443) > _443:
                        mem[_443 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_443) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[idx + 192] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor12.length.field_1 + 192] = '0'
            mem[stor12.length.field_1 + 193] = 32
            mem[stor12.length.field_1 + 225] = mem[160]
            mem[stor12.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor12.length.field_1 + mem[160] + 257] = 0
            return Array(len=mem[160], data=mem[stor12.length.field_1 + 257 len ceil32(mem[160])])
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
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1426 = mem[64]
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor12.length)
                    _1556 = mem[96]
                    mem[mem[64] + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) <= mem[96]:
                        _2340 = mem[64]
                        mem[64] = mem[64] + stor12.length.field_1 + mem[96] + 32
                        mem[_1426 + stor12.length.field_1 + mem[96] + 32] = 32
                        _2448 = mem[_2340]
                        mem[_1426 + stor12.length.field_1 + _1556 + 64] = mem[_2340]
                        mem[_1426 + stor12.length.field_1 + _1556 + 96 len ceil32(_2448)] = mem[_2340 + 32 len ceil32(_2448)]
                        if ceil32(_2448) > _2448:
                            mem[_1426 + stor12.length.field_1 + _1556 + _2448 + 96] = 0
                        return memory
                          from mem[64]
                           len _1426 + stor12.length.field_1 + _1556 + ceil32(_2448) + -mem[64] + 96
                    mem[mem[64] + stor12.length.field_1 + mem[96] + 32] = 0
                    _2368 = mem[64]
                    mem[64] = mem[64] + stor12.length.field_1 + mem[96] + 32
                    mem[_1426 + stor12.length.field_1 + mem[96] + 32] = 32
                    _2476 = mem[_2368]
                    mem[_1426 + stor12.length.field_1 + _1556 + 64] = mem[_2368]
                    mem[_1426 + stor12.length.field_1 + _1556 + 96 len ceil32(_2476)] = mem[_2368 + 32 len ceil32(_2476)]
                    if ceil32(_2476) > _2476:
                        mem[_1426 + stor12.length.field_1 + _1556 + _2476 + 96] = 0
                    return 32, mem[_1426 + stor12.length.field_1 + _1556 + 64 len ceil32(_2476) + 32]
                if bool(stor12.length) != 1:
                    _1574 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(_1574) <= _1574:
                        _2342 = mem[64]
                        mem[64] = _1574
                        mem[_1574] = 32
                        _2449 = mem[_2342]
                        mem[_1574 + 32] = mem[_2342]
                        mem[_1574 + 64 len ceil32(_2449)] = mem[_2342 + 32 len ceil32(_2449)]
                        if ceil32(_2449) > _2449:
                            mem[_1574 + _2449 + 64] = 0
                        return 32, mem[_1574 + 32 len ceil32(_2449) + 32]
                    mem[_1574] = 0
                    _2369 = mem[64]
                    mem[64] = _1574
                    mem[_1574] = 32
                    _2478 = mem[_2369]
                    mem[_1574 + 32] = mem[_2369]
                    mem[_1574 + 64 len ceil32(_2478)] = mem[_2369 + 32 len ceil32(_2478)]
                    if ceil32(_2478) > _2478:
                        mem[_1574 + _2478 + 64] = 0
                    return 32, mem[_1574 + 32 len ceil32(_2478) + 32]
                mem[0] = 12
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[_1426 + idx + 32] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _2341 = mem[96]
                mem[_1426 + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_2341) <= _2341:
                    _3056 = mem[64]
                    mem[64] = _1426 + stor12.length.field_1 + _2341 + 32
                    mem[_1426 + stor12.length.field_1 + _2341 + 32] = 32
                    _3216 = mem[_3056]
                    mem[_1426 + stor12.length.field_1 + _2341 + 64] = mem[_3056]
                    mem[_1426 + stor12.length.field_1 + _2341 + 96 len ceil32(_3216)] = mem[_3056 + 32 len ceil32(_3216)]
                    if ceil32(_3216) > _3216:
                        mem[_1426 + stor12.length.field_1 + _2341 + _3216 + 96] = 0
                    return 32, mem[_1426 + stor12.length.field_1 + _2341 + 64 len ceil32(_3216) + 32]
                mem[_1426 + stor12.length.field_1 + _2341 + 32] = 0
                _3064 = mem[64]
                mem[64] = _1426 + stor12.length.field_1 + _2341 + 32
                mem[_1426 + stor12.length.field_1 + _2341 + 32] = 32
                _3228 = mem[_3064]
                mem[_1426 + stor12.length.field_1 + _2341 + 64] = mem[_3064]
                mem[_1426 + stor12.length.field_1 + _2341 + 96 len ceil32(_3228)] = mem[_3064 + 32 len ceil32(_3228)]
                if ceil32(_3228) > _3228:
                    mem[_1426 + stor12.length.field_1 + _2341 + _3228 + 96] = 0
                return 32, mem[_1426 + stor12.length.field_1 + _2341 + 64 len ceil32(_3228) + 32]
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[mem[64] + 32] = Mask(248, 8, stor12.length)
                _1575 = mem[96]
                mem[mem[64] + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _2343 = mem[64]
                    mem[64] = mem[64] + stor12.length.field_1 + mem[96] + 32
                    mem[_1426 + stor12.length.field_1 + mem[96] + 32] = 32
                    _2450 = mem[_2343]
                    mem[_1426 + stor12.length.field_1 + _1575 + 64] = mem[_2343]
                    mem[_1426 + stor12.length.field_1 + _1575 + 96 len ceil32(_2450)] = mem[_2343 + 32 len ceil32(_2450)]
                    if ceil32(_2450) > _2450:
                        mem[_1426 + stor12.length.field_1 + _1575 + _2450 + 96] = 0
                    return memory
                      from mem[64]
                       len _1426 + stor12.length.field_1 + _1575 + ceil32(_2450) + -mem[64] + 96
                mem[mem[64] + stor12.length.field_1 + mem[96] + 32] = 0
                _2370 = mem[64]
                mem[64] = mem[64] + stor12.length.field_1 + mem[96] + 32
                mem[_1426 + stor12.length.field_1 + mem[96] + 32] = 32
                _2479 = mem[_2370]
                mem[_1426 + stor12.length.field_1 + _1575 + 64] = mem[_2370]
                mem[_1426 + stor12.length.field_1 + _1575 + 96 len ceil32(_2479)] = mem[_2370 + 32 len ceil32(_2479)]
                if ceil32(_2479) > _2479:
                    mem[_1426 + stor12.length.field_1 + _1575 + _2479 + 96] = 0
                return 32, mem[_1426 + stor12.length.field_1 + _1575 + 64 len ceil32(_2479) + 32]
            if bool(stor12.length) != 1:
                _1594 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1594) <= _1594:
                    _2345 = mem[64]
                    mem[64] = _1594
                    mem[_1594] = 32
                    _2451 = mem[_2345]
                    mem[_1594 + 32] = mem[_2345]
                    mem[_1594 + 64 len ceil32(_2451)] = mem[_2345 + 32 len ceil32(_2451)]
                    if ceil32(_2451) > _2451:
                        mem[_1594 + _2451 + 64] = 0
                    return 32, mem[_1594 + 32 len ceil32(_2451) + 32]
                mem[_1594] = 0
                _2371 = mem[64]
                mem[64] = _1594
                mem[_1594] = 32
                _2481 = mem[_2371]
                mem[_1594 + 32] = mem[_2371]
                mem[_1594 + 64 len ceil32(_2481)] = mem[_2371 + 32 len ceil32(_2481)]
                if ceil32(_2481) > _2481:
                    mem[_1594 + _2481 + 64] = 0
                return 32, mem[_1594 + 32 len ceil32(_2481) + 32]
            mem[0] = 12
            idx = 0
            s = 0
            while idx < stor12.length.field_1:
                mem[_1426 + idx + 32] = stor12[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _2344 = mem[96]
            mem[_1426 + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_2344) <= _2344:
                _3057 = mem[64]
                mem[64] = _1426 + stor12.length.field_1 + _2344 + 32
                mem[_1426 + stor12.length.field_1 + _2344 + 32] = 32
                _3217 = mem[_3057]
                mem[_1426 + stor12.length.field_1 + _2344 + 64] = mem[_3057]
                mem[_1426 + stor12.length.field_1 + _2344 + 96 len ceil32(_3217)] = mem[_3057 + 32 len ceil32(_3217)]
                if ceil32(_3217) > _3217:
                    mem[_1426 + stor12.length.field_1 + _2344 + _3217 + 96] = 0
                return 32, mem[_1426 + stor12.length.field_1 + _2344 + 64 len ceil32(_3217) + 32]
            mem[_1426 + stor12.length.field_1 + _2344 + 32] = 0
            _3065 = mem[64]
            mem[64] = _1426 + stor12.length.field_1 + _2344 + 32
            mem[_1426 + stor12.length.field_1 + _2344 + 32] = 32
            _3229 = mem[_3065]
            mem[_1426 + stor12.length.field_1 + _2344 + 64] = mem[_3065]
            mem[_1426 + stor12.length.field_1 + _2344 + 96 len ceil32(_3229)] = mem[_3065 + 32 len ceil32(_3229)]
            if ceil32(_3229) > _3229:
                mem[_1426 + stor12.length.field_1 + _2344 + _3229 + 96] = 0
            return 32, mem[_1426 + stor12.length.field_1 + _2344 + 64 len ceil32(_3229) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1427 = mem[64]
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[mem[64] + 32] = Mask(248, 8, stor12.length)
                _1557 = mem[96]
                mem[mem[64] + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _2346 = mem[64]
                    mem[64] = mem[64] + stor12.length.field_1 + mem[96] + 32
                    mem[_1427 + stor12.length.field_1 + mem[96] + 32] = 32
                    _2452 = mem[_2346]
                    mem[_1427 + stor12.length.field_1 + _1557 + 64] = mem[_2346]
                    mem[_1427 + stor12.length.field_1 + _1557 + 96 len ceil32(_2452)] = mem[_2346 + 32 len ceil32(_2452)]
                    if ceil32(_2452) > _2452:
                        mem[_1427 + stor12.length.field_1 + _1557 + _2452 + 96] = 0
                    return memory
                      from mem[64]
                       len _1427 + stor12.length.field_1 + _1557 + ceil32(_2452) + -mem[64] + 96
                mem[mem[64] + stor12.length.field_1 + mem[96] + 32] = 0
                _2372 = mem[64]
                mem[64] = mem[64] + stor12.length.field_1 + mem[96] + 32
                mem[_1427 + stor12.length.field_1 + mem[96] + 32] = 32
                _2482 = mem[_2372]
                mem[_1427 + stor12.length.field_1 + _1557 + 64] = mem[_2372]
                mem[_1427 + stor12.length.field_1 + _1557 + 96 len ceil32(_2482)] = mem[_2372 + 32 len ceil32(_2482)]
                if ceil32(_2482) > _2482:
                    mem[_1427 + stor12.length.field_1 + _1557 + _2482 + 96] = 0
                return 32, mem[_1427 + stor12.length.field_1 + _1557 + 64 len ceil32(_2482) + 32]
            if bool(stor12.length) != 1:
                _1576 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1576) <= _1576:
                    _2348 = mem[64]
                    mem[64] = _1576
                    mem[_1576] = 32
                    _2453 = mem[_2348]
                    mem[_1576 + 32] = mem[_2348]
                    mem[_1576 + 64 len ceil32(_2453)] = mem[_2348 + 32 len ceil32(_2453)]
                    if ceil32(_2453) > _2453:
                        mem[_1576 + _2453 + 64] = 0
                    return 32, mem[_1576 + 32 len ceil32(_2453) + 32]
                mem[_1576] = 0
                _2373 = mem[64]
                mem[64] = _1576
                mem[_1576] = 32
                _2484 = mem[_2373]
                mem[_1576 + 32] = mem[_2373]
                mem[_1576 + 64 len ceil32(_2484)] = mem[_2373 + 32 len ceil32(_2484)]
                if ceil32(_2484) > _2484:
                    mem[_1576 + _2484 + 64] = 0
                return 32, mem[_1576 + 32 len ceil32(_2484) + 32]
            mem[0] = 12
            idx = 0
            s = 0
            while idx < stor12.length.field_1:
                mem[_1427 + idx + 32] = stor12[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _2347 = mem[96]
            mem[_1427 + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_2347) <= _2347:
                _3058 = mem[64]
                mem[64] = _1427 + stor12.length.field_1 + _2347 + 32
                mem[_1427 + stor12.length.field_1 + _2347 + 32] = 32
                _3218 = mem[_3058]
                mem[_1427 + stor12.length.field_1 + _2347 + 64] = mem[_3058]
                mem[_1427 + stor12.length.field_1 + _2347 + 96 len ceil32(_3218)] = mem[_3058 + 32 len ceil32(_3218)]
                if ceil32(_3218) > _3218:
                    mem[_1427 + stor12.length.field_1 + _2347 + _3218 + 96] = 0
                return 32, mem[_1427 + stor12.length.field_1 + _2347 + 64 len ceil32(_3218) + 32]
            mem[_1427 + stor12.length.field_1 + _2347 + 32] = 0
            _3066 = mem[64]
            mem[64] = _1427 + stor12.length.field_1 + _2347 + 32
            mem[_1427 + stor12.length.field_1 + _2347 + 32] = 32
            _3230 = mem[_3066]
            mem[_1427 + stor12.length.field_1 + _2347 + 64] = mem[_3066]
            mem[_1427 + stor12.length.field_1 + _2347 + 96 len ceil32(_3230)] = mem[_3066 + 32 len ceil32(_3230)]
            if ceil32(_3230) > _3230:
                mem[_1427 + stor12.length.field_1 + _2347 + _3230 + 96] = 0
            return 32, mem[_1427 + stor12.length.field_1 + _2347 + 64 len ceil32(_3230) + 32]
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[mem[64] + 32] = Mask(248, 8, stor12.length)
            _1577 = mem[96]
            mem[mem[64] + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _2349 = mem[64]
                mem[64] = mem[64] + stor12.length.field_1 + mem[96] + 32
                mem[_1427 + stor12.length.field_1 + mem[96] + 32] = 32
                _2454 = mem[_2349]
                mem[_1427 + stor12.length.field_1 + _1577 + 64] = mem[_2349]
                mem[_1427 + stor12.length.field_1 + _1577 + 96 len ceil32(_2454)] = mem[_2349 + 32 len ceil32(_2454)]
                if ceil32(_2454) > _2454:
                    mem[_1427 + stor12.length.field_1 + _1577 + _2454 + 96] = 0
                return memory
                  from mem[64]
                   len _1427 + stor12.length.field_1 + _1577 + ceil32(_2454) + -mem[64] + 96
            mem[mem[64] + stor12.length.field_1 + mem[96] + 32] = 0
            _2374 = mem[64]
            mem[64] = mem[64] + stor12.length.field_1 + mem[96] + 32
            mem[_1427 + stor12.length.field_1 + mem[96] + 32] = 32
            _2485 = mem[_2374]
            mem[_1427 + stor12.length.field_1 + _1577 + 64] = mem[_2374]
            mem[_1427 + stor12.length.field_1 + _1577 + 96 len ceil32(_2485)] = mem[_2374 + 32 len ceil32(_2485)]
            if ceil32(_2485) > _2485:
                mem[_1427 + stor12.length.field_1 + _1577 + _2485 + 96] = 0
            return 32, mem[_1427 + stor12.length.field_1 + _1577 + 64 len ceil32(_2485) + 32]
        if bool(stor12.length) != 1:
            _1595 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1595) <= _1595:
                _2351 = mem[64]
                mem[64] = _1595
                mem[_1595] = 32
                _2455 = mem[_2351]
                mem[_1595 + 32] = mem[_2351]
                mem[_1595 + 64 len ceil32(_2455)] = mem[_2351 + 32 len ceil32(_2455)]
                if ceil32(_2455) > _2455:
                    mem[_1595 + _2455 + 64] = 0
                return 32, mem[_1595 + 32 len ceil32(_2455) + 32]
            mem[_1595] = 0
            _2375 = mem[64]
            mem[64] = _1595
            mem[_1595] = 32
            _2487 = mem[_2375]
            mem[_1595 + 32] = mem[_2375]
            mem[_1595 + 64 len ceil32(_2487)] = mem[_2375 + 32 len ceil32(_2487)]
            if ceil32(_2487) > _2487:
                mem[_1595 + _2487 + 64] = 0
            return 32, mem[_1595 + 32 len ceil32(_2487) + 32]
        mem[0] = 12
        idx = 0
        s = 0
        while idx < stor12.length.field_1:
            mem[_1427 + idx + 32] = stor12[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _2350 = mem[96]
        mem[_1427 + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_2350) <= _2350:
            _3059 = mem[64]
            mem[64] = _1427 + stor12.length.field_1 + _2350 + 32
            mem[_1427 + stor12.length.field_1 + _2350 + 32] = 32
            _3219 = mem[_3059]
            mem[_1427 + stor12.length.field_1 + _2350 + 64] = mem[_3059]
            mem[_1427 + stor12.length.field_1 + _2350 + 96 len ceil32(_3219)] = mem[_3059 + 32 len ceil32(_3219)]
            if ceil32(_3219) > _3219:
                mem[_1427 + stor12.length.field_1 + _2350 + _3219 + 96] = 0
            return 32, mem[_1427 + stor12.length.field_1 + _2350 + 64 len ceil32(_3219) + 32]
        mem[_1427 + stor12.length.field_1 + _2350 + 32] = 0
        _3067 = mem[64]
        mem[64] = _1427 + stor12.length.field_1 + _2350 + 32
        mem[_1427 + stor12.length.field_1 + _2350 + 32] = 32
        _3231 = mem[_3067]
        mem[_1427 + stor12.length.field_1 + _2350 + 64] = mem[_3067]
        mem[_1427 + stor12.length.field_1 + _2350 + 96 len ceil32(_3231)] = mem[_3067 + 32 len ceil32(_3231)]
        if ceil32(_3231) > _3231:
            mem[_1427 + stor12.length.field_1 + _2350 + _3231 + 96] = 0
        return 32, mem[_1427 + stor12.length.field_1 + _2350 + 64 len ceil32(_3231) + 32]
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 'NH{q', 34
    if stor13.length.field_1 > 0:
        if not arg1:
            mem[96] = 1
            mem[128] = '0'
            if bool(stor13.length):
                if bool(stor13.length) == stor13.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor13.length):
                    mem[192] = Mask(248, 8, stor13.length)
                else:
                    if bool(stor13.length) != 1:
                        mem[64] = 6
                        _515 = mem[160]
                        mem[38] = mem[160]
                        mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_515) > _515:
                            mem[_515 + 70] = 0
                        return memory
                          from mem[64]
                           len ceil32(_515) + -mem[64] + 70
                    idx = 0
                    s = 0
                    while idx < stor13.length.field_1:
                        mem[idx + 192] = stor13[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[stor13.length.field_1 + 192] = '0'
                mem[stor13.length.field_1 + 193] = '.json'
                mem[stor13.length.field_1 + 198] = 32
                mem[stor13.length.field_1 + 230] = mem[160]
                mem[stor13.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[stor13.length.field_1 + mem[160] + 262] = 0
                return Array(len=mem[160], data=mem[stor13.length.field_1 + 262 len ceil32(mem[160])])
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor13.length):
                mem[192] = Mask(248, 8, stor13.length)
            else:
                if bool(stor13.length) != 1:
                    mem[64] = 6
                    _517 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_517) > _517:
                        mem[_517 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_517) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + 192] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor13.length.field_1 + 192] = '0'
            mem[stor13.length.field_1 + 193] = '.json'
            mem[stor13.length.field_1 + 198] = 32
            mem[stor13.length.field_1 + 230] = mem[160]
            mem[stor13.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor13.length.field_1 + mem[160] + 262] = 0
            return Array(len=mem[160], data=mem[stor13.length.field_1 + 262 len ceil32(mem[160])])
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
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1428 = mem[64]
            if bool(stor13.length):
                if bool(stor13.length) == stor13.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor13.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor13.length)
                    _1560 = mem[96]
                    mem[mem[64] + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[mem[64] + stor13.length.field_1 + mem[96] + 32] = '.json'
                    if ceil32(mem[96]) <= mem[96]:
                        _2488 = mem[64]
                        mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
                        mem[_1428 + stor13.length.field_1 + mem[96] + 37] = 32
                        _2588 = mem[_2488]
                        mem[_1428 + stor13.length.field_1 + _1560 + 69] = mem[_2488]
                        mem[_1428 + stor13.length.field_1 + _1560 + 101 len ceil32(_2588)] = mem[_2488 + 32 len ceil32(_2588)]
                        if ceil32(_2588) > _2588:
                            mem[_1428 + stor13.length.field_1 + _1560 + _2588 + 101] = 0
                        return 32, mem[_1428 + stor13.length.field_1 + _1560 + 69 len ceil32(_2588) + 32]
                    _2520 = mem[64]
                    mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
                    mem[_1428 + stor13.length.field_1 + mem[96] + 37] = 32
                    _2628 = mem[_2520]
                    mem[_1428 + stor13.length.field_1 + _1560 + 69] = mem[_2520]
                    mem[_1428 + stor13.length.field_1 + _1560 + 101 len ceil32(_2628)] = mem[_2520 + 32 len ceil32(_2628)]
                    if ceil32(_2628) > _2628:
                        mem[_1428 + stor13.length.field_1 + _1560 + _2628 + 101] = 0
                    return 32, mem[_1428 + stor13.length.field_1 + _1560 + 69 len ceil32(_2628) + 32]
                if bool(stor13.length) != 1:
                    _1580 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_1580] = '.json'
                    if ceil32(_1580) <= _1580:
                        _2490 = mem[64]
                        mem[64] = _1580 + 5
                        mem[_1580 + 5] = 32
                        _2589 = mem[_2490]
                        mem[_1580 + 37] = mem[_2490]
                        mem[_1580 + 69 len ceil32(_2589)] = mem[_2490 + 32 len ceil32(_2589)]
                        if ceil32(_2589) > _2589:
                            mem[_1580 + _2589 + 69] = 0
                        return 32, mem[_1580 + 37 len ceil32(_2589) + 32]
                    _2521 = mem[64]
                    mem[64] = _1580 + 5
                    mem[_1580 + 5] = 32
                    _2629 = mem[_2521]
                    mem[_1580 + 37] = mem[_2521]
                    mem[_1580 + 69 len ceil32(_2629)] = mem[_2521 + 32 len ceil32(_2629)]
                    if ceil32(_2629) > _2629:
                        mem[_1580 + _2629 + 69] = 0
                    return 32, mem[_1580 + 37 len ceil32(_2629) + 32]
                mem[0] = 13
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[_1428 + idx + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _2352 = mem[96]
                mem[_1428 + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1428 + stor13.length.field_1 + _2352 + 32] = '.json'
                if ceil32(_2352) <= _2352:
                    _3232 = mem[64]
                    mem[64] = _1428 + stor13.length.field_1 + _2352 + 37
                    mem[_1428 + stor13.length.field_1 + _2352 + 37] = 32
                    _3272 = mem[_3232]
                    mem[_1428 + stor13.length.field_1 + _2352 + 69] = mem[_3232]
                    mem[_1428 + stor13.length.field_1 + _2352 + 101 len ceil32(_3272)] = mem[_3232 + 32 len ceil32(_3272)]
                    if ceil32(_3272) > _3272:
                        mem[_1428 + stor13.length.field_1 + _2352 + _3272 + 101] = 0
                    return 32, mem[_1428 + stor13.length.field_1 + _2352 + 69 len ceil32(_3272) + 32]
                _3244 = mem[64]
                mem[64] = _1428 + stor13.length.field_1 + _2352 + 37
                mem[_1428 + stor13.length.field_1 + _2352 + 37] = 32
                _3288 = mem[_3244]
                mem[_1428 + stor13.length.field_1 + _2352 + 69] = mem[_3244]
                mem[_1428 + stor13.length.field_1 + _2352 + 101 len ceil32(_3288)] = mem[_3244 + 32 len ceil32(_3288)]
                if ceil32(_3288) > _3288:
                    mem[_1428 + stor13.length.field_1 + _2352 + _3288 + 101] = 0
                return 32, mem[_1428 + stor13.length.field_1 + _2352 + 69 len ceil32(_3288) + 32]
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor13.length):
                mem[mem[64] + 32] = Mask(248, 8, stor13.length)
                _1581 = mem[96]
                mem[mem[64] + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + stor13.length.field_1 + mem[96] + 32] = '.json'
                if ceil32(mem[96]) <= mem[96]:
                    _2491 = mem[64]
                    mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
                    mem[_1428 + stor13.length.field_1 + mem[96] + 37] = 32
                    _2590 = mem[_2491]
                    mem[_1428 + stor13.length.field_1 + _1581 + 69] = mem[_2491]
                    mem[_1428 + stor13.length.field_1 + _1581 + 101 len ceil32(_2590)] = mem[_2491 + 32 len ceil32(_2590)]
                    if ceil32(_2590) > _2590:
                        mem[_1428 + stor13.length.field_1 + _1581 + _2590 + 101] = 0
                    return 32, mem[_1428 + stor13.length.field_1 + _1581 + 69 len ceil32(_2590) + 32]
                _2522 = mem[64]
                mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
                mem[_1428 + stor13.length.field_1 + mem[96] + 37] = 32
                _2630 = mem[_2522]
                mem[_1428 + stor13.length.field_1 + _1581 + 69] = mem[_2522]
                mem[_1428 + stor13.length.field_1 + _1581 + 101 len ceil32(_2630)] = mem[_2522 + 32 len ceil32(_2630)]
                if ceil32(_2630) > _2630:
                    mem[_1428 + stor13.length.field_1 + _1581 + _2630 + 101] = 0
                return 32, mem[_1428 + stor13.length.field_1 + _1581 + 69 len ceil32(_2630) + 32]
            if bool(stor13.length) != 1:
                _1596 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1596] = '.json'
                if ceil32(_1596) <= _1596:
                    _2493 = mem[64]
                    mem[64] = _1596 + 5
                    mem[_1596 + 5] = 32
                    _2591 = mem[_2493]
                    mem[_1596 + 37] = mem[_2493]
                    mem[_1596 + 69 len ceil32(_2591)] = mem[_2493 + 32 len ceil32(_2591)]
                    if ceil32(_2591) > _2591:
                        mem[_1596 + _2591 + 69] = 0
                    return 32, mem[_1596 + 37 len ceil32(_2591) + 32]
                _2523 = mem[64]
                mem[64] = _1596 + 5
                mem[_1596 + 5] = 32
                _2631 = mem[_2523]
                mem[_1596 + 37] = mem[_2523]
                mem[_1596 + 69 len ceil32(_2631)] = mem[_2523 + 32 len ceil32(_2631)]
                if ceil32(_2631) > _2631:
                    mem[_1596 + _2631 + 69] = 0
                return 32, mem[_1596 + 37 len ceil32(_2631) + 32]
            mem[0] = 13
            idx = 0
            s = 0
            while idx < stor13.length.field_1:
                mem[_1428 + idx + 32] = stor13[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _2353 = mem[96]
            mem[_1428 + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1428 + stor13.length.field_1 + _2353 + 32] = '.json'
            if ceil32(_2353) <= _2353:
                _3233 = mem[64]
                mem[64] = _1428 + stor13.length.field_1 + _2353 + 37
                mem[_1428 + stor13.length.field_1 + _2353 + 37] = 32
                _3273 = mem[_3233]
                mem[_1428 + stor13.length.field_1 + _2353 + 69] = mem[_3233]
                mem[_1428 + stor13.length.field_1 + _2353 + 101 len ceil32(_3273)] = mem[_3233 + 32 len ceil32(_3273)]
                if ceil32(_3273) > _3273:
                    mem[_1428 + stor13.length.field_1 + _2353 + _3273 + 101] = 0
                return 32, mem[_1428 + stor13.length.field_1 + _2353 + 69 len ceil32(_3273) + 32]
            _3245 = mem[64]
            mem[64] = _1428 + stor13.length.field_1 + _2353 + 37
            mem[_1428 + stor13.length.field_1 + _2353 + 37] = 32
            _3289 = mem[_3245]
            mem[_1428 + stor13.length.field_1 + _2353 + 69] = mem[_3245]
            mem[_1428 + stor13.length.field_1 + _2353 + 101 len ceil32(_3289)] = mem[_3245 + 32 len ceil32(_3289)]
            if ceil32(_3289) > _3289:
                mem[_1428 + stor13.length.field_1 + _2353 + _3289 + 101] = 0
            return 32, mem[_1428 + stor13.length.field_1 + _2353 + 69 len ceil32(_3289) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1429 = mem[64]
        if bool(stor13.length):
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor13.length):
                mem[mem[64] + 32] = Mask(248, 8, stor13.length)
                _1561 = mem[96]
                mem[mem[64] + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + stor13.length.field_1 + mem[96] + 32] = '.json'
                if ceil32(mem[96]) <= mem[96]:
                    _2494 = mem[64]
                    mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
                    mem[_1429 + stor13.length.field_1 + mem[96] + 37] = 32
                    _2592 = mem[_2494]
                    mem[_1429 + stor13.length.field_1 + _1561 + 69] = mem[_2494]
                    mem[_1429 + stor13.length.field_1 + _1561 + 101 len ceil32(_2592)] = mem[_2494 + 32 len ceil32(_2592)]
                    if ceil32(_2592) > _2592:
                        mem[_1429 + stor13.length.field_1 + _1561 + _2592 + 101] = 0
                    return 32, mem[_1429 + stor13.length.field_1 + _1561 + 69 len ceil32(_2592) + 32]
                _2524 = mem[64]
                mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
                mem[_1429 + stor13.length.field_1 + mem[96] + 37] = 32
                _2632 = mem[_2524]
                mem[_1429 + stor13.length.field_1 + _1561 + 69] = mem[_2524]
                mem[_1429 + stor13.length.field_1 + _1561 + 101 len ceil32(_2632)] = mem[_2524 + 32 len ceil32(_2632)]
                if ceil32(_2632) > _2632:
                    mem[_1429 + stor13.length.field_1 + _1561 + _2632 + 101] = 0
                return 32, mem[_1429 + stor13.length.field_1 + _1561 + 69 len ceil32(_2632) + 32]
            if bool(stor13.length) != 1:
                _1582 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1582] = '.json'
                if ceil32(_1582) <= _1582:
                    _2496 = mem[64]
                    mem[64] = _1582 + 5
                    mem[_1582 + 5] = 32
                    _2593 = mem[_2496]
                    mem[_1582 + 37] = mem[_2496]
                    mem[_1582 + 69 len ceil32(_2593)] = mem[_2496 + 32 len ceil32(_2593)]
                    if ceil32(_2593) > _2593:
                        mem[_1582 + _2593 + 69] = 0
                    return 32, mem[_1582 + 37 len ceil32(_2593) + 32]
                _2525 = mem[64]
                mem[64] = _1582 + 5
                mem[_1582 + 5] = 32
                _2633 = mem[_2525]
                mem[_1582 + 37] = mem[_2525]
                mem[_1582 + 69 len ceil32(_2633)] = mem[_2525 + 32 len ceil32(_2633)]
                if ceil32(_2633) > _2633:
                    mem[_1582 + _2633 + 69] = 0
                return 32, mem[_1582 + 37 len ceil32(_2633) + 32]
            mem[0] = 13
            idx = 0
            s = 0
            while idx < stor13.length.field_1:
                mem[_1429 + idx + 32] = stor13[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _2354 = mem[96]
            mem[_1429 + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1429 + stor13.length.field_1 + _2354 + 32] = '.json'
            if ceil32(_2354) <= _2354:
                _3234 = mem[64]
                mem[64] = _1429 + stor13.length.field_1 + _2354 + 37
                mem[_1429 + stor13.length.field_1 + _2354 + 37] = 32
                _3274 = mem[_3234]
                mem[_1429 + stor13.length.field_1 + _2354 + 69] = mem[_3234]
                mem[_1429 + stor13.length.field_1 + _2354 + 101 len ceil32(_3274)] = mem[_3234 + 32 len ceil32(_3274)]
                if ceil32(_3274) > _3274:
                    mem[_1429 + stor13.length.field_1 + _2354 + _3274 + 101] = 0
                return 32, mem[_1429 + stor13.length.field_1 + _2354 + 69 len ceil32(_3274) + 32]
            _3246 = mem[64]
            mem[64] = _1429 + stor13.length.field_1 + _2354 + 37
            mem[_1429 + stor13.length.field_1 + _2354 + 37] = 32
            _3290 = mem[_3246]
            mem[_1429 + stor13.length.field_1 + _2354 + 69] = mem[_3246]
            mem[_1429 + stor13.length.field_1 + _2354 + 101 len ceil32(_3290)] = mem[_3246 + 32 len ceil32(_3290)]
            if ceil32(_3290) > _3290:
                mem[_1429 + stor13.length.field_1 + _2354 + _3290 + 101] = 0
            return 32, mem[_1429 + stor13.length.field_1 + _2354 + 69 len ceil32(_3290) + 32]
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            _1583 = mem[96]
            mem[mem[64] + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + stor13.length.field_1 + mem[96] + 32] = '.json'
            if ceil32(mem[96]) <= mem[96]:
                _2497 = mem[64]
                mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
                mem[_1429 + stor13.length.field_1 + mem[96] + 37] = 32
                _2594 = mem[_2497]
                mem[_1429 + stor13.length.field_1 + _1583 + 69] = mem[_2497]
                mem[_1429 + stor13.length.field_1 + _1583 + 101 len ceil32(_2594)] = mem[_2497 + 32 len ceil32(_2594)]
                if ceil32(_2594) > _2594:
                    mem[_1429 + stor13.length.field_1 + _1583 + _2594 + 101] = 0
                return 32, mem[_1429 + stor13.length.field_1 + _1583 + 69 len ceil32(_2594) + 32]
            _2526 = mem[64]
            mem[64] = mem[64] + stor13.length.field_1 + mem[96] + 37
            mem[_1429 + stor13.length.field_1 + mem[96] + 37] = 32
            _2634 = mem[_2526]
            mem[_1429 + stor13.length.field_1 + _1583 + 69] = mem[_2526]
            mem[_1429 + stor13.length.field_1 + _1583 + 101 len ceil32(_2634)] = mem[_2526 + 32 len ceil32(_2634)]
            if ceil32(_2634) > _2634:
                mem[_1429 + stor13.length.field_1 + _1583 + _2634 + 101] = 0
            return 32, mem[_1429 + stor13.length.field_1 + _1583 + 69 len ceil32(_2634) + 32]
        if bool(stor13.length) != 1:
            _1597 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1597] = '.json'
            if ceil32(_1597) <= _1597:
                _2499 = mem[64]
                mem[64] = _1597 + 5
                mem[_1597 + 5] = 32
                _2595 = mem[_2499]
                mem[_1597 + 37] = mem[_2499]
                mem[_1597 + 69 len ceil32(_2595)] = mem[_2499 + 32 len ceil32(_2595)]
                if ceil32(_2595) > _2595:
                    mem[_1597 + _2595 + 69] = 0
                return 32, mem[_1597 + 37 len ceil32(_2595) + 32]
            _2527 = mem[64]
            mem[64] = _1597 + 5
            mem[_1597 + 5] = 32
            _2635 = mem[_2527]
            mem[_1597 + 37] = mem[_2527]
            mem[_1597 + 69 len ceil32(_2635)] = mem[_2527 + 32 len ceil32(_2635)]
            if ceil32(_2635) > _2635:
                mem[_1597 + _2635 + 69] = 0
            return 32, mem[_1597 + 37 len ceil32(_2635) + 32]
        mem[0] = 13
        idx = 0
        s = 0
        while idx < stor13.length.field_1:
            mem[_1429 + idx + 32] = stor13[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _2355 = mem[96]
        mem[_1429 + stor13.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_1429 + stor13.length.field_1 + _2355 + 32] = '.json'
        if ceil32(_2355) <= _2355:
            _3235 = mem[64]
            mem[64] = _1429 + stor13.length.field_1 + _2355 + 37
            mem[_1429 + stor13.length.field_1 + _2355 + 37] = 32
            _3275 = mem[_3235]
            mem[_1429 + stor13.length.field_1 + _2355 + 69] = mem[_3235]
            mem[_1429 + stor13.length.field_1 + _2355 + 101 len ceil32(_3275)] = mem[_3235 + 32 len ceil32(_3275)]
            if ceil32(_3275) > _3275:
                mem[_1429 + stor13.length.field_1 + _2355 + _3275 + 101] = 0
            return 32, mem[_1429 + stor13.length.field_1 + _2355 + 69 len ceil32(_3275) + 32]
        _3247 = mem[64]
        mem[64] = _1429 + stor13.length.field_1 + _2355 + 37
        mem[_1429 + stor13.length.field_1 + _2355 + 37] = 32
        _3291 = mem[_3247]
        mem[_1429 + stor13.length.field_1 + _2355 + 69] = mem[_3247]
        mem[_1429 + stor13.length.field_1 + _2355 + 101 len ceil32(_3291)] = mem[_3247 + 32 len ceil32(_3291)]
        if ceil32(_3291) > _3291:
            mem[_1429 + stor13.length.field_1 + _2355 + _3291 + 101] = 0
        return 32, mem[_1429 + stor13.length.field_1 + _2355 + 69 len ceil32(_3291) + 32]
    if not arg1:
        mem[96] = 1
        mem[128] = '0'
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[192] = Mask(248, 8, stor12.length)
            else:
                if bool(stor12.length) != 1:
                    mem[64] = 1
                    _452 = mem[160]
                    mem[33] = mem[160]
                    mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_452) > _452:
                        mem[_452 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_452) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[idx + 192] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor12.length.field_1 + 192] = '0'
            mem[stor12.length.field_1 + 193] = 32
            mem[stor12.length.field_1 + 225] = mem[160]
            mem[stor12.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor12.length.field_1 + mem[160] + 257] = 0
            return Array(len=mem[160], data=mem[stor12.length.field_1 + 257 len ceil32(mem[160])])
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[192] = Mask(248, 8, stor12.length)
        else:
            if bool(stor12.length) != 1:
                mem[64] = 1
                _455 = mem[160]
                mem[33] = mem[160]
                mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_455) > _455:
                    mem[_455 + 65] = 0
                return memory
                  from mem[64]
                   len ceil32(_455) + -mem[64] + 65
            idx = 0
            s = 0
            while idx < stor12.length.field_1:
                mem[idx + 192] = stor12[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor12.length.field_1 + 192] = '0'
        mem[stor12.length.field_1 + 193] = 32
        mem[stor12.length.field_1 + 225] = mem[160]
        mem[stor12.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[stor12.length.field_1 + mem[160] + 257] = 0
        return Array(len=mem[160], data=mem[stor12.length.field_1 + 257 len ceil32(mem[160])])
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
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1430 = mem[64]
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[mem[64] + 32] = Mask(248, 8, stor12.length)
                _1564 = mem[96]
                mem[mem[64] + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _2356 = mem[64]
                    mem[64] = mem[64] + stor12.length.field_1 + mem[96] + 32
                    mem[_1430 + stor12.length.field_1 + mem[96] + 32] = 32
                    _2456 = mem[_2356]
                    mem[_1430 + stor12.length.field_1 + _1564 + 64] = mem[_2356]
                    mem[_1430 + stor12.length.field_1 + _1564 + 96 len ceil32(_2456)] = mem[_2356 + 32 len ceil32(_2456)]
                    if ceil32(_2456) > _2456:
                        mem[_1430 + stor12.length.field_1 + _1564 + _2456 + 96] = 0
                    return memory
                      from mem[64]
                       len _1430 + stor12.length.field_1 + _1564 + ceil32(_2456) + -mem[64] + 96
                mem[mem[64] + stor12.length.field_1 + mem[96] + 32] = 0
                _2376 = mem[64]
                mem[64] = mem[64] + stor12.length.field_1 + mem[96] + 32
                mem[_1430 + stor12.length.field_1 + mem[96] + 32] = 32
                _2500 = mem[_2376]
                mem[_1430 + stor12.length.field_1 + _1564 + 64] = mem[_2376]
                mem[_1430 + stor12.length.field_1 + _1564 + 96 len ceil32(_2500)] = mem[_2376 + 32 len ceil32(_2500)]
                if ceil32(_2500) > _2500:
                    mem[_1430 + stor12.length.field_1 + _1564 + _2500 + 96] = 0
                return 32, mem[_1430 + stor12.length.field_1 + _1564 + 64 len ceil32(_2500) + 32]
            if bool(stor12.length) != 1:
                _1586 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1586) <= _1586:
                    _2358 = mem[64]
                    mem[64] = _1586
                    mem[_1586] = 32
                    _2457 = mem[_2358]
                    mem[_1586 + 32] = mem[_2358]
                    mem[_1586 + 64 len ceil32(_2457)] = mem[_2358 + 32 len ceil32(_2457)]
                    if ceil32(_2457) > _2457:
                        mem[_1586 + _2457 + 64] = 0
                    return 32, mem[_1586 + 32 len ceil32(_2457) + 32]
                mem[_1586] = 0
                _2377 = mem[64]
                mem[64] = _1586
                mem[_1586] = 32
                _2502 = mem[_2377]
                mem[_1586 + 32] = mem[_2377]
                mem[_1586 + 64 len ceil32(_2502)] = mem[_2377 + 32 len ceil32(_2502)]
                if ceil32(_2502) > _2502:
                    mem[_1586 + _2502 + 64] = 0
                return 32, mem[_1586 + 32 len ceil32(_2502) + 32]
            mem[0] = 12
            idx = 0
            s = 0
            while idx < stor12.length.field_1:
                mem[_1430 + idx + 32] = stor12[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _2357 = mem[96]
            mem[_1430 + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_2357) <= _2357:
                _3060 = mem[64]
                mem[64] = _1430 + stor12.length.field_1 + _2357 + 32
                mem[_1430 + stor12.length.field_1 + _2357 + 32] = 32
                _3220 = mem[_3060]
                mem[_1430 + stor12.length.field_1 + _2357 + 64] = mem[_3060]
                mem[_1430 + stor12.length.field_1 + _2357 + 96 len ceil32(_3220)] = mem[_3060 + 32 len ceil32(_3220)]
                if ceil32(_3220) > _3220:
                    mem[_1430 + stor12.length.field_1 + _2357 + _3220 + 96] = 0
                return 32, mem[_1430 + stor12.length.field_1 + _2357 + 64 len ceil32(_3220) + 32]
            mem[_1430 + stor12.length.field_1 + _2357 + 32] = 0
            _3068 = mem[64]
            mem[64] = _1430 + stor12.length.field_1 + _2357 + 32
            mem[_1430 + stor12.length.field_1 + _2357 + 32] = 32
            _3236 = mem[_3068]
            mem[_1430 + stor12.length.field_1 + _2357 + 64] = mem[_3068]
            mem[_1430 + stor12.length.field_1 + _2357 + 96 len ceil32(_3236)] = mem[_3068 + 32 len ceil32(_3236)]
            if ceil32(_3236) > _3236:
                mem[_1430 + stor12.length.field_1 + _2357 + _3236 + 96] = 0
            return 32, mem[_1430 + stor12.length.field_1 + _2357 + 64 len ceil32(_3236) + 32]
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[mem[64] + 32] = Mask(248, 8, stor12.length)
            _1587 = mem[96]
            mem[mem[64] + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _2359 = mem[64]
                mem[64] = mem[64] + stor12.length.field_1 + mem[96] + 32
                mem[_1430 + stor12.length.field_1 + mem[96] + 32] = 32
                _2458 = mem[_2359]
                mem[_1430 + stor12.length.field_1 + _1587 + 64] = mem[_2359]
                mem[_1430 + stor12.length.field_1 + _1587 + 96 len ceil32(_2458)] = mem[_2359 + 32 len ceil32(_2458)]
                if ceil32(_2458) > _2458:
                    mem[_1430 + stor12.length.field_1 + _1587 + _2458 + 96] = 0
                return memory
                  from mem[64]
                   len _1430 + stor12.length.field_1 + _1587 + ceil32(_2458) + -mem[64] + 96
            mem[mem[64] + stor12.length.field_1 + mem[96] + 32] = 0
            _2378 = mem[64]
            mem[64] = mem[64] + stor12.length.field_1 + mem[96] + 32
            mem[_1430 + stor12.length.field_1 + mem[96] + 32] = 32
            _2503 = mem[_2378]
            mem[_1430 + stor12.length.field_1 + _1587 + 64] = mem[_2378]
            mem[_1430 + stor12.length.field_1 + _1587 + 96 len ceil32(_2503)] = mem[_2378 + 32 len ceil32(_2503)]
            if ceil32(_2503) > _2503:
                mem[_1430 + stor12.length.field_1 + _1587 + _2503 + 96] = 0
            return 32, mem[_1430 + stor12.length.field_1 + _1587 + 64 len ceil32(_2503) + 32]
        if bool(stor12.length) != 1:
            _1598 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1598) <= _1598:
                _2361 = mem[64]
                mem[64] = _1598
                mem[_1598] = 32
                _2459 = mem[_2361]
                mem[_1598 + 32] = mem[_2361]
                mem[_1598 + 64 len ceil32(_2459)] = mem[_2361 + 32 len ceil32(_2459)]
                if ceil32(_2459) > _2459:
                    mem[_1598 + _2459 + 64] = 0
                return 32, mem[_1598 + 32 len ceil32(_2459) + 32]
            mem[_1598] = 0
            _2379 = mem[64]
            mem[64] = _1598
            mem[_1598] = 32
            _2505 = mem[_2379]
            mem[_1598 + 32] = mem[_2379]
            mem[_1598 + 64 len ceil32(_2505)] = mem[_2379 + 32 len ceil32(_2505)]
            if ceil32(_2505) > _2505:
                mem[_1598 + _2505 + 64] = 0
            return 32, mem[_1598 + 32 len ceil32(_2505) + 32]
        mem[0] = 12
        idx = 0
        s = 0
        while idx < stor12.length.field_1:
            mem[_1430 + idx + 32] = stor12[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _2360 = mem[96]
        mem[_1430 + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_2360) <= _2360:
            _3061 = mem[64]
            mem[64] = _1430 + stor12.length.field_1 + _2360 + 32
            mem[_1430 + stor12.length.field_1 + _2360 + 32] = 32
            _3221 = mem[_3061]
            mem[_1430 + stor12.length.field_1 + _2360 + 64] = mem[_3061]
            mem[_1430 + stor12.length.field_1 + _2360 + 96 len ceil32(_3221)] = mem[_3061 + 32 len ceil32(_3221)]
            if ceil32(_3221) > _3221:
                mem[_1430 + stor12.length.field_1 + _2360 + _3221 + 96] = 0
            return 32, mem[_1430 + stor12.length.field_1 + _2360 + 64 len ceil32(_3221) + 32]
        mem[_1430 + stor12.length.field_1 + _2360 + 32] = 0
        _3069 = mem[64]
        mem[64] = _1430 + stor12.length.field_1 + _2360 + 32
        mem[_1430 + stor12.length.field_1 + _2360 + 32] = 32
        _3237 = mem[_3069]
        mem[_1430 + stor12.length.field_1 + _2360 + 64] = mem[_3069]
        mem[_1430 + stor12.length.field_1 + _2360 + 96 len ceil32(_3237)] = mem[_3069 + 32 len ceil32(_3237)]
        if ceil32(_3237) > _3237:
            mem[_1430 + stor12.length.field_1 + _2360 + _3237 + 96] = 0
        return 32, mem[_1430 + stor12.length.field_1 + _2360 + 64 len ceil32(_3237) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _1431 = mem[64]
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[mem[64] + 32] = Mask(248, 8, stor12.length)
            _1565 = mem[96]
            mem[mem[64] + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _2362 = mem[64]
                mem[64] = mem[64] + stor12.length.field_1 + mem[96] + 32
                mem[_1431 + stor12.length.field_1 + mem[96] + 32] = 32
                _2460 = mem[_2362]
                mem[_1431 + stor12.length.field_1 + _1565 + 64] = mem[_2362]
                mem[_1431 + stor12.length.field_1 + _1565 + 96 len ceil32(_2460)] = mem[_2362 + 32 len ceil32(_2460)]
                if ceil32(_2460) > _2460:
                    mem[_1431 + stor12.length.field_1 + _1565 + _2460 + 96] = 0
                return memory
                  from mem[64]
                   len _1431 + stor12.length.field_1 + _1565 + ceil32(_2460) + -mem[64] + 96
            mem[mem[64] + stor12.length.field_1 + mem[96] + 32] = 0
            _2380 = mem[64]
            mem[64] = mem[64] + stor12.length.field_1 + mem[96] + 32
            mem[_1431 + stor12.length.field_1 + mem[96] + 32] = 32
            _2506 = mem[_2380]
            mem[_1431 + stor12.length.field_1 + _1565 + 64] = mem[_2380]
            mem[_1431 + stor12.length.field_1 + _1565 + 96 len ceil32(_2506)] = mem[_2380 + 32 len ceil32(_2506)]
            if ceil32(_2506) > _2506:
                mem[_1431 + stor12.length.field_1 + _1565 + _2506 + 96] = 0
            return 32, mem[_1431 + stor12.length.field_1 + _1565 + 64 len ceil32(_2506) + 32]
        if bool(stor12.length) != 1:
            _1588 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1588) <= _1588:
                _2364 = mem[64]
                mem[64] = _1588
                mem[_1588] = 32
                _2461 = mem[_2364]
                mem[_1588 + 32] = mem[_2364]
                mem[_1588 + 64 len ceil32(_2461)] = mem[_2364 + 32 len ceil32(_2461)]
                if ceil32(_2461) > _2461:
                    mem[_1588 + _2461 + 64] = 0
                return 32, mem[_1588 + 32 len ceil32(_2461) + 32]
            mem[_1588] = 0
            _2381 = mem[64]
            mem[64] = _1588
            mem[_1588] = 32
            _2508 = mem[_2381]
            mem[_1588 + 32] = mem[_2381]
            mem[_1588 + 64 len ceil32(_2508)] = mem[_2381 + 32 len ceil32(_2508)]
            if ceil32(_2508) > _2508:
                mem[_1588 + _2508 + 64] = 0
            return 32, mem[_1588 + 32 len ceil32(_2508) + 32]
        mem[0] = 12
        idx = 0
        s = 0
        while idx < stor12.length.field_1:
            mem[_1431 + idx + 32] = stor12[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _2363 = mem[96]
        mem[_1431 + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_2363) <= _2363:
            _3062 = mem[64]
            mem[64] = _1431 + stor12.length.field_1 + _2363 + 32
            mem[_1431 + stor12.length.field_1 + _2363 + 32] = 32
            _3222 = mem[_3062]
            mem[_1431 + stor12.length.field_1 + _2363 + 64] = mem[_3062]
            mem[_1431 + stor12.length.field_1 + _2363 + 96 len ceil32(_3222)] = mem[_3062 + 32 len ceil32(_3222)]
            if ceil32(_3222) > _3222:
                mem[_1431 + stor12.length.field_1 + _2363 + _3222 + 96] = 0
            return 32, mem[_1431 + stor12.length.field_1 + _2363 + 64 len ceil32(_3222) + 32]
        mem[_1431 + stor12.length.field_1 + _2363 + 32] = 0
        _3070 = mem[64]
        mem[64] = _1431 + stor12.length.field_1 + _2363 + 32
        mem[_1431 + stor12.length.field_1 + _2363 + 32] = 32
        _3238 = mem[_3070]
        mem[_1431 + stor12.length.field_1 + _2363 + 64] = mem[_3070]
        mem[_1431 + stor12.length.field_1 + _2363 + 96 len ceil32(_3238)] = mem[_3070 + 32 len ceil32(_3238)]
        if ceil32(_3238) > _3238:
            mem[_1431 + stor12.length.field_1 + _2363 + _3238 + 96] = 0
        return 32, mem[_1431 + stor12.length.field_1 + _2363 + 64 len ceil32(_3238) + 32]
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor12.length):
        mem[mem[64] + 32] = Mask(248, 8, stor12.length)
        _1589 = mem[96]
        mem[mem[64] + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _2365 = mem[64]
            mem[64] = mem[64] + stor12.length.field_1 + mem[96] + 32
            mem[_1431 + stor12.length.field_1 + mem[96] + 32] = 32
            _2462 = mem[_2365]
            mem[_1431 + stor12.length.field_1 + _1589 + 64] = mem[_2365]
            mem[_1431 + stor12.length.field_1 + _1589 + 96 len ceil32(_2462)] = mem[_2365 + 32 len ceil32(_2462)]
            if ceil32(_2462) > _2462:
                mem[_1431 + stor12.length.field_1 + _1589 + _2462 + 96] = 0
            return memory
              from mem[64]
               len _1431 + stor12.length.field_1 + _1589 + ceil32(_2462) + -mem[64] + 96
        mem[mem[64] + stor12.length.field_1 + mem[96] + 32] = 0
        _2382 = mem[64]
        mem[64] = mem[64] + stor12.length.field_1 + mem[96] + 32
        mem[_1431 + stor12.length.field_1 + mem[96] + 32] = 32
        _2509 = mem[_2382]
        mem[_1431 + stor12.length.field_1 + _1589 + 64] = mem[_2382]
        mem[_1431 + stor12.length.field_1 + _1589 + 96 len ceil32(_2509)] = mem[_2382 + 32 len ceil32(_2509)]
        if ceil32(_2509) > _2509:
            mem[_1431 + stor12.length.field_1 + _1589 + _2509 + 96] = 0
        return 32, mem[_1431 + stor12.length.field_1 + _1589 + 64 len ceil32(_2509) + 32]
    if bool(stor12.length) != 1:
        _1599 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_1599) <= _1599:
            _2367 = mem[64]
            mem[64] = _1599
            mem[_1599] = 32
            _2463 = mem[_2367]
            mem[_1599 + 32] = mem[_2367]
            mem[_1599 + 64 len ceil32(_2463)] = mem[_2367 + 32 len ceil32(_2463)]
            if ceil32(_2463) > _2463:
                mem[_1599 + _2463 + 64] = 0
            return 32, mem[_1599 + 32 len ceil32(_2463) + 32]
        mem[_1599] = 0
        _2383 = mem[64]
        mem[64] = _1599
        mem[_1599] = 32
        _2511 = mem[_2383]
        mem[_1599 + 32] = mem[_2383]
        mem[_1599 + 64 len ceil32(_2511)] = mem[_2383 + 32 len ceil32(_2511)]
        if ceil32(_2511) > _2511:
            mem[_1599 + _2511 + 64] = 0
        return 32, mem[_1599 + 32 len ceil32(_2511) + 32]
    mem[0] = 12
    idx = 0
    s = 0
    while idx < stor12.length.field_1:
        mem[_1431 + idx + 32] = stor12[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _2366 = mem[96]
    mem[_1431 + stor12.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(_2366) <= _2366:
        _3063 = mem[64]
        mem[64] = _1431 + stor12.length.field_1 + _2366 + 32
        mem[_1431 + stor12.length.field_1 + _2366 + 32] = 32
        _3223 = mem[_3063]
        mem[_1431 + stor12.length.field_1 + _2366 + 64] = mem[_3063]
        mem[_1431 + stor12.length.field_1 + _2366 + 96 len ceil32(_3223)] = mem[_3063 + 32 len ceil32(_3223)]
        if ceil32(_3223) > _3223:
            mem[_1431 + stor12.length.field_1 + _2366 + _3223 + 96] = 0
        return 32, mem[_1431 + stor12.length.field_1 + _2366 + 64 len ceil32(_3223) + 32]
    mem[_1431 + stor12.length.field_1 + _2366 + 32] = 0
    _3071 = mem[64]
    mem[64] = _1431 + stor12.length.field_1 + _2366 + 32
    mem[_1431 + stor12.length.field_1 + _2366 + 32] = 32
    _3239 = mem[_3071]
    mem[_1431 + stor12.length.field_1 + _2366 + 64] = mem[_3071]
    mem[_1431 + stor12.length.field_1 + _2366 + 96 len ceil32(_3239)] = mem[_3071 + 32 len ceil32(_3239)]
    if ceil32(_3239) > _3239:
        mem[_1431 + stor12.length.field_1 + _2366 + _3239 + 96] = 0
    return 32, mem[_1431 + stor12.length.field_1 + _2366 + 64 len ceil32(_3239) + 32]
}



}
