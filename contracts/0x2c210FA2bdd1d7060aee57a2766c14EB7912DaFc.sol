contract main {




// =====================  Runtime code  =====================


const name = 'CryptoDappers', 0

const symbol = 'CDS', 0


address nonFungibleContractAddress;
uint256 ownerCut;
mapping of struct tokenIdToAuction;
uint256 sub_28f6aa7b;
uint8 stor4;
uint8 stor4; offset 168
uint128 stor4; offset 168
address owner; offset 8
address sub_69c8de8bAddress;
array of struct stor7;
uint8 stor8;

function sub_28f6aa7b(?) {
    return sub_28f6aa7b
}

function sub_69c8de8b(?) {
    return sub_69c8de8bAddress
}

function getAuction(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require tokenIdToAuction[arg1].field_384 > 0
    return tokenIdToAuction[arg1].field_0, tokenIdToAuction[arg1].field_256, tokenIdToAuction[arg1].field_384
}

function ownerCut() {
    return ownerCut
}

function sub_87824609(?) {
    return bool(uint8(stor4.field_168))
}

function owner() {
    return owner
}

function sub_ac0de66f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenIdToAuction[arg1].field_384
}

function getCurrentPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require tokenIdToAuction[arg1].field_384 > 0
    return tokenIdToAuction[arg1].field_256
}

function getSeller(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenIdToAuction[arg1].field_0
}

function nonFungibleContract() {
    return nonFungibleContractAddress
}

function sub_e10fe958(?) {
    return bool(uint8(stor4.field_0))
}

function tokenIdToAuction(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenIdToAuction[arg1].field_0, tokenIdToAuction[arg1].field_256, tokenIdToAuction[arg1].field_384
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
}

function sub_f5bc63e8(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == owner
    stor8 = uint8(bool(arg1))
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    owner = arg1
}

function setPauseStatus(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    Mask(88, 0, stor4.field_168) = Mask(88, 0, arg1)
}

function withdrawBalance() {
    require msg.sender == owner
    call nonFungibleContractAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function setOwnerCut(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require 0 < arg1
    require arg1 < 10000
    ownerCut = arg1
}

function sub_687a4d19(?) {
    require ext_code.size(nonFungibleContractAddress)
    staticcall nonFungibleContractAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if sub_28f6aa7b > test266151307():
        revert with 'NH{q', 65
    # nil
}

function sub_214296e8(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(nonFungibleContractAddress)
    staticcall nonFungibleContractAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return not not ext_call.return_data[12 len 20]
}

function sub_2c37efa9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 <= 10000
    ownerCut = arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0x9a20483d00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    nonFungibleContractAddress = address(arg1)
}

function cancelAuctionWhenPaused(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require bool(uint8(stor4.field_168)) == 1
    require tokenIdToAuction[arg1].field_384 > 0
    require msg.sender == tokenIdToAuction[arg1].field_0
    tokenIdToAuction[arg1].field_0 = 0
    tokenIdToAuction[arg1].field_256 = 0
    tokenIdToAuction[arg1].field_384 = 0
    if not sub_28f6aa7b:
        revert with 'NH{q', 17
    sub_28f6aa7b--
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args tokenIdToAuction[arg1].field_0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit AuctionCancelled(arg1);
}

function cancelAuction(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require not uint8(stor4.field_168)
    if tokenIdToAuction[arg1].field_384 > 0:
        require msg.sender == tokenIdToAuction[arg1].field_0
        tokenIdToAuction[arg1].field_0 = 0
        tokenIdToAuction[arg1].field_256 = 0
        tokenIdToAuction[arg1].field_384 = 0
        if not sub_28f6aa7b:
            revert with 'NH{q', 17
        sub_28f6aa7b--
        require ext_code.size(nonFungibleContractAddress)
        call nonFungibleContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args tokenIdToAuction[arg1].field_0, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit AuctionCancelled(arg1);
}

function sub_435053da(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require msg.sender == owner
    require ext_code.size(address(arg1))
    staticcall address(arg1).supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0x9a20483d00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    nonFungibleContractAddress = address(arg1)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xe10fe958 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require bool(ext_call.return_data[0]) == 1
    sub_69c8de8bAddress = address(arg2)
}

