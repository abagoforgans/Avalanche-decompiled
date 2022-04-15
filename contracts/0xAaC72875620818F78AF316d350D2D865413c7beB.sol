contract main {




// =====================  Runtime code  =====================


const decimals = 0


array of struct stor0;
array of struct stor1;
array of uint256 stor2;
mapping of uint8 stor3;
uint256 TOKEN_LIMIT;
uint256 totalSupply;
uint256 stor6;
address stor7;
uint256 stor8;
uint8 stor9;
uint256 price;
uint256 sub_bb707609;
uint256 sub_b26fec41;
mapping of struct tokenData;
mapping of address ownerOf;
array of struct tokenOfOwnerByIndex;
mapping of struct stor16;
mapping of address approved;
mapping of uint8 stor18;
mapping of uint8 stor19;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor3[Mask(32, 224, arg1)])
}

function TOKEN_LIMIT() {
    return TOKEN_LIMIT
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return approved[arg1]
}

function totalSupply() {
    return totalSupply
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= tokenOfOwnerByIndex[address(arg1)].field_0:
        revert with 0, 'no such token of this owner'
    if arg2 >= tokenOfOwnerByIndex[address(arg1)].field_0:
        revert with 'NH{q', 50
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function paused() {
    return bool(stor9)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0, 'no such token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1
    return tokenOfOwnerByIndex[address(arg1)].field_0
}

function price() {
    return price
}

function sub_b26fec41(?) {
    return sub_b26fec41
}

function tokenData(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenData[arg1].field_0
}

function sub_bb707609(?) {
    return sub_bb707609
}

function _fallback() payable {
    revert
}

function getPrice() {
    return price, sub_bb707609
}

function pause() {
    if stor7 != msg.sender:
        revert with 0, 'only owner can do this'
    stor9 = 1
}

function unpause() {
    if stor7 != msg.sender:
        revert with 0, 'only owner can do this'
    if price <= 0:
        revert with 0, 'set proper price'
    stor9 = 0
}

function setRoyaltyFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7 != msg.sender:
        revert with 0, 'only owner can do this'
    stor8 = arg1
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 and stor8 > -1 / arg2:
        revert with 'NH{q', 17
    return stor7, arg2 * stor8 / 10000
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor19[address(arg2)]:
        return bool(stor18[address(arg1)][address(arg2)])
    return 1
}

function sub_970ee840(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7 != msg.sender:
        revert with 0, 'only owner can do this'
    if arg1 <= 0:
        revert with 0, 'set proper limit'
    sub_b26fec41 = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor18[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_f5f71ced(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor7 != msg.sender:
        revert with 0, 'only owner can do this'
    stor19[address(arg1)] = uint8(bool(arg2))
}

function setTokenLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7 != msg.sender:
        revert with 0, 'only owner can do this'
    if arg1 <= 0:
        revert with 0, 'set proper limit'
    TOKEN_LIMIT = arg1
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 < 0:
        revert with 0, 'no such token'
    if arg1 >= totalSupply:
        revert with 0, 'no such token'
    if arg1 > -2:
        revert with 'NH{q', 17
    return (arg1 + 1)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ownerOf[arg2] != msg.sender:
        if not stor18[stor14[arg2]][address(msg.sender)]:
            revert with 0, 'now allowed'
    require arg1 != ownerOf[arg2]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor7 != msg.sender:
        revert with 0, 'only owner can do this'
    if arg2 <= 0:
        revert with 0, 'amount is zero'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'transfer failed'
}

function setPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor7 != msg.sender:
        revert with 0, 'only owner can do this'
    if arg1 < 10^18:
        revert with 0, 'set proper price'
    if arg2 <= 0:
        revert with 0, 'set proper IRL tree price'
    price = arg1
    sub_bb707609 = arg2
    emit PriceUpdate(price, sub_bb707609);
}

function withdrawERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor7 != msg.sender:
        revert with 0, 'only owner can do this'
    if arg3 <= 0:
        revert with 0, 'amount is zero'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
}

function tokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenOfOwnerByIndex[address(arg1)].field_0:
        mem[128] = tokenOfOwnerByIndex[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = tokenOfOwnerByIndex[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=tokenOfOwnerByIndex[address(arg1)].field_0, data=mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)].field_0]), 
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128] = 32
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 160] = tokenOfOwnerByIndex[address(arg1)].field_0
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len 32 * tokenOfOwnerByIndex[address(arg1)].field_0] = mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)].field_0]
    return memory
      from (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128
       len (96 * tokenOfOwnerByIndex[address(arg1)].field_0) + 64
}

function setTokenURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if stor7 != msg.sender:
        revert with 0, 'only owner can do this'
    if stor16[arg1].field_0:
        if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor16[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor16[arg1].field_0 = 0
            idx = 0
            while stor16[arg1].field_1 + 31 / 32 > idx:
                stor16[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor16[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor16[arg1].field_0 = 0
            idx = 0
            while stor16[arg1].field_1 + 31 / 32 > idx:
                stor16[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function mint(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0, 'mint to zero address'
    if totalSupply >= TOKEN_LIMIT:
        revert with 0, 'all tokens are minted'
    if stor9:
        if stor7 != msg.sender:
            revert with 0, 'minting is paused'
    if arg2 < 1:
        revert with 0, 'plant at least one real tree'
    if arg2 > sub_b26fec41:
        revert with 0, 'too many IRL trees'
    if arg2 <= 1:
        if msg.value < price:
            revert with 0, 'not enough value transferred'
    else:
        if arg2 < 1:
            revert with 'NH{q', 17
        if uint8(arg2 - 1) and sub_bb707609 > -1 / uint8(arg2 - 1):
            revert with 'NH{q', 17
        if price > (-1 * uint8(arg2 - 1) * sub_bb707609) - 1:
            revert with 'NH{q', 17
        if msg.value < price + (uint8(arg2 - 1) * sub_bb707609):
            revert with 0, 'not enough value transferred'
    if stor6 == -1:
        revert with 'NH{q', 17
    stor6++
    if totalSupply == -1:
        revert with 'NH{q', 17
    totalSupply++
    tokenData[stor5 + 1].field_0 = Mask(192, 0, sha3(stor6, arg1, block.difficulty, block.timestamp))
    tokenData[stor5 + 1].field_192 = 0
    tokenData[stor5 + 1].field_216 = arg2
    tokenData[stor5 + 1].field_224 = uint32(block.timestamp)
    ownerOf[stor5 + 1] = arg1
    tokenOfOwnerByIndex[address(arg1)].field_0++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = totalSupply + 1
    emit Transfer(0, arg1, totalSupply + 1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 == arg2:
        revert with 0, 'transfer to the same address'
    if arg1 != ownerOf[arg3]:
        revert with 0, 'not an owner'
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor18[stor14[arg3]][address(msg.sender)]:
                if not stor19[address(msg.sender)]:
                    revert with 0, 'not allowed'
    if approved[arg3]:
        approved[arg3] = 0
    ownerOf[arg3] = 0
    idx = 0
    while idx < tokenOfOwnerByIndex[stor14[arg3]].field_0:
        mem[0] = sha3(ownerOf[arg3], 15)
        if tokenOfOwnerByIndex[stor14[arg3]][idx].field_0 == arg3:
            if tokenOfOwnerByIndex[stor14[arg3]].field_0 < 1:
                revert with 'NH{q', 17
            if tokenOfOwnerByIndex[stor14[arg3]].field_0 - 1 >= tokenOfOwnerByIndex[stor14[arg3]].field_0:
                revert with 'NH{q', 50
            if idx >= tokenOfOwnerByIndex[stor14[arg3]].field_0:
                revert with 'NH{q', 50
            tokenOfOwnerByIndex[stor14[arg3]][idx].field_0 = tokenOfOwnerByIndex[stor14[arg3]][tokenOfOwnerByIndex[stor14[arg3]].field_0].field_0
            if not tokenOfOwnerByIndex[stor14[arg3]].field_0:
                revert with 'NH{q', 49
            mem[0] = sha3(ownerOf[arg3], 15)
            tokenOfOwnerByIndex[stor14[arg3]][tokenOfOwnerByIndex[stor14[arg3]].field_0].field_0 = 0
            tokenOfOwnerByIndex[stor14[arg3]].field_0--
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 == arg2:
        revert with 0, 'transfer to the same address'
    if arg1 != ownerOf[arg3]:
        revert with 0, 'not an owner'
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor18[stor14[arg3]][address(msg.sender)]:
                if not stor19[address(msg.sender)]:
                    revert with 0, 'not allowed'
    if approved[arg3]:
        approved[arg3] = 0
    ownerOf[arg3] = 0
    idx = 0
    while idx < tokenOfOwnerByIndex[stor14[arg3]].field_0:
        mem[0] = sha3(ownerOf[arg3], 15)
        if tokenOfOwnerByIndex[stor14[arg3]][idx].field_0 == arg3:
            if tokenOfOwnerByIndex[stor14[arg3]].field_0 < 1:
                revert with 'NH{q', 17
            if tokenOfOwnerByIndex[stor14[arg3]].field_0 - 1 >= tokenOfOwnerByIndex[stor14[arg3]].field_0:
                revert with 'NH{q', 50
            if idx >= tokenOfOwnerByIndex[stor14[arg3]].field_0:
                revert with 'NH{q', 50
            tokenOfOwnerByIndex[stor14[arg3]][idx].field_0 = tokenOfOwnerByIndex[stor14[arg3]][tokenOfOwnerByIndex[stor14[arg3]].field_0].field_0
            if not tokenOfOwnerByIndex[stor14[arg3]].field_0:
                revert with 'NH{q', 49
            mem[0] = sha3(ownerOf[arg3], 15)
            tokenOfOwnerByIndex[stor14[arg3]][tokenOfOwnerByIndex[stor14[arg3]].field_0].field_0 = 0
            tokenOfOwnerByIndex[stor14[arg3]].field_0--
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        require Mask(32, 224, ext_call.return_data[0]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 == arg2:
        revert with 0, 'transfer to the same address'
    else:
        if arg1 != ownerOf[arg3]:
            revert with 0, 'not an owner'
        else:
            if msg.sender == ownerOf[arg3]:
                if not approved[arg3]:
                    ownerOf[arg3] = 0
                    idx = 0
                    while idx < tokenOfOwnerByIndex[stor14[arg3]].field_0:
                        mem[0] = sha3(ownerOf[arg3], 15)
                        if tokenOfOwnerByIndex[stor14[arg3]][idx].field_0 != arg3:
                            if idx == -1:
                                revert with 'NH{q', 17
                            else:
                                idx = idx + 1
                                continue 
                        else:
                            if tokenOfOwnerByIndex[stor14[arg3]].field_0 < 1:
                                revert with 'NH{q', 17
                            else:
                                if tokenOfOwnerByIndex[stor14[arg3]].field_0 - 1 >= tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                    revert with 'NH{q', 50
                                else:
                                    if idx >= tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                        revert with 'NH{q', 50
                                    else:
                                        tokenOfOwnerByIndex[stor14[arg3]][idx].field_0 = tokenOfOwnerByIndex[stor14[arg3]][tokenOfOwnerByIndex[stor14[arg3]].field_0].field_0
                                        if not tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                            revert with 'NH{q', 49
                                        else:
                                            mem[0] = sha3(ownerOf[arg3], 15)
                                            tokenOfOwnerByIndex[stor14[arg3]][tokenOfOwnerByIndex[stor14[arg3]].field_0].field_0 = 0
                                            tokenOfOwnerByIndex[stor14[arg3]].field_0--
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
                    ownerOf[arg3] = arg2
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) <= 0:
                    else:
                        if ceil32(arg4.length) <= arg4.length:
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require 0, ext_call.return_data[4 len 28]
                                revert
                        else:
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require 0, ext_call.return_data[4 len 28]
                                revert
                else:
                    approved[arg3] = 0
                    ownerOf[arg3] = 0
                    idx = 0
                    while idx < tokenOfOwnerByIndex[stor14[arg3]].field_0:
                        mem[0] = sha3(ownerOf[arg3], 15)
                        if tokenOfOwnerByIndex[stor14[arg3]][idx].field_0 != arg3:
                            if idx == -1:
                                revert with 'NH{q', 17
                            else:
                                idx = idx + 1
                                continue 
                        else:
                            if tokenOfOwnerByIndex[stor14[arg3]].field_0 < 1:
                                revert with 'NH{q', 17
                            else:
                                if tokenOfOwnerByIndex[stor14[arg3]].field_0 - 1 >= tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                    revert with 'NH{q', 50
                                else:
                                    if idx >= tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                        revert with 'NH{q', 50
                                    else:
                                        tokenOfOwnerByIndex[stor14[arg3]][idx].field_0 = tokenOfOwnerByIndex[stor14[arg3]][tokenOfOwnerByIndex[stor14[arg3]].field_0].field_0
                                        if not tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                            revert with 'NH{q', 49
                                        else:
                                            mem[0] = sha3(ownerOf[arg3], 15)
                                            tokenOfOwnerByIndex[stor14[arg3]][tokenOfOwnerByIndex[stor14[arg3]].field_0].field_0 = 0
                                            tokenOfOwnerByIndex[stor14[arg3]].field_0--
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
                    ownerOf[arg3] = arg2
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) <= 0:
                    else:
                        if ceil32(arg4.length) <= arg4.length:
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require 0, ext_call.return_data[4 len 28]
                                revert
                        else:
                            require ext_code.size(arg2)
                            call arg2 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require 0, ext_call.return_data[4 len 28]
                                revert
            else:
                if msg.sender == approved[arg3]:
                    if not approved[arg3]:
                        ownerOf[arg3] = 0
                        idx = 0
                        while idx < tokenOfOwnerByIndex[stor14[arg3]].field_0:
                            mem[0] = sha3(ownerOf[arg3], 15)
                            if tokenOfOwnerByIndex[stor14[arg3]][idx].field_0 != arg3:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                else:
                                    idx = idx + 1
                                    continue 
                            else:
                                if tokenOfOwnerByIndex[stor14[arg3]].field_0 < 1:
                                    revert with 'NH{q', 17
                                else:
                                    if tokenOfOwnerByIndex[stor14[arg3]].field_0 - 1 >= tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                        revert with 'NH{q', 50
                                    else:
                                        if idx >= tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                            revert with 'NH{q', 50
                                        else:
                                            tokenOfOwnerByIndex[stor14[arg3]][idx].field_0 = tokenOfOwnerByIndex[stor14[arg3]][tokenOfOwnerByIndex[stor14[arg3]].field_0].field_0
                                            if not tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                                revert with 'NH{q', 49
                                            else:
                                                mem[0] = sha3(ownerOf[arg3], 15)
                                                tokenOfOwnerByIndex[stor14[arg3]][tokenOfOwnerByIndex[stor14[arg3]].field_0].field_0 = 0
                                                tokenOfOwnerByIndex[stor14[arg3]].field_0--
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                        ownerOf[arg3] = arg2
                        tokenOfOwnerByIndex[address(arg2)].field_0++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) <= 0:
                        else:
                            if ceil32(arg4.length) <= arg4.length:
                                require ext_code.size(arg2)
                                call arg2 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 0, ext_call.return_data[4 len 28]
                                    revert
                            else:
                                require ext_code.size(arg2)
                                call arg2 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 0, ext_call.return_data[4 len 28]
                                    revert
                    else:
                        approved[arg3] = 0
                        ownerOf[arg3] = 0
                        idx = 0
                        while idx < tokenOfOwnerByIndex[stor14[arg3]].field_0:
                            mem[0] = sha3(ownerOf[arg3], 15)
                            if tokenOfOwnerByIndex[stor14[arg3]][idx].field_0 != arg3:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                else:
                                    idx = idx + 1
                                    continue 
                            else:
                                if tokenOfOwnerByIndex[stor14[arg3]].field_0 < 1:
                                    revert with 'NH{q', 17
                                else:
                                    if tokenOfOwnerByIndex[stor14[arg3]].field_0 - 1 >= tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                        revert with 'NH{q', 50
                                    else:
                                        if idx >= tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                            revert with 'NH{q', 50
                                        else:
                                            tokenOfOwnerByIndex[stor14[arg3]][idx].field_0 = tokenOfOwnerByIndex[stor14[arg3]][tokenOfOwnerByIndex[stor14[arg3]].field_0].field_0
                                            if not tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                                revert with 'NH{q', 49
                                            else:
                                                mem[0] = sha3(ownerOf[arg3], 15)
                                                tokenOfOwnerByIndex[stor14[arg3]][tokenOfOwnerByIndex[stor14[arg3]].field_0].field_0 = 0
                                                tokenOfOwnerByIndex[stor14[arg3]].field_0--
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                        ownerOf[arg3] = arg2
                        tokenOfOwnerByIndex[address(arg2)].field_0++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) <= 0:
                        else:
                            if ceil32(arg4.length) <= arg4.length:
                                require ext_code.size(arg2)
                                call arg2 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 0, ext_call.return_data[4 len 28]
                                    revert
                            else:
                                require ext_code.size(arg2)
                                call arg2 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 0, ext_call.return_data[4 len 28]
                                    revert
                else:
                    if stor18[stor14[arg3]][address(msg.sender)]:
                        if not approved[arg3]:
                            ownerOf[arg3] = 0
                            idx = 0
                            while idx < tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                mem[0] = sha3(ownerOf[arg3], 15)
                                if tokenOfOwnerByIndex[stor14[arg3]][idx].field_0 != arg3:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    else:
                                        idx = idx + 1
                                        continue 
                                else:
                                    if tokenOfOwnerByIndex[stor14[arg3]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    else:
                                        if tokenOfOwnerByIndex[stor14[arg3]].field_0 - 1 >= tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                            revert with 'NH{q', 50
                                        else:
                                            if idx >= tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                                revert with 'NH{q', 50
                                            else:
                                                tokenOfOwnerByIndex[stor14[arg3]][idx].field_0 = tokenOfOwnerByIndex[stor14[arg3]][tokenOfOwnerByIndex[stor14[arg3]].field_0].field_0
                                                if not tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                                    revert with 'NH{q', 49
                                                else:
                                                    mem[0] = sha3(ownerOf[arg3], 15)
                                                    tokenOfOwnerByIndex[stor14[arg3]][tokenOfOwnerByIndex[stor14[arg3]].field_0].field_0 = 0
                                                    tokenOfOwnerByIndex[stor14[arg3]].field_0--
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                            ownerOf[arg3] = arg2
                            tokenOfOwnerByIndex[address(arg2)].field_0++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                            emit Transfer(arg1, arg2, arg3);
                            if ext_code.size(arg2) <= 0:
                            else:
                                if ceil32(arg4.length) <= arg4.length:
                                    require ext_code.size(arg2)
                                    call arg2 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 0, ext_call.return_data[4 len 28]
                                        revert
                                else:
                                    require ext_code.size(arg2)
                                    call arg2 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 0, ext_call.return_data[4 len 28]
                                        revert
                        else:
                            approved[arg3] = 0
                            ownerOf[arg3] = 0
                            idx = 0
                            while idx < tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                mem[0] = sha3(ownerOf[arg3], 15)
                                if tokenOfOwnerByIndex[stor14[arg3]][idx].field_0 != arg3:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    else:
                                        idx = idx + 1
                                        continue 
                                else:
                                    if tokenOfOwnerByIndex[stor14[arg3]].field_0 < 1:
                                        revert with 'NH{q', 17
                                    else:
                                        if tokenOfOwnerByIndex[stor14[arg3]].field_0 - 1 >= tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                            revert with 'NH{q', 50
                                        else:
                                            if idx >= tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                                revert with 'NH{q', 50
                                            else:
                                                tokenOfOwnerByIndex[stor14[arg3]][idx].field_0 = tokenOfOwnerByIndex[stor14[arg3]][tokenOfOwnerByIndex[stor14[arg3]].field_0].field_0
                                                if not tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                                    revert with 'NH{q', 49
                                                else:
                                                    mem[0] = sha3(ownerOf[arg3], 15)
                                                    tokenOfOwnerByIndex[stor14[arg3]][tokenOfOwnerByIndex[stor14[arg3]].field_0].field_0 = 0
                                                    tokenOfOwnerByIndex[stor14[arg3]].field_0--
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                            ownerOf[arg3] = arg2
                            tokenOfOwnerByIndex[address(arg2)].field_0++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                            emit Transfer(arg1, arg2, arg3);
                            if ext_code.size(arg2) <= 0:
                            else:
                                if ceil32(arg4.length) <= arg4.length:
                                    require ext_code.size(arg2)
                                    call arg2 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 0, ext_call.return_data[4 len 28]
                                        revert
                                else:
                                    require ext_code.size(arg2)
                                    call arg2 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 0, ext_call.return_data[4 len 28]
                                        revert
                    else:
                        if not stor19[address(msg.sender)]:
                            revert with 0, 'not allowed'
                        else:
                            if not approved[arg3]:
                                ownerOf[arg3] = 0
                                idx = 0
                                while idx < tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                    mem[0] = sha3(ownerOf[arg3], 15)
                                    if tokenOfOwnerByIndex[stor14[arg3]][idx].field_0 != arg3:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if tokenOfOwnerByIndex[stor14[arg3]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        else:
                                            if tokenOfOwnerByIndex[stor14[arg3]].field_0 - 1 >= tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                                revert with 'NH{q', 50
                                            else:
                                                if idx >= tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                                    revert with 'NH{q', 50
                                                else:
                                                    tokenOfOwnerByIndex[stor14[arg3]][idx].field_0 = tokenOfOwnerByIndex[stor14[arg3]][tokenOfOwnerByIndex[stor14[arg3]].field_0].field_0
                                                    if not tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                                        revert with 'NH{q', 49
                                                    else:
                                                        mem[0] = sha3(ownerOf[arg3], 15)
                                                        tokenOfOwnerByIndex[stor14[arg3]][tokenOfOwnerByIndex[stor14[arg3]].field_0].field_0 = 0
                                                        tokenOfOwnerByIndex[stor14[arg3]].field_0--
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                ownerOf[arg3] = arg2
                                tokenOfOwnerByIndex[address(arg2)].field_0++
                                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                                emit Transfer(arg1, arg2, arg3);
                                if ext_code.size(arg2) <= 0:
                                else:
                                    if ceil32(arg4.length) <= arg4.length:
                                        require ext_code.size(arg2)
                                        call arg2 with:
                                             gas gas_remaining wei
                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require 0, ext_call.return_data[4 len 28]
                                            revert
                                    else:
                                        require ext_code.size(arg2)
                                        call arg2 with:
                                             gas gas_remaining wei
                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require 0, ext_call.return_data[4 len 28]
                                            revert
                            else:
                                approved[arg3] = 0
                                ownerOf[arg3] = 0
                                idx = 0
                                while idx < tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                    mem[0] = sha3(ownerOf[arg3], 15)
                                    if tokenOfOwnerByIndex[stor14[arg3]][idx].field_0 != arg3:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if tokenOfOwnerByIndex[stor14[arg3]].field_0 < 1:
                                            revert with 'NH{q', 17
                                        else:
                                            if tokenOfOwnerByIndex[stor14[arg3]].field_0 - 1 >= tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                                revert with 'NH{q', 50
                                            else:
                                                if idx >= tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                                    revert with 'NH{q', 50
                                                else:
                                                    tokenOfOwnerByIndex[stor14[arg3]][idx].field_0 = tokenOfOwnerByIndex[stor14[arg3]][tokenOfOwnerByIndex[stor14[arg3]].field_0].field_0
                                                    if not tokenOfOwnerByIndex[stor14[arg3]].field_0:
                                                        revert with 'NH{q', 49
                                                    else:
                                                        mem[0] = sha3(ownerOf[arg3], 15)
                                                        tokenOfOwnerByIndex[stor14[arg3]][tokenOfOwnerByIndex[stor14[arg3]].field_0].field_0 = 0
                                                        tokenOfOwnerByIndex[stor14[arg3]].field_0--
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                ownerOf[arg3] = arg2
                                tokenOfOwnerByIndex[address(arg2)].field_0++
                                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                                emit Transfer(arg1, arg2, arg3);
                                if ext_code.size(arg2) <= 0:
                                else:
                                    if ceil32(arg4.length) <= arg4.length:
                                        require ext_code.size(arg2)
                                        call arg2 with:
                                             gas gas_remaining wei
                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require 0, ext_call.return_data[4 len 28]
                                            revert
                                    else:
                                        require ext_code.size(arg2)
                                        call arg2 with:
                                             gas gas_remaining wei
                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require 0, ext_call.return_data[4 len 28]
                                            revert
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 16
    if stor16[arg1].field_0:
        if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor16[arg1].field_1 > 0:
            if stor16[arg1].field_0:
                if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if stor16[arg1].field_0:
                    if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor16[arg1].field_1:
                        if 31 < stor16[arg1].field_1:
                            mem[128] = stor16[arg1].field_0
                            idx = 128
                            s = 0
                            while stor16[arg1].field_1 + 96 > idx:
                                mem[idx + 32] = stor16[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor16[arg1].field_1), data=mem[128 len ceil32(stor16[arg1].field_1)])
                        mem[128] = 256 * stor16[arg1].field_8
                else:
                    if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor16[arg1].field_1:
                        if 31 < stor16[arg1].field_1:
                            mem[128] = stor16[arg1].field_0
                            idx = 128
                            s = 0
                            while stor16[arg1].field_1 + 96 > idx:
                                mem[idx + 32] = stor16[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor16[arg1].field_1), data=mem[128 len ceil32(stor16[arg1].field_1)])
                        mem[128] = 256 * stor16[arg1].field_8
                mem[ceil32(stor16[arg1].field_1) + 192 len ceil32(stor16[arg1].field_1)] = mem[128 len ceil32(stor16[arg1].field_1)]
                if ceil32(stor16[arg1].field_1) > stor16[arg1].field_1:
                    mem[ceil32(stor16[arg1].field_1) + stor16[arg1].field_1 + 192] = 0
                return Array(len=2 * Mask(256, -1, stor16[arg1].field_1), data=mem[128 len ceil32(stor16[arg1].field_1)], mem[(2 * ceil32(stor16[arg1].field_1)) + 192 len 2 * ceil32(stor16[arg1].field_1)]), 
            if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor16[arg1].field_0:
                if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if stor16[arg1].field_1:
                    if 31 < stor16[arg1].field_1:
                        mem[128] = stor16[arg1].field_0
                        idx = 128
                        s = 0
                        while stor16[arg1].field_1 + 96 > idx:
                            mem[idx + 32] = stor16[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor16[arg1].field_0, data=mem[128 len ceil32(stor16[arg1].field_1)])
                    mem[128] = 256 * stor16[arg1].field_8
            else:
                if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if stor16[arg1].field_1:
                    if 31 < stor16[arg1].field_1:
                        mem[128] = stor16[arg1].field_0
                        idx = 128
                        s = 0
                        while stor16[arg1].field_1 + 96 > idx:
                            mem[idx + 32] = stor16[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor16[arg1].field_0, data=mem[128 len ceil32(stor16[arg1].field_1)])
                    mem[128] = 256 * stor16[arg1].field_8
            mem[ceil32(stor16[arg1].field_1) + 192 len ceil32(stor16[arg1].field_1)] = mem[128 len ceil32(stor16[arg1].field_1)]
            if ceil32(stor16[arg1].field_1) > stor16[arg1].field_1:
                mem[ceil32(stor16[arg1].field_1) + stor16[arg1].field_1 + 192] = 0
            return Array(len=stor16[arg1].field_0, data=mem[128 len ceil32(stor16[arg1].field_1)], mem[(2 * ceil32(stor16[arg1].field_1)) + 192 len 2 * ceil32(stor16[arg1].field_1)]), 
        if not arg1:
            mem[96] = 1
            mem[128] = '0'
            if bool(stor2.length):
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor2.length):
                    mem[192] = Mask(248, 8, stor2.length)
                else:
                    if bool(stor2.length) != 1:
                        mem[64] = 6
                        _447 = mem[160]
                        mem[38] = mem[160]
                        mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_447) > _447:
                            mem[_447 + 70] = 0
                        return memory
                          from mem[64]
                           len ceil32(_447) + -mem[64] + 70
                    idx = 0
                    s = 0
                    while idx < stor2.length.field_1:
                        mem[idx + 192] = stor2[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[stor2.length.field_1 + 192] = '0'
                mem[stor2.length.field_1 + 193] = '.json'
                mem[stor2.length.field_1 + 198] = 32
                mem[stor2.length.field_1 + 230] = mem[160]
                mem[stor2.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[stor2.length.field_1 + mem[160] + 262] = 0
                return Array(len=mem[160], data=mem[stor2.length.field_1 + 262 len ceil32(mem[160])])
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor2.length):
                mem[192] = Mask(248, 8, stor2.length)
            else:
                if bool(stor2.length) != 1:
                    mem[64] = 6
                    _449 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_449) > _449:
                        mem[_449 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_449) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor2.length.field_1:
                    mem[idx + 192] = stor2[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor2.length.field_1 + 192] = '0'
            mem[stor2.length.field_1 + 193] = '.json'
            mem[stor2.length.field_1 + 198] = 32
            mem[stor2.length.field_1 + 230] = mem[160]
            mem[stor2.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor2.length.field_1 + mem[160] + 262] = 0
            return Array(len=mem[160], data=mem[stor2.length.field_1 + 262 len ceil32(mem[160])])
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
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if not t:
                    revert with 'NH{q', 17
                if t - 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _942 = mem[64]
            if bool(stor2.length):
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor2.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                    _1018 = mem[96]
                    mem[mem[64] + stor2.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[mem[64] + stor2.length.field_1 + mem[96] + 32] = '.json'
                    if ceil32(mem[96]) <= mem[96]:
                        _1438 = mem[64]
                        mem[64] = _942 + stor2.length.field_1 + _1018 + 37
                        mem[_942 + stor2.length.field_1 + _1018 + 37] = 32
                        _1510 = mem[_1438]
                        mem[_942 + stor2.length.field_1 + _1018 + 69] = mem[_1438]
                        mem[_942 + stor2.length.field_1 + _1018 + 101 len ceil32(_1510)] = mem[_1438 + 32 len ceil32(_1510)]
                        if ceil32(_1510) > _1510:
                            mem[_942 + stor2.length.field_1 + _1018 + _1510 + 101] = 0
                        return 32, mem[_942 + stor2.length.field_1 + _1018 + 69 len ceil32(_1510) + 32]
                    _1462 = mem[64]
                    mem[64] = _942 + stor2.length.field_1 + _1018 + 37
                    mem[_942 + stor2.length.field_1 + _1018 + 37] = 32
                    _1526 = mem[_1462]
                    mem[_942 + stor2.length.field_1 + _1018 + 69] = mem[_1462]
                    mem[_942 + stor2.length.field_1 + _1018 + 101 len ceil32(_1526)] = mem[_1462 + 32 len ceil32(_1526)]
                    if ceil32(_1526) > _1526:
                        mem[_942 + stor2.length.field_1 + _1018 + _1526 + 101] = 0
                    return 32, mem[_942 + stor2.length.field_1 + _1018 + 69 len ceil32(_1526) + 32]
                if bool(stor2.length) != 1:
                    _1026 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_1026] = '.json'
                    if ceil32(_1026) <= _1026:
                        _1440 = mem[64]
                        mem[64] = _1026 + 5
                        mem[_1026 + 5] = 32
                        _1511 = mem[_1440]
                        mem[_1026 + 37] = mem[_1440]
                        mem[_1026 + 69 len ceil32(_1511)] = mem[_1440 + 32 len ceil32(_1511)]
                        if ceil32(_1511) > _1511:
                            mem[_1026 + _1511 + 69] = 0
                        return 32, mem[_1026 + 37 len ceil32(_1511) + 32]
                    _1463 = mem[64]
                    mem[64] = _1026 + 5
                    mem[_1026 + 5] = 32
                    _1527 = mem[_1463]
                    mem[_1026 + 37] = mem[_1463]
                    mem[_1026 + 69 len ceil32(_1527)] = mem[_1463 + 32 len ceil32(_1527)]
                    if ceil32(_1527) > _1527:
                        mem[_1026 + _1527 + 69] = 0
                    return 32, mem[_1026 + 37 len ceil32(_1527) + 32]
                mem[0] = 2
                idx = 0
                s = 0
                while idx < stor2.length.field_1:
                    mem[_942 + idx + 32] = stor2[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _1414 = mem[96]
                mem[_942 + stor2.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_942 + stor2.length.field_1 + _1414 + 32] = '.json'
                if ceil32(_1414) <= _1414:
                    _1838 = mem[64]
                    mem[64] = _942 + stor2.length.field_1 + _1414 + 37
                    mem[_942 + stor2.length.field_1 + _1414 + 37] = 32
                    _1870 = mem[_1838]
                    mem[_942 + stor2.length.field_1 + _1414 + 69] = mem[_1838]
                    mem[_942 + stor2.length.field_1 + _1414 + 101 len ceil32(_1870)] = mem[_1838 + 32 len ceil32(_1870)]
                    if ceil32(_1870) > _1870:
                        mem[_942 + stor2.length.field_1 + _1414 + _1870 + 101] = 0
                    return 32, mem[_942 + stor2.length.field_1 + _1414 + 69 len ceil32(_1870) + 32]
                _1846 = mem[64]
                mem[64] = _942 + stor2.length.field_1 + _1414 + 37
                mem[_942 + stor2.length.field_1 + _1414 + 37] = 32
                _1878 = mem[_1846]
                mem[_942 + stor2.length.field_1 + _1414 + 69] = mem[_1846]
                mem[_942 + stor2.length.field_1 + _1414 + 101 len ceil32(_1878)] = mem[_1846 + 32 len ceil32(_1878)]
                if ceil32(_1878) > _1878:
                    mem[_942 + stor2.length.field_1 + _1414 + _1878 + 101] = 0
                return 32, mem[_942 + stor2.length.field_1 + _1414 + 69 len ceil32(_1878) + 32]
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor2.length):
                mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                _1027 = mem[96]
                mem[mem[64] + stor2.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_942 + stor2.length.field_1 + _1027 + 32] = '.json'
                if ceil32(_1027) <= _1027:
                    _1441 = mem[64]
                    mem[64] = _942 + stor2.length.field_1 + _1027 + 37
                    mem[_942 + stor2.length.field_1 + _1027 + 37] = 32
                    _1512 = mem[_1441]
                    mem[_942 + stor2.length.field_1 + _1027 + 69] = mem[_1441]
                    mem[_942 + stor2.length.field_1 + _1027 + 101 len ceil32(_1512)] = mem[_1441 + 32 len ceil32(_1512)]
                    if ceil32(_1512) > _1512:
                        mem[_942 + stor2.length.field_1 + _1027 + _1512 + 101] = 0
                    return 32, mem[_942 + stor2.length.field_1 + _1027 + 69 len ceil32(_1512) + 32]
                _1464 = mem[64]
                mem[64] = _942 + stor2.length.field_1 + _1027 + 37
                mem[_942 + stor2.length.field_1 + _1027 + 37] = 32
                _1528 = mem[_1464]
                mem[_942 + stor2.length.field_1 + _1027 + 69] = mem[_1464]
                mem[_942 + stor2.length.field_1 + _1027 + 101 len ceil32(_1528)] = mem[_1464 + 32 len ceil32(_1528)]
                if ceil32(_1528) > _1528:
                    mem[_942 + stor2.length.field_1 + _1027 + _1528 + 101] = 0
                return 32, mem[_942 + stor2.length.field_1 + _1027 + 69 len ceil32(_1528) + 32]
            if bool(stor2.length) != 1:
                _1038 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1038] = '.json'
                if ceil32(_1038) <= _1038:
                    _1443 = mem[64]
                    mem[64] = _1038 + 5
                    mem[_1038 + 5] = 32
                    _1513 = mem[_1443]
                    mem[_1038 + 37] = mem[_1443]
                    mem[_1038 + 69 len ceil32(_1513)] = mem[_1443 + 32 len ceil32(_1513)]
                    if ceil32(_1513) > _1513:
                        mem[_1038 + _1513 + 69] = 0
                    return 32, mem[_1038 + 37 len ceil32(_1513) + 32]
                _1465 = mem[64]
                mem[64] = _1038 + 5
                mem[_1038 + 5] = 32
                _1529 = mem[_1465]
                mem[_1038 + 37] = mem[_1465]
                mem[_1038 + 69 len ceil32(_1529)] = mem[_1465 + 32 len ceil32(_1529)]
                if ceil32(_1529) > _1529:
                    mem[_1038 + _1529 + 69] = 0
                return 32, mem[_1038 + 37 len ceil32(_1529) + 32]
            mem[0] = 2
            idx = 0
            s = 0
            while idx < stor2.length.field_1:
                mem[_942 + idx + 32] = stor2[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1415 = mem[96]
            mem[_942 + stor2.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_942 + stor2.length.field_1 + _1415 + 32] = '.json'
            if ceil32(_1415) <= _1415:
                _1839 = mem[64]
                mem[64] = _942 + stor2.length.field_1 + _1415 + 37
                mem[_942 + stor2.length.field_1 + _1415 + 37] = 32
                _1871 = mem[_1839]
                mem[_942 + stor2.length.field_1 + _1415 + 69] = mem[_1839]
                mem[_942 + stor2.length.field_1 + _1415 + 101 len ceil32(_1871)] = mem[_1839 + 32 len ceil32(_1871)]
                if ceil32(_1871) > _1871:
                    mem[_942 + stor2.length.field_1 + _1415 + _1871 + 101] = 0
                return 32, mem[_942 + stor2.length.field_1 + _1415 + 69 len ceil32(_1871) + 32]
            _1847 = mem[64]
            mem[64] = _942 + stor2.length.field_1 + _1415 + 37
            mem[_942 + stor2.length.field_1 + _1415 + 37] = 32
            _1879 = mem[_1847]
            mem[_942 + stor2.length.field_1 + _1415 + 69] = mem[_1847]
            mem[_942 + stor2.length.field_1 + _1415 + 101 len ceil32(_1879)] = mem[_1847 + 32 len ceil32(_1879)]
            if ceil32(_1879) > _1879:
                mem[_942 + stor2.length.field_1 + _1415 + _1879 + 101] = 0
            return 32, mem[_942 + stor2.length.field_1 + _1415 + 69 len ceil32(_1879) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if not t:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _943 = mem[64]
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor2.length):
                mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                _1019 = mem[96]
                mem[mem[64] + stor2.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + stor2.length.field_1 + mem[96] + 32] = '.json'
                if ceil32(mem[96]) <= mem[96]:
                    _1444 = mem[64]
                    mem[64] = _943 + stor2.length.field_1 + _1019 + 37
                    mem[_943 + stor2.length.field_1 + _1019 + 37] = 32
                    _1514 = mem[_1444]
                    mem[_943 + stor2.length.field_1 + _1019 + 69] = mem[_1444]
                    mem[_943 + stor2.length.field_1 + _1019 + 101 len ceil32(_1514)] = mem[_1444 + 32 len ceil32(_1514)]
                    if ceil32(_1514) > _1514:
                        mem[_943 + stor2.length.field_1 + _1019 + _1514 + 101] = 0
                    return 32, mem[_943 + stor2.length.field_1 + _1019 + 69 len ceil32(_1514) + 32]
                _1466 = mem[64]
                mem[64] = _943 + stor2.length.field_1 + _1019 + 37
                mem[_943 + stor2.length.field_1 + _1019 + 37] = 32
                _1530 = mem[_1466]
                mem[_943 + stor2.length.field_1 + _1019 + 69] = mem[_1466]
                mem[_943 + stor2.length.field_1 + _1019 + 101 len ceil32(_1530)] = mem[_1466 + 32 len ceil32(_1530)]
                if ceil32(_1530) > _1530:
                    mem[_943 + stor2.length.field_1 + _1019 + _1530 + 101] = 0
                return 32, mem[_943 + stor2.length.field_1 + _1019 + 69 len ceil32(_1530) + 32]
            if bool(stor2.length) != 1:
                _1028 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1028] = '.json'
                if ceil32(_1028) <= _1028:
                    _1446 = mem[64]
                    mem[64] = _1028 + 5
                    mem[_1028 + 5] = 32
                    _1515 = mem[_1446]
                    mem[_1028 + 37] = mem[_1446]
                    mem[_1028 + 69 len ceil32(_1515)] = mem[_1446 + 32 len ceil32(_1515)]
                    if ceil32(_1515) > _1515:
                        mem[_1028 + _1515 + 69] = 0
                    return 32, mem[_1028 + 37 len ceil32(_1515) + 32]
                _1467 = mem[64]
                mem[64] = _1028 + 5
                mem[_1028 + 5] = 32
                _1531 = mem[_1467]
                mem[_1028 + 37] = mem[_1467]
                mem[_1028 + 69 len ceil32(_1531)] = mem[_1467 + 32 len ceil32(_1531)]
                if ceil32(_1531) > _1531:
                    mem[_1028 + _1531 + 69] = 0
                return 32, mem[_1028 + 37 len ceil32(_1531) + 32]
            mem[0] = 2
            idx = 0
            s = 0
            while idx < stor2.length.field_1:
                mem[_943 + idx + 32] = stor2[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1416 = mem[96]
            mem[_943 + stor2.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_943 + stor2.length.field_1 + _1416 + 32] = '.json'
            if ceil32(_1416) <= _1416:
                _1840 = mem[64]
                mem[64] = _943 + stor2.length.field_1 + _1416 + 37
                mem[_943 + stor2.length.field_1 + _1416 + 37] = 32
                _1872 = mem[_1840]
                mem[_943 + stor2.length.field_1 + _1416 + 69] = mem[_1840]
                mem[_943 + stor2.length.field_1 + _1416 + 101 len ceil32(_1872)] = mem[_1840 + 32 len ceil32(_1872)]
                if ceil32(_1872) > _1872:
                    mem[_943 + stor2.length.field_1 + _1416 + _1872 + 101] = 0
                return 32, mem[_943 + stor2.length.field_1 + _1416 + 69 len ceil32(_1872) + 32]
            _1848 = mem[64]
            mem[64] = _943 + stor2.length.field_1 + _1416 + 37
            mem[_943 + stor2.length.field_1 + _1416 + 37] = 32
            _1880 = mem[_1848]
            mem[_943 + stor2.length.field_1 + _1416 + 69] = mem[_1848]
            mem[_943 + stor2.length.field_1 + _1416 + 101 len ceil32(_1880)] = mem[_1848 + 32 len ceil32(_1880)]
            if ceil32(_1880) > _1880:
                mem[_943 + stor2.length.field_1 + _1416 + _1880 + 101] = 0
            return 32, mem[_943 + stor2.length.field_1 + _1416 + 69 len ceil32(_1880) + 32]
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor2.length):
            mem[mem[64] + 32] = Mask(248, 8, stor2.length)
            _1029 = mem[96]
            mem[mem[64] + stor2.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_943 + stor2.length.field_1 + _1029 + 32] = '.json'
            if ceil32(_1029) <= _1029:
                _1447 = mem[64]
                mem[64] = _943 + stor2.length.field_1 + _1029 + 37
                mem[_943 + stor2.length.field_1 + _1029 + 37] = 32
                _1516 = mem[_1447]
                mem[_943 + stor2.length.field_1 + _1029 + 69] = mem[_1447]
                mem[_943 + stor2.length.field_1 + _1029 + 101 len ceil32(_1516)] = mem[_1447 + 32 len ceil32(_1516)]
                if ceil32(_1516) > _1516:
                    mem[_943 + stor2.length.field_1 + _1029 + _1516 + 101] = 0
                return 32, mem[_943 + stor2.length.field_1 + _1029 + 69 len ceil32(_1516) + 32]
            _1468 = mem[64]
            mem[64] = _943 + stor2.length.field_1 + _1029 + 37
            mem[_943 + stor2.length.field_1 + _1029 + 37] = 32
            _1532 = mem[_1468]
            mem[_943 + stor2.length.field_1 + _1029 + 69] = mem[_1468]
            mem[_943 + stor2.length.field_1 + _1029 + 101 len ceil32(_1532)] = mem[_1468 + 32 len ceil32(_1532)]
            if ceil32(_1532) > _1532:
                mem[_943 + stor2.length.field_1 + _1029 + _1532 + 101] = 0
            return 32, mem[_943 + stor2.length.field_1 + _1029 + 69 len ceil32(_1532) + 32]
        if bool(stor2.length) != 1:
            _1039 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1039] = '.json'
            if ceil32(_1039) <= _1039:
                _1449 = mem[64]
                mem[64] = _1039 + 5
                mem[_1039 + 5] = 32
                _1517 = mem[_1449]
                mem[_1039 + 37] = mem[_1449]
                mem[_1039 + 69 len ceil32(_1517)] = mem[_1449 + 32 len ceil32(_1517)]
                if ceil32(_1517) > _1517:
                    mem[_1039 + _1517 + 69] = 0
                return 32, mem[_1039 + 37 len ceil32(_1517) + 32]
            _1469 = mem[64]
            mem[64] = _1039 + 5
            mem[_1039 + 5] = 32
            _1533 = mem[_1469]
            mem[_1039 + 37] = mem[_1469]
            mem[_1039 + 69 len ceil32(_1533)] = mem[_1469 + 32 len ceil32(_1533)]
            if ceil32(_1533) > _1533:
                mem[_1039 + _1533 + 69] = 0
            return 32, mem[_1039 + 37 len ceil32(_1533) + 32]
        mem[0] = 2
        idx = 0
        s = 0
        while idx < stor2.length.field_1:
            mem[_943 + idx + 32] = stor2[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1417 = mem[96]
        mem[_943 + stor2.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_943 + stor2.length.field_1 + _1417 + 32] = '.json'
        if ceil32(_1417) <= _1417:
            _1841 = mem[64]
            mem[64] = _943 + stor2.length.field_1 + _1417 + 37
            mem[_943 + stor2.length.field_1 + _1417 + 37] = 32
            _1873 = mem[_1841]
            mem[_943 + stor2.length.field_1 + _1417 + 69] = mem[_1841]
            mem[_943 + stor2.length.field_1 + _1417 + 101 len ceil32(_1873)] = mem[_1841 + 32 len ceil32(_1873)]
            if ceil32(_1873) > _1873:
                mem[_943 + stor2.length.field_1 + _1417 + _1873 + 101] = 0
            return 32, mem[_943 + stor2.length.field_1 + _1417 + 69 len ceil32(_1873) + 32]
        _1849 = mem[64]
        mem[64] = _943 + stor2.length.field_1 + _1417 + 37
        mem[_943 + stor2.length.field_1 + _1417 + 37] = 32
        _1881 = mem[_1849]
        mem[_943 + stor2.length.field_1 + _1417 + 69] = mem[_1849]
        mem[_943 + stor2.length.field_1 + _1417 + 101 len ceil32(_1881)] = mem[_1849 + 32 len ceil32(_1881)]
        if ceil32(_1881) > _1881:
            mem[_943 + stor2.length.field_1 + _1417 + _1881 + 101] = 0
        return 32, mem[_943 + stor2.length.field_1 + _1417 + 69 len ceil32(_1881) + 32]
    if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor16[arg1].field_1 > 0:
        if stor16[arg1].field_0:
            if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor16[arg1].field_0:
                if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if stor16[arg1].field_1:
                    if 31 < stor16[arg1].field_1:
                        mem[128] = stor16[arg1].field_0
                        idx = 128
                        s = 0
                        while stor16[arg1].field_1 + 96 > idx:
                            mem[idx + 32] = stor16[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor16[arg1].field_1), data=mem[128 len ceil32(stor16[arg1].field_1)])
                    mem[128] = 256 * stor16[arg1].field_8
            else:
                if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if stor16[arg1].field_1:
                    if 31 < stor16[arg1].field_1:
                        mem[128] = stor16[arg1].field_0
                        idx = 128
                        s = 0
                        while stor16[arg1].field_1 + 96 > idx:
                            mem[idx + 32] = stor16[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor16[arg1].field_1), data=mem[128 len ceil32(stor16[arg1].field_1)])
                    mem[128] = 256 * stor16[arg1].field_8
            mem[ceil32(stor16[arg1].field_1) + 192 len ceil32(stor16[arg1].field_1)] = mem[128 len ceil32(stor16[arg1].field_1)]
            if ceil32(stor16[arg1].field_1) > stor16[arg1].field_1:
                mem[ceil32(stor16[arg1].field_1) + stor16[arg1].field_1 + 192] = 0
            return Array(len=2 * Mask(256, -1, stor16[arg1].field_1), data=mem[128 len ceil32(stor16[arg1].field_1)], mem[(2 * ceil32(stor16[arg1].field_1)) + 192 len 2 * ceil32(stor16[arg1].field_1)]), 
        if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor16[arg1].field_0:
            if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor16[arg1].field_1:
                if 31 < stor16[arg1].field_1:
                    mem[128] = stor16[arg1].field_0
                    idx = 128
                    s = 0
                    while stor16[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor16[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor16[arg1].field_0, data=mem[128 len ceil32(stor16[arg1].field_1)])
                mem[128] = 256 * stor16[arg1].field_8
        else:
            if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor16[arg1].field_1:
                if 31 < stor16[arg1].field_1:
                    mem[128] = stor16[arg1].field_0
                    idx = 128
                    s = 0
                    while stor16[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor16[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor16[arg1].field_0, data=mem[128 len ceil32(stor16[arg1].field_1)])
                mem[128] = 256 * stor16[arg1].field_8
        mem[ceil32(stor16[arg1].field_1) + 192 len ceil32(stor16[arg1].field_1)] = mem[128 len ceil32(stor16[arg1].field_1)]
        if ceil32(stor16[arg1].field_1) > stor16[arg1].field_1:
            mem[ceil32(stor16[arg1].field_1) + stor16[arg1].field_1 + 192] = 0
        return Array(len=stor16[arg1].field_0, data=mem[128 len ceil32(stor16[arg1].field_1)], mem[(2 * ceil32(stor16[arg1].field_1)) + 192 len 2 * ceil32(stor16[arg1].field_1)]), 
    if not arg1:
        mem[96] = 1
        mem[128] = '0'
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor2.length):
                mem[192] = Mask(248, 8, stor2.length)
            else:
                if bool(stor2.length) != 1:
                    mem[64] = 6
                    _451 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_451) > _451:
                        mem[_451 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_451) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor2.length.field_1:
                    mem[idx + 192] = stor2[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor2.length.field_1 + 192] = '0'
            mem[stor2.length.field_1 + 193] = '.json'
            mem[stor2.length.field_1 + 198] = 32
            mem[stor2.length.field_1 + 230] = mem[160]
            mem[stor2.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor2.length.field_1 + mem[160] + 262] = 0
            return Array(len=mem[160], data=mem[stor2.length.field_1 + 262 len ceil32(mem[160])])
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor2.length):
            mem[192] = Mask(248, 8, stor2.length)
        else:
            if bool(stor2.length) != 1:
                mem[64] = 6
                _453 = mem[160]
                mem[38] = mem[160]
                mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_453) > _453:
                    mem[_453 + 70] = 0
                return memory
                  from mem[64]
                   len ceil32(_453) + -mem[64] + 70
            idx = 0
            s = 0
            while idx < stor2.length.field_1:
                mem[idx + 192] = stor2[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor2.length.field_1 + 192] = '0'
        mem[stor2.length.field_1 + 193] = '.json'
        mem[stor2.length.field_1 + 198] = 32
        mem[stor2.length.field_1 + 230] = mem[160]
        mem[stor2.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[stor2.length.field_1 + mem[160] + 262] = 0
        return Array(len=mem[160], data=mem[stor2.length.field_1 + 262 len ceil32(mem[160])])
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
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if not t:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _944 = mem[64]
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor2.length):
                mem[mem[64] + 32] = Mask(248, 8, stor2.length)
                _1022 = mem[96]
                mem[mem[64] + stor2.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + stor2.length.field_1 + mem[96] + 32] = '.json'
                if ceil32(mem[96]) <= mem[96]:
                    _1450 = mem[64]
                    mem[64] = _944 + stor2.length.field_1 + _1022 + 37
                    mem[_944 + stor2.length.field_1 + _1022 + 37] = 32
                    _1518 = mem[_1450]
                    mem[_944 + stor2.length.field_1 + _1022 + 69] = mem[_1450]
                    mem[_944 + stor2.length.field_1 + _1022 + 101 len ceil32(_1518)] = mem[_1450 + 32 len ceil32(_1518)]
                    if ceil32(_1518) > _1518:
                        mem[_944 + stor2.length.field_1 + _1022 + _1518 + 101] = 0
                    return 32, mem[_944 + stor2.length.field_1 + _1022 + 69 len ceil32(_1518) + 32]
                _1470 = mem[64]
                mem[64] = _944 + stor2.length.field_1 + _1022 + 37
                mem[_944 + stor2.length.field_1 + _1022 + 37] = 32
                _1534 = mem[_1470]
                mem[_944 + stor2.length.field_1 + _1022 + 69] = mem[_1470]
                mem[_944 + stor2.length.field_1 + _1022 + 101 len ceil32(_1534)] = mem[_1470 + 32 len ceil32(_1534)]
                if ceil32(_1534) > _1534:
                    mem[_944 + stor2.length.field_1 + _1022 + _1534 + 101] = 0
                return 32, mem[_944 + stor2.length.field_1 + _1022 + 69 len ceil32(_1534) + 32]
            if bool(stor2.length) != 1:
                _1032 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1032] = '.json'
                if ceil32(_1032) <= _1032:
                    _1452 = mem[64]
                    mem[64] = _1032 + 5
                    mem[_1032 + 5] = 32
                    _1519 = mem[_1452]
                    mem[_1032 + 37] = mem[_1452]
                    mem[_1032 + 69 len ceil32(_1519)] = mem[_1452 + 32 len ceil32(_1519)]
                    if ceil32(_1519) > _1519:
                        mem[_1032 + _1519 + 69] = 0
                    return 32, mem[_1032 + 37 len ceil32(_1519) + 32]
                _1471 = mem[64]
                mem[64] = _1032 + 5
                mem[_1032 + 5] = 32
                _1535 = mem[_1471]
                mem[_1032 + 37] = mem[_1471]
                mem[_1032 + 69 len ceil32(_1535)] = mem[_1471 + 32 len ceil32(_1535)]
                if ceil32(_1535) > _1535:
                    mem[_1032 + _1535 + 69] = 0
                return 32, mem[_1032 + 37 len ceil32(_1535) + 32]
            mem[0] = 2
            idx = 0
            s = 0
            while idx < stor2.length.field_1:
                mem[_944 + idx + 32] = stor2[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1418 = mem[96]
            mem[_944 + stor2.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_944 + stor2.length.field_1 + _1418 + 32] = '.json'
            if ceil32(_1418) <= _1418:
                _1842 = mem[64]
                mem[64] = _944 + stor2.length.field_1 + _1418 + 37
                mem[_944 + stor2.length.field_1 + _1418 + 37] = 32
                _1874 = mem[_1842]
                mem[_944 + stor2.length.field_1 + _1418 + 69] = mem[_1842]
                mem[_944 + stor2.length.field_1 + _1418 + 101 len ceil32(_1874)] = mem[_1842 + 32 len ceil32(_1874)]
                if ceil32(_1874) > _1874:
                    mem[_944 + stor2.length.field_1 + _1418 + _1874 + 101] = 0
                return 32, mem[_944 + stor2.length.field_1 + _1418 + 69 len ceil32(_1874) + 32]
            _1850 = mem[64]
            mem[64] = _944 + stor2.length.field_1 + _1418 + 37
            mem[_944 + stor2.length.field_1 + _1418 + 37] = 32
            _1882 = mem[_1850]
            mem[_944 + stor2.length.field_1 + _1418 + 69] = mem[_1850]
            mem[_944 + stor2.length.field_1 + _1418 + 101 len ceil32(_1882)] = mem[_1850 + 32 len ceil32(_1882)]
            if ceil32(_1882) > _1882:
                mem[_944 + stor2.length.field_1 + _1418 + _1882 + 101] = 0
            return 32, mem[_944 + stor2.length.field_1 + _1418 + 69 len ceil32(_1882) + 32]
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor2.length):
            mem[mem[64] + 32] = Mask(248, 8, stor2.length)
            _1033 = mem[96]
            mem[mem[64] + stor2.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_944 + stor2.length.field_1 + _1033 + 32] = '.json'
            if ceil32(_1033) <= _1033:
                _1453 = mem[64]
                mem[64] = _944 + stor2.length.field_1 + _1033 + 37
                mem[_944 + stor2.length.field_1 + _1033 + 37] = 32
                _1520 = mem[_1453]
                mem[_944 + stor2.length.field_1 + _1033 + 69] = mem[_1453]
                mem[_944 + stor2.length.field_1 + _1033 + 101 len ceil32(_1520)] = mem[_1453 + 32 len ceil32(_1520)]
                if ceil32(_1520) > _1520:
                    mem[_944 + stor2.length.field_1 + _1033 + _1520 + 101] = 0
                return 32, mem[_944 + stor2.length.field_1 + _1033 + 69 len ceil32(_1520) + 32]
            _1472 = mem[64]
            mem[64] = _944 + stor2.length.field_1 + _1033 + 37
            mem[_944 + stor2.length.field_1 + _1033 + 37] = 32
            _1536 = mem[_1472]
            mem[_944 + stor2.length.field_1 + _1033 + 69] = mem[_1472]
            mem[_944 + stor2.length.field_1 + _1033 + 101 len ceil32(_1536)] = mem[_1472 + 32 len ceil32(_1536)]
            if ceil32(_1536) > _1536:
                mem[_944 + stor2.length.field_1 + _1033 + _1536 + 101] = 0
            return 32, mem[_944 + stor2.length.field_1 + _1033 + 69 len ceil32(_1536) + 32]
        if bool(stor2.length) != 1:
            _1040 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1040] = '.json'
            if ceil32(_1040) <= _1040:
                _1455 = mem[64]
                mem[64] = _1040 + 5
                mem[_1040 + 5] = 32
                _1521 = mem[_1455]
                mem[_1040 + 37] = mem[_1455]
                mem[_1040 + 69 len ceil32(_1521)] = mem[_1455 + 32 len ceil32(_1521)]
                if ceil32(_1521) > _1521:
                    mem[_1040 + _1521 + 69] = 0
                return 32, mem[_1040 + 37 len ceil32(_1521) + 32]
            _1473 = mem[64]
            mem[64] = _1040 + 5
            mem[_1040 + 5] = 32
            _1537 = mem[_1473]
            mem[_1040 + 37] = mem[_1473]
            mem[_1040 + 69 len ceil32(_1537)] = mem[_1473 + 32 len ceil32(_1537)]
            if ceil32(_1537) > _1537:
                mem[_1040 + _1537 + 69] = 0
            return 32, mem[_1040 + 37 len ceil32(_1537) + 32]
        mem[0] = 2
        idx = 0
        s = 0
        while idx < stor2.length.field_1:
            mem[_944 + idx + 32] = stor2[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1419 = mem[96]
        mem[_944 + stor2.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_944 + stor2.length.field_1 + _1419 + 32] = '.json'
        if ceil32(_1419) <= _1419:
            _1843 = mem[64]
            mem[64] = _944 + stor2.length.field_1 + _1419 + 37
            mem[_944 + stor2.length.field_1 + _1419 + 37] = 32
            _1875 = mem[_1843]
            mem[_944 + stor2.length.field_1 + _1419 + 69] = mem[_1843]
            mem[_944 + stor2.length.field_1 + _1419 + 101 len ceil32(_1875)] = mem[_1843 + 32 len ceil32(_1875)]
            if ceil32(_1875) > _1875:
                mem[_944 + stor2.length.field_1 + _1419 + _1875 + 101] = 0
            return 32, mem[_944 + stor2.length.field_1 + _1419 + 69 len ceil32(_1875) + 32]
        _1851 = mem[64]
        mem[64] = _944 + stor2.length.field_1 + _1419 + 37
        mem[_944 + stor2.length.field_1 + _1419 + 37] = 32
        _1883 = mem[_1851]
        mem[_944 + stor2.length.field_1 + _1419 + 69] = mem[_1851]
        mem[_944 + stor2.length.field_1 + _1419 + 101 len ceil32(_1883)] = mem[_1851 + 32 len ceil32(_1883)]
        if ceil32(_1883) > _1883:
            mem[_944 + stor2.length.field_1 + _1419 + _1883 + 101] = 0
        return 32, mem[_944 + stor2.length.field_1 + _1419 + 69 len ceil32(_1883) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if not t:
            revert with 'NH{q', 17
        if t - 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _945 = mem[64]
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor2.length):
            mem[mem[64] + 32] = Mask(248, 8, stor2.length)
            _1023 = mem[96]
            mem[mem[64] + stor2.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + stor2.length.field_1 + mem[96] + 32] = '.json'
            if ceil32(mem[96]) <= mem[96]:
                _1456 = mem[64]
                mem[64] = _945 + stor2.length.field_1 + _1023 + 37
                mem[_945 + stor2.length.field_1 + _1023 + 37] = 32
                _1522 = mem[_1456]
                mem[_945 + stor2.length.field_1 + _1023 + 69] = mem[_1456]
                mem[_945 + stor2.length.field_1 + _1023 + 101 len ceil32(_1522)] = mem[_1456 + 32 len ceil32(_1522)]
                if ceil32(_1522) > _1522:
                    mem[_945 + stor2.length.field_1 + _1023 + _1522 + 101] = 0
                return 32, mem[_945 + stor2.length.field_1 + _1023 + 69 len ceil32(_1522) + 32]
            _1474 = mem[64]
            mem[64] = _945 + stor2.length.field_1 + _1023 + 37
            mem[_945 + stor2.length.field_1 + _1023 + 37] = 32
            _1538 = mem[_1474]
            mem[_945 + stor2.length.field_1 + _1023 + 69] = mem[_1474]
            mem[_945 + stor2.length.field_1 + _1023 + 101 len ceil32(_1538)] = mem[_1474 + 32 len ceil32(_1538)]
            if ceil32(_1538) > _1538:
                mem[_945 + stor2.length.field_1 + _1023 + _1538 + 101] = 0
            return 32, mem[_945 + stor2.length.field_1 + _1023 + 69 len ceil32(_1538) + 32]
        if bool(stor2.length) != 1:
            _1034 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1034] = '.json'
            if ceil32(_1034) <= _1034:
                _1458 = mem[64]
                mem[64] = _1034 + 5
                mem[_1034 + 5] = 32
                _1523 = mem[_1458]
                mem[_1034 + 37] = mem[_1458]
                mem[_1034 + 69 len ceil32(_1523)] = mem[_1458 + 32 len ceil32(_1523)]
                if ceil32(_1523) > _1523:
                    mem[_1034 + _1523 + 69] = 0
                return 32, mem[_1034 + 37 len ceil32(_1523) + 32]
            _1475 = mem[64]
            mem[64] = _1034 + 5
            mem[_1034 + 5] = 32
            _1539 = mem[_1475]
            mem[_1034 + 37] = mem[_1475]
            mem[_1034 + 69 len ceil32(_1539)] = mem[_1475 + 32 len ceil32(_1539)]
            if ceil32(_1539) > _1539:
                mem[_1034 + _1539 + 69] = 0
            return 32, mem[_1034 + 37 len ceil32(_1539) + 32]
        mem[0] = 2
        idx = 0
        s = 0
        while idx < stor2.length.field_1:
            mem[_945 + idx + 32] = stor2[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1420 = mem[96]
        mem[_945 + stor2.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_945 + stor2.length.field_1 + _1420 + 32] = '.json'
        if ceil32(_1420) <= _1420:
            _1844 = mem[64]
            mem[64] = _945 + stor2.length.field_1 + _1420 + 37
            mem[_945 + stor2.length.field_1 + _1420 + 37] = 32
            _1876 = mem[_1844]
            mem[_945 + stor2.length.field_1 + _1420 + 69] = mem[_1844]
            mem[_945 + stor2.length.field_1 + _1420 + 101 len ceil32(_1876)] = mem[_1844 + 32 len ceil32(_1876)]
            if ceil32(_1876) > _1876:
                mem[_945 + stor2.length.field_1 + _1420 + _1876 + 101] = 0
            return 32, mem[_945 + stor2.length.field_1 + _1420 + 69 len ceil32(_1876) + 32]
        _1852 = mem[64]
        mem[64] = _945 + stor2.length.field_1 + _1420 + 37
        mem[_945 + stor2.length.field_1 + _1420 + 37] = 32
        _1884 = mem[_1852]
        mem[_945 + stor2.length.field_1 + _1420 + 69] = mem[_1852]
        mem[_945 + stor2.length.field_1 + _1420 + 101 len ceil32(_1884)] = mem[_1852 + 32 len ceil32(_1884)]
        if ceil32(_1884) > _1884:
            mem[_945 + stor2.length.field_1 + _1420 + _1884 + 101] = 0
        return 32, mem[_945 + stor2.length.field_1 + _1420 + 69 len ceil32(_1884) + 32]
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor2.length):
        mem[mem[64] + 32] = Mask(248, 8, stor2.length)
        _1035 = mem[96]
        mem[mem[64] + stor2.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_945 + stor2.length.field_1 + _1035 + 32] = '.json'
        if ceil32(_1035) <= _1035:
            _1459 = mem[64]
            mem[64] = _945 + stor2.length.field_1 + _1035 + 37
            mem[_945 + stor2.length.field_1 + _1035 + 37] = 32
            _1524 = mem[_1459]
            mem[_945 + stor2.length.field_1 + _1035 + 69] = mem[_1459]
            mem[_945 + stor2.length.field_1 + _1035 + 101 len ceil32(_1524)] = mem[_1459 + 32 len ceil32(_1524)]
            if ceil32(_1524) > _1524:
                mem[_945 + stor2.length.field_1 + _1035 + _1524 + 101] = 0
            return 32, mem[_945 + stor2.length.field_1 + _1035 + 69 len ceil32(_1524) + 32]
        _1476 = mem[64]
        mem[64] = _945 + stor2.length.field_1 + _1035 + 37
        mem[_945 + stor2.length.field_1 + _1035 + 37] = 32
        _1540 = mem[_1476]
        mem[_945 + stor2.length.field_1 + _1035 + 69] = mem[_1476]
        mem[_945 + stor2.length.field_1 + _1035 + 101 len ceil32(_1540)] = mem[_1476 + 32 len ceil32(_1540)]
        if ceil32(_1540) > _1540:
            mem[_945 + stor2.length.field_1 + _1035 + _1540 + 101] = 0
        return 32, mem[_945 + stor2.length.field_1 + _1035 + 69 len ceil32(_1540) + 32]
    if bool(stor2.length) != 1:
        _1041 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_1041] = '.json'
        if ceil32(_1041) <= _1041:
            _1461 = mem[64]
            mem[64] = _1041 + 5
            mem[_1041 + 5] = 32
            _1525 = mem[_1461]
            mem[_1041 + 37] = mem[_1461]
            mem[_1041 + 69 len ceil32(_1525)] = mem[_1461 + 32 len ceil32(_1525)]
            if ceil32(_1525) > _1525:
                mem[_1041 + _1525 + 69] = 0
            return 32, mem[_1041 + 37 len ceil32(_1525) + 32]
        _1477 = mem[64]
        mem[64] = _1041 + 5
        mem[_1041 + 5] = 32
        _1541 = mem[_1477]
        mem[_1041 + 37] = mem[_1477]
        mem[_1041 + 69 len ceil32(_1541)] = mem[_1477 + 32 len ceil32(_1541)]
        if ceil32(_1541) > _1541:
            mem[_1041 + _1541 + 69] = 0
        return 32, mem[_1041 + 37 len ceil32(_1541) + 32]
    mem[0] = 2
    idx = 0
    s = 0
    while idx < stor2.length.field_1:
        mem[_945 + idx + 32] = stor2[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _1421 = mem[96]
    mem[_945 + stor2.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_945 + stor2.length.field_1 + _1421 + 32] = '.json'
    if ceil32(_1421) <= _1421:
        _1845 = mem[64]
        mem[64] = _945 + stor2.length.field_1 + _1421 + 37
        mem[_945 + stor2.length.field_1 + _1421 + 37] = 32
        _1877 = mem[_1845]
        mem[_945 + stor2.length.field_1 + _1421 + 69] = mem[_1845]
        mem[_945 + stor2.length.field_1 + _1421 + 101 len ceil32(_1877)] = mem[_1845 + 32 len ceil32(_1877)]
        if ceil32(_1877) > _1877:
            mem[_945 + stor2.length.field_1 + _1421 + _1877 + 101] = 0
        return 32, mem[_945 + stor2.length.field_1 + _1421 + 69 len ceil32(_1877) + 32]
    _1853 = mem[64]
    mem[64] = _945 + stor2.length.field_1 + _1421 + 37
    mem[_945 + stor2.length.field_1 + _1421 + 37] = 32
    _1885 = mem[_1853]
    mem[_945 + stor2.length.field_1 + _1421 + 69] = mem[_1853]
    mem[_945 + stor2.length.field_1 + _1421 + 101 len ceil32(_1885)] = mem[_1853 + 32 len ceil32(_1885)]
    if ceil32(_1885) > _1885:
        mem[_945 + stor2.length.field_1 + _1421 + _1885 + 101] = 0
    return 32, mem[_945 + stor2.length.field_1 + _1421 + 69 len ceil32(_1885) + 32]
}



}
