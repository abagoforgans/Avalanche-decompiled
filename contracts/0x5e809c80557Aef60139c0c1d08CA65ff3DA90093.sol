contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const sub_f7462161(?) = 5

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
uint8 stor10; offset 160
address owner;
mapping of struct royaltyInfo;
uint256 MINT_PRICE;
uint256 sub_ddab315e;
uint256 MAX_TOKENS;
uint256 PAID_TOKENS;
uint256 sub_3dada722;
uint256 sub_ba9f6939;
uint16 minted;
array of struct stor19;
uint256 sub_35a3b65a;
address sub_8c062e4eAddress;
address sub_6857afb1Address;
uint8 isPresaleActive; offset 160
uint8 isMintActive; offset 168
uint128 stor23; offset 168
uint128 stor23; offset 160
address sub_a103b103Address;
mapping of uint8 stor24;
mapping of uint8 stor25;
address stakingContractAddress;
address sub_d61349bbAddress;
uint256 reserveLimit;
uint256 stor29;

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

function sub_3dada722(?) {
    return sub_3dada722
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

function isMintActive() {
    return bool(isMintActive)
}

function paused() {
    return bool(uint8(stor10.field_160))
}

function isPresaleActive() {
    return bool(isPresaleActive)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sub_6857afb1(?) {
    return sub_6857afb1Address
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

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor24[arg1])
}

function sub_a103b103(?) {
    return sub_a103b103Address
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

function sub_d61349bb(?) {
    return sub_d61349bbAddress
}

function sub_ddab315e(?) {
    return sub_ddab315e
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

function sub_fa30297e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor25[arg1])
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

function sub_b7d87ed6(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3dada722 = arg1
}

function sub_d92f040f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ddab315e = arg1
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

function setDAOAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8c062e4eAddress = arg1
}

function addToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor24[address(arg1)] = 1
}

function removeFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor24[address(arg1)] = 0
}

function setStakingContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stakingContractAddress = arg1
}

function setIsMintActive(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor23.field_168) = Mask(88, 0, arg1)
}

function setIsPresaleActive(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor23.field_160) = Mask(96, 0, arg1)
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
        if not uint8(stor10.field_160):
            revert with 0, 'Pausable: not paused'
        uint8(stor10.field_160) = 0
        emit Unpaused(msg.sender);
    else:
        if uint8(stor10.field_160):
            revert with 0, 'Pausable: paused'
        uint8(stor10.field_160) = 1
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

function addMultipleToWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Provide less addresses in one function call'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 24
        stor24[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f62a1a98(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Provide less addresses in one function call'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 24
        stor24[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
    if bool(stor19.length):
        if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor19.length = 0
            idx = 0
            while (uint255(stor19.length) * 0.5) + 31 / 32 > idx:
                stor19[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor19.length = 0
            idx = 0
            while stor19.length.field_1 + 31 / 32 > idx:
                stor19[idx].field_0 = 0
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
    if bool(stor19.length):
        if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor19.length):
            if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor19.length):
                if 31 < uint255(stor19.length) * 0.5:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor19.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)])
                mem[128] = 256 * stor19.length.field_8
        else:
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 0, 34
            if stor19.length.field_1:
                if 31 < stor19.length.field_1:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while stor19.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)])
                mem[128] = 256 * stor19.length.field_8
        mem[ceil32(uint255(stor19.length) * 0.5) + 192 len ceil32(uint255(stor19.length) * 0.5)] = mem[128 len ceil32(uint255(stor19.length) * 0.5)]
        if ceil32(uint255(stor19.length) * 0.5) > uint255(stor19.length) * 0.5:
            mem[(uint255(stor19.length) * 0.5) + ceil32(uint255(stor19.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)], mem[(2 * ceil32(uint255(stor19.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor19.length) * 0.5)]), 
    if bool(stor19.length) == stor19.length.field_1 < 32:
        revert with 0, 34
    if bool(stor19.length):
        if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor19.length):
            if 31 < uint255(stor19.length) * 0.5:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while (uint255(stor19.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)])
            mem[128] = 256 * stor19.length.field_8
    else:
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 0, 34
        if stor19.length.field_1:
            if 31 < stor19.length.field_1:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while stor19.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)])
            mem[128] = 256 * stor19.length.field_8
    mem[ceil32(stor19.length.field_1) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
    if ceil32(stor19.length.field_1) > stor19.length.field_1:
        mem[stor19.length.field_1 + ceil32(stor19.length.field_1) + 192] = 0
    return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)], mem[(2 * ceil32(stor19.length.field_1)) + 192 len 2 * ceil32(stor19.length.field_1)]), 
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
    if uint8(stor10.field_160):
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
        if ownerOf[stor18]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor18] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = minted
        if owner:
            if not owner:
                if balanceOf[address(stor10.field_0)] > -2:
                    revert with 0, 17
                balanceOf[address(stor10.field_0)]++
                mem[0] = minted
                mem[32] = 2
                ownerOf[stor18] = owner
                emit Transfer(0, owner, minted);
                if not ext_code.size(owner):
                    if stor29 > 10000:
                        revert with 0, 'ERC2981Royalties: Too high'
                    if minted >= sub_35a3b65a:
                        _272 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_272] = sub_8c062e4eAddress
                        mem[_272 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                    else:
                        _277 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_277] = sub_6857afb1Address
                        mem[_277 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_6857afb1Address
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
                    if stor29 > 10000:
                        revert with 0, 'ERC2981Royalties: Too high'
                    if minted >= sub_35a3b65a:
                        _556 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_556] = sub_8c062e4eAddress
                        mem[_556 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                    else:
                        _561 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_561] = sub_6857afb1Address
                        mem[_561 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_6857afb1Address
            else:
                if not owner:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(stor10.field_0)][stor3[address(stor10.field_0)]] = minted
                stor7[stor18] = balanceOf[address(stor10.field_0)]
                if balanceOf[address(stor10.field_0)] > -2:
                    revert with 0, 17
                balanceOf[address(stor10.field_0)]++
                mem[0] = minted
                mem[32] = 2
                ownerOf[stor18] = owner
                emit Transfer(0, owner, minted);
                if not ext_code.size(owner):
                    if stor29 > 10000:
                        revert with 0, 'ERC2981Royalties: Too high'
                    if minted >= sub_35a3b65a:
                        _292 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_292] = sub_8c062e4eAddress
                        mem[_292 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                    else:
                        _297 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_297] = sub_6857afb1Address
                        mem[_297 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_6857afb1Address
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
                    if stor29 > 10000:
                        revert with 0, 'ERC2981Royalties: Too high'
                    if minted >= sub_35a3b65a:
                        _576 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_576] = sub_8c062e4eAddress
                        mem[_576 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                    else:
                        _581 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_581] = sub_6857afb1Address
                        mem[_581 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_6857afb1Address
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[stor18] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[stor18]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor18]
            stor9[stor18] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(stor10.field_0)] > -2:
                revert with 0, 17
            balanceOf[address(stor10.field_0)]++
            mem[0] = minted
            mem[32] = 2
            ownerOf[stor18] = owner
            emit Transfer(0, owner, minted);
            if not ext_code.size(owner):
                if stor29 > 10000:
                    revert with 0, 'ERC2981Royalties: Too high'
                if minted >= sub_35a3b65a:
                    _315 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_315] = sub_8c062e4eAddress
                    mem[_315 + 32] = stor29
                    mem[0] = minted
                    mem[32] = 11
                    royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                else:
                    _320 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_320] = sub_6857afb1Address
                    mem[_320 + 32] = stor29
                    mem[0] = minted
                    mem[32] = 11
                    royaltyInfo[stor18].field_0 = sub_6857afb1Address
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
                if stor29 > 10000:
                    revert with 0, 'ERC2981Royalties: Too high'
                if minted >= sub_35a3b65a:
                    _596 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_596] = sub_8c062e4eAddress
                    mem[_596 + 32] = stor29
                    mem[0] = minted
                    mem[32] = 11
                    royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                else:
                    _601 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_601] = sub_6857afb1Address
                    mem[_601 + 32] = stor29
                    mem[0] = minted
                    mem[32] = 11
                    royaltyInfo[stor18].field_0 = sub_6857afb1Address
        royaltyInfo[stor18].field_256 = stor29
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if reserveLimit < arg1:
        revert with 0, 17
    reserveLimit -= arg1
}