function sub_745862bf(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == owner
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor7[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor7.length = 0
            idx = 0
            while stor7.length.field_1 + 31 / 32 > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor7[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor7.length = 0
            idx = 0
            while stor7.length.field_1 + 31 / 32 > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_3b358bf3(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require not uint8(stor4.field_168)
    require arg2 == uint128(arg2)
    require ext_code.size(nonFungibleContractAddress)
    staticcall nonFungibleContractAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == address(arg3)
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg3), address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    tokenIdToAuction[arg1].field_0 = address(arg3)
    tokenIdToAuction[arg1].field_256 = uint128(arg2)
    tokenIdToAuction[arg1].field_384 = uint64(block.timestamp)
    if sub_28f6aa7b == -1:
        revert with 'NH{q', 17
    sub_28f6aa7b++
    emit AuctionCreated(arg1, arg2 << 128, uint64(block.timestamp));
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require not uint8(stor4.field_168)
    require tokenIdToAuction[arg1].field_384 > 0
    require msg.value >= tokenIdToAuction[arg1].field_256
    require uint128(msg.value - tokenIdToAuction[arg1].field_256) == msg.value - tokenIdToAuction[arg1].field_256
    tokenIdToAuction[arg1].field_0 = 0
    tokenIdToAuction[arg1].field_256 = 0
    tokenIdToAuction[arg1].field_384 = 0
    if not sub_28f6aa7b:
        revert with 'NH{q', 17
    sub_28f6aa7b--
    if tokenIdToAuction[arg1].field_256 <= 0:
        emit AuctionSuccessful(arg1, tokenIdToAuction[arg1].field_256, msg.sender);
        call msg.sender with:
           value msg.value - tokenIdToAuction[arg1].field_256 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if tokenIdToAuction[arg1].field_256 and ownerCut > -1 / tokenIdToAuction[arg1].field_256:
            revert with 'NH{q', 17
        if tokenIdToAuction[arg1].field_256 < tokenIdToAuction[arg1].field_256 * ownerCut / 10000:
            revert with 'NH{q', 17
        call tokenIdToAuction[arg1].field_0 with:
           value tokenIdToAuction[arg1].field_256 - (tokenIdToAuction[arg1].field_256 * ownerCut / 10000) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit AuctionSuccessful(arg1, tokenIdToAuction[arg1].field_256, msg.sender);
        call msg.sender with:
           value msg.value - tokenIdToAuction[arg1].field_256 wei
             gas 2300 * is_zero(value) wei
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor8) != 1:
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if bool(stor7.length):
                if bool(stor7.length) == stor7.length.field_1 < 32:
                    revert with 'NH{q', 34
                if stor7.length.field_1:
                    if 31 < stor7.length.field_1:
                        mem[128] = uint256(stor7.field_0)
                        idx = 128
                        s = 0
                        while stor7.length.field_1 + 96 > idx:
                            mem[idx + 32] = stor7[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                    mem[128] = 256 * stor7.length.field_8
            else:
                if bool(stor7.length) == stor7.length.field_1 < 32:
                    revert with 'NH{q', 34
                if stor7.length.field_1:
                    if 31 < stor7.length.field_1:
                        mem[128] = uint256(stor7.field_0)
                        idx = 128
                        s = 0
                        while stor7.length.field_1 + 96 > idx:
                            mem[idx + 32] = stor7[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                    mem[128] = 256 * stor7.length.field_8
            mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
            if ceil32(stor7.length.field_1) > stor7.length.field_1:
                mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
            return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
        if ceil32(stor7.length.field_1) > stor7.length.field_1:
            mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
        return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
    mem[100] = arg1
    require ext_code.size(nonFungibleContractAddress)
    staticcall nonFungibleContractAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require not not ext_call.return_data[12 len 20] == 1
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[ceil32(return_data.size) + 128] = uint256(stor7.field_0)
                    idx = ceil32(return_data.size) + 128
                    s = 0
                    while ceil32(return_data.size) + stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[ceil32(return_data.size) + 128 len ceil32(stor7.length.field_1)]), 
                mem[ceil32(return_data.size) + 128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[ceil32(return_data.size) + 128] = uint256(stor7.field_0)
                    idx = ceil32(return_data.size) + 128
                    s = 0
                    while ceil32(return_data.size) + stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[ceil32(return_data.size) + 128 len ceil32(stor7.length.field_1)]), 
                mem[ceil32(return_data.size) + 128] = 256 * stor7.length.field_8
        mem[ceil32(return_data.size) + ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[ceil32(return_data.size) + 128 len ceil32(stor7.length.field_1)]
        if ceil32(stor7.length.field_1) > stor7.length.field_1:
            mem[ceil32(return_data.size) + ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[ceil32(return_data.size) + 128 len ceil32(stor7.length.field_1)], mem[ceil32(return_data.size) + (2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[ceil32(return_data.size) + 128] = uint256(stor7.field_0)
                idx = ceil32(return_data.size) + 128
                s = 0
                while ceil32(return_data.size) + stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[ceil32(return_data.size) + 128 len ceil32(stor7.length.field_1)])
            mem[ceil32(return_data.size) + 128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[ceil32(return_data.size) + 128] = uint256(stor7.field_0)
                idx = ceil32(return_data.size) + 128
                s = 0
                while ceil32(return_data.size) + stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[ceil32(return_data.size) + 128 len ceil32(stor7.length.field_1)])
            mem[ceil32(return_data.size) + 128] = 256 * stor7.length.field_8
    mem[ceil32(return_data.size) + ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[ceil32(return_data.size) + 128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(return_data.size) + ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[ceil32(return_data.size) + 128 len ceil32(stor7.length.field_1)], mem[ceil32(return_data.size) + (2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}



}
