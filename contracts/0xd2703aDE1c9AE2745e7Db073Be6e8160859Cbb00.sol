contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const MAX_PER_MINT = 10


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
uint8 paused; offset 160
address owner;
mapping of struct royaltyInfo;
uint256 MINT_PRICE;
uint256 MAX_TOKENS;
uint256 PAID_TOKENS;
uint256 sub_ba9f6939;
uint16 minted;
array of struct stor17;
uint256 sub_35a3b65a;
address sub_8c062e4eAddress;
address sub_a103b103Address;
address stakingContractAddress;
address wtAddress;
uint256 reserveLimit;
uint256 stor24;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function reserveLimit() {
    return reserveLimit
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 and royaltyInfo[arg1].field_256 > -1 / arg2:
        revert with 0, 17
    return royaltyInfo[arg1].field_0, arg2 * royaltyInfo[arg1].field_256 / 10000
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_35a3b65a(?) {
    return sub_35a3b65a
}

function minted() {
    return minted
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() {
    return bool(paused)
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

function sub_8c062e4e(?) {
    return sub_8c062e4eAddress
}

function owner() {
    return owner
}

function sub_a103b103(?) {
    return sub_a103b103Address
}

function wt() {
    return wtAddress
}

function sub_ba9f6939(?) {
    return sub_ba9f6939
}

function MINT_PRICE() {
    return MINT_PRICE
}

function PAID_TOKENS() {
    return PAID_TOKENS
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function stakingContract() {
    return stakingContractAddress
}

function MAX_TOKENS() {
    return MAX_TOKENS
}

function _fallback() payable {
    revert
}

function mintCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > PAID_TOKENS:
        return sub_ba9f6939
    else:
        return 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_9c3585f7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ba9f6939 = arg1
}

function setNewPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MINT_PRICE = arg1
}

function setMaxtokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MAX_TOKENS = arg1
}

function setPaidTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    PAID_TOKENS = arg1
}

function setStakingContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stakingContractAddress = arg1
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
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

function setPaused(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not paused:
            revert with 0, 'Pausable: not paused'
        paused = 0
        emit Unpaused(msg.sender);
    else:
        if paused:
            revert with 0, 'Pausable: paused'
        paused = 1
        emit Paused(msg.sender);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x2a55205a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor17[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor17.length = 0
            idx = 0
            while (uint255(stor17.length) * 0.5) + 31 / 32 > idx:
                stor17[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor17[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor17.length = 0
            idx = 0
            while stor17.length.field_1 + 31 / 32 > idx:
                stor17[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stakingContractAddress != msg.sender:
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
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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

function baseURI() {
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor17.length):
            if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor17.length):
                if 31 < uint255(stor17.length) * 0.5:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor17.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)])
                mem[128] = 256 * stor17.length.field_8
        else:
            if bool(stor17.length) == stor17.length.field_1 < 32:
                revert with 0, 34
            if stor17.length.field_1:
                if 31 < stor17.length.field_1:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while stor17.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)])
                mem[128] = 256 * stor17.length.field_8
        mem[ceil32(uint255(stor17.length) * 0.5) + 192 len ceil32(uint255(stor17.length) * 0.5)] = mem[128 len ceil32(uint255(stor17.length) * 0.5)]
        if ceil32(uint255(stor17.length) * 0.5) > uint255(stor17.length) * 0.5:
            mem[(uint255(stor17.length) * 0.5) + ceil32(uint255(stor17.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)], mem[(2 * ceil32(uint255(stor17.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor17.length) * 0.5)]), 
    if bool(stor17.length) == stor17.length.field_1 < 32:
        revert with 0, 34
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor17.length):
            if 31 < uint255(stor17.length) * 0.5:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while (uint255(stor17.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)])
            mem[128] = 256 * stor17.length.field_8
    else:
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 0, 34
        if stor17.length.field_1:
            if 31 < stor17.length.field_1:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while stor17.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)])
            mem[128] = 256 * stor17.length.field_8
    mem[ceil32(stor17.length.field_1) + 192 len ceil32(stor17.length.field_1)] = mem[128 len ceil32(stor17.length.field_1)]
    if ceil32(stor17.length.field_1) > stor17.length.field_1:
        mem[stor17.length.field_1 + ceil32(stor17.length.field_1) + 192] = 0
    return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)], mem[(2 * ceil32(stor17.length.field_1)) + 192 len 2 * ceil32(stor17.length.field_1)]), 
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
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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