function mintPresale(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if uint8(stor10.field_160):
        revert with 0, 'Pausable: paused'
    if not isPresaleActive:
        revert with 0, 'Presale Not active'
    if tx.origin != msg.sender:
        revert with 0, 'Only EOA'
    if bool(stor24[msg.sender]) != 1:
        revert with 0, 'Not on the whitelist'
    mem[0] = msg.sender
    mem[32] = 25
    if stor25[msg.sender]:
        revert with 0, 'Only once per account'
    if MAX_TOKENS < 5:
        revert with 0, 17
    if minted > !arg1:
        revert with 0, 17
    if minted + arg1 > MAX_TOKENS - 5:
        revert with 0, 'All tokens minted'
    if arg1 <= 0:
        revert with 0, 'Invalid mint amount'
    if arg1 > 5:
        revert with 0, 'Invalid mint amount'
    if minted > !arg1:
        revert with 0, 17
    if minted + arg1 > PAID_TOKENS:
        revert with 0, 'All tokens on-sale already sold'
    if arg1 and sub_ddab315e > -1 / arg1:
        revert with 0, 17
    if arg1 * sub_ddab315e > msg.value:
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
        _256 = mem[64]
        mem[64] = mem[64] + 32
        mem[_256] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor18]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor18] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = minted
        if msg.sender:
            if not msg.sender:
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = minted
                mem[32] = 2
                ownerOf[stor18] = msg.sender
                emit Transfer(0, msg.sender, minted);
                if not ext_code.size(msg.sender):
                    if stor29 > 10000:
                        revert with 0, 'ERC2981Royalties: Too high'
                    if minted >= sub_35a3b65a:
                        _288 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_288] = sub_8c062e4eAddress
                        mem[_288 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                    else:
                        _293 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_293] = sub_6857afb1Address
                        mem[_293 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_6857afb1Address
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = minted
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _256 + 32]
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
                    _494 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_494] == Mask(32, 224, mem[_494])
                    if Mask(32, 224, mem[_494]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if stor29 > 10000:
                        revert with 0, 'ERC2981Royalties: Too high'
                    if minted >= sub_35a3b65a:
                        _572 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_572] = sub_8c062e4eAddress
                        mem[_572 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                    else:
                        _577 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_577] = sub_6857afb1Address
                        mem[_577 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_6857afb1Address
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = minted
                stor7[stor18] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = minted
                mem[32] = 2
                ownerOf[stor18] = msg.sender
                emit Transfer(0, msg.sender, minted);
                if not ext_code.size(msg.sender):
                    if stor29 > 10000:
                        revert with 0, 'ERC2981Royalties: Too high'
                    if minted >= sub_35a3b65a:
                        _308 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_308] = sub_8c062e4eAddress
                        mem[_308 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                    else:
                        _313 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_313] = sub_6857afb1Address
                        mem[_313 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_6857afb1Address
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = minted
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _256 + 32]
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
                    _496 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_496] == Mask(32, 224, mem[_496])
                    if Mask(32, 224, mem[_496]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if stor29 > 10000:
                        revert with 0, 'ERC2981Royalties: Too high'
                    if minted >= sub_35a3b65a:
                        _592 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_592] = sub_8c062e4eAddress
                        mem[_592 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                    else:
                        _597 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_597] = sub_6857afb1Address
                        mem[_597 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_6857afb1Address
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[stor18] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[stor18]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor18]
            stor9[stor18] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = minted
            mem[32] = 2
            ownerOf[stor18] = msg.sender
            emit Transfer(0, msg.sender, minted);
            if not ext_code.size(msg.sender):
                if stor29 > 10000:
                    revert with 0, 'ERC2981Royalties: Too high'
                if minted >= sub_35a3b65a:
                    _331 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_331] = sub_8c062e4eAddress
                    mem[_331 + 32] = stor29
                    mem[0] = minted
                    mem[32] = 11
                    royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                else:
                    _336 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_336] = sub_6857afb1Address
                    mem[_336 + 32] = stor29
                    mem[0] = minted
                    mem[32] = 11
                    royaltyInfo[stor18].field_0 = sub_6857afb1Address
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = minted
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _256 + 32]
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
                _498 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_498] == Mask(32, 224, mem[_498])
                if Mask(32, 224, mem[_498]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if stor29 > 10000:
                    revert with 0, 'ERC2981Royalties: Too high'
                if minted >= sub_35a3b65a:
                    _612 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_612] = sub_8c062e4eAddress
                    mem[_612 + 32] = stor29
                    mem[0] = minted
                    mem[32] = 11
                    royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                else:
                    _617 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_617] = sub_6857afb1Address
                    mem[_617 + 32] = stor29
                    mem[0] = minted
                    mem[32] = 11
                    royaltyInfo[stor18].field_0 = sub_6857afb1Address
        royaltyInfo[stor18].field_256 = stor29
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor25[msg.sender] = 1
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if uint8(stor10.field_160):
        revert with 0, 'Pausable: paused'
    if not isMintActive:
        revert with 0, 'Mint is not active'
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
            _477 = mem[64]
            mem[64] = mem[64] + 32
            mem[_477] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor18]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor18] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = minted
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = minted
                    mem[32] = 2
                    ownerOf[stor18] = msg.sender
                    emit Transfer(0, msg.sender, minted);
                    if not ext_code.size(msg.sender):
                        if stor29 > 10000:
                            revert with 0, 'ERC2981Royalties: Too high'
                        if minted >= sub_35a3b65a:
                            _541 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_541] = sub_8c062e4eAddress
                            mem[_541 + 32] = stor29
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                        else:
                            _546 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_546] = sub_6857afb1Address
                            mem[_546 + 32] = stor29
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor18].field_0 = sub_6857afb1Address
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = minted
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _477 + 32]
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
                        if stor29 > 10000:
                            revert with 0, 'ERC2981Royalties: Too high'
                        if minted >= sub_35a3b65a:
                            _1109 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1109] = sub_8c062e4eAddress
                            mem[_1109 + 32] = stor29
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                        else:
                            _1114 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1114] = sub_6857afb1Address
                            mem[_1114 + 32] = stor29
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor18].field_0 = sub_6857afb1Address
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = minted
                    stor7[stor18] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = minted
                    mem[32] = 2
                    ownerOf[stor18] = msg.sender
                    emit Transfer(0, msg.sender, minted);
                    if not ext_code.size(msg.sender):
                        if stor29 > 10000:
                            revert with 0, 'ERC2981Royalties: Too high'
                        if minted >= sub_35a3b65a:
                            _581 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_581] = sub_8c062e4eAddress
                            mem[_581 + 32] = stor29
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                        else:
                            _586 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_586] = sub_6857afb1Address
                            mem[_586 + 32] = stor29
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor18].field_0 = sub_6857afb1Address
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = minted
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _477 + 32]
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
                        if stor29 > 10000:
                            revert with 0, 'ERC2981Royalties: Too high'
                        if minted >= sub_35a3b65a:
                            _1129 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1129] = sub_8c062e4eAddress
                            mem[_1129 + 32] = stor29
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                        else:
                            _1134 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1134] = sub_6857afb1Address
                            mem[_1134 + 32] = stor29
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor18].field_0 = sub_6857afb1Address
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor18] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor18]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor18]
                stor9[stor18] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = minted
                mem[32] = 2
                ownerOf[stor18] = msg.sender
                emit Transfer(0, msg.sender, minted);
                if not ext_code.size(msg.sender):
                    if stor29 > 10000:
                        revert with 0, 'ERC2981Royalties: Too high'
                    if minted >= sub_35a3b65a:
                        _621 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_621] = sub_8c062e4eAddress
                        mem[_621 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                    else:
                        _626 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_626] = sub_6857afb1Address
                        mem[_626 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_6857afb1Address
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = minted
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _477 + 32]
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
                    if stor29 > 10000:
                        revert with 0, 'ERC2981Royalties: Too high'
                    if minted >= sub_35a3b65a:
                        _1149 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1149] = sub_8c062e4eAddress
                        mem[_1149 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                    else:
                        _1154 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1154] = sub_6857afb1Address
                        mem[_1154 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_6857afb1Address
            royaltyInfo[stor18].field_256 = stor29
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
            _478 = mem[64]
            mem[64] = mem[64] + 32
            mem[_478] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor18]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor18] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = minted
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = minted
                    mem[32] = 2
                    ownerOf[stor18] = msg.sender
                    emit Transfer(0, msg.sender, minted);
                    if not ext_code.size(msg.sender):
                        if stor29 > 10000:
                            revert with 0, 'ERC2981Royalties: Too high'
                        if minted >= sub_35a3b65a:
                            _553 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_553] = sub_8c062e4eAddress
                            mem[_553 + 32] = stor29
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                        else:
                            _558 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_558] = sub_6857afb1Address
                            mem[_558 + 32] = stor29
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor18].field_0 = sub_6857afb1Address
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = minted
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _478 + 32]
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
                        if stor29 > 10000:
                            revert with 0, 'ERC2981Royalties: Too high'
                        if minted >= sub_35a3b65a:
                            _1169 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1169] = sub_8c062e4eAddress
                            mem[_1169 + 32] = stor29
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                        else:
                            _1174 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1174] = sub_6857afb1Address
                            mem[_1174 + 32] = stor29
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor18].field_0 = sub_6857afb1Address
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = minted
                    stor7[stor18] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = minted
                    mem[32] = 2
                    ownerOf[stor18] = msg.sender
                    emit Transfer(0, msg.sender, minted);
                    if not ext_code.size(msg.sender):
                        if stor29 > 10000:
                            revert with 0, 'ERC2981Royalties: Too high'
                        if minted >= sub_35a3b65a:
                            _592 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_592] = sub_8c062e4eAddress
                            mem[_592 + 32] = stor29
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                        else:
                            _597 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_597] = sub_6857afb1Address
                            mem[_597 + 32] = stor29
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor18].field_0 = sub_6857afb1Address
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = minted
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _478 + 32]
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
                        if stor29 > 10000:
                            revert with 0, 'ERC2981Royalties: Too high'
                        if minted >= sub_35a3b65a:
                            _1189 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1189] = sub_8c062e4eAddress
                            mem[_1189 + 32] = stor29
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                        else:
                            _1194 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1194] = sub_6857afb1Address
                            mem[_1194 + 32] = stor29
                            mem[0] = minted
                            mem[32] = 11
                            royaltyInfo[stor18].field_0 = sub_6857afb1Address
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor18] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor18]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor18]
                stor9[stor18] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = minted
                mem[32] = 2
                ownerOf[stor18] = msg.sender
                emit Transfer(0, msg.sender, minted);
                if not ext_code.size(msg.sender):
                    if stor29 > 10000:
                        revert with 0, 'ERC2981Royalties: Too high'
                    if minted >= sub_35a3b65a:
                        _637 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_637] = sub_8c062e4eAddress
                        mem[_637 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                    else:
                        _642 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_642] = sub_6857afb1Address
                        mem[_642 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_6857afb1Address
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = minted
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _478 + 32]
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
                    _963 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_963] == Mask(32, 224, mem[_963])
                    if Mask(32, 224, mem[_963]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if stor29 > 10000:
                        revert with 0, 'ERC2981Royalties: Too high'
                    if minted >= sub_35a3b65a:
                        _1209 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1209] = sub_8c062e4eAddress
                        mem[_1209 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_8c062e4eAddress
                    else:
                        _1214 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1214] = sub_6857afb1Address
                        mem[_1214 + 32] = stor29
                        mem[0] = minted
                        mem[32] = 11
                        royaltyInfo[stor18].field_0 = sub_6857afb1Address
            royaltyInfo[stor18].field_256 = stor29
            if minted > PAID_TOKENS:
                if 0 > !sub_ba9f6939:
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