function reserve(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if MAX_TOKENS < 10:
        revert with 0, 17
    if minted > !arg1:
        revert with 0, 17
    if minted + arg1 > MAX_TOKENS - 10:
        revert with 0, 'All tokens minted'
    if arg1 <= 0:
        revert with 0, 'Invalid mint amount'
    if arg1 > 10:
        revert with 0, 'Invalid mint amount'
    require reserveLimit > 0
    idx = 0
    while idx < arg1:
        if minted == 65535:
            revert with 0, 17
        minted = uint16(minted + 1)
        _240 = mem[64]
        mem[64] = mem[64] + 32
        mem[_240] = 0
        if not owner:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor16]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor16] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = minted
        if owner:
            if not owner:
                if balanceOf[stor10] > -2:
                    revert with 0, 17
                balanceOf[stor10]++
                mem[0] = minted
                mem[32] = 2
                ownerOf[stor16] = owner
                emit Transfer(0, owner, minted);
                if not ext_code.size(owner):
                    if stor24 > 10000:
                        revert with 0, 'ERC2981Royalties: Too high'
                    if minted >= sub_35a3b65a:
                        _279 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_279] = owner
                        mem[_279 + 32] = stor24
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor16].field_0 = owner
                    else:
                        _272 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_272] = sub_8c062e4eAddress
                        mem[_272 + 32] = stor24
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor16].field_0 = sub_8c062e4eAddress
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = minted
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _240 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(owner)
                    call owner.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, minted, 128, 0
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
                    _478 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_478] == Mask(32, 224, mem[_478])
                    if Mask(32, 224, mem[_478]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if stor24 > 10000:
                        revert with 0, 'ERC2981Royalties: Too high'
                    if minted >= sub_35a3b65a:
                        _586 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_586] = owner
                        mem[_586 + 32] = stor24
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor16].field_0 = owner
                    else:
                        _556 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_556] = sub_8c062e4eAddress
                        mem[_556 + 32] = stor24
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor16].field_0 = sub_8c062e4eAddress
            else:
                if not owner:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[stor10][stor3[stor10]] = minted
                stor7[stor16] = balanceOf[stor10]
                if balanceOf[stor10] > -2:
                    revert with 0, 17
                balanceOf[stor10]++
                mem[0] = minted
                mem[32] = 2
                ownerOf[stor16] = owner
                emit Transfer(0, owner, minted);
                if not ext_code.size(owner):
                    if stor24 > 10000:
                        revert with 0, 'ERC2981Royalties: Too high'
                    if minted >= sub_35a3b65a:
                        _302 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_302] = owner
                        mem[_302 + 32] = stor24
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor16].field_0 = owner
                    else:
                        _292 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_292] = sub_8c062e4eAddress
                        mem[_292 + 32] = stor24
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor16].field_0 = sub_8c062e4eAddress
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = minted
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _240 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(owner)
                    call owner.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, minted, 128, 0
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
                    _480 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_480] == Mask(32, 224, mem[_480])
                    if Mask(32, 224, mem[_480]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if stor24 > 10000:
                        revert with 0, 'ERC2981Royalties: Too high'
                    if minted >= sub_35a3b65a:
                        _598 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_598] = owner
                        mem[_598 + 32] = stor24
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor16].field_0 = owner
                    else:
                        _566 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_566] = sub_8c062e4eAddress
                        mem[_566 + 32] = stor24
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor16].field_0 = sub_8c062e4eAddress
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[stor16] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[stor16]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor16]
            stor9[stor16] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[stor10] > -2:
                revert with 0, 17
            balanceOf[stor10]++
            mem[0] = minted
            mem[32] = 2
            ownerOf[stor16] = owner
            emit Transfer(0, owner, minted);
            if not ext_code.size(owner):
                if stor24 > 10000:
                    revert with 0, 'ERC2981Royalties: Too high'
                if minted >= sub_35a3b65a:
                    _328 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_328] = owner
                    mem[_328 + 32] = stor24
                    mem[0] = minted
                    mem[32] = 11
                    royaltyInfo[stor16].field_0 = owner
                else:
                    _315 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_315] = sub_8c062e4eAddress
                    mem[_315 + 32] = stor24
                    mem[0] = minted
                    mem[32] = 11
                    royaltyInfo[stor16].field_0 = sub_8c062e4eAddress
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = minted
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _240 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(owner)
                call owner.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, minted, 128, 0
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
                _482 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_482] == Mask(32, 224, mem[_482])
                if Mask(32, 224, mem[_482]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if stor24 > 10000:
                    revert with 0, 'ERC2981Royalties: Too high'
                if minted >= sub_35a3b65a:
                    _610 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_610] = owner
                    mem[_610 + 32] = stor24
                    mem[0] = minted
                    mem[32] = 11
                    royaltyInfo[stor16].field_0 = owner
                else:
                    _576 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_576] = sub_8c062e4eAddress
                    mem[_576 + 32] = stor24
                    mem[0] = minted
                    mem[32] = 11
                    royaltyInfo[stor16].field_0 = sub_8c062e4eAddress
        royaltyInfo[stor16].field_256 = stor24
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if reserveLimit < arg1:
        revert with 0, 17
    reserveLimit -= arg1
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    if tx.origin != msg.sender:
        revert with 0, 'Only EOA'
    if MAX_TOKENS < 10:
        revert with 0, 17
    if minted > !arg1:
        revert with 0, 17
    if minted + arg1 > MAX_TOKENS - 10:
        revert with 0, 'All tokens minted'
    if arg1 <= 0:
        revert with 0, 'Invalid mint amount'
    if arg1 > 10:
        revert with 0, 'Invalid mint amount'
    if minted >= PAID_TOKENS:
        require not msg.value
        idx = 0
        while idx < arg1:
            if minted == 65535:
                revert with 0, 17
            minted = uint16(minted + 1)
            _475 = mem[64]
            mem[64] = mem[64] + 32
            mem[_475] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor16]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor16] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = minted
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = minted
                    mem[32] = 2
                    ownerOf[stor16] = msg.sender
                    emit Transfer(0, msg.sender, minted);
                    if not ext_code.size(msg.sender):
                        if stor24 > 10000:
                            revert with 0, 'ERC2981Royalties: Too high'
                        if minted >= sub_35a3b65a:
                            _553 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_553] = owner
                            mem[_553 + 32] = stor24
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor16].field_0 = owner
                        else:
                            _539 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_539] = sub_8c062e4eAddress
                            mem[_539 + 32] = stor24
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor16].field_0 = sub_8c062e4eAddress
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = minted
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _475 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, minted, 128, 0
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
                        _951 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_951] == Mask(32, 224, mem[_951])
                        if Mask(32, 224, mem[_951]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if stor24 > 10000:
                            revert with 0, 'ERC2981Royalties: Too high'
                        if minted >= sub_35a3b65a:
                            _1167 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1167] = owner
                            mem[_1167 + 32] = stor24
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor16].field_0 = owner
                        else:
                            _1107 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1107] = sub_8c062e4eAddress
                            mem[_1107 + 32] = stor24
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor16].field_0 = sub_8c062e4eAddress
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = minted
                    stor7[stor16] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = minted
                    mem[32] = 2
                    ownerOf[stor16] = msg.sender
                    emit Transfer(0, msg.sender, minted);
                    if not ext_code.size(msg.sender):
                        if stor24 > 10000:
                            revert with 0, 'ERC2981Royalties: Too high'
                        if minted >= sub_35a3b65a:
                            _595 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_595] = owner
                            mem[_595 + 32] = stor24
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor16].field_0 = owner
                        else:
                            _579 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_579] = sub_8c062e4eAddress
                            mem[_579 + 32] = stor24
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor16].field_0 = sub_8c062e4eAddress
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = minted
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _475 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, minted, 128, 0
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
                        _953 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_953] == Mask(32, 224, mem[_953])
                        if Mask(32, 224, mem[_953]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if stor24 > 10000:
                            revert with 0, 'ERC2981Royalties: Too high'
                        if minted >= sub_35a3b65a:
                            _1179 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1179] = owner
                            mem[_1179 + 32] = stor24
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor16].field_0 = owner
                        else:
                            _1117 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1117] = sub_8c062e4eAddress
                            mem[_1117 + 32] = stor24
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor16].field_0 = sub_8c062e4eAddress
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor16] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor16]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor16]
                stor9[stor16] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = minted
                mem[32] = 2
                ownerOf[stor16] = msg.sender
                emit Transfer(0, msg.sender, minted);
                if not ext_code.size(msg.sender):
                    if stor24 > 10000:
                        revert with 0, 'ERC2981Royalties: Too high'
                    if minted >= sub_35a3b65a:
                        _643 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_643] = owner
                        mem[_643 + 32] = stor24
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor16].field_0 = owner
                    else:
                        _618 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_618] = sub_8c062e4eAddress
                        mem[_618 + 32] = stor24
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor16].field_0 = sub_8c062e4eAddress
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = minted
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _475 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, minted, 128, 0
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
                    _955 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_955] == Mask(32, 224, mem[_955])
                    if Mask(32, 224, mem[_955]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if stor24 > 10000:
                        revert with 0, 'ERC2981Royalties: Too high'
                    if minted >= sub_35a3b65a:
                        _1191 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1191] = owner
                        mem[_1191 + 32] = stor24
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor16].field_0 = owner
                    else:
                        _1127 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1127] = sub_8c062e4eAddress
                        mem[_1127 + 32] = stor24
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor16].field_0 = sub_8c062e4eAddress
            royaltyInfo[stor16].field_256 = stor24
            if minted > PAID_TOKENS:
                if 0 > !sub_ba9f6939:
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if minted > !arg1:
            revert with 0, 17
        if minted + arg1 > PAID_TOKENS:
            revert with 0, 'All tokens on-sale already sold'
        if arg1 and MINT_PRICE > -1 / arg1:
            revert with 0, 17
        if arg1 * MINT_PRICE > msg.value:
            revert with 0, 'Invalid payment amount'
        if msg.value < msg.value / 10:
            revert with 0, 17
        call sub_a103b103Address with:
           value msg.value / 10 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call owner with:
           value msg.value - (msg.value / 10) wei
             gas 2300 * is_zero(value) wei
        idx = 0
        while idx < arg1:
            if minted == 65535:
                revert with 0, 17
            minted = uint16(minted + 1)
            _476 = mem[64]
            mem[64] = mem[64] + 32
            mem[_476] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor16]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor16] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = minted
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = minted
                    mem[32] = 2
                    ownerOf[stor16] = msg.sender
                    emit Transfer(0, msg.sender, minted);
                    if not ext_code.size(msg.sender):
                        if stor24 > 10000:
                            revert with 0, 'ERC2981Royalties: Too high'
                        if minted >= sub_35a3b65a:
                            _559 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_559] = owner
                            mem[_559 + 32] = stor24
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor16].field_0 = owner
                        else:
                            _546 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_546] = sub_8c062e4eAddress
                            mem[_546 + 32] = stor24
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor16].field_0 = sub_8c062e4eAddress
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = minted
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _476 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, minted, 128, 0
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
                        _957 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_957] == Mask(32, 224, mem[_957])
                        if Mask(32, 224, mem[_957]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if stor24 > 10000:
                            revert with 0, 'ERC2981Royalties: Too high'
                        if minted >= sub_35a3b65a:
                            _1203 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1203] = owner
                            mem[_1203 + 32] = stor24
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor16].field_0 = owner
                        else:
                            _1137 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1137] = sub_8c062e4eAddress
                            mem[_1137 + 32] = stor24
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor16].field_0 = sub_8c062e4eAddress
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = minted
                    stor7[stor16] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = minted
                    mem[32] = 2
                    ownerOf[stor16] = msg.sender
                    emit Transfer(0, msg.sender, minted);
                    if not ext_code.size(msg.sender):
                        if stor24 > 10000:
                            revert with 0, 'ERC2981Royalties: Too high'
                        if minted >= sub_35a3b65a:
                            _605 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_605] = owner
                            mem[_605 + 32] = stor24
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor16].field_0 = owner
                        else:
                            _585 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_585] = sub_8c062e4eAddress
                            mem[_585 + 32] = stor24
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor16].field_0 = sub_8c062e4eAddress
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = minted
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _476 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, minted, 128, 0
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
                        _959 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_959] == Mask(32, 224, mem[_959])
                        if Mask(32, 224, mem[_959]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if stor24 > 10000:
                            revert with 0, 'ERC2981Royalties: Too high'
                        if minted >= sub_35a3b65a:
                            _1215 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1215] = owner
                            mem[_1215 + 32] = stor24
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor16].field_0 = owner
                        else:
                            _1147 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1147] = sub_8c062e4eAddress
                            mem[_1147 + 32] = stor24
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor16].field_0 = sub_8c062e4eAddress
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor16] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor16]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor16]
                stor9[stor16] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = minted
                mem[32] = 2
                ownerOf[stor16] = msg.sender
                emit Transfer(0, msg.sender, minted);
                if not ext_code.size(msg.sender):
                    if stor24 > 10000:
                        revert with 0, 'ERC2981Royalties: Too high'
                    if minted >= sub_35a3b65a:
                        _657 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_657] = owner
                        mem[_657 + 32] = stor24
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor16].field_0 = owner
                    else:
                        _630 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_630] = sub_8c062e4eAddress
                        mem[_630 + 32] = stor24
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor16].field_0 = sub_8c062e4eAddress
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = minted
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _476 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, minted, 128, 0
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
                    _961 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_961] == Mask(32, 224, mem[_961])
                    if Mask(32, 224, mem[_961]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if stor24 > 10000:
                        revert with 0, 'ERC2981Royalties: Too high'
                    if minted >= sub_35a3b65a:
                        _1227 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1227] = owner
                        mem[_1227 + 32] = stor24
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor16].field_0 = owner
                    else:
                        _1157 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1157] = sub_8c062e4eAddress
                        mem[_1157 + 32] = stor24
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor16].field_0 = sub_8c062e4eAddress
            royaltyInfo[stor16].field_256 = stor24
            if minted > PAID_TOKENS:
                if 0 > !sub_ba9f6939:
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
