contract main {




// =====================  Runtime code  =====================


#
#  - sub_3912fc85(?)
#
address owner;
array of uint256 stor1;
array of struct stor2;
array of uint256 sub_61cf4863;
array of uint256 sub_15f4d22a;
mapping of uint256 sub_f7cae643;
uint256 sub_297dc18c;
uint256 sub_74ee6d4f;
uint256 sub_aaf51b7e;
uint256 totalVolume;
uint256 totalSales;
uint256 sub_3fe1e117;
uint256 sub_6d0c689e;
uint8 stor13;
uint8 stor13; offset 8
uint256 stor13; offset 8

function sub_15f4d22a(?) {
    return sub_15f4d22a[address(msg.sender)]
}

function sub_297dc18c(?) {
    return sub_297dc18c
}

function sub_3fe1e117(?) {
    return sub_3fe1e117
}

function totalVolume() {
    return totalVolume
}

function sub_61cf4863(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_61cf4863.length
    return sub_61cf4863[arg1]
}

function totalSales() {
    return totalSales
}

function sub_6d0c689e(?) {
    return sub_6d0c689e
}

function sub_741520b0(?) {
    return sub_61cf4863.length
}

function sub_74ee6d4f(?) {
    return sub_74ee6d4f
}

function owner() {
    return owner
}

function sub_aaf51b7e(?) {
    return sub_aaf51b7e
}

function sub_aca20f07(?) {
    return bool(uint8(stor13.field_8))
}

function sub_b2245558(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_15f4d22a[arg1]
    return sub_15f4d22a[arg1][arg2]
}

function totalListings() {
    return stor2.length
}

function isMarketOpen() {
    return bool(uint8(stor13.field_0))
}

function sub_f7cae643(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_f7cae643[arg1]
}

function _fallback() payable {
    revert
}

function openMarket() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor13.field_0) = 1
}

function closeMarket() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor13.field_0) = 0
}

function sub_607133a0(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor13.field_8) = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdrawableBalance() {
    if eth.balance(this.address) <= sub_297dc18c:
        return 0
    if eth.balance(this.address) < sub_297dc18c:
        revert with 'NH{q', 17
    return (eth.balance(this.address) - sub_297dc18c)
}

function emergencyWithdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_b9d2326e(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Give a percentage value from 0 to 100'
    if arg2 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Give a percentage value from 0 to 100'
    sub_74ee6d4f = arg1
    sub_aaf51b7e = arg2
}

function withdrawBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= sub_297dc18c:
        call msg.sender with:
             gas 2300 wei
    else:
        if eth.balance(this.address) < sub_297dc18c:
            revert with 'NH{q', 17
        call msg.sender with:
           value eth.balance(this.address) - sub_297dc18c wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_632541b4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor13.field_8):
        revert with 0, 'Only in emergency.'
    if uint8(stor13.field_0):
        revert with 0, 'Only in emergency.'
    if arg1 >= stor2.length:
        revert with 0, 'Invalid Listing'
    if stor2[arg1].field_1792:
        if stor2[arg1].field_1792 == stor2[arg1].field_1793 < 32:
            revert with 'NH{q', 34
    else:
        if stor2[arg1].field_1792 == stor2[arg1].field_1793 < 32:
            revert with 'NH{q', 34
    if stor2[arg1].field_1792:
        if stor2[arg1].field_1792 == stor2[arg1].field_1793 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_1793:
            if 31 < stor2[arg1].field_1793:
                idx = 384
                s = 0
                while stor2[arg1].field_1793 + 352 > idx:
                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor2[arg1].field_1792 == stor2[arg1].field_1793 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_1793:
            if 31 < stor2[arg1].field_1793:
                idx = 384
                s = 0
                while stor2[arg1].field_1793 + 352 > idx:
                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), stor2[arg1].field_1536, stor2[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addListing(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor13.field_0):
        revert with 0, 'Market is closed.'
    if arg1 >= 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Honorary APAs are not accepted in the marketplace'
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Invalid owner'
    stor2.length++
    stor2[stor2.length].field_0 = 1
    stor2[stor2.length].field_256 = stor2.length
    stor2[stor2.length].field_512 = arg1
    stor2[stor2.length].field_768 = arg2
    stor2[stor2.length].field_1024 = sub_61cf4863.length
    stor2[stor2.length].field_1280 = sub_15f4d22a[address(msg.sender)]
    stor2[stor2.length].field_1536 = msg.sender
    if stor2[stor2.length].field_1792:
        if stor2[stor2.length].field_1792 == stor2[stor2.length].field_1793 < 32:
            revert with 'NH{q', 34
        stor2[stor2.length].field_1792 = 0
        idx = 0
        while stor2[stor2.length].field_1793 + 31 / 32 > idx:
            stor[idx + sha3((8 * stor2.length) + ('name', 'stor2', 2) + 7)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor2[stor2.length].field_1792 == stor2[stor2.length].field_1793 < 32:
            revert with 'NH{q', 34
        stor2[stor2.length].field_1792 = 0
        idx = 0
        while stor2[stor2.length].field_1793 + 31 / 32 > idx:
            stor[idx + sha3((8 * stor2.length) + ('name', 'stor2', 2) + 7)].field_0 = 0
            idx = idx + 1
            continue 
    sub_15f4d22a[address(msg.sender)]++
    sub_15f4d22a[address(msg.sender)][sub_15f4d22a[address(msg.sender)]] = stor2.length
    sub_61cf4863.length++
    sub_61cf4863[sub_61cf4863.length] = stor2.length
    emit 0xf8566eba: 32, 1, stor2.length, arg1, arg2, sub_61cf4863.length, sub_15f4d22a[address(msg.sender)], msg.sender, 256, 0
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateListing(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= stor2.length:
        revert with 0, 'Invalid Listing'
    if not stor2[arg1].field_0:
        revert with 0, 'Listing no longer active'
    if arg1 >= stor2.length:
        revert with 'NH{q', 50
    if stor2[arg1].field_1536 != msg.sender:
        revert with 0, 'Invalid Owner'
    if arg1 >= stor2.length:
        revert with 'NH{q', 50
    stor2[arg1].field_768 = arg2
    if stor2[arg1].field_1792:
        if stor2[arg1].field_1792 == stor2[arg1].field_1793 < 32:
            revert with 'NH{q', 34
        if not stor2[arg1].field_1792:
            emit 0x6573c92d: 32, bool(stor2[arg1].field_0), stor2[arg1].field_256, stor2[arg1].field_512, stor2[arg1].field_768, stor2[arg1].field_1024, stor2[arg1].field_1280, stor2[arg1].field_1536, 256, 2 * Mask(256, -1, stor2[arg1].field_1793), Mask(248, 8, stor2[arg1].field_1792)
        else:
            if stor2[arg1].field_1792 != 1:
                emit 0x6573c92d: mem[96 len -96]
            else:
                idx = 0
                s = 0
                while idx < stor2[arg1].field_1793:
                    mem[idx + 416] = stor[s + sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x6573c92d: 32, bool(stor2[arg1].field_0), stor2[arg1].field_256, stor2[arg1].field_512, stor2[arg1].field_768, stor2[arg1].field_1024, stor2[arg1].field_1280, stor2[arg1].field_1536, 256, 2 * Mask(256, -1, stor2[arg1].field_1793), mem[416 len ceil32(stor2[arg1].field_1793)]
    else:
        if stor2[arg1].field_1792 == stor2[arg1].field_1793 < 32:
            revert with 'NH{q', 34
        if not stor2[arg1].field_1792:
            emit 0x6573c92d: 32, bool(stor2[arg1].field_0), stor2[arg1].field_256, stor2[arg1].field_512, stor2[arg1].field_768, stor2[arg1].field_1024, stor2[arg1].field_1280, stor2[arg1].field_1536, 256, stor2[arg1].field_1792, Mask(248, 8, stor2[arg1].field_1792)
        else:
            if stor2[arg1].field_1792 != 1:
                emit 0x6573c92d: mem[96 len -96]
            else:
                idx = 0
                s = 0
                while idx < stor2[arg1].field_1793:
                    mem[idx + 416] = stor[s + sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x6573c92d: 32, bool(stor2[arg1].field_0), stor2[arg1].field_256, stor2[arg1].field_512, stor2[arg1].field_768, stor2[arg1].field_1024, stor2[arg1].field_1280, stor2[arg1].field_1536, 256, stor2[arg1].field_1792, mem[416 len ceil32(stor2[arg1].field_1793)]
}

function listings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor2.length
    if stor2[arg1].field_1792:
        if stor2[arg1].field_1792 == stor2[arg1].field_1793 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_1792:
            if stor2[arg1].field_1792 == stor2[arg1].field_1793 < 32:
                revert with 'NH{q', 34
            if stor2[arg1].field_1793:
                if 31 >= stor2[arg1].field_1793:
                    mem[128] = 256 * stor2[arg1].field_1800
                else:
                    mem[128] = stor[sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_1793 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor2[arg1].field_1792 == stor2[arg1].field_1793 < 32:
                revert with 'NH{q', 34
            if stor2[arg1].field_1793:
                if 31 >= stor2[arg1].field_1793:
                    mem[128] = 256 * stor2[arg1].field_1800
                else:
                    mem[128] = stor[sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_1793 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return bool(stor2[arg1].field_0), 
               stor2[arg1].field_256,
               stor2[arg1].field_512,
               stor2[arg1].field_768,
               stor2[arg1].field_1024,
               stor2[arg1].field_1280,
               stor2[arg1].field_1536,
               Array(len=2 * Mask(256, -1, stor2[arg1].field_1793), data=mem[128 len ceil32(stor2[arg1].field_1793)])
    if stor2[arg1].field_1792 == stor2[arg1].field_1793 < 32:
        revert with 'NH{q', 34
    if stor2[arg1].field_1792:
        if stor2[arg1].field_1792 == stor2[arg1].field_1793 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_1793:
            if 31 >= stor2[arg1].field_1793:
                mem[128] = 256 * stor2[arg1].field_1800
            else:
                mem[128] = stor[sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_1793 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor2[arg1].field_1792 == stor2[arg1].field_1793 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_1793:
            if 31 >= stor2[arg1].field_1793:
                mem[128] = 256 * stor2[arg1].field_1800
            else:
                mem[128] = stor[sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_1793 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return bool(stor2[arg1].field_0), 
           stor2[arg1].field_256,
           stor2[arg1].field_512,
           stor2[arg1].field_768,
           stor2[arg1].field_1024,
           stor2[arg1].field_1280,
           stor2[arg1].field_1536,
           Array(len=stor2[arg1].field_1792, data=mem[128 len ceil32(stor2[arg1].field_1793)])
}

function cancelListing(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor2.length:
        revert with 0, 'Invalid Listing'
    if stor2[arg1].field_1792:
        if stor2[arg1].field_1792 == stor2[arg1].field_1793 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_1792:
            if stor2[arg1].field_1792 == stor2[arg1].field_1793 < 32:
                revert with 'NH{q', 34
            if stor2[arg1].field_1793:
                if 31 >= stor2[arg1].field_1793:
                    mem[384] = 256 * stor2[arg1].field_1800
                else:
                    mem[384] = stor[sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_0
                    idx = 384
                    s = 0
                    while stor2[arg1].field_1793 + 352 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor2[arg1].field_1792 == stor2[arg1].field_1793 < 32:
                revert with 'NH{q', 34
            if stor2[arg1].field_1793:
                if 31 >= stor2[arg1].field_1793:
                    mem[384] = 256 * stor2[arg1].field_1800
                else:
                    mem[384] = stor[sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_0
                    idx = 384
                    s = 0
                    while stor2[arg1].field_1793 + 352 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if not stor2[arg1].field_0:
            revert with 0, 'Listing no longer active'
        if stor2[arg1].field_1536 != msg.sender:
            revert with 0, 'Invalid Owner'
        if sub_61cf4863.length <= 0:
            revert with 0, 'There are no active listings'
        if stor2[arg1].field_1024 >= sub_61cf4863.length:
            revert with 0, 'Incorrect index'
        if sub_61cf4863.length < 1:
            revert with 'NH{q', 17
        if sub_61cf4863.length - 1 >= sub_61cf4863.length:
            revert with 'NH{q', 50
        if stor2[arg1].field_1024 >= sub_61cf4863.length:
            revert with 'NH{q', 50
        sub_61cf4863[stor2[arg1].field_1024] = sub_61cf4863[sub_61cf4863.length]
        if sub_61cf4863[stor2[arg1].field_1024] >= stor2.length:
            revert with 'NH{q', 50
        stor2[stor3[stor2[arg1].field_1024]].field_1024 = stor2[arg1].field_1024
        if not sub_61cf4863.length:
            revert with 'NH{q', 49
        sub_61cf4863[sub_61cf4863.length] = 0
        sub_61cf4863.length--
        if sub_15f4d22a[address(msg.sender)] <= 0:
            revert with 0, 'There are no active listings for this user.'
        if stor2[arg1].field_1280 >= sub_15f4d22a[address(msg.sender)]:
            revert with 0, 'Incorrect index'
        if sub_15f4d22a[address(msg.sender)] < 1:
            revert with 'NH{q', 17
        if sub_15f4d22a[address(msg.sender)] - 1 >= sub_15f4d22a[address(msg.sender)]:
            revert with 'NH{q', 50
        if stor2[arg1].field_1280 >= sub_15f4d22a[address(msg.sender)]:
            revert with 'NH{q', 50
        sub_15f4d22a[address(msg.sender)][stor2[arg1].field_1280] = sub_15f4d22a[address(msg.sender)][sub_15f4d22a[address(msg.sender)]]
        if stor2[arg1].field_1280 >= sub_15f4d22a[address(msg.sender)]:
            revert with 'NH{q', 50
        if sub_15f4d22a[address(msg.sender)][stor2[arg1].field_1280] >= stor2.length:
            revert with 'NH{q', 50
        stor2[stor4[address(msg.sender)][stor2[arg1].field_1280]].field_1280 = stor2[arg1].field_1280
        if not sub_15f4d22a[address(msg.sender)]:
            revert with 'NH{q', 49
        sub_15f4d22a[address(msg.sender)][sub_15f4d22a[address(msg.sender)]] = 0
        sub_15f4d22a[address(msg.sender)]--
        if arg1 >= stor2.length:
            revert with 'NH{q', 50
        stor2[arg1].field_0 = 0
        emit 0xe528a318: 32, bool(stor2[arg1].field_0), stor2[arg1].field_256, stor2[arg1].field_512, stor2[arg1].field_768, stor2[arg1].field_1024, stor2[arg1].field_1280, stor2[arg1].field_1536, 256, 2 * Mask(256, -1, stor2[arg1].field_1793), mem[384 len ceil32(stor2[arg1].field_1793)]
    else:
        if stor2[arg1].field_1792 == stor2[arg1].field_1793 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_1792:
            if stor2[arg1].field_1792 == stor2[arg1].field_1793 < 32:
                revert with 'NH{q', 34
            if stor2[arg1].field_1793:
                if 31 >= stor2[arg1].field_1793:
                    mem[384] = 256 * stor2[arg1].field_1800
                else:
                    mem[384] = stor[sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_0
                    idx = 384
                    s = 0
                    while stor2[arg1].field_1793 + 352 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor2[arg1].field_1792 == stor2[arg1].field_1793 < 32:
                revert with 'NH{q', 34
            if stor2[arg1].field_1793:
                if 31 >= stor2[arg1].field_1793:
                    mem[384] = 256 * stor2[arg1].field_1800
                else:
                    mem[384] = stor[sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_0
                    idx = 384
                    s = 0
                    while stor2[arg1].field_1793 + 352 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if not stor2[arg1].field_0:
            revert with 0, 'Listing no longer active'
        if stor2[arg1].field_1536 != msg.sender:
            revert with 0, 'Invalid Owner'
        if sub_61cf4863.length <= 0:
            revert with 0, 'There are no active listings'
        if stor2[arg1].field_1024 >= sub_61cf4863.length:
            revert with 0, 'Incorrect index'
        if sub_61cf4863.length < 1:
            revert with 'NH{q', 17
        if sub_61cf4863.length - 1 >= sub_61cf4863.length:
            revert with 'NH{q', 50
        if stor2[arg1].field_1024 >= sub_61cf4863.length:
            revert with 'NH{q', 50
        sub_61cf4863[stor2[arg1].field_1024] = sub_61cf4863[sub_61cf4863.length]
        if sub_61cf4863[stor2[arg1].field_1024] >= stor2.length:
            revert with 'NH{q', 50
        stor2[stor3[stor2[arg1].field_1024]].field_1024 = stor2[arg1].field_1024
        if not sub_61cf4863.length:
            revert with 'NH{q', 49
        sub_61cf4863[sub_61cf4863.length] = 0
        sub_61cf4863.length--
        if sub_15f4d22a[address(msg.sender)] <= 0:
            revert with 0, 'There are no active listings for this user.'
        if stor2[arg1].field_1280 >= sub_15f4d22a[address(msg.sender)]:
            revert with 0, 'Incorrect index'
        if sub_15f4d22a[address(msg.sender)] < 1:
            revert with 'NH{q', 17
        if sub_15f4d22a[address(msg.sender)] - 1 >= sub_15f4d22a[address(msg.sender)]:
            revert with 'NH{q', 50
        if stor2[arg1].field_1280 >= sub_15f4d22a[address(msg.sender)]:
            revert with 'NH{q', 50
        sub_15f4d22a[address(msg.sender)][stor2[arg1].field_1280] = sub_15f4d22a[address(msg.sender)][sub_15f4d22a[address(msg.sender)]]
        if stor2[arg1].field_1280 >= sub_15f4d22a[address(msg.sender)]:
            revert with 'NH{q', 50
        if sub_15f4d22a[address(msg.sender)][stor2[arg1].field_1280] >= stor2.length:
            revert with 'NH{q', 50
        stor2[stor4[address(msg.sender)][stor2[arg1].field_1280]].field_1280 = stor2[arg1].field_1280
        if not sub_15f4d22a[address(msg.sender)]:
            revert with 'NH{q', 49
        sub_15f4d22a[address(msg.sender)][sub_15f4d22a[address(msg.sender)]] = 0
        sub_15f4d22a[address(msg.sender)]--
        if arg1 >= stor2.length:
            revert with 'NH{q', 50
        stor2[arg1].field_0 = 0
        emit 0xe528a318: 32, bool(stor2[arg1].field_0), stor2[arg1].field_256, stor2[arg1].field_512, stor2[arg1].field_768, stor2[arg1].field_1024, stor2[arg1].field_1280, stor2[arg1].field_1536, 256, stor2[arg1].field_1792, mem[384 len ceil32(stor2[arg1].field_1793)]
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), stor2[arg1].field_1536, stor2[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8057af8b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 96
    mem[64] = 608
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 96
    if stor2.length < 1:
        revert with 'NH{q', 17
    idx = stor2.length - 1
    while idx <= 0:
        if idx >= stor2.length:
            revert with 'NH{q', 50
        mem[0] = 2
        _446 = mem[64]
        mem[64] = mem[64] + 256
        mem[_446] = bool(stor2[idx].field_0)
        mem[_446 + 32] = stor2[idx].field_256
        mem[_446 + 64] = stor2[idx].field_512
        mem[_446 + 96] = stor2[idx].field_768
        mem[_446 + 128] = stor2[idx].field_1024
        mem[_446 + 160] = stor2[idx].field_1280
        mem[_446 + 192] = stor2[idx].field_1536
        if stor2[idx].field_1792:
            if stor2[idx].field_1792 == stor2[idx].field_1793 < 32:
                revert with 'NH{q', 34
            _448 = mem[64]
            mem[64] = mem[64] + ceil32(stor2[idx].field_1793) + 32
            mem[_448] = stor2[idx].field_1793
            if stor2[idx].field_1792:
                if stor2[idx].field_1792 == stor2[idx].field_1793 < 32:
                    revert with 'NH{q', 34
                if not stor2[idx].field_1793:
                    mem[_446 + 224] = _448
                    if arg1 != stor2[idx].field_512:
                        if not idx:
                            revert with 'NH{q', 17
                        idx = idx - 1
                        continue 
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor2[idx].field_512
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).0xc87b56dd with:
                            gas gas_remaining wei
                           args stor2[idx].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _497 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _504 = mem[_497]
                    require mem[_497] <= test266151307()
                    require _497 + mem[_497] + 31 < _497 + return_data.size
                    _521 = mem[_497 + mem[_497]]
                    if mem[_497 + mem[_497]] > test266151307():
                        revert with 'NH{q', 65
                    if _497 + ceil32(return_data.size) + ceil32(ceil32(mem[_497 + mem[_497]])) + 1 > test266151307() or ceil32(ceil32(mem[_497 + mem[_497]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _497 + ceil32(return_data.size) + ceil32(ceil32(mem[_497 + mem[_497]])) + 1
                    mem[_497 + ceil32(return_data.size)] = _521
                    require _504 + _521 + 32 <= return_data.size
                    idx = 0
                    while idx < _521:
                        mem[_497 + ceil32(return_data.size) + idx + 32] = mem[_497 + _504 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_521) <= _521:
                        mem[_446 + 224] = _497 + ceil32(return_data.size)
                        _907 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = bool(mem[_446])
                        mem[mem[64] + 64] = mem[_446 + 32]
                        mem[mem[64] + 96] = mem[_446 + 64]
                        mem[mem[64] + 128] = mem[_446 + 96]
                        mem[mem[64] + 160] = mem[_446 + 128]
                        mem[mem[64] + 192] = mem[_446 + 160]
                        mem[mem[64] + 224] = mem[_446 + 204 len 20]
                        mem[mem[64] + 256] = 256
                        mem[mem[64] + 288] = _521
                        idx = 0
                        while idx < _521:
                            mem[mem[64] + idx + 320] = mem[_497 + ceil32(return_data.size) + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_521) > _521:
                            mem[_907 + _521 + 320] = 0
                        return memory
                          from mem[64]
                           len _907 + ceil32(_521) + -mem[64] + 320
                    mem[_497 + ceil32(return_data.size) + _521 + 32] = 0
                    mem[_446 + 224] = _497 + ceil32(return_data.size)
                    _916 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_446])
                    mem[mem[64] + 64] = mem[_446 + 32]
                    mem[mem[64] + 96] = mem[_446 + 64]
                    mem[mem[64] + 128] = mem[_446 + 96]
                    mem[mem[64] + 160] = mem[_446 + 128]
                    mem[mem[64] + 192] = mem[_446 + 160]
                    mem[mem[64] + 224] = mem[_446 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _521
                    idx = 0
                    while idx < _521:
                        mem[mem[64] + idx + 320] = mem[_497 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_521) > _521:
                        mem[_916 + _521 + 320] = 0
                    return memory
                      from mem[64]
                       len _916 + ceil32(_521) + -mem[64] + 320
                if 31 >= stor2[idx].field_1793:
                    mem[_448 + 32] = 256 * stor2[idx].field_1800
                    mem[_446 + 224] = _448
                    if arg1 != stor2[idx].field_512:
                        if not idx:
                            revert with 'NH{q', 17
                        idx = idx - 1
                        continue 
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor2[idx].field_512
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).0xc87b56dd with:
                            gas gas_remaining wei
                           args stor2[idx].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _506 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _517 = mem[_506]
                    require mem[_506] <= test266151307()
                    require _506 + mem[_506] + 31 < _506 + return_data.size
                    _531 = mem[_506 + mem[_506]]
                    if mem[_506 + mem[_506]] > test266151307():
                        revert with 'NH{q', 65
                    if _506 + ceil32(return_data.size) + ceil32(ceil32(mem[_506 + mem[_506]])) + 1 > test266151307() or ceil32(ceil32(mem[_506 + mem[_506]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _506 + ceil32(return_data.size) + ceil32(ceil32(mem[_506 + mem[_506]])) + 1
                    mem[_506 + ceil32(return_data.size)] = _531
                    require _517 + _531 + 32 <= return_data.size
                    idx = 0
                    while idx < _531:
                        mem[_506 + ceil32(return_data.size) + idx + 32] = mem[_506 + _517 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_531) <= _531:
                        mem[_446 + 224] = _506 + ceil32(return_data.size)
                        _908 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = bool(mem[_446])
                        mem[mem[64] + 64] = mem[_446 + 32]
                        mem[mem[64] + 96] = mem[_446 + 64]
                        mem[mem[64] + 128] = mem[_446 + 96]
                        mem[mem[64] + 160] = mem[_446 + 128]
                        mem[mem[64] + 192] = mem[_446 + 160]
                        mem[mem[64] + 224] = mem[_446 + 204 len 20]
                        mem[mem[64] + 256] = 256
                        mem[mem[64] + 288] = _531
                        idx = 0
                        while idx < _531:
                            mem[mem[64] + idx + 320] = mem[_506 + ceil32(return_data.size) + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_531) > _531:
                            mem[_908 + _531 + 320] = 0
                        return memory
                          from mem[64]
                           len _908 + ceil32(_531) + -mem[64] + 320
                    mem[_506 + ceil32(return_data.size) + _531 + 32] = 0
                    mem[_446 + 224] = _506 + ceil32(return_data.size)
                    _918 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_446])
                    mem[mem[64] + 64] = mem[_446 + 32]
                    mem[mem[64] + 96] = mem[_446 + 64]
                    mem[mem[64] + 128] = mem[_446 + 96]
                    mem[mem[64] + 160] = mem[_446 + 128]
                    mem[mem[64] + 192] = mem[_446 + 160]
                    mem[mem[64] + 224] = mem[_446 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _531
                    idx = 0
                    while idx < _531:
                        mem[mem[64] + idx + 320] = mem[_506 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_531) > _531:
                        mem[_918 + _531 + 320] = 0
                    return memory
                      from mem[64]
                       len _918 + ceil32(_531) + -mem[64] + 320
                mem[0] = (8 * idx) + sha3(2) + 7
                mem[_448 + 32] = stor[sha3((8 * idx) + ('name', 'stor2', 2) + 7)].field_0
                s = _448 + 32
                t = sha3(mem[0])
                while _448 + stor2[idx].field_1793 > s:
                    mem[s + 32] = uint256(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_446 + 224] = _448
                if arg1 != mem[_446 + 64]:
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    continue 
                _898 = mem[_446 + 64]
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _898
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0xc87b56dd with:
                        gas gas_remaining wei
                       args _898
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _937 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _948 = mem[_937]
                require mem[_937] <= test266151307()
                require _937 + mem[_937] + 31 < _937 + return_data.size
                _968 = mem[_937 + mem[_937]]
                if mem[_937 + mem[_937]] > test266151307():
                    revert with 'NH{q', 65
                if _937 + ceil32(return_data.size) + ceil32(ceil32(mem[_937 + mem[_937]])) + 1 > test266151307() or ceil32(ceil32(mem[_937 + mem[_937]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _937 + ceil32(return_data.size) + ceil32(ceil32(mem[_937 + mem[_937]])) + 1
                mem[_937 + ceil32(return_data.size)] = _968
                require _948 + _968 + 32 <= return_data.size
                idx = 0
                while idx < _968:
                    mem[_937 + ceil32(return_data.size) + idx + 32] = mem[_937 + _948 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_968) <= _968:
                    mem[_446 + 224] = _937 + ceil32(return_data.size)
                    _1266 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_446])
                    mem[mem[64] + 64] = mem[_446 + 32]
                    mem[mem[64] + 96] = mem[_446 + 64]
                    mem[mem[64] + 128] = mem[_446 + 96]
                    mem[mem[64] + 160] = mem[_446 + 128]
                    mem[mem[64] + 192] = mem[_446 + 160]
                    mem[mem[64] + 224] = mem[_446 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _968
                    idx = 0
                    while idx < _968:
                        mem[mem[64] + idx + 320] = mem[_937 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_968) > _968:
                        mem[_1266 + _968 + 320] = 0
                    return memory
                      from mem[64]
                       len _1266 + ceil32(_968) + -mem[64] + 320
                mem[_937 + ceil32(return_data.size) + _968 + 32] = 0
                mem[_446 + 224] = _937 + ceil32(return_data.size)
                _1286 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_446])
                mem[mem[64] + 64] = mem[_446 + 32]
                mem[mem[64] + 96] = mem[_446 + 64]
                mem[mem[64] + 128] = mem[_446 + 96]
                mem[mem[64] + 160] = mem[_446 + 128]
                mem[mem[64] + 192] = mem[_446 + 160]
                mem[mem[64] + 224] = mem[_446 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _968
                idx = 0
                while idx < _968:
                    mem[mem[64] + idx + 320] = mem[_937 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_968) > _968:
                    mem[_1286 + _968 + 320] = 0
                return memory
                  from mem[64]
                   len _1286 + ceil32(_968) + -mem[64] + 320
            if stor2[idx].field_1792 == stor2[idx].field_1793 < 32:
                revert with 'NH{q', 34
            if not stor2[idx].field_1793:
                mem[_446 + 224] = _448
                if arg1 != stor2[idx].field_512:
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    continue 
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor2[idx].field_512
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0xc87b56dd with:
                        gas gas_remaining wei
                       args stor2[idx].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _500 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _509 = mem[_500]
                require mem[_500] <= test266151307()
                require _500 + mem[_500] + 31 < _500 + return_data.size
                _527 = mem[_500 + mem[_500]]
                if mem[_500 + mem[_500]] > test266151307():
                    revert with 'NH{q', 65
                if _500 + ceil32(return_data.size) + ceil32(ceil32(mem[_500 + mem[_500]])) + 1 > test266151307() or ceil32(ceil32(mem[_500 + mem[_500]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _500 + ceil32(return_data.size) + ceil32(ceil32(mem[_500 + mem[_500]])) + 1
                mem[_500 + ceil32(return_data.size)] = _527
                require _509 + _527 + 32 <= return_data.size
                idx = 0
                while idx < _527:
                    mem[_500 + ceil32(return_data.size) + idx + 32] = mem[_500 + _509 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_527) <= _527:
                    mem[_446 + 224] = _500 + ceil32(return_data.size)
                    _909 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_446])
                    mem[mem[64] + 64] = mem[_446 + 32]
                    mem[mem[64] + 96] = mem[_446 + 64]
                    mem[mem[64] + 128] = mem[_446 + 96]
                    mem[mem[64] + 160] = mem[_446 + 128]
                    mem[mem[64] + 192] = mem[_446 + 160]
                    mem[mem[64] + 224] = mem[_446 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _527
                    idx = 0
                    while idx < _527:
                        mem[mem[64] + idx + 320] = mem[_500 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_527) > _527:
                        mem[_909 + _527 + 320] = 0
                    return memory
                      from mem[64]
                       len _909 + ceil32(_527) + -mem[64] + 320
                mem[_500 + ceil32(return_data.size) + _527 + 32] = 0
                mem[_446 + 224] = _500 + ceil32(return_data.size)
                _919 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_446])
                mem[mem[64] + 64] = mem[_446 + 32]
                mem[mem[64] + 96] = mem[_446 + 64]
                mem[mem[64] + 128] = mem[_446 + 96]
                mem[mem[64] + 160] = mem[_446 + 128]
                mem[mem[64] + 192] = mem[_446 + 160]
                mem[mem[64] + 224] = mem[_446 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _527
                idx = 0
                while idx < _527:
                    mem[mem[64] + idx + 320] = mem[_500 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_527) > _527:
                    mem[_919 + _527 + 320] = 0
                return memory
                  from mem[64]
                   len _919 + ceil32(_527) + -mem[64] + 320
            if 31 >= stor2[idx].field_1793:
                mem[_448 + 32] = 256 * stor2[idx].field_1800
                mem[_446 + 224] = _448
                if arg1 != stor2[idx].field_512:
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    continue 
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor2[idx].field_512
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0xc87b56dd with:
                        gas gas_remaining wei
                       args stor2[idx].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _511 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _523 = mem[_511]
                require mem[_511] <= test266151307()
                require _511 + mem[_511] + 31 < _511 + return_data.size
                _536 = mem[_511 + mem[_511]]
                if mem[_511 + mem[_511]] > test266151307():
                    revert with 'NH{q', 65
                if _511 + ceil32(return_data.size) + ceil32(ceil32(mem[_511 + mem[_511]])) + 1 > test266151307() or ceil32(ceil32(mem[_511 + mem[_511]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _511 + ceil32(return_data.size) + ceil32(ceil32(mem[_511 + mem[_511]])) + 1
                mem[_511 + ceil32(return_data.size)] = _536
                require _523 + _536 + 32 <= return_data.size
                idx = 0
                while idx < _536:
                    mem[_511 + ceil32(return_data.size) + idx + 32] = mem[_511 + _523 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_536) <= _536:
                    mem[_446 + 224] = _511 + ceil32(return_data.size)
                    _910 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_446])
                    mem[mem[64] + 64] = mem[_446 + 32]
                    mem[mem[64] + 96] = mem[_446 + 64]
                    mem[mem[64] + 128] = mem[_446 + 96]
                    mem[mem[64] + 160] = mem[_446 + 128]
                    mem[mem[64] + 192] = mem[_446 + 160]
                    mem[mem[64] + 224] = mem[_446 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _536
                    idx = 0
                    while idx < _536:
                        mem[mem[64] + idx + 320] = mem[_511 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_536) > _536:
                        mem[_910 + _536 + 320] = 0
                    return memory
                      from mem[64]
                       len _910 + ceil32(_536) + -mem[64] + 320
                mem[_511 + ceil32(return_data.size) + _536 + 32] = 0
                mem[_446 + 224] = _511 + ceil32(return_data.size)
                _921 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_446])
                mem[mem[64] + 64] = mem[_446 + 32]
                mem[mem[64] + 96] = mem[_446 + 64]
                mem[mem[64] + 128] = mem[_446 + 96]
                mem[mem[64] + 160] = mem[_446 + 128]
                mem[mem[64] + 192] = mem[_446 + 160]
                mem[mem[64] + 224] = mem[_446 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _536
                idx = 0
                while idx < _536:
                    mem[mem[64] + idx + 320] = mem[_511 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_536) > _536:
                    mem[_921 + _536 + 320] = 0
                return memory
                  from mem[64]
                   len _921 + ceil32(_536) + -mem[64] + 320
            mem[0] = (8 * idx) + sha3(2) + 7
            mem[_448 + 32] = stor[sha3((8 * idx) + ('name', 'stor2', 2) + 7)].field_0
            s = _448 + 32
            t = sha3(mem[0])
            while _448 + stor2[idx].field_1793 > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            mem[_446 + 224] = _448
            if arg1 != mem[_446 + 64]:
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                continue 
            _900 = mem[_446 + 64]
            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _900
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0xc87b56dd with:
                    gas gas_remaining wei
                   args _900
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _940 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _949 = mem[_940]
            require mem[_940] <= test266151307()
            require _940 + mem[_940] + 31 < _940 + return_data.size
            _969 = mem[_940 + mem[_940]]
            if mem[_940 + mem[_940]] > test266151307():
                revert with 'NH{q', 65
            if _940 + ceil32(return_data.size) + ceil32(ceil32(mem[_940 + mem[_940]])) + 1 > test266151307() or ceil32(ceil32(mem[_940 + mem[_940]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _940 + ceil32(return_data.size) + ceil32(ceil32(mem[_940 + mem[_940]])) + 1
            mem[_940 + ceil32(return_data.size)] = _969
            require _949 + _969 + 32 <= return_data.size
            idx = 0
            while idx < _969:
                mem[_940 + ceil32(return_data.size) + idx + 32] = mem[_940 + _949 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_969) <= _969:
                mem[_446 + 224] = _940 + ceil32(return_data.size)
                _1271 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_446])
                mem[mem[64] + 64] = mem[_446 + 32]
                mem[mem[64] + 96] = mem[_446 + 64]
                mem[mem[64] + 128] = mem[_446 + 96]
                mem[mem[64] + 160] = mem[_446 + 128]
                mem[mem[64] + 192] = mem[_446 + 160]
                mem[mem[64] + 224] = mem[_446 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _969
                idx = 0
                while idx < _969:
                    mem[mem[64] + idx + 320] = mem[_940 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_969) > _969:
                    mem[_1271 + _969 + 320] = 0
                return memory
                  from mem[64]
                   len _1271 + ceil32(_969) + -mem[64] + 320
            mem[_940 + ceil32(return_data.size) + _969 + 32] = 0
            mem[_446 + 224] = _940 + ceil32(return_data.size)
            _1291 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = bool(mem[_446])
            mem[mem[64] + 64] = mem[_446 + 32]
            mem[mem[64] + 96] = mem[_446 + 64]
            mem[mem[64] + 128] = mem[_446 + 96]
            mem[mem[64] + 160] = mem[_446 + 128]
            mem[mem[64] + 192] = mem[_446 + 160]
            mem[mem[64] + 224] = mem[_446 + 204 len 20]
            mem[mem[64] + 256] = 256
            mem[mem[64] + 288] = _969
            idx = 0
            while idx < _969:
                mem[mem[64] + idx + 320] = mem[_940 + ceil32(return_data.size) + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_969) > _969:
                mem[_1291 + _969 + 320] = 0
            return memory
              from mem[64]
               len _1291 + ceil32(_969) + -mem[64] + 320
        if stor2[idx].field_1792 == stor2[idx].field_1793 < 32:
            revert with 'NH{q', 34
        _449 = mem[64]
        mem[64] = mem[64] + ceil32(stor2[idx].field_1793) + 32
        mem[_449] = stor2[idx].field_1793
        if stor2[idx].field_1792:
            if stor2[idx].field_1792 == stor2[idx].field_1793 < 32:
                revert with 'NH{q', 34
            if not stor2[idx].field_1793:
                mem[_446 + 224] = _449
                if arg1 != stor2[idx].field_512:
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    continue 
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor2[idx].field_512
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0xc87b56dd with:
                        gas gas_remaining wei
                       args stor2[idx].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _502 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _512 = mem[_502]
                require mem[_502] <= test266151307()
                require _502 + mem[_502] + 31 < _502 + return_data.size
                _528 = mem[_502 + mem[_502]]
                if mem[_502 + mem[_502]] > test266151307():
                    revert with 'NH{q', 65
                if _502 + ceil32(return_data.size) + ceil32(ceil32(mem[_502 + mem[_502]])) + 1 > test266151307() or ceil32(ceil32(mem[_502 + mem[_502]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _502 + ceil32(return_data.size) + ceil32(ceil32(mem[_502 + mem[_502]])) + 1
                mem[_502 + ceil32(return_data.size)] = _528
                require _512 + _528 + 32 <= return_data.size
                idx = 0
                while idx < _528:
                    mem[_502 + ceil32(return_data.size) + idx + 32] = mem[_502 + _512 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_528) <= _528:
                    mem[_446 + 224] = _502 + ceil32(return_data.size)
                    _911 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_446])
                    mem[mem[64] + 64] = mem[_446 + 32]
                    mem[mem[64] + 96] = mem[_446 + 64]
                    mem[mem[64] + 128] = mem[_446 + 96]
                    mem[mem[64] + 160] = mem[_446 + 128]
                    mem[mem[64] + 192] = mem[_446 + 160]
                    mem[mem[64] + 224] = mem[_446 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _528
                    idx = 0
                    while idx < _528:
                        mem[mem[64] + idx + 320] = mem[_502 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_528) > _528:
                        mem[_911 + _528 + 320] = 0
                    return memory
                      from mem[64]
                       len _911 + ceil32(_528) + -mem[64] + 320
                mem[_502 + ceil32(return_data.size) + _528 + 32] = 0
                mem[_446 + 224] = _502 + ceil32(return_data.size)
                _922 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_446])
                mem[mem[64] + 64] = mem[_446 + 32]
                mem[mem[64] + 96] = mem[_446 + 64]
                mem[mem[64] + 128] = mem[_446 + 96]
                mem[mem[64] + 160] = mem[_446 + 128]
                mem[mem[64] + 192] = mem[_446 + 160]
                mem[mem[64] + 224] = mem[_446 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _528
                idx = 0
                while idx < _528:
                    mem[mem[64] + idx + 320] = mem[_502 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_528) > _528:
                    mem[_922 + _528 + 320] = 0
                return memory
                  from mem[64]
                   len _922 + ceil32(_528) + -mem[64] + 320
            if 31 >= stor2[idx].field_1793:
                mem[_449 + 32] = 256 * stor2[idx].field_1800
                mem[_446 + 224] = _449
                if arg1 != stor2[idx].field_512:
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    continue 
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor2[idx].field_512
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0xc87b56dd with:
                        gas gas_remaining wei
                       args stor2[idx].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _514 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _525 = mem[_514]
                require mem[_514] <= test266151307()
                require _514 + mem[_514] + 31 < _514 + return_data.size
                _537 = mem[_514 + mem[_514]]
                if mem[_514 + mem[_514]] > test266151307():
                    revert with 'NH{q', 65
                if _514 + ceil32(return_data.size) + ceil32(ceil32(mem[_514 + mem[_514]])) + 1 > test266151307() or ceil32(ceil32(mem[_514 + mem[_514]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _514 + ceil32(return_data.size) + ceil32(ceil32(mem[_514 + mem[_514]])) + 1
                mem[_514 + ceil32(return_data.size)] = _537
                require _525 + _537 + 32 <= return_data.size
                idx = 0
                while idx < _537:
                    mem[_514 + ceil32(return_data.size) + idx + 32] = mem[_514 + _525 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_537) <= _537:
                    mem[_446 + 224] = _514 + ceil32(return_data.size)
                    _912 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_446])
                    mem[mem[64] + 64] = mem[_446 + 32]
                    mem[mem[64] + 96] = mem[_446 + 64]
                    mem[mem[64] + 128] = mem[_446 + 96]
                    mem[mem[64] + 160] = mem[_446 + 128]
                    mem[mem[64] + 192] = mem[_446 + 160]
                    mem[mem[64] + 224] = mem[_446 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _537
                    idx = 0
                    while idx < _537:
                        mem[mem[64] + idx + 320] = mem[_514 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_537) > _537:
                        mem[_912 + _537 + 320] = 0
                    return memory
                      from mem[64]
                       len _912 + ceil32(_537) + -mem[64] + 320
                mem[_514 + ceil32(return_data.size) + _537 + 32] = 0
                mem[_446 + 224] = _514 + ceil32(return_data.size)
                _924 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_446])
                mem[mem[64] + 64] = mem[_446 + 32]
                mem[mem[64] + 96] = mem[_446 + 64]
                mem[mem[64] + 128] = mem[_446 + 96]
                mem[mem[64] + 160] = mem[_446 + 128]
                mem[mem[64] + 192] = mem[_446 + 160]
                mem[mem[64] + 224] = mem[_446 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _537
                idx = 0
                while idx < _537:
                    mem[mem[64] + idx + 320] = mem[_514 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_537) > _537:
                    mem[_924 + _537 + 320] = 0
                return memory
                  from mem[64]
                   len _924 + ceil32(_537) + -mem[64] + 320
            mem[0] = (8 * idx) + sha3(2) + 7
            mem[_449 + 32] = stor[sha3((8 * idx) + ('name', 'stor2', 2) + 7)].field_0
            s = _449 + 32
            t = sha3(mem[0])
            while _449 + stor2[idx].field_1793 > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            mem[_446 + 224] = _449
            if arg1 != mem[_446 + 64]:
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                continue 
            _902 = mem[_446 + 64]
            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _902
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0xc87b56dd with:
                    gas gas_remaining wei
                   args _902
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _943 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _950 = mem[_943]
            require mem[_943] <= test266151307()
            require _943 + mem[_943] + 31 < _943 + return_data.size
            _970 = mem[_943 + mem[_943]]
            if mem[_943 + mem[_943]] > test266151307():
                revert with 'NH{q', 65
            if _943 + ceil32(return_data.size) + ceil32(ceil32(mem[_943 + mem[_943]])) + 1 > test266151307() or ceil32(ceil32(mem[_943 + mem[_943]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _943 + ceil32(return_data.size) + ceil32(ceil32(mem[_943 + mem[_943]])) + 1
            mem[_943 + ceil32(return_data.size)] = _970
            require _950 + _970 + 32 <= return_data.size
            idx = 0
            while idx < _970:
                mem[_943 + ceil32(return_data.size) + idx + 32] = mem[_943 + _950 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_970) <= _970:
                mem[_446 + 224] = _943 + ceil32(return_data.size)
                _1276 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_446])
                mem[mem[64] + 64] = mem[_446 + 32]
                mem[mem[64] + 96] = mem[_446 + 64]
                mem[mem[64] + 128] = mem[_446 + 96]
                mem[mem[64] + 160] = mem[_446 + 128]
                mem[mem[64] + 192] = mem[_446 + 160]
                mem[mem[64] + 224] = mem[_446 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _970
                idx = 0
                while idx < _970:
                    mem[mem[64] + idx + 320] = mem[_943 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_970) > _970:
                    mem[_1276 + _970 + 320] = 0
                return memory
                  from mem[64]
                   len _1276 + ceil32(_970) + -mem[64] + 320
            mem[_943 + ceil32(return_data.size) + _970 + 32] = 0
            mem[_446 + 224] = _943 + ceil32(return_data.size)
            _1296 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = bool(mem[_446])
            mem[mem[64] + 64] = mem[_446 + 32]
            mem[mem[64] + 96] = mem[_446 + 64]
            mem[mem[64] + 128] = mem[_446 + 96]
            mem[mem[64] + 160] = mem[_446 + 128]
            mem[mem[64] + 192] = mem[_446 + 160]
            mem[mem[64] + 224] = mem[_446 + 204 len 20]
            mem[mem[64] + 256] = 256
            mem[mem[64] + 288] = _970
            idx = 0
            while idx < _970:
                mem[mem[64] + idx + 320] = mem[_943 + ceil32(return_data.size) + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_970) > _970:
                mem[_1296 + _970 + 320] = 0
            return memory
              from mem[64]
               len _1296 + ceil32(_970) + -mem[64] + 320
        if stor2[idx].field_1792 == stor2[idx].field_1793 < 32:
            revert with 'NH{q', 34
        if not stor2[idx].field_1793:
            mem[_446 + 224] = _449
            if arg1 != stor2[idx].field_512:
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                continue 
            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor2[idx].field_512
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0xc87b56dd with:
                    gas gas_remaining wei
                   args stor2[idx].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _507 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _518 = mem[_507]
            require mem[_507] <= test266151307()
            require _507 + mem[_507] + 31 < _507 + return_data.size
            _534 = mem[_507 + mem[_507]]
            if mem[_507 + mem[_507]] > test266151307():
                revert with 'NH{q', 65
            if _507 + ceil32(return_data.size) + ceil32(ceil32(mem[_507 + mem[_507]])) + 1 > test266151307() or ceil32(ceil32(mem[_507 + mem[_507]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _507 + ceil32(return_data.size) + ceil32(ceil32(mem[_507 + mem[_507]])) + 1
            mem[_507 + ceil32(return_data.size)] = _534
            require _518 + _534 + 32 <= return_data.size
            idx = 0
            while idx < _534:
                mem[_507 + ceil32(return_data.size) + idx + 32] = mem[_507 + _518 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_534) <= _534:
                mem[_446 + 224] = _507 + ceil32(return_data.size)
                _913 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_446])
                mem[mem[64] + 64] = mem[_446 + 32]
                mem[mem[64] + 96] = mem[_446 + 64]
                mem[mem[64] + 128] = mem[_446 + 96]
                mem[mem[64] + 160] = mem[_446 + 128]
                mem[mem[64] + 192] = mem[_446 + 160]
                mem[mem[64] + 224] = mem[_446 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _534
                idx = 0
                while idx < _534:
                    mem[mem[64] + idx + 320] = mem[_507 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_534) > _534:
                    mem[_913 + _534 + 320] = 0
                return memory
                  from mem[64]
                   len _913 + ceil32(_534) + -mem[64] + 320
            mem[_507 + ceil32(return_data.size) + _534 + 32] = 0
            mem[_446 + 224] = _507 + ceil32(return_data.size)
            _925 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = bool(mem[_446])
            mem[mem[64] + 64] = mem[_446 + 32]
            mem[mem[64] + 96] = mem[_446 + 64]
            mem[mem[64] + 128] = mem[_446 + 96]
            mem[mem[64] + 160] = mem[_446 + 128]
            mem[mem[64] + 192] = mem[_446 + 160]
            mem[mem[64] + 224] = mem[_446 + 204 len 20]
            mem[mem[64] + 256] = 256
            mem[mem[64] + 288] = _534
            idx = 0
            while idx < _534:
                mem[mem[64] + idx + 320] = mem[_507 + ceil32(return_data.size) + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_534) > _534:
                mem[_925 + _534 + 320] = 0
            return memory
              from mem[64]
               len _925 + ceil32(_534) + -mem[64] + 320
        if 31 >= stor2[idx].field_1793:
            mem[_449 + 32] = 256 * stor2[idx].field_1800
            mem[_446 + 224] = _449
            if arg1 != stor2[idx].field_512:
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                continue 
            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor2[idx].field_512
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0xc87b56dd with:
                    gas gas_remaining wei
                   args stor2[idx].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _520 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _530 = mem[_520]
            require mem[_520] <= test266151307()
            require _520 + mem[_520] + 31 < _520 + return_data.size
            _540 = mem[_520 + mem[_520]]
            if mem[_520 + mem[_520]] > test266151307():
                revert with 'NH{q', 65
            if _520 + ceil32(return_data.size) + ceil32(ceil32(mem[_520 + mem[_520]])) + 1 > test266151307() or ceil32(ceil32(mem[_520 + mem[_520]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _520 + ceil32(return_data.size) + ceil32(ceil32(mem[_520 + mem[_520]])) + 1
            mem[_520 + ceil32(return_data.size)] = _540
            require _530 + _540 + 32 <= return_data.size
            idx = 0
            while idx < _540:
                mem[_520 + ceil32(return_data.size) + idx + 32] = mem[_520 + _530 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_540) <= _540:
                mem[_446 + 224] = _520 + ceil32(return_data.size)
                _914 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_446])
                mem[mem[64] + 64] = mem[_446 + 32]
                mem[mem[64] + 96] = mem[_446 + 64]
                mem[mem[64] + 128] = mem[_446 + 96]
                mem[mem[64] + 160] = mem[_446 + 128]
                mem[mem[64] + 192] = mem[_446 + 160]
                mem[mem[64] + 224] = mem[_446 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _540
                idx = 0
                while idx < _540:
                    mem[mem[64] + idx + 320] = mem[_520 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_540) > _540:
                    mem[_914 + _540 + 320] = 0
                return memory
                  from mem[64]
                   len _914 + ceil32(_540) + -mem[64] + 320
            mem[_520 + ceil32(return_data.size) + _540 + 32] = 0
            mem[_446 + 224] = _520 + ceil32(return_data.size)
            _927 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = bool(mem[_446])
            mem[mem[64] + 64] = mem[_446 + 32]
            mem[mem[64] + 96] = mem[_446 + 64]
            mem[mem[64] + 128] = mem[_446 + 96]
            mem[mem[64] + 160] = mem[_446 + 128]
            mem[mem[64] + 192] = mem[_446 + 160]
            mem[mem[64] + 224] = mem[_446 + 204 len 20]
            mem[mem[64] + 256] = 256
            mem[mem[64] + 288] = _540
            idx = 0
            while idx < _540:
                mem[mem[64] + idx + 320] = mem[_520 + ceil32(return_data.size) + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_540) > _540:
                mem[_927 + _540 + 320] = 0
            return memory
              from mem[64]
               len _927 + ceil32(_540) + -mem[64] + 320
        mem[0] = (8 * idx) + sha3(2) + 7
        mem[_449 + 32] = stor[sha3((8 * idx) + ('name', 'stor2', 2) + 7)].field_0
        s = _449 + 32
        t = sha3(mem[0])
        while _449 + stor2[idx].field_1793 > s:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        mem[_446 + 224] = _449
        if arg1 != mem[_446 + 64]:
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
        _904 = mem[_446 + 64]
        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _904
        require ext_code.size(address(stor1.length))
        staticcall address(stor1.length).0xc87b56dd with:
                gas gas_remaining wei
               args _904
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _946 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _951 = mem[_946]
        require mem[_946] <= test266151307()
        require _946 + mem[_946] + 31 < _946 + return_data.size
        _971 = mem[_946 + mem[_946]]
        if mem[_946 + mem[_946]] > test266151307():
            revert with 'NH{q', 65
        if _946 + ceil32(return_data.size) + ceil32(ceil32(mem[_946 + mem[_946]])) + 1 > test266151307() or ceil32(ceil32(mem[_946 + mem[_946]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _946 + ceil32(return_data.size) + ceil32(ceil32(mem[_946 + mem[_946]])) + 1
        mem[_946 + ceil32(return_data.size)] = _971
        require _951 + _971 + 32 <= return_data.size
        idx = 0
        while idx < _971:
            mem[_946 + ceil32(return_data.size) + idx + 32] = mem[_946 + _951 + idx + 32]
            idx = idx + 32
            continue 
        if ceil32(_971) <= _971:
            mem[_446 + 224] = _946 + ceil32(return_data.size)
            _1281 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = bool(mem[_446])
            mem[mem[64] + 64] = mem[_446 + 32]
            mem[mem[64] + 96] = mem[_446 + 64]
            mem[mem[64] + 128] = mem[_446 + 96]
            mem[mem[64] + 160] = mem[_446 + 128]
            mem[mem[64] + 192] = mem[_446 + 160]
            mem[mem[64] + 224] = mem[_446 + 204 len 20]
            mem[mem[64] + 256] = 256
            mem[mem[64] + 288] = _971
            idx = 0
            while idx < _971:
                mem[mem[64] + idx + 320] = mem[_946 + ceil32(return_data.size) + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_971) > _971:
                mem[_1281 + _971 + 320] = 0
            return memory
              from mem[64]
               len _1281 + ceil32(_971) + -mem[64] + 320
        mem[_946 + ceil32(return_data.size) + _971 + 32] = 0
        mem[_446 + 224] = _946 + ceil32(return_data.size)
        _1301 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = bool(mem[_446])
        mem[mem[64] + 64] = mem[_446 + 32]
        mem[mem[64] + 96] = mem[_446 + 64]
        mem[mem[64] + 128] = mem[_446 + 96]
        mem[mem[64] + 160] = mem[_446 + 128]
        mem[mem[64] + 192] = mem[_446 + 160]
        mem[mem[64] + 224] = mem[_446 + 204 len 20]
        mem[mem[64] + 256] = 256
        mem[mem[64] + 288] = _971
        idx = 0
        while idx < _971:
            mem[mem[64] + idx + 320] = mem[_946 + ceil32(return_data.size) + idx + 32]
            idx = idx + 32
            continue 
        if ceil32(_971) > _971:
            mem[_1301 + _971 + 320] = 0
        return memory
          from mem[64]
           len _1301 + ceil32(_971) + -mem[64] + 320
    mem[mem[64]] = 32
    mem[mem[64] + 32] = bool(mem[352])
    mem[mem[64] + 64] = mem[384]
    mem[mem[64] + 96] = mem[416]
    mem[mem[64] + 128] = mem[448]
    mem[mem[64] + 160] = mem[480]
    mem[mem[64] + 192] = mem[512]
    mem[mem[64] + 224] = mem[556 len 20]
    _545 = mem[576]
    mem[mem[64] + 256] = 256
    _550 = mem[_545]
    mem[mem[64] + 288] = mem[_545]
    mem[mem[64] + 320 len ceil32(_550)] = mem[_545 + 32 len ceil32(_550)]
    if ceil32(_550) > _550:
        mem[mem[64] + _550 + 320] = 0
    return 32, mem[mem[64] + 32 len 224], 256, mem[mem[64] + 288 len ceil32(_550) + 32]
}

function sub_6dacae2b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 96
    mem[64] = 608
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 96
    idx = 0
    while idx < sub_61cf4863.length:
        if sub_61cf4863[idx] >= stor2.length:
            revert with 'NH{q', 50
        mem[0] = 2
        _448 = mem[64]
        mem[64] = mem[64] + 256
        mem[_448] = bool(stor2[stor3[idx]].field_0)
        mem[_448 + 32] = stor2[stor3[idx]].field_256
        mem[_448 + 64] = stor2[stor3[idx]].field_512
        mem[_448 + 96] = stor2[stor3[idx]].field_768
        mem[_448 + 128] = stor2[stor3[idx]].field_1024
        mem[_448 + 160] = stor2[stor3[idx]].field_1280
        mem[_448 + 192] = stor2[stor3[idx]].field_1536
        if stor2[stor3[idx]].field_1792:
            if stor2[stor3[idx]].field_1792 == stor2[stor3[idx]].field_1793 < 32:
                revert with 'NH{q', 34
            _450 = mem[64]
            mem[64] = mem[64] + ceil32(stor2[stor3[idx]].field_1793) + 32
            mem[_450] = stor2[stor3[idx]].field_1793
            if stor2[stor3[idx]].field_1792:
                if stor2[stor3[idx]].field_1792 == stor2[stor3[idx]].field_1793 < 32:
                    revert with 'NH{q', 34
                if not stor2[stor3[idx]].field_1793:
                    mem[_448 + 224] = _450
                    if arg1 != stor2[stor3[idx]].field_512:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor2[stor3[idx]].field_512
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).0xc87b56dd with:
                            gas gas_remaining wei
                           args stor2[stor3[idx]].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _499 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _506 = mem[_499]
                    require mem[_499] <= test266151307()
                    require _499 + mem[_499] + 31 < _499 + return_data.size
                    _523 = mem[_499 + mem[_499]]
                    if mem[_499 + mem[_499]] > test266151307():
                        revert with 'NH{q', 65
                    if _499 + ceil32(return_data.size) + ceil32(ceil32(mem[_499 + mem[_499]])) + 1 > test266151307() or ceil32(ceil32(mem[_499 + mem[_499]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _499 + ceil32(return_data.size) + ceil32(ceil32(mem[_499 + mem[_499]])) + 1
                    mem[_499 + ceil32(return_data.size)] = _523
                    require _506 + _523 + 32 <= return_data.size
                    idx = 0
                    while idx < _523:
                        mem[_499 + ceil32(return_data.size) + idx + 32] = mem[_499 + _506 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_523) <= _523:
                        mem[_448 + 224] = _499 + ceil32(return_data.size)
                        _909 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = bool(mem[_448])
                        mem[mem[64] + 64] = mem[_448 + 32]
                        mem[mem[64] + 96] = mem[_448 + 64]
                        mem[mem[64] + 128] = mem[_448 + 96]
                        mem[mem[64] + 160] = mem[_448 + 128]
                        mem[mem[64] + 192] = mem[_448 + 160]
                        mem[mem[64] + 224] = mem[_448 + 204 len 20]
                        mem[mem[64] + 256] = 256
                        mem[mem[64] + 288] = _523
                        idx = 0
                        while idx < _523:
                            mem[mem[64] + idx + 320] = mem[_499 + ceil32(return_data.size) + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_523) > _523:
                            mem[_909 + _523 + 320] = 0
                        return memory
                          from mem[64]
                           len _909 + ceil32(_523) + -mem[64] + 320
                    mem[_499 + ceil32(return_data.size) + _523 + 32] = 0
                    mem[_448 + 224] = _499 + ceil32(return_data.size)
                    _918 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_448])
                    mem[mem[64] + 64] = mem[_448 + 32]
                    mem[mem[64] + 96] = mem[_448 + 64]
                    mem[mem[64] + 128] = mem[_448 + 96]
                    mem[mem[64] + 160] = mem[_448 + 128]
                    mem[mem[64] + 192] = mem[_448 + 160]
                    mem[mem[64] + 224] = mem[_448 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _523
                    idx = 0
                    while idx < _523:
                        mem[mem[64] + idx + 320] = mem[_499 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_523) > _523:
                        mem[_918 + _523 + 320] = 0
                    return memory
                      from mem[64]
                       len _918 + ceil32(_523) + -mem[64] + 320
                if 31 >= stor2[stor3[idx]].field_1793:
                    mem[_450 + 32] = 256 * stor2[stor3[idx]].field_1800
                    mem[_448 + 224] = _450
                    if arg1 != stor2[stor3[idx]].field_512:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor2[stor3[idx]].field_512
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).0xc87b56dd with:
                            gas gas_remaining wei
                           args stor2[stor3[idx]].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _508 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _519 = mem[_508]
                    require mem[_508] <= test266151307()
                    require _508 + mem[_508] + 31 < _508 + return_data.size
                    _534 = mem[_508 + mem[_508]]
                    if mem[_508 + mem[_508]] > test266151307():
                        revert with 'NH{q', 65
                    if _508 + ceil32(return_data.size) + ceil32(ceil32(mem[_508 + mem[_508]])) + 1 > test266151307() or ceil32(ceil32(mem[_508 + mem[_508]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _508 + ceil32(return_data.size) + ceil32(ceil32(mem[_508 + mem[_508]])) + 1
                    mem[_508 + ceil32(return_data.size)] = _534
                    require _519 + _534 + 32 <= return_data.size
                    idx = 0
                    while idx < _534:
                        mem[_508 + ceil32(return_data.size) + idx + 32] = mem[_508 + _519 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_534) <= _534:
                        mem[_448 + 224] = _508 + ceil32(return_data.size)
                        _910 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = bool(mem[_448])
                        mem[mem[64] + 64] = mem[_448 + 32]
                        mem[mem[64] + 96] = mem[_448 + 64]
                        mem[mem[64] + 128] = mem[_448 + 96]
                        mem[mem[64] + 160] = mem[_448 + 128]
                        mem[mem[64] + 192] = mem[_448 + 160]
                        mem[mem[64] + 224] = mem[_448 + 204 len 20]
                        mem[mem[64] + 256] = 256
                        mem[mem[64] + 288] = _534
                        idx = 0
                        while idx < _534:
                            mem[mem[64] + idx + 320] = mem[_508 + ceil32(return_data.size) + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_534) > _534:
                            mem[_910 + _534 + 320] = 0
                        return memory
                          from mem[64]
                           len _910 + ceil32(_534) + -mem[64] + 320
                    mem[_508 + ceil32(return_data.size) + _534 + 32] = 0
                    mem[_448 + 224] = _508 + ceil32(return_data.size)
                    _920 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_448])
                    mem[mem[64] + 64] = mem[_448 + 32]
                    mem[mem[64] + 96] = mem[_448 + 64]
                    mem[mem[64] + 128] = mem[_448 + 96]
                    mem[mem[64] + 160] = mem[_448 + 128]
                    mem[mem[64] + 192] = mem[_448 + 160]
                    mem[mem[64] + 224] = mem[_448 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _534
                    idx = 0
                    while idx < _534:
                        mem[mem[64] + idx + 320] = mem[_508 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_534) > _534:
                        mem[_920 + _534 + 320] = 0
                    return memory
                      from mem[64]
                       len _920 + ceil32(_534) + -mem[64] + 320
                mem[0] = (8 * sub_61cf4863[idx]) + sha3(2) + 7
                mem[_450 + 32] = stor[sha3((8 * stor3[idx]) + ('name', 'stor2', 2) + 7)].field_0
                s = _450 + 32
                t = sha3(mem[0])
                while _450 + stor2[stor3[idx]].field_1793 > s:
                    mem[s + 32] = uint256(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_448 + 224] = _450
                if arg1 != mem[_448 + 64]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _900 = mem[_448 + 64]
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _900
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0xc87b56dd with:
                        gas gas_remaining wei
                       args _900
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _939 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _950 = mem[_939]
                require mem[_939] <= test266151307()
                require _939 + mem[_939] + 31 < _939 + return_data.size
                _970 = mem[_939 + mem[_939]]
                if mem[_939 + mem[_939]] > test266151307():
                    revert with 'NH{q', 65
                if _939 + ceil32(return_data.size) + ceil32(ceil32(mem[_939 + mem[_939]])) + 1 > test266151307() or ceil32(ceil32(mem[_939 + mem[_939]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _939 + ceil32(return_data.size) + ceil32(ceil32(mem[_939 + mem[_939]])) + 1
                mem[_939 + ceil32(return_data.size)] = _970
                require _950 + _970 + 32 <= return_data.size
                idx = 0
                while idx < _970:
                    mem[_939 + ceil32(return_data.size) + idx + 32] = mem[_939 + _950 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_970) <= _970:
                    mem[_448 + 224] = _939 + ceil32(return_data.size)
                    _1268 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_448])
                    mem[mem[64] + 64] = mem[_448 + 32]
                    mem[mem[64] + 96] = mem[_448 + 64]
                    mem[mem[64] + 128] = mem[_448 + 96]
                    mem[mem[64] + 160] = mem[_448 + 128]
                    mem[mem[64] + 192] = mem[_448 + 160]
                    mem[mem[64] + 224] = mem[_448 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _970
                    idx = 0
                    while idx < _970:
                        mem[mem[64] + idx + 320] = mem[_939 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_970) > _970:
                        mem[_1268 + _970 + 320] = 0
                    return memory
                      from mem[64]
                       len _1268 + ceil32(_970) + -mem[64] + 320
                mem[_939 + ceil32(return_data.size) + _970 + 32] = 0
                mem[_448 + 224] = _939 + ceil32(return_data.size)
                _1288 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_448])
                mem[mem[64] + 64] = mem[_448 + 32]
                mem[mem[64] + 96] = mem[_448 + 64]
                mem[mem[64] + 128] = mem[_448 + 96]
                mem[mem[64] + 160] = mem[_448 + 128]
                mem[mem[64] + 192] = mem[_448 + 160]
                mem[mem[64] + 224] = mem[_448 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _970
                idx = 0
                while idx < _970:
                    mem[mem[64] + idx + 320] = mem[_939 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_970) > _970:
                    mem[_1288 + _970 + 320] = 0
                return memory
                  from mem[64]
                   len _1288 + ceil32(_970) + -mem[64] + 320
            if stor2[stor3[idx]].field_1792 == stor2[stor3[idx]].field_1793 < 32:
                revert with 'NH{q', 34
            if not stor2[stor3[idx]].field_1793:
                mem[_448 + 224] = _450
                if arg1 != stor2[stor3[idx]].field_512:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor2[stor3[idx]].field_512
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0xc87b56dd with:
                        gas gas_remaining wei
                       args stor2[stor3[idx]].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _502 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _512 = mem[_502]
                require mem[_502] <= test266151307()
                require _502 + mem[_502] + 31 < _502 + return_data.size
                _529 = mem[_502 + mem[_502]]
                if mem[_502 + mem[_502]] > test266151307():
                    revert with 'NH{q', 65
                if _502 + ceil32(return_data.size) + ceil32(ceil32(mem[_502 + mem[_502]])) + 1 > test266151307() or ceil32(ceil32(mem[_502 + mem[_502]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _502 + ceil32(return_data.size) + ceil32(ceil32(mem[_502 + mem[_502]])) + 1
                mem[_502 + ceil32(return_data.size)] = _529
                require _512 + _529 + 32 <= return_data.size
                idx = 0
                while idx < _529:
                    mem[_502 + ceil32(return_data.size) + idx + 32] = mem[_502 + _512 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_529) <= _529:
                    mem[_448 + 224] = _502 + ceil32(return_data.size)
                    _911 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_448])
                    mem[mem[64] + 64] = mem[_448 + 32]
                    mem[mem[64] + 96] = mem[_448 + 64]
                    mem[mem[64] + 128] = mem[_448 + 96]
                    mem[mem[64] + 160] = mem[_448 + 128]
                    mem[mem[64] + 192] = mem[_448 + 160]
                    mem[mem[64] + 224] = mem[_448 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _529
                    idx = 0
                    while idx < _529:
                        mem[mem[64] + idx + 320] = mem[_502 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_529) > _529:
                        mem[_911 + _529 + 320] = 0
                    return memory
                      from mem[64]
                       len _911 + ceil32(_529) + -mem[64] + 320
                mem[_502 + ceil32(return_data.size) + _529 + 32] = 0
                mem[_448 + 224] = _502 + ceil32(return_data.size)
                _921 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_448])
                mem[mem[64] + 64] = mem[_448 + 32]
                mem[mem[64] + 96] = mem[_448 + 64]
                mem[mem[64] + 128] = mem[_448 + 96]
                mem[mem[64] + 160] = mem[_448 + 128]
                mem[mem[64] + 192] = mem[_448 + 160]
                mem[mem[64] + 224] = mem[_448 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _529
                idx = 0
                while idx < _529:
                    mem[mem[64] + idx + 320] = mem[_502 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_529) > _529:
                    mem[_921 + _529 + 320] = 0
                return memory
                  from mem[64]
                   len _921 + ceil32(_529) + -mem[64] + 320
            if 31 >= stor2[stor3[idx]].field_1793:
                mem[_450 + 32] = 256 * stor2[stor3[idx]].field_1800
                mem[_448 + 224] = _450
                if arg1 != stor2[stor3[idx]].field_512:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor2[stor3[idx]].field_512
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0xc87b56dd with:
                        gas gas_remaining wei
                       args stor2[stor3[idx]].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _514 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _525 = mem[_514]
                require mem[_514] <= test266151307()
                require _514 + mem[_514] + 31 < _514 + return_data.size
                _538 = mem[_514 + mem[_514]]
                if mem[_514 + mem[_514]] > test266151307():
                    revert with 'NH{q', 65
                if _514 + ceil32(return_data.size) + ceil32(ceil32(mem[_514 + mem[_514]])) + 1 > test266151307() or ceil32(ceil32(mem[_514 + mem[_514]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _514 + ceil32(return_data.size) + ceil32(ceil32(mem[_514 + mem[_514]])) + 1
                mem[_514 + ceil32(return_data.size)] = _538
                require _525 + _538 + 32 <= return_data.size
                idx = 0
                while idx < _538:
                    mem[_514 + ceil32(return_data.size) + idx + 32] = mem[_514 + _525 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_538) <= _538:
                    mem[_448 + 224] = _514 + ceil32(return_data.size)
                    _912 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_448])
                    mem[mem[64] + 64] = mem[_448 + 32]
                    mem[mem[64] + 96] = mem[_448 + 64]
                    mem[mem[64] + 128] = mem[_448 + 96]
                    mem[mem[64] + 160] = mem[_448 + 128]
                    mem[mem[64] + 192] = mem[_448 + 160]
                    mem[mem[64] + 224] = mem[_448 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _538
                    idx = 0
                    while idx < _538:
                        mem[mem[64] + idx + 320] = mem[_514 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_538) > _538:
                        mem[_912 + _538 + 320] = 0
                    return memory
                      from mem[64]
                       len _912 + ceil32(_538) + -mem[64] + 320
                mem[_514 + ceil32(return_data.size) + _538 + 32] = 0
                mem[_448 + 224] = _514 + ceil32(return_data.size)
                _923 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_448])
                mem[mem[64] + 64] = mem[_448 + 32]
                mem[mem[64] + 96] = mem[_448 + 64]
                mem[mem[64] + 128] = mem[_448 + 96]
                mem[mem[64] + 160] = mem[_448 + 128]
                mem[mem[64] + 192] = mem[_448 + 160]
                mem[mem[64] + 224] = mem[_448 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _538
                idx = 0
                while idx < _538:
                    mem[mem[64] + idx + 320] = mem[_514 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_538) > _538:
                    mem[_923 + _538 + 320] = 0
                return memory
                  from mem[64]
                   len _923 + ceil32(_538) + -mem[64] + 320
            mem[0] = (8 * sub_61cf4863[idx]) + sha3(2) + 7
            mem[_450 + 32] = stor[sha3((8 * stor3[idx]) + ('name', 'stor2', 2) + 7)].field_0
            s = _450 + 32
            t = sha3(mem[0])
            while _450 + stor2[stor3[idx]].field_1793 > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            mem[_448 + 224] = _450
            if arg1 != mem[_448 + 64]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _902 = mem[_448 + 64]
            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _902
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0xc87b56dd with:
                    gas gas_remaining wei
                   args _902
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _942 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _951 = mem[_942]
            require mem[_942] <= test266151307()
            require _942 + mem[_942] + 31 < _942 + return_data.size
            _971 = mem[_942 + mem[_942]]
            if mem[_942 + mem[_942]] > test266151307():
                revert with 'NH{q', 65
            if _942 + ceil32(return_data.size) + ceil32(ceil32(mem[_942 + mem[_942]])) + 1 > test266151307() or ceil32(ceil32(mem[_942 + mem[_942]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _942 + ceil32(return_data.size) + ceil32(ceil32(mem[_942 + mem[_942]])) + 1
            mem[_942 + ceil32(return_data.size)] = _971
            require _951 + _971 + 32 <= return_data.size
            idx = 0
            while idx < _971:
                mem[_942 + ceil32(return_data.size) + idx + 32] = mem[_942 + _951 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_971) <= _971:
                mem[_448 + 224] = _942 + ceil32(return_data.size)
                _1273 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_448])
                mem[mem[64] + 64] = mem[_448 + 32]
                mem[mem[64] + 96] = mem[_448 + 64]
                mem[mem[64] + 128] = mem[_448 + 96]
                mem[mem[64] + 160] = mem[_448 + 128]
                mem[mem[64] + 192] = mem[_448 + 160]
                mem[mem[64] + 224] = mem[_448 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _971
                idx = 0
                while idx < _971:
                    mem[mem[64] + idx + 320] = mem[_942 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_971) > _971:
                    mem[_1273 + _971 + 320] = 0
                return memory
                  from mem[64]
                   len _1273 + ceil32(_971) + -mem[64] + 320
            mem[_942 + ceil32(return_data.size) + _971 + 32] = 0
            mem[_448 + 224] = _942 + ceil32(return_data.size)
            _1293 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = bool(mem[_448])
            mem[mem[64] + 64] = mem[_448 + 32]
            mem[mem[64] + 96] = mem[_448 + 64]
            mem[mem[64] + 128] = mem[_448 + 96]
            mem[mem[64] + 160] = mem[_448 + 128]
            mem[mem[64] + 192] = mem[_448 + 160]
            mem[mem[64] + 224] = mem[_448 + 204 len 20]
            mem[mem[64] + 256] = 256
            mem[mem[64] + 288] = _971
            idx = 0
            while idx < _971:
                mem[mem[64] + idx + 320] = mem[_942 + ceil32(return_data.size) + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_971) > _971:
                mem[_1293 + _971 + 320] = 0
            return memory
              from mem[64]
               len _1293 + ceil32(_971) + -mem[64] + 320
        if stor2[stor3[idx]].field_1792 == stor2[stor3[idx]].field_1793 < 32:
            revert with 'NH{q', 34
        _452 = mem[64]
        mem[64] = mem[64] + ceil32(stor2[stor3[idx]].field_1793) + 32
        mem[_452] = stor2[stor3[idx]].field_1793
        if stor2[stor3[idx]].field_1792:
            if stor2[stor3[idx]].field_1792 == stor2[stor3[idx]].field_1793 < 32:
                revert with 'NH{q', 34
            if not stor2[stor3[idx]].field_1793:
                mem[_448 + 224] = _452
                if arg1 != stor2[stor3[idx]].field_512:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor2[stor3[idx]].field_512
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0xc87b56dd with:
                        gas gas_remaining wei
                       args stor2[stor3[idx]].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _504 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _515 = mem[_504]
                require mem[_504] <= test266151307()
                require _504 + mem[_504] + 31 < _504 + return_data.size
                _530 = mem[_504 + mem[_504]]
                if mem[_504 + mem[_504]] > test266151307():
                    revert with 'NH{q', 65
                if _504 + ceil32(return_data.size) + ceil32(ceil32(mem[_504 + mem[_504]])) + 1 > test266151307() or ceil32(ceil32(mem[_504 + mem[_504]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _504 + ceil32(return_data.size) + ceil32(ceil32(mem[_504 + mem[_504]])) + 1
                mem[_504 + ceil32(return_data.size)] = _530
                require _515 + _530 + 32 <= return_data.size
                idx = 0
                while idx < _530:
                    mem[_504 + ceil32(return_data.size) + idx + 32] = mem[_504 + _515 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_530) <= _530:
                    mem[_448 + 224] = _504 + ceil32(return_data.size)
                    _913 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_448])
                    mem[mem[64] + 64] = mem[_448 + 32]
                    mem[mem[64] + 96] = mem[_448 + 64]
                    mem[mem[64] + 128] = mem[_448 + 96]
                    mem[mem[64] + 160] = mem[_448 + 128]
                    mem[mem[64] + 192] = mem[_448 + 160]
                    mem[mem[64] + 224] = mem[_448 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _530
                    idx = 0
                    while idx < _530:
                        mem[mem[64] + idx + 320] = mem[_504 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_530) > _530:
                        mem[_913 + _530 + 320] = 0
                    return memory
                      from mem[64]
                       len _913 + ceil32(_530) + -mem[64] + 320
                mem[_504 + ceil32(return_data.size) + _530 + 32] = 0
                mem[_448 + 224] = _504 + ceil32(return_data.size)
                _924 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_448])
                mem[mem[64] + 64] = mem[_448 + 32]
                mem[mem[64] + 96] = mem[_448 + 64]
                mem[mem[64] + 128] = mem[_448 + 96]
                mem[mem[64] + 160] = mem[_448 + 128]
                mem[mem[64] + 192] = mem[_448 + 160]
                mem[mem[64] + 224] = mem[_448 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _530
                idx = 0
                while idx < _530:
                    mem[mem[64] + idx + 320] = mem[_504 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_530) > _530:
                    mem[_924 + _530 + 320] = 0
                return memory
                  from mem[64]
                   len _924 + ceil32(_530) + -mem[64] + 320
            if 31 >= stor2[stor3[idx]].field_1793:
                mem[_452 + 32] = 256 * stor2[stor3[idx]].field_1800
                mem[_448 + 224] = _452
                if arg1 != stor2[stor3[idx]].field_512:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor2[stor3[idx]].field_512
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0xc87b56dd with:
                        gas gas_remaining wei
                       args stor2[stor3[idx]].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _517 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _527 = mem[_517]
                require mem[_517] <= test266151307()
                require _517 + mem[_517] + 31 < _517 + return_data.size
                _539 = mem[_517 + mem[_517]]
                if mem[_517 + mem[_517]] > test266151307():
                    revert with 'NH{q', 65
                if _517 + ceil32(return_data.size) + ceil32(ceil32(mem[_517 + mem[_517]])) + 1 > test266151307() or ceil32(ceil32(mem[_517 + mem[_517]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _517 + ceil32(return_data.size) + ceil32(ceil32(mem[_517 + mem[_517]])) + 1
                mem[_517 + ceil32(return_data.size)] = _539
                require _527 + _539 + 32 <= return_data.size
                idx = 0
                while idx < _539:
                    mem[_517 + ceil32(return_data.size) + idx + 32] = mem[_517 + _527 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_539) <= _539:
                    mem[_448 + 224] = _517 + ceil32(return_data.size)
                    _914 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_448])
                    mem[mem[64] + 64] = mem[_448 + 32]
                    mem[mem[64] + 96] = mem[_448 + 64]
                    mem[mem[64] + 128] = mem[_448 + 96]
                    mem[mem[64] + 160] = mem[_448 + 128]
                    mem[mem[64] + 192] = mem[_448 + 160]
                    mem[mem[64] + 224] = mem[_448 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _539
                    idx = 0
                    while idx < _539:
                        mem[mem[64] + idx + 320] = mem[_517 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_539) > _539:
                        mem[_914 + _539 + 320] = 0
                    return memory
                      from mem[64]
                       len _914 + ceil32(_539) + -mem[64] + 320
                mem[_517 + ceil32(return_data.size) + _539 + 32] = 0
                mem[_448 + 224] = _517 + ceil32(return_data.size)
                _926 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_448])
                mem[mem[64] + 64] = mem[_448 + 32]
                mem[mem[64] + 96] = mem[_448 + 64]
                mem[mem[64] + 128] = mem[_448 + 96]
                mem[mem[64] + 160] = mem[_448 + 128]
                mem[mem[64] + 192] = mem[_448 + 160]
                mem[mem[64] + 224] = mem[_448 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _539
                idx = 0
                while idx < _539:
                    mem[mem[64] + idx + 320] = mem[_517 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_539) > _539:
                    mem[_926 + _539 + 320] = 0
                return memory
                  from mem[64]
                   len _926 + ceil32(_539) + -mem[64] + 320
            mem[0] = (8 * sub_61cf4863[idx]) + sha3(2) + 7
            mem[_452 + 32] = stor[sha3((8 * stor3[idx]) + ('name', 'stor2', 2) + 7)].field_0
            s = _452 + 32
            t = sha3(mem[0])
            while _452 + stor2[stor3[idx]].field_1793 > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            mem[_448 + 224] = _452
            if arg1 != mem[_448 + 64]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _904 = mem[_448 + 64]
            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _904
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0xc87b56dd with:
                    gas gas_remaining wei
                   args _904
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _945 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _952 = mem[_945]
            require mem[_945] <= test266151307()
            require _945 + mem[_945] + 31 < _945 + return_data.size
            _972 = mem[_945 + mem[_945]]
            if mem[_945 + mem[_945]] > test266151307():
                revert with 'NH{q', 65
            if _945 + ceil32(return_data.size) + ceil32(ceil32(mem[_945 + mem[_945]])) + 1 > test266151307() or ceil32(ceil32(mem[_945 + mem[_945]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _945 + ceil32(return_data.size) + ceil32(ceil32(mem[_945 + mem[_945]])) + 1
            mem[_945 + ceil32(return_data.size)] = _972
            require _952 + _972 + 32 <= return_data.size
            idx = 0
            while idx < _972:
                mem[_945 + ceil32(return_data.size) + idx + 32] = mem[_945 + _952 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_972) <= _972:
                mem[_448 + 224] = _945 + ceil32(return_data.size)
                _1278 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_448])
                mem[mem[64] + 64] = mem[_448 + 32]
                mem[mem[64] + 96] = mem[_448 + 64]
                mem[mem[64] + 128] = mem[_448 + 96]
                mem[mem[64] + 160] = mem[_448 + 128]
                mem[mem[64] + 192] = mem[_448 + 160]
                mem[mem[64] + 224] = mem[_448 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _972
                idx = 0
                while idx < _972:
                    mem[mem[64] + idx + 320] = mem[_945 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_972) > _972:
                    mem[_1278 + _972 + 320] = 0
                return memory
                  from mem[64]
                   len _1278 + ceil32(_972) + -mem[64] + 320
            mem[_945 + ceil32(return_data.size) + _972 + 32] = 0
            mem[_448 + 224] = _945 + ceil32(return_data.size)
            _1298 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = bool(mem[_448])
            mem[mem[64] + 64] = mem[_448 + 32]
            mem[mem[64] + 96] = mem[_448 + 64]
            mem[mem[64] + 128] = mem[_448 + 96]
            mem[mem[64] + 160] = mem[_448 + 128]
            mem[mem[64] + 192] = mem[_448 + 160]
            mem[mem[64] + 224] = mem[_448 + 204 len 20]
            mem[mem[64] + 256] = 256
            mem[mem[64] + 288] = _972
            idx = 0
            while idx < _972:
                mem[mem[64] + idx + 320] = mem[_945 + ceil32(return_data.size) + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_972) > _972:
                mem[_1298 + _972 + 320] = 0
            return memory
              from mem[64]
               len _1298 + ceil32(_972) + -mem[64] + 320
        if stor2[stor3[idx]].field_1792 == stor2[stor3[idx]].field_1793 < 32:
            revert with 'NH{q', 34
        if not stor2[stor3[idx]].field_1793:
            mem[_448 + 224] = _452
            if arg1 != stor2[stor3[idx]].field_512:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor2[stor3[idx]].field_512
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0xc87b56dd with:
                    gas gas_remaining wei
                   args stor2[stor3[idx]].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _509 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _520 = mem[_509]
            require mem[_509] <= test266151307()
            require _509 + mem[_509] + 31 < _509 + return_data.size
            _537 = mem[_509 + mem[_509]]
            if mem[_509 + mem[_509]] > test266151307():
                revert with 'NH{q', 65
            if _509 + ceil32(return_data.size) + ceil32(ceil32(mem[_509 + mem[_509]])) + 1 > test266151307() or ceil32(ceil32(mem[_509 + mem[_509]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _509 + ceil32(return_data.size) + ceil32(ceil32(mem[_509 + mem[_509]])) + 1
            mem[_509 + ceil32(return_data.size)] = _537
            require _520 + _537 + 32 <= return_data.size
            idx = 0
            while idx < _537:
                mem[_509 + ceil32(return_data.size) + idx + 32] = mem[_509 + _520 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_537) <= _537:
                mem[_448 + 224] = _509 + ceil32(return_data.size)
                _915 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_448])
                mem[mem[64] + 64] = mem[_448 + 32]
                mem[mem[64] + 96] = mem[_448 + 64]
                mem[mem[64] + 128] = mem[_448 + 96]
                mem[mem[64] + 160] = mem[_448 + 128]
                mem[mem[64] + 192] = mem[_448 + 160]
                mem[mem[64] + 224] = mem[_448 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _537
                idx = 0
                while idx < _537:
                    mem[mem[64] + idx + 320] = mem[_509 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_537) > _537:
                    mem[_915 + _537 + 320] = 0
                return memory
                  from mem[64]
                   len _915 + ceil32(_537) + -mem[64] + 320
            mem[_509 + ceil32(return_data.size) + _537 + 32] = 0
            mem[_448 + 224] = _509 + ceil32(return_data.size)
            _927 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = bool(mem[_448])
            mem[mem[64] + 64] = mem[_448 + 32]
            mem[mem[64] + 96] = mem[_448 + 64]
            mem[mem[64] + 128] = mem[_448 + 96]
            mem[mem[64] + 160] = mem[_448 + 128]
            mem[mem[64] + 192] = mem[_448 + 160]
            mem[mem[64] + 224] = mem[_448 + 204 len 20]
            mem[mem[64] + 256] = 256
            mem[mem[64] + 288] = _537
            idx = 0
            while idx < _537:
                mem[mem[64] + idx + 320] = mem[_509 + ceil32(return_data.size) + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_537) > _537:
                mem[_927 + _537 + 320] = 0
            return memory
              from mem[64]
               len _927 + ceil32(_537) + -mem[64] + 320
        if 31 >= stor2[stor3[idx]].field_1793:
            mem[_452 + 32] = 256 * stor2[stor3[idx]].field_1800
            mem[_448 + 224] = _452
            if arg1 != stor2[stor3[idx]].field_512:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor2[stor3[idx]].field_512
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0xc87b56dd with:
                    gas gas_remaining wei
                   args stor2[stor3[idx]].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _522 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _532 = mem[_522]
            require mem[_522] <= test266151307()
            require _522 + mem[_522] + 31 < _522 + return_data.size
            _542 = mem[_522 + mem[_522]]
            if mem[_522 + mem[_522]] > test266151307():
                revert with 'NH{q', 65
            if _522 + ceil32(return_data.size) + ceil32(ceil32(mem[_522 + mem[_522]])) + 1 > test266151307() or ceil32(ceil32(mem[_522 + mem[_522]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _522 + ceil32(return_data.size) + ceil32(ceil32(mem[_522 + mem[_522]])) + 1
            mem[_522 + ceil32(return_data.size)] = _542
            require _532 + _542 + 32 <= return_data.size
            idx = 0
            while idx < _542:
                mem[_522 + ceil32(return_data.size) + idx + 32] = mem[_522 + _532 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_542) <= _542:
                mem[_448 + 224] = _522 + ceil32(return_data.size)
                _916 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_448])
                mem[mem[64] + 64] = mem[_448 + 32]
                mem[mem[64] + 96] = mem[_448 + 64]
                mem[mem[64] + 128] = mem[_448 + 96]
                mem[mem[64] + 160] = mem[_448 + 128]
                mem[mem[64] + 192] = mem[_448 + 160]
                mem[mem[64] + 224] = mem[_448 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _542
                idx = 0
                while idx < _542:
                    mem[mem[64] + idx + 320] = mem[_522 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_542) > _542:
                    mem[_916 + _542 + 320] = 0
                return memory
                  from mem[64]
                   len _916 + ceil32(_542) + -mem[64] + 320
            mem[_522 + ceil32(return_data.size) + _542 + 32] = 0
            mem[_448 + 224] = _522 + ceil32(return_data.size)
            _929 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = bool(mem[_448])
            mem[mem[64] + 64] = mem[_448 + 32]
            mem[mem[64] + 96] = mem[_448 + 64]
            mem[mem[64] + 128] = mem[_448 + 96]
            mem[mem[64] + 160] = mem[_448 + 128]
            mem[mem[64] + 192] = mem[_448 + 160]
            mem[mem[64] + 224] = mem[_448 + 204 len 20]
            mem[mem[64] + 256] = 256
            mem[mem[64] + 288] = _542
            idx = 0
            while idx < _542:
                mem[mem[64] + idx + 320] = mem[_522 + ceil32(return_data.size) + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_542) > _542:
                mem[_929 + _542 + 320] = 0
            return memory
              from mem[64]
               len _929 + ceil32(_542) + -mem[64] + 320
        mem[0] = (8 * sub_61cf4863[idx]) + sha3(2) + 7
        mem[_452 + 32] = stor[sha3((8 * stor3[idx]) + ('name', 'stor2', 2) + 7)].field_0
        s = _452 + 32
        t = sha3(mem[0])
        while _452 + stor2[stor3[idx]].field_1793 > s:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        mem[_448 + 224] = _452
        if arg1 != mem[_448 + 64]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _906 = mem[_448 + 64]
        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _906
        require ext_code.size(address(stor1.length))
        staticcall address(stor1.length).0xc87b56dd with:
                gas gas_remaining wei
               args _906
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _948 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _953 = mem[_948]
        require mem[_948] <= test266151307()
        require _948 + mem[_948] + 31 < _948 + return_data.size
        _973 = mem[_948 + mem[_948]]
        if mem[_948 + mem[_948]] > test266151307():
            revert with 'NH{q', 65
        if _948 + ceil32(return_data.size) + ceil32(ceil32(mem[_948 + mem[_948]])) + 1 > test266151307() or ceil32(ceil32(mem[_948 + mem[_948]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _948 + ceil32(return_data.size) + ceil32(ceil32(mem[_948 + mem[_948]])) + 1
        mem[_948 + ceil32(return_data.size)] = _973
        require _953 + _973 + 32 <= return_data.size
        idx = 0
        while idx < _973:
            mem[_948 + ceil32(return_data.size) + idx + 32] = mem[_948 + _953 + idx + 32]
            idx = idx + 32
            continue 
        if ceil32(_973) <= _973:
            mem[_448 + 224] = _948 + ceil32(return_data.size)
            _1283 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = bool(mem[_448])
            mem[mem[64] + 64] = mem[_448 + 32]
            mem[mem[64] + 96] = mem[_448 + 64]
            mem[mem[64] + 128] = mem[_448 + 96]
            mem[mem[64] + 160] = mem[_448 + 128]
            mem[mem[64] + 192] = mem[_448 + 160]
            mem[mem[64] + 224] = mem[_448 + 204 len 20]
            mem[mem[64] + 256] = 256
            mem[mem[64] + 288] = _973
            idx = 0
            while idx < _973:
                mem[mem[64] + idx + 320] = mem[_948 + ceil32(return_data.size) + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_973) > _973:
                mem[_1283 + _973 + 320] = 0
            return memory
              from mem[64]
               len _1283 + ceil32(_973) + -mem[64] + 320
        mem[_948 + ceil32(return_data.size) + _973 + 32] = 0
        mem[_448 + 224] = _948 + ceil32(return_data.size)
        _1303 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = bool(mem[_448])
        mem[mem[64] + 64] = mem[_448 + 32]
        mem[mem[64] + 96] = mem[_448 + 64]
        mem[mem[64] + 128] = mem[_448 + 96]
        mem[mem[64] + 160] = mem[_448 + 128]
        mem[mem[64] + 192] = mem[_448 + 160]
        mem[mem[64] + 224] = mem[_448 + 204 len 20]
        mem[mem[64] + 256] = 256
        mem[mem[64] + 288] = _973
        idx = 0
        while idx < _973:
            mem[mem[64] + idx + 320] = mem[_948 + ceil32(return_data.size) + idx + 32]
            idx = idx + 32
            continue 
        if ceil32(_973) > _973:
            mem[_1303 + _973 + 320] = 0
        return memory
          from mem[64]
           len _1303 + ceil32(_973) + -mem[64] + 320
    mem[mem[64]] = 32
    mem[mem[64] + 32] = bool(mem[352])
    mem[mem[64] + 64] = mem[384]
    mem[mem[64] + 96] = mem[416]
    mem[mem[64] + 128] = mem[448]
    mem[mem[64] + 160] = mem[480]
    mem[mem[64] + 192] = mem[512]
    mem[mem[64] + 224] = mem[556 len 20]
    _546 = mem[576]
    mem[mem[64] + 256] = 256
    _550 = mem[_546]
    mem[mem[64] + 288] = mem[_546]
    mem[mem[64] + 320 len ceil32(_550)] = mem[_546 + 32 len ceil32(_550)]
    if ceil32(_550) > _550:
        mem[mem[64] + _550 + 320] = 0
    return 32, mem[mem[64] + 32 len 224], 256, mem[mem[64] + 288 len ceil32(_550) + 32]
}

function sub_671eebd7(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 96
    mem[0] = msg.sender
    mem[32] = 4
    mem[64] = 608
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 96
    idx = 0
    while idx < sub_15f4d22a[address(msg.sender)]:
        mem[32] = 4
        if idx >= sub_15f4d22a[address(msg.sender)]:
            revert with 'NH{q', 50
        if sub_15f4d22a[address(msg.sender)][idx] >= stor2.length:
            revert with 'NH{q', 50
        mem[0] = 2
        _451 = mem[64]
        mem[64] = mem[64] + 256
        mem[_451] = bool(stor2[stor4[address(msg.sender)][idx]].field_0)
        mem[_451 + 32] = stor2[stor4[address(msg.sender)][idx]].field_256
        mem[_451 + 64] = stor2[stor4[address(msg.sender)][idx]].field_512
        mem[_451 + 96] = stor2[stor4[address(msg.sender)][idx]].field_768
        mem[_451 + 128] = stor2[stor4[address(msg.sender)][idx]].field_1024
        mem[_451 + 160] = stor2[stor4[address(msg.sender)][idx]].field_1280
        mem[_451 + 192] = stor2[stor4[address(msg.sender)][idx]].field_1536
        if stor2[stor4[address(msg.sender)][idx]].field_1792:
            if stor2[stor4[address(msg.sender)][idx]].field_1792 == stor2[stor4[address(msg.sender)][idx]].field_1793 < 32:
                revert with 'NH{q', 34
            _453 = mem[64]
            mem[64] = mem[64] + ceil32(stor2[stor4[address(msg.sender)][idx]].field_1793) + 32
            mem[_453] = stor2[stor4[address(msg.sender)][idx]].field_1793
            if stor2[stor4[address(msg.sender)][idx]].field_1792:
                if stor2[stor4[address(msg.sender)][idx]].field_1792 == stor2[stor4[address(msg.sender)][idx]].field_1793 < 32:
                    revert with 'NH{q', 34
                if not stor2[stor4[address(msg.sender)][idx]].field_1793:
                    mem[_451 + 224] = _453
                    if arg1 != stor2[stor4[address(msg.sender)][idx]].field_512:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor2[stor4[address(msg.sender)][idx]].field_512
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).0xc87b56dd with:
                            gas gas_remaining wei
                           args stor2[stor4[address(msg.sender)][idx]].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _502 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _509 = mem[_502]
                    require mem[_502] <= test266151307()
                    require _502 + mem[_502] + 31 < _502 + return_data.size
                    _526 = mem[_502 + mem[_502]]
                    if mem[_502 + mem[_502]] > test266151307():
                        revert with 'NH{q', 65
                    if _502 + ceil32(return_data.size) + ceil32(ceil32(mem[_502 + mem[_502]])) + 1 > test266151307() or ceil32(ceil32(mem[_502 + mem[_502]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _502 + ceil32(return_data.size) + ceil32(ceil32(mem[_502 + mem[_502]])) + 1
                    mem[_502 + ceil32(return_data.size)] = _526
                    require _509 + _526 + 32 <= return_data.size
                    idx = 0
                    while idx < _526:
                        mem[_502 + ceil32(return_data.size) + idx + 32] = mem[_502 + _509 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_526) <= _526:
                        mem[_451 + 224] = _502 + ceil32(return_data.size)
                        _912 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = bool(mem[_451])
                        mem[mem[64] + 64] = mem[_451 + 32]
                        mem[mem[64] + 96] = mem[_451 + 64]
                        mem[mem[64] + 128] = mem[_451 + 96]
                        mem[mem[64] + 160] = mem[_451 + 128]
                        mem[mem[64] + 192] = mem[_451 + 160]
                        mem[mem[64] + 224] = mem[_451 + 204 len 20]
                        mem[mem[64] + 256] = 256
                        mem[mem[64] + 288] = _526
                        idx = 0
                        while idx < _526:
                            mem[mem[64] + idx + 320] = mem[_502 + ceil32(return_data.size) + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_526) > _526:
                            mem[_912 + _526 + 320] = 0
                        return memory
                          from mem[64]
                           len _912 + ceil32(_526) + -mem[64] + 320
                    mem[_502 + ceil32(return_data.size) + _526 + 32] = 0
                    mem[_451 + 224] = _502 + ceil32(return_data.size)
                    _921 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_451])
                    mem[mem[64] + 64] = mem[_451 + 32]
                    mem[mem[64] + 96] = mem[_451 + 64]
                    mem[mem[64] + 128] = mem[_451 + 96]
                    mem[mem[64] + 160] = mem[_451 + 128]
                    mem[mem[64] + 192] = mem[_451 + 160]
                    mem[mem[64] + 224] = mem[_451 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _526
                    idx = 0
                    while idx < _526:
                        mem[mem[64] + idx + 320] = mem[_502 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_526) > _526:
                        mem[_921 + _526 + 320] = 0
                    return memory
                      from mem[64]
                       len _921 + ceil32(_526) + -mem[64] + 320
                if 31 >= stor2[stor4[address(msg.sender)][idx]].field_1793:
                    mem[_453 + 32] = 256 * stor2[stor4[address(msg.sender)][idx]].field_1800
                    mem[_451 + 224] = _453
                    if arg1 != stor2[stor4[address(msg.sender)][idx]].field_512:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor2[stor4[address(msg.sender)][idx]].field_512
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).0xc87b56dd with:
                            gas gas_remaining wei
                           args stor2[stor4[address(msg.sender)][idx]].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _511 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _522 = mem[_511]
                    require mem[_511] <= test266151307()
                    require _511 + mem[_511] + 31 < _511 + return_data.size
                    _537 = mem[_511 + mem[_511]]
                    if mem[_511 + mem[_511]] > test266151307():
                        revert with 'NH{q', 65
                    if _511 + ceil32(return_data.size) + ceil32(ceil32(mem[_511 + mem[_511]])) + 1 > test266151307() or ceil32(ceil32(mem[_511 + mem[_511]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _511 + ceil32(return_data.size) + ceil32(ceil32(mem[_511 + mem[_511]])) + 1
                    mem[_511 + ceil32(return_data.size)] = _537
                    require _522 + _537 + 32 <= return_data.size
                    idx = 0
                    while idx < _537:
                        mem[_511 + ceil32(return_data.size) + idx + 32] = mem[_511 + _522 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_537) <= _537:
                        mem[_451 + 224] = _511 + ceil32(return_data.size)
                        _913 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = bool(mem[_451])
                        mem[mem[64] + 64] = mem[_451 + 32]
                        mem[mem[64] + 96] = mem[_451 + 64]
                        mem[mem[64] + 128] = mem[_451 + 96]
                        mem[mem[64] + 160] = mem[_451 + 128]
                        mem[mem[64] + 192] = mem[_451 + 160]
                        mem[mem[64] + 224] = mem[_451 + 204 len 20]
                        mem[mem[64] + 256] = 256
                        mem[mem[64] + 288] = _537
                        idx = 0
                        while idx < _537:
                            mem[mem[64] + idx + 320] = mem[_511 + ceil32(return_data.size) + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_537) > _537:
                            mem[_913 + _537 + 320] = 0
                        return memory
                          from mem[64]
                           len _913 + ceil32(_537) + -mem[64] + 320
                    mem[_511 + ceil32(return_data.size) + _537 + 32] = 0
                    mem[_451 + 224] = _511 + ceil32(return_data.size)
                    _923 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_451])
                    mem[mem[64] + 64] = mem[_451 + 32]
                    mem[mem[64] + 96] = mem[_451 + 64]
                    mem[mem[64] + 128] = mem[_451 + 96]
                    mem[mem[64] + 160] = mem[_451 + 128]
                    mem[mem[64] + 192] = mem[_451 + 160]
                    mem[mem[64] + 224] = mem[_451 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _537
                    idx = 0
                    while idx < _537:
                        mem[mem[64] + idx + 320] = mem[_511 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_537) > _537:
                        mem[_923 + _537 + 320] = 0
                    return memory
                      from mem[64]
                       len _923 + ceil32(_537) + -mem[64] + 320
                mem[0] = (8 * sub_15f4d22a[address(msg.sender)][idx]) + sha3(2) + 7
                mem[_453 + 32] = stor[sha3((8 * stor4[address(msg.sender)][idx]) + ('name', 'stor2', 2) + 7)].field_0
                s = _453 + 32
                t = sha3(mem[0])
                while _453 + stor2[stor4[address(msg.sender)][idx]].field_1793 > s:
                    mem[s + 32] = uint256(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_451 + 224] = _453
                if arg1 != mem[_451 + 64]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _903 = mem[_451 + 64]
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _903
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0xc87b56dd with:
                        gas gas_remaining wei
                       args _903
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _942 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _953 = mem[_942]
                require mem[_942] <= test266151307()
                require _942 + mem[_942] + 31 < _942 + return_data.size
                _973 = mem[_942 + mem[_942]]
                if mem[_942 + mem[_942]] > test266151307():
                    revert with 'NH{q', 65
                if _942 + ceil32(return_data.size) + ceil32(ceil32(mem[_942 + mem[_942]])) + 1 > test266151307() or ceil32(ceil32(mem[_942 + mem[_942]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _942 + ceil32(return_data.size) + ceil32(ceil32(mem[_942 + mem[_942]])) + 1
                mem[_942 + ceil32(return_data.size)] = _973
                require _953 + _973 + 32 <= return_data.size
                idx = 0
                while idx < _973:
                    mem[_942 + ceil32(return_data.size) + idx + 32] = mem[_942 + _953 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_973) <= _973:
                    mem[_451 + 224] = _942 + ceil32(return_data.size)
                    _1271 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_451])
                    mem[mem[64] + 64] = mem[_451 + 32]
                    mem[mem[64] + 96] = mem[_451 + 64]
                    mem[mem[64] + 128] = mem[_451 + 96]
                    mem[mem[64] + 160] = mem[_451 + 128]
                    mem[mem[64] + 192] = mem[_451 + 160]
                    mem[mem[64] + 224] = mem[_451 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _973
                    idx = 0
                    while idx < _973:
                        mem[mem[64] + idx + 320] = mem[_942 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_973) > _973:
                        mem[_1271 + _973 + 320] = 0
                    return memory
                      from mem[64]
                       len _1271 + ceil32(_973) + -mem[64] + 320
                mem[_942 + ceil32(return_data.size) + _973 + 32] = 0
                mem[_451 + 224] = _942 + ceil32(return_data.size)
                _1291 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_451])
                mem[mem[64] + 64] = mem[_451 + 32]
                mem[mem[64] + 96] = mem[_451 + 64]
                mem[mem[64] + 128] = mem[_451 + 96]
                mem[mem[64] + 160] = mem[_451 + 128]
                mem[mem[64] + 192] = mem[_451 + 160]
                mem[mem[64] + 224] = mem[_451 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _973
                idx = 0
                while idx < _973:
                    mem[mem[64] + idx + 320] = mem[_942 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_973) > _973:
                    mem[_1291 + _973 + 320] = 0
                return memory
                  from mem[64]
                   len _1291 + ceil32(_973) + -mem[64] + 320
            if stor2[stor4[address(msg.sender)][idx]].field_1792 == stor2[stor4[address(msg.sender)][idx]].field_1793 < 32:
                revert with 'NH{q', 34
            if not stor2[stor4[address(msg.sender)][idx]].field_1793:
                mem[_451 + 224] = _453
                if arg1 != stor2[stor4[address(msg.sender)][idx]].field_512:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor2[stor4[address(msg.sender)][idx]].field_512
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0xc87b56dd with:
                        gas gas_remaining wei
                       args stor2[stor4[address(msg.sender)][idx]].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _505 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _515 = mem[_505]
                require mem[_505] <= test266151307()
                require _505 + mem[_505] + 31 < _505 + return_data.size
                _532 = mem[_505 + mem[_505]]
                if mem[_505 + mem[_505]] > test266151307():
                    revert with 'NH{q', 65
                if _505 + ceil32(return_data.size) + ceil32(ceil32(mem[_505 + mem[_505]])) + 1 > test266151307() or ceil32(ceil32(mem[_505 + mem[_505]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _505 + ceil32(return_data.size) + ceil32(ceil32(mem[_505 + mem[_505]])) + 1
                mem[_505 + ceil32(return_data.size)] = _532
                require _515 + _532 + 32 <= return_data.size
                idx = 0
                while idx < _532:
                    mem[_505 + ceil32(return_data.size) + idx + 32] = mem[_505 + _515 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_532) <= _532:
                    mem[_451 + 224] = _505 + ceil32(return_data.size)
                    _914 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_451])
                    mem[mem[64] + 64] = mem[_451 + 32]
                    mem[mem[64] + 96] = mem[_451 + 64]
                    mem[mem[64] + 128] = mem[_451 + 96]
                    mem[mem[64] + 160] = mem[_451 + 128]
                    mem[mem[64] + 192] = mem[_451 + 160]
                    mem[mem[64] + 224] = mem[_451 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _532
                    idx = 0
                    while idx < _532:
                        mem[mem[64] + idx + 320] = mem[_505 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_532) > _532:
                        mem[_914 + _532 + 320] = 0
                    return memory
                      from mem[64]
                       len _914 + ceil32(_532) + -mem[64] + 320
                mem[_505 + ceil32(return_data.size) + _532 + 32] = 0
                mem[_451 + 224] = _505 + ceil32(return_data.size)
                _924 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_451])
                mem[mem[64] + 64] = mem[_451 + 32]
                mem[mem[64] + 96] = mem[_451 + 64]
                mem[mem[64] + 128] = mem[_451 + 96]
                mem[mem[64] + 160] = mem[_451 + 128]
                mem[mem[64] + 192] = mem[_451 + 160]
                mem[mem[64] + 224] = mem[_451 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _532
                idx = 0
                while idx < _532:
                    mem[mem[64] + idx + 320] = mem[_505 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_532) > _532:
                    mem[_924 + _532 + 320] = 0
                return memory
                  from mem[64]
                   len _924 + ceil32(_532) + -mem[64] + 320
            if 31 >= stor2[stor4[address(msg.sender)][idx]].field_1793:
                mem[_453 + 32] = 256 * stor2[stor4[address(msg.sender)][idx]].field_1800
                mem[_451 + 224] = _453
                if arg1 != stor2[stor4[address(msg.sender)][idx]].field_512:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor2[stor4[address(msg.sender)][idx]].field_512
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0xc87b56dd with:
                        gas gas_remaining wei
                       args stor2[stor4[address(msg.sender)][idx]].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _517 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _528 = mem[_517]
                require mem[_517] <= test266151307()
                require _517 + mem[_517] + 31 < _517 + return_data.size
                _541 = mem[_517 + mem[_517]]
                if mem[_517 + mem[_517]] > test266151307():
                    revert with 'NH{q', 65
                if _517 + ceil32(return_data.size) + ceil32(ceil32(mem[_517 + mem[_517]])) + 1 > test266151307() or ceil32(ceil32(mem[_517 + mem[_517]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _517 + ceil32(return_data.size) + ceil32(ceil32(mem[_517 + mem[_517]])) + 1
                mem[_517 + ceil32(return_data.size)] = _541
                require _528 + _541 + 32 <= return_data.size
                idx = 0
                while idx < _541:
                    mem[_517 + ceil32(return_data.size) + idx + 32] = mem[_517 + _528 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_541) <= _541:
                    mem[_451 + 224] = _517 + ceil32(return_data.size)
                    _915 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_451])
                    mem[mem[64] + 64] = mem[_451 + 32]
                    mem[mem[64] + 96] = mem[_451 + 64]
                    mem[mem[64] + 128] = mem[_451 + 96]
                    mem[mem[64] + 160] = mem[_451 + 128]
                    mem[mem[64] + 192] = mem[_451 + 160]
                    mem[mem[64] + 224] = mem[_451 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _541
                    idx = 0
                    while idx < _541:
                        mem[mem[64] + idx + 320] = mem[_517 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_541) > _541:
                        mem[_915 + _541 + 320] = 0
                    return memory
                      from mem[64]
                       len _915 + ceil32(_541) + -mem[64] + 320
                mem[_517 + ceil32(return_data.size) + _541 + 32] = 0
                mem[_451 + 224] = _517 + ceil32(return_data.size)
                _926 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_451])
                mem[mem[64] + 64] = mem[_451 + 32]
                mem[mem[64] + 96] = mem[_451 + 64]
                mem[mem[64] + 128] = mem[_451 + 96]
                mem[mem[64] + 160] = mem[_451 + 128]
                mem[mem[64] + 192] = mem[_451 + 160]
                mem[mem[64] + 224] = mem[_451 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _541
                idx = 0
                while idx < _541:
                    mem[mem[64] + idx + 320] = mem[_517 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_541) > _541:
                    mem[_926 + _541 + 320] = 0
                return memory
                  from mem[64]
                   len _926 + ceil32(_541) + -mem[64] + 320
            mem[0] = (8 * sub_15f4d22a[address(msg.sender)][idx]) + sha3(2) + 7
            mem[_453 + 32] = stor[sha3((8 * stor4[address(msg.sender)][idx]) + ('name', 'stor2', 2) + 7)].field_0
            s = _453 + 32
            t = sha3(mem[0])
            while _453 + stor2[stor4[address(msg.sender)][idx]].field_1793 > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            mem[_451 + 224] = _453
            if arg1 != mem[_451 + 64]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _905 = mem[_451 + 64]
            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _905
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0xc87b56dd with:
                    gas gas_remaining wei
                   args _905
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _945 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _954 = mem[_945]
            require mem[_945] <= test266151307()
            require _945 + mem[_945] + 31 < _945 + return_data.size
            _974 = mem[_945 + mem[_945]]
            if mem[_945 + mem[_945]] > test266151307():
                revert with 'NH{q', 65
            if _945 + ceil32(return_data.size) + ceil32(ceil32(mem[_945 + mem[_945]])) + 1 > test266151307() or ceil32(ceil32(mem[_945 + mem[_945]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _945 + ceil32(return_data.size) + ceil32(ceil32(mem[_945 + mem[_945]])) + 1
            mem[_945 + ceil32(return_data.size)] = _974
            require _954 + _974 + 32 <= return_data.size
            idx = 0
            while idx < _974:
                mem[_945 + ceil32(return_data.size) + idx + 32] = mem[_945 + _954 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_974) <= _974:
                mem[_451 + 224] = _945 + ceil32(return_data.size)
                _1276 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_451])
                mem[mem[64] + 64] = mem[_451 + 32]
                mem[mem[64] + 96] = mem[_451 + 64]
                mem[mem[64] + 128] = mem[_451 + 96]
                mem[mem[64] + 160] = mem[_451 + 128]
                mem[mem[64] + 192] = mem[_451 + 160]
                mem[mem[64] + 224] = mem[_451 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _974
                idx = 0
                while idx < _974:
                    mem[mem[64] + idx + 320] = mem[_945 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_974) > _974:
                    mem[_1276 + _974 + 320] = 0
                return memory
                  from mem[64]
                   len _1276 + ceil32(_974) + -mem[64] + 320
            mem[_945 + ceil32(return_data.size) + _974 + 32] = 0
            mem[_451 + 224] = _945 + ceil32(return_data.size)
            _1296 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = bool(mem[_451])
            mem[mem[64] + 64] = mem[_451 + 32]
            mem[mem[64] + 96] = mem[_451 + 64]
            mem[mem[64] + 128] = mem[_451 + 96]
            mem[mem[64] + 160] = mem[_451 + 128]
            mem[mem[64] + 192] = mem[_451 + 160]
            mem[mem[64] + 224] = mem[_451 + 204 len 20]
            mem[mem[64] + 256] = 256
            mem[mem[64] + 288] = _974
            idx = 0
            while idx < _974:
                mem[mem[64] + idx + 320] = mem[_945 + ceil32(return_data.size) + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_974) > _974:
                mem[_1296 + _974 + 320] = 0
            return memory
              from mem[64]
               len _1296 + ceil32(_974) + -mem[64] + 320
        if stor2[stor4[address(msg.sender)][idx]].field_1792 == stor2[stor4[address(msg.sender)][idx]].field_1793 < 32:
            revert with 'NH{q', 34
        _455 = mem[64]
        mem[64] = mem[64] + ceil32(stor2[stor4[address(msg.sender)][idx]].field_1793) + 32
        mem[_455] = stor2[stor4[address(msg.sender)][idx]].field_1793
        if stor2[stor4[address(msg.sender)][idx]].field_1792:
            if stor2[stor4[address(msg.sender)][idx]].field_1792 == stor2[stor4[address(msg.sender)][idx]].field_1793 < 32:
                revert with 'NH{q', 34
            if not stor2[stor4[address(msg.sender)][idx]].field_1793:
                mem[_451 + 224] = _455
                if arg1 != stor2[stor4[address(msg.sender)][idx]].field_512:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor2[stor4[address(msg.sender)][idx]].field_512
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0xc87b56dd with:
                        gas gas_remaining wei
                       args stor2[stor4[address(msg.sender)][idx]].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _507 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _518 = mem[_507]
                require mem[_507] <= test266151307()
                require _507 + mem[_507] + 31 < _507 + return_data.size
                _533 = mem[_507 + mem[_507]]
                if mem[_507 + mem[_507]] > test266151307():
                    revert with 'NH{q', 65
                if _507 + ceil32(return_data.size) + ceil32(ceil32(mem[_507 + mem[_507]])) + 1 > test266151307() or ceil32(ceil32(mem[_507 + mem[_507]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _507 + ceil32(return_data.size) + ceil32(ceil32(mem[_507 + mem[_507]])) + 1
                mem[_507 + ceil32(return_data.size)] = _533
                require _518 + _533 + 32 <= return_data.size
                idx = 0
                while idx < _533:
                    mem[_507 + ceil32(return_data.size) + idx + 32] = mem[_507 + _518 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_533) <= _533:
                    mem[_451 + 224] = _507 + ceil32(return_data.size)
                    _916 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_451])
                    mem[mem[64] + 64] = mem[_451 + 32]
                    mem[mem[64] + 96] = mem[_451 + 64]
                    mem[mem[64] + 128] = mem[_451 + 96]
                    mem[mem[64] + 160] = mem[_451 + 128]
                    mem[mem[64] + 192] = mem[_451 + 160]
                    mem[mem[64] + 224] = mem[_451 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _533
                    idx = 0
                    while idx < _533:
                        mem[mem[64] + idx + 320] = mem[_507 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_533) > _533:
                        mem[_916 + _533 + 320] = 0
                    return memory
                      from mem[64]
                       len _916 + ceil32(_533) + -mem[64] + 320
                mem[_507 + ceil32(return_data.size) + _533 + 32] = 0
                mem[_451 + 224] = _507 + ceil32(return_data.size)
                _927 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_451])
                mem[mem[64] + 64] = mem[_451 + 32]
                mem[mem[64] + 96] = mem[_451 + 64]
                mem[mem[64] + 128] = mem[_451 + 96]
                mem[mem[64] + 160] = mem[_451 + 128]
                mem[mem[64] + 192] = mem[_451 + 160]
                mem[mem[64] + 224] = mem[_451 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _533
                idx = 0
                while idx < _533:
                    mem[mem[64] + idx + 320] = mem[_507 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_533) > _533:
                    mem[_927 + _533 + 320] = 0
                return memory
                  from mem[64]
                   len _927 + ceil32(_533) + -mem[64] + 320
            if 31 >= stor2[stor4[address(msg.sender)][idx]].field_1793:
                mem[_455 + 32] = 256 * stor2[stor4[address(msg.sender)][idx]].field_1800
                mem[_451 + 224] = _455
                if arg1 != stor2[stor4[address(msg.sender)][idx]].field_512:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor2[stor4[address(msg.sender)][idx]].field_512
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0xc87b56dd with:
                        gas gas_remaining wei
                       args stor2[stor4[address(msg.sender)][idx]].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _520 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _530 = mem[_520]
                require mem[_520] <= test266151307()
                require _520 + mem[_520] + 31 < _520 + return_data.size
                _542 = mem[_520 + mem[_520]]
                if mem[_520 + mem[_520]] > test266151307():
                    revert with 'NH{q', 65
                if _520 + ceil32(return_data.size) + ceil32(ceil32(mem[_520 + mem[_520]])) + 1 > test266151307() or ceil32(ceil32(mem[_520 + mem[_520]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _520 + ceil32(return_data.size) + ceil32(ceil32(mem[_520 + mem[_520]])) + 1
                mem[_520 + ceil32(return_data.size)] = _542
                require _530 + _542 + 32 <= return_data.size
                idx = 0
                while idx < _542:
                    mem[_520 + ceil32(return_data.size) + idx + 32] = mem[_520 + _530 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_542) <= _542:
                    mem[_451 + 224] = _520 + ceil32(return_data.size)
                    _917 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = bool(mem[_451])
                    mem[mem[64] + 64] = mem[_451 + 32]
                    mem[mem[64] + 96] = mem[_451 + 64]
                    mem[mem[64] + 128] = mem[_451 + 96]
                    mem[mem[64] + 160] = mem[_451 + 128]
                    mem[mem[64] + 192] = mem[_451 + 160]
                    mem[mem[64] + 224] = mem[_451 + 204 len 20]
                    mem[mem[64] + 256] = 256
                    mem[mem[64] + 288] = _542
                    idx = 0
                    while idx < _542:
                        mem[mem[64] + idx + 320] = mem[_520 + ceil32(return_data.size) + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_542) > _542:
                        mem[_917 + _542 + 320] = 0
                    return memory
                      from mem[64]
                       len _917 + ceil32(_542) + -mem[64] + 320
                mem[_520 + ceil32(return_data.size) + _542 + 32] = 0
                mem[_451 + 224] = _520 + ceil32(return_data.size)
                _929 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_451])
                mem[mem[64] + 64] = mem[_451 + 32]
                mem[mem[64] + 96] = mem[_451 + 64]
                mem[mem[64] + 128] = mem[_451 + 96]
                mem[mem[64] + 160] = mem[_451 + 128]
                mem[mem[64] + 192] = mem[_451 + 160]
                mem[mem[64] + 224] = mem[_451 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _542
                idx = 0
                while idx < _542:
                    mem[mem[64] + idx + 320] = mem[_520 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_542) > _542:
                    mem[_929 + _542 + 320] = 0
                return memory
                  from mem[64]
                   len _929 + ceil32(_542) + -mem[64] + 320
            mem[0] = (8 * sub_15f4d22a[address(msg.sender)][idx]) + sha3(2) + 7
            mem[_455 + 32] = stor[sha3((8 * stor4[address(msg.sender)][idx]) + ('name', 'stor2', 2) + 7)].field_0
            s = _455 + 32
            t = sha3(mem[0])
            while _455 + stor2[stor4[address(msg.sender)][idx]].field_1793 > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            mem[_451 + 224] = _455
            if arg1 != mem[_451 + 64]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _907 = mem[_451 + 64]
            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _907
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0xc87b56dd with:
                    gas gas_remaining wei
                   args _907
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _948 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _955 = mem[_948]
            require mem[_948] <= test266151307()
            require _948 + mem[_948] + 31 < _948 + return_data.size
            _975 = mem[_948 + mem[_948]]
            if mem[_948 + mem[_948]] > test266151307():
                revert with 'NH{q', 65
            if _948 + ceil32(return_data.size) + ceil32(ceil32(mem[_948 + mem[_948]])) + 1 > test266151307() or ceil32(ceil32(mem[_948 + mem[_948]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _948 + ceil32(return_data.size) + ceil32(ceil32(mem[_948 + mem[_948]])) + 1
            mem[_948 + ceil32(return_data.size)] = _975
            require _955 + _975 + 32 <= return_data.size
            idx = 0
            while idx < _975:
                mem[_948 + ceil32(return_data.size) + idx + 32] = mem[_948 + _955 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_975) <= _975:
                mem[_451 + 224] = _948 + ceil32(return_data.size)
                _1281 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_451])
                mem[mem[64] + 64] = mem[_451 + 32]
                mem[mem[64] + 96] = mem[_451 + 64]
                mem[mem[64] + 128] = mem[_451 + 96]
                mem[mem[64] + 160] = mem[_451 + 128]
                mem[mem[64] + 192] = mem[_451 + 160]
                mem[mem[64] + 224] = mem[_451 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _975
                idx = 0
                while idx < _975:
                    mem[mem[64] + idx + 320] = mem[_948 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_975) > _975:
                    mem[_1281 + _975 + 320] = 0
                return memory
                  from mem[64]
                   len _1281 + ceil32(_975) + -mem[64] + 320
            mem[_948 + ceil32(return_data.size) + _975 + 32] = 0
            mem[_451 + 224] = _948 + ceil32(return_data.size)
            _1301 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = bool(mem[_451])
            mem[mem[64] + 64] = mem[_451 + 32]
            mem[mem[64] + 96] = mem[_451 + 64]
            mem[mem[64] + 128] = mem[_451 + 96]
            mem[mem[64] + 160] = mem[_451 + 128]
            mem[mem[64] + 192] = mem[_451 + 160]
            mem[mem[64] + 224] = mem[_451 + 204 len 20]
            mem[mem[64] + 256] = 256
            mem[mem[64] + 288] = _975
            idx = 0
            while idx < _975:
                mem[mem[64] + idx + 320] = mem[_948 + ceil32(return_data.size) + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_975) > _975:
                mem[_1301 + _975 + 320] = 0
            return memory
              from mem[64]
               len _1301 + ceil32(_975) + -mem[64] + 320
        if stor2[stor4[address(msg.sender)][idx]].field_1792 == stor2[stor4[address(msg.sender)][idx]].field_1793 < 32:
            revert with 'NH{q', 34
        if not stor2[stor4[address(msg.sender)][idx]].field_1793:
            mem[_451 + 224] = _455
            if arg1 != stor2[stor4[address(msg.sender)][idx]].field_512:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor2[stor4[address(msg.sender)][idx]].field_512
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0xc87b56dd with:
                    gas gas_remaining wei
                   args stor2[stor4[address(msg.sender)][idx]].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _512 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _523 = mem[_512]
            require mem[_512] <= test266151307()
            require _512 + mem[_512] + 31 < _512 + return_data.size
            _540 = mem[_512 + mem[_512]]
            if mem[_512 + mem[_512]] > test266151307():
                revert with 'NH{q', 65
            if _512 + ceil32(return_data.size) + ceil32(ceil32(mem[_512 + mem[_512]])) + 1 > test266151307() or ceil32(ceil32(mem[_512 + mem[_512]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _512 + ceil32(return_data.size) + ceil32(ceil32(mem[_512 + mem[_512]])) + 1
            mem[_512 + ceil32(return_data.size)] = _540
            require _523 + _540 + 32 <= return_data.size
            idx = 0
            while idx < _540:
                mem[_512 + ceil32(return_data.size) + idx + 32] = mem[_512 + _523 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_540) <= _540:
                mem[_451 + 224] = _512 + ceil32(return_data.size)
                _918 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_451])
                mem[mem[64] + 64] = mem[_451 + 32]
                mem[mem[64] + 96] = mem[_451 + 64]
                mem[mem[64] + 128] = mem[_451 + 96]
                mem[mem[64] + 160] = mem[_451 + 128]
                mem[mem[64] + 192] = mem[_451 + 160]
                mem[mem[64] + 224] = mem[_451 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _540
                idx = 0
                while idx < _540:
                    mem[mem[64] + idx + 320] = mem[_512 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_540) > _540:
                    mem[_918 + _540 + 320] = 0
                return memory
                  from mem[64]
                   len _918 + ceil32(_540) + -mem[64] + 320
            mem[_512 + ceil32(return_data.size) + _540 + 32] = 0
            mem[_451 + 224] = _512 + ceil32(return_data.size)
            _930 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = bool(mem[_451])
            mem[mem[64] + 64] = mem[_451 + 32]
            mem[mem[64] + 96] = mem[_451 + 64]
            mem[mem[64] + 128] = mem[_451 + 96]
            mem[mem[64] + 160] = mem[_451 + 128]
            mem[mem[64] + 192] = mem[_451 + 160]
            mem[mem[64] + 224] = mem[_451 + 204 len 20]
            mem[mem[64] + 256] = 256
            mem[mem[64] + 288] = _540
            idx = 0
            while idx < _540:
                mem[mem[64] + idx + 320] = mem[_512 + ceil32(return_data.size) + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_540) > _540:
                mem[_930 + _540 + 320] = 0
            return memory
              from mem[64]
               len _930 + ceil32(_540) + -mem[64] + 320
        if 31 >= stor2[stor4[address(msg.sender)][idx]].field_1793:
            mem[_455 + 32] = 256 * stor2[stor4[address(msg.sender)][idx]].field_1800
            mem[_451 + 224] = _455
            if arg1 != stor2[stor4[address(msg.sender)][idx]].field_512:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor2[stor4[address(msg.sender)][idx]].field_512
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0xc87b56dd with:
                    gas gas_remaining wei
                   args stor2[stor4[address(msg.sender)][idx]].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _525 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _535 = mem[_525]
            require mem[_525] <= test266151307()
            require _525 + mem[_525] + 31 < _525 + return_data.size
            _545 = mem[_525 + mem[_525]]
            if mem[_525 + mem[_525]] > test266151307():
                revert with 'NH{q', 65
            if _525 + ceil32(return_data.size) + ceil32(ceil32(mem[_525 + mem[_525]])) + 1 > test266151307() or ceil32(ceil32(mem[_525 + mem[_525]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _525 + ceil32(return_data.size) + ceil32(ceil32(mem[_525 + mem[_525]])) + 1
            mem[_525 + ceil32(return_data.size)] = _545
            require _535 + _545 + 32 <= return_data.size
            idx = 0
            while idx < _545:
                mem[_525 + ceil32(return_data.size) + idx + 32] = mem[_525 + _535 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_545) <= _545:
                mem[_451 + 224] = _525 + ceil32(return_data.size)
                _919 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = bool(mem[_451])
                mem[mem[64] + 64] = mem[_451 + 32]
                mem[mem[64] + 96] = mem[_451 + 64]
                mem[mem[64] + 128] = mem[_451 + 96]
                mem[mem[64] + 160] = mem[_451 + 128]
                mem[mem[64] + 192] = mem[_451 + 160]
                mem[mem[64] + 224] = mem[_451 + 204 len 20]
                mem[mem[64] + 256] = 256
                mem[mem[64] + 288] = _545
                idx = 0
                while idx < _545:
                    mem[mem[64] + idx + 320] = mem[_525 + ceil32(return_data.size) + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_545) > _545:
                    mem[_919 + _545 + 320] = 0
                return memory
                  from mem[64]
                   len _919 + ceil32(_545) + -mem[64] + 320
            mem[_525 + ceil32(return_data.size) + _545 + 32] = 0
            mem[_451 + 224] = _525 + ceil32(return_data.size)
            _932 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = bool(mem[_451])
            mem[mem[64] + 64] = mem[_451 + 32]
            mem[mem[64] + 96] = mem[_451 + 64]
            mem[mem[64] + 128] = mem[_451 + 96]
            mem[mem[64] + 160] = mem[_451 + 128]
            mem[mem[64] + 192] = mem[_451 + 160]
            mem[mem[64] + 224] = mem[_451 + 204 len 20]
            mem[mem[64] + 256] = 256
            mem[mem[64] + 288] = _545
            idx = 0
            while idx < _545:
                mem[mem[64] + idx + 320] = mem[_525 + ceil32(return_data.size) + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_545) > _545:
                mem[_932 + _545 + 320] = 0
            return memory
              from mem[64]
               len _932 + ceil32(_545) + -mem[64] + 320
        mem[0] = (8 * sub_15f4d22a[address(msg.sender)][idx]) + sha3(2) + 7
        mem[_455 + 32] = stor[sha3((8 * stor4[address(msg.sender)][idx]) + ('name', 'stor2', 2) + 7)].field_0
        s = _455 + 32
        t = sha3(mem[0])
        while _455 + stor2[stor4[address(msg.sender)][idx]].field_1793 > s:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        mem[_451 + 224] = _455
        if arg1 != mem[_451 + 64]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _909 = mem[_451 + 64]
        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _909
        require ext_code.size(address(stor1.length))
        staticcall address(stor1.length).0xc87b56dd with:
                gas gas_remaining wei
               args _909
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _951 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _956 = mem[_951]
        require mem[_951] <= test266151307()
        require _951 + mem[_951] + 31 < _951 + return_data.size
        _976 = mem[_951 + mem[_951]]
        if mem[_951 + mem[_951]] > test266151307():
            revert with 'NH{q', 65
        if _951 + ceil32(return_data.size) + ceil32(ceil32(mem[_951 + mem[_951]])) + 1 > test266151307() or ceil32(ceil32(mem[_951 + mem[_951]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _951 + ceil32(return_data.size) + ceil32(ceil32(mem[_951 + mem[_951]])) + 1
        mem[_951 + ceil32(return_data.size)] = _976
        require _956 + _976 + 32 <= return_data.size
        idx = 0
        while idx < _976:
            mem[_951 + ceil32(return_data.size) + idx + 32] = mem[_951 + _956 + idx + 32]
            idx = idx + 32
            continue 
        if ceil32(_976) <= _976:
            mem[_451 + 224] = _951 + ceil32(return_data.size)
            _1286 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = bool(mem[_451])
            mem[mem[64] + 64] = mem[_451 + 32]
            mem[mem[64] + 96] = mem[_451 + 64]
            mem[mem[64] + 128] = mem[_451 + 96]
            mem[mem[64] + 160] = mem[_451 + 128]
            mem[mem[64] + 192] = mem[_451 + 160]
            mem[mem[64] + 224] = mem[_451 + 204 len 20]
            mem[mem[64] + 256] = 256
            mem[mem[64] + 288] = _976
            idx = 0
            while idx < _976:
                mem[mem[64] + idx + 320] = mem[_951 + ceil32(return_data.size) + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_976) > _976:
                mem[_1286 + _976 + 320] = 0
            return memory
              from mem[64]
               len _1286 + ceil32(_976) + -mem[64] + 320
        mem[_951 + ceil32(return_data.size) + _976 + 32] = 0
        mem[_451 + 224] = _951 + ceil32(return_data.size)
        _1306 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = bool(mem[_451])
        mem[mem[64] + 64] = mem[_451 + 32]
        mem[mem[64] + 96] = mem[_451 + 64]
        mem[mem[64] + 128] = mem[_451 + 96]
        mem[mem[64] + 160] = mem[_451 + 128]
        mem[mem[64] + 192] = mem[_451 + 160]
        mem[mem[64] + 224] = mem[_451 + 204 len 20]
        mem[mem[64] + 256] = 256
        mem[mem[64] + 288] = _976
        idx = 0
        while idx < _976:
            mem[mem[64] + idx + 320] = mem[_951 + ceil32(return_data.size) + idx + 32]
            idx = idx + 32
            continue 
        if ceil32(_976) > _976:
            mem[_1306 + _976 + 320] = 0
        return memory
          from mem[64]
           len _1306 + ceil32(_976) + -mem[64] + 320
    mem[mem[64]] = 32
    mem[mem[64] + 32] = bool(mem[352])
    mem[mem[64] + 64] = mem[384]
    mem[mem[64] + 96] = mem[416]
    mem[mem[64] + 128] = mem[448]
    mem[mem[64] + 160] = mem[480]
    mem[mem[64] + 192] = mem[512]
    mem[mem[64] + 224] = mem[556 len 20]
    _549 = mem[576]
    mem[mem[64] + 256] = 256
    _553 = mem[_549]
    mem[mem[64] + 288] = mem[_549]
    mem[mem[64] + 320 len ceil32(_553)] = mem[_549 + 32 len ceil32(_553)]
    if ceil32(_553) > _553:
        mem[mem[64] + _553 + 320] = 0
    return 32, mem[mem[64] + 32 len 224], 256, mem[mem[64] + 288 len ceil32(_553) + 32]
}

function sub_c128b231(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 <= sub_61cf4863.length:
        if arg2 > test266151307():
            revert with 'NH{q', 65
        mem[96] = arg2
        mem[64] = (32 * arg2) + 128
        if not arg2:
            idx = 0
            while idx < arg2:
                if arg1 > -idx - 1:
                    revert with 'NH{q', 17
                if arg1 + idx >= sub_61cf4863.length:
                    revert with 'NH{q', 50
                if stor[('name', 'sub_61cf4863', 3) + arg1 + idx] >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                _588 = mem[64]
                mem[64] = mem[64] + 256
                mem[_588] = bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_0)
                mem[_588 + 32] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_256
                mem[_588 + 64] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                mem[_588 + 96] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_768
                mem[_588 + 128] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1024
                mem[_588 + 160] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1280
                mem[_588 + 192] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1536
                if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792:
                    if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                        revert with 'NH{q', 34
                    _597 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793) + 32
                    mem[_597] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793
                    if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792:
                        if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                            mem[_588 + 224] = _597
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _715 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _749 = mem[_715]
                            require mem[_715] <= test266151307()
                            require _715 + mem[_715] + 31 < _715 + return_data.size
                            _803 = mem[_715 + mem[_715]]
                            if mem[_715 + mem[_715]] > test266151307():
                                revert with 'NH{q', 65
                            if _715 + ceil32(return_data.size) + ceil32(ceil32(mem[_715 + mem[_715]])) + 1 > test266151307() or ceil32(ceil32(mem[_715 + mem[_715]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _715 + ceil32(return_data.size) + ceil32(ceil32(mem[_715 + mem[_715]])) + 1
                            mem[_715 + ceil32(return_data.size)] = _803
                            require _749 + _803 + 32 <= return_data.size
                            s = 0
                            while s < _803:
                                mem[_715 + ceil32(return_data.size) + s + 32] = mem[_715 + _749 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_803) > _803:
                                mem[_715 + ceil32(return_data.size) + _803 + 32] = 0
                            mem[_588 + 224] = _715 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                                mem[_597 + 32] = 256 * stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800
                                mem[_588 + 224] = _597
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _751 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _788 = mem[_751]
                                require mem[_751] <= test266151307()
                                require _751 + mem[_751] + 31 < _751 + return_data.size
                                _838 = mem[_751 + mem[_751]]
                                if mem[_751 + mem[_751]] > test266151307():
                                    revert with 'NH{q', 65
                                if _751 + ceil32(return_data.size) + ceil32(ceil32(mem[_751 + mem[_751]])) + 1 > test266151307() or ceil32(ceil32(mem[_751 + mem[_751]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _751 + ceil32(return_data.size) + ceil32(ceil32(mem[_751 + mem[_751]])) + 1
                                mem[_751 + ceil32(return_data.size)] = _838
                                require _788 + _838 + 32 <= return_data.size
                                s = 0
                                while s < _838:
                                    mem[_751 + ceil32(return_data.size) + s + 32] = mem[_751 + _788 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_838) > _838:
                                    mem[_751 + ceil32(return_data.size) + _838 + 32] = 0
                                mem[_588 + 224] = _751 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + sha3(2) + 7
                                mem[_597 + 32] = stor[sha3((8 * stor[('name', 'stor3', 3) + arg1 + idx]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _597 + 32
                                t = sha3(mem[0])
                                while _597 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_588 + 224] = _597
                                _1171 = mem[_588 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1171
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1171
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1237 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1247 = mem[_1237]
                                require mem[_1237] <= test266151307()
                                require _1237 + mem[_1237] + 31 < _1237 + return_data.size
                                _1262 = mem[_1237 + mem[_1237]]
                                if mem[_1237 + mem[_1237]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1237 + ceil32(return_data.size) + ceil32(ceil32(mem[_1237 + mem[_1237]])) + 1 > test266151307() or ceil32(ceil32(mem[_1237 + mem[_1237]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1237 + ceil32(return_data.size) + ceil32(ceil32(mem[_1237 + mem[_1237]])) + 1
                                mem[_1237 + ceil32(return_data.size)] = _1262
                                require _1247 + _1262 + 32 <= return_data.size
                                s = 0
                                while s < _1262:
                                    mem[_1237 + ceil32(return_data.size) + s + 32] = mem[_1237 + _1247 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1262) > _1262:
                                    mem[_1237 + ceil32(return_data.size) + _1262 + 32] = 0
                                mem[_588 + 224] = _1237 + ceil32(return_data.size)
                    else:
                        if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                            mem[_588 + 224] = _597
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _733 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _768 = mem[_733]
                            require mem[_733] <= test266151307()
                            require _733 + mem[_733] + 31 < _733 + return_data.size
                            _820 = mem[_733 + mem[_733]]
                            if mem[_733 + mem[_733]] > test266151307():
                                revert with 'NH{q', 65
                            if _733 + ceil32(return_data.size) + ceil32(ceil32(mem[_733 + mem[_733]])) + 1 > test266151307() or ceil32(ceil32(mem[_733 + mem[_733]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _733 + ceil32(return_data.size) + ceil32(ceil32(mem[_733 + mem[_733]])) + 1
                            mem[_733 + ceil32(return_data.size)] = _820
                            require _768 + _820 + 32 <= return_data.size
                            s = 0
                            while s < _820:
                                mem[_733 + ceil32(return_data.size) + s + 32] = mem[_733 + _768 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_820) > _820:
                                mem[_733 + ceil32(return_data.size) + _820 + 32] = 0
                            mem[_588 + 224] = _733 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                                mem[_597 + 32] = 256 * stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800
                                mem[_588 + 224] = _597
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _770 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _805 = mem[_770]
                                require mem[_770] <= test266151307()
                                require _770 + mem[_770] + 31 < _770 + return_data.size
                                _857 = mem[_770 + mem[_770]]
                                if mem[_770 + mem[_770]] > test266151307():
                                    revert with 'NH{q', 65
                                if _770 + ceil32(return_data.size) + ceil32(ceil32(mem[_770 + mem[_770]])) + 1 > test266151307() or ceil32(ceil32(mem[_770 + mem[_770]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _770 + ceil32(return_data.size) + ceil32(ceil32(mem[_770 + mem[_770]])) + 1
                                mem[_770 + ceil32(return_data.size)] = _857
                                require _805 + _857 + 32 <= return_data.size
                                s = 0
                                while s < _857:
                                    mem[_770 + ceil32(return_data.size) + s + 32] = mem[_770 + _805 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_857) > _857:
                                    mem[_770 + ceil32(return_data.size) + _857 + 32] = 0
                                mem[_588 + 224] = _770 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + sha3(2) + 7
                                mem[_597 + 32] = stor[sha3((8 * stor[('name', 'stor3', 3) + arg1 + idx]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _597 + 32
                                t = sha3(mem[0])
                                while _597 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_588 + 224] = _597
                                _1173 = mem[_588 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1173
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1173
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1238 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1248 = mem[_1238]
                                require mem[_1238] <= test266151307()
                                require _1238 + mem[_1238] + 31 < _1238 + return_data.size
                                _1263 = mem[_1238 + mem[_1238]]
                                if mem[_1238 + mem[_1238]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1238 + ceil32(return_data.size) + ceil32(ceil32(mem[_1238 + mem[_1238]])) + 1 > test266151307() or ceil32(ceil32(mem[_1238 + mem[_1238]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1238 + ceil32(return_data.size) + ceil32(ceil32(mem[_1238 + mem[_1238]])) + 1
                                mem[_1238 + ceil32(return_data.size)] = _1263
                                require _1248 + _1263 + 32 <= return_data.size
                                s = 0
                                while s < _1263:
                                    mem[_1238 + ceil32(return_data.size) + s + 32] = mem[_1238 + _1248 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1263) > _1263:
                                    mem[_1238 + ceil32(return_data.size) + _1263 + 32] = 0
                                mem[_588 + 224] = _1238 + ceil32(return_data.size)
                else:
                    if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                        revert with 'NH{q', 34
                    _603 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793) + 32
                    mem[_603] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793
                    if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792:
                        if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                            mem[_588 + 224] = _603
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _735 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _771 = mem[_735]
                            require mem[_735] <= test266151307()
                            require _735 + mem[_735] + 31 < _735 + return_data.size
                            _821 = mem[_735 + mem[_735]]
                            if mem[_735 + mem[_735]] > test266151307():
                                revert with 'NH{q', 65
                            if _735 + ceil32(return_data.size) + ceil32(ceil32(mem[_735 + mem[_735]])) + 1 > test266151307() or ceil32(ceil32(mem[_735 + mem[_735]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _735 + ceil32(return_data.size) + ceil32(ceil32(mem[_735 + mem[_735]])) + 1
                            mem[_735 + ceil32(return_data.size)] = _821
                            require _771 + _821 + 32 <= return_data.size
                            s = 0
                            while s < _821:
                                mem[_735 + ceil32(return_data.size) + s + 32] = mem[_735 + _771 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_821) > _821:
                                mem[_735 + ceil32(return_data.size) + _821 + 32] = 0
                            mem[_588 + 224] = _735 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                                mem[_603 + 32] = 256 * stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800
                                mem[_588 + 224] = _603
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _773 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _807 = mem[_773]
                                require mem[_773] <= test266151307()
                                require _773 + mem[_773] + 31 < _773 + return_data.size
                                _858 = mem[_773 + mem[_773]]
                                if mem[_773 + mem[_773]] > test266151307():
                                    revert with 'NH{q', 65
                                if _773 + ceil32(return_data.size) + ceil32(ceil32(mem[_773 + mem[_773]])) + 1 > test266151307() or ceil32(ceil32(mem[_773 + mem[_773]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _773 + ceil32(return_data.size) + ceil32(ceil32(mem[_773 + mem[_773]])) + 1
                                mem[_773 + ceil32(return_data.size)] = _858
                                require _807 + _858 + 32 <= return_data.size
                                s = 0
                                while s < _858:
                                    mem[_773 + ceil32(return_data.size) + s + 32] = mem[_773 + _807 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_858) > _858:
                                    mem[_773 + ceil32(return_data.size) + _858 + 32] = 0
                                mem[_588 + 224] = _773 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + sha3(2) + 7
                                mem[_603 + 32] = stor[sha3((8 * stor[('name', 'stor3', 3) + arg1 + idx]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _603 + 32
                                t = sha3(mem[0])
                                while _603 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_588 + 224] = _603
                                _1175 = mem[_588 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1175
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1175
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1239 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1249 = mem[_1239]
                                require mem[_1239] <= test266151307()
                                require _1239 + mem[_1239] + 31 < _1239 + return_data.size
                                _1264 = mem[_1239 + mem[_1239]]
                                if mem[_1239 + mem[_1239]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1239 + ceil32(return_data.size) + ceil32(ceil32(mem[_1239 + mem[_1239]])) + 1 > test266151307() or ceil32(ceil32(mem[_1239 + mem[_1239]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1239 + ceil32(return_data.size) + ceil32(ceil32(mem[_1239 + mem[_1239]])) + 1
                                mem[_1239 + ceil32(return_data.size)] = _1264
                                require _1249 + _1264 + 32 <= return_data.size
                                s = 0
                                while s < _1264:
                                    mem[_1239 + ceil32(return_data.size) + s + 32] = mem[_1239 + _1249 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1264) > _1264:
                                    mem[_1239 + ceil32(return_data.size) + _1264 + 32] = 0
                                mem[_588 + 224] = _1239 + ceil32(return_data.size)
                    else:
                        if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                            mem[_588 + 224] = _603
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _752 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _789 = mem[_752]
                            require mem[_752] <= test266151307()
                            require _752 + mem[_752] + 31 < _752 + return_data.size
                            _841 = mem[_752 + mem[_752]]
                            if mem[_752 + mem[_752]] > test266151307():
                                revert with 'NH{q', 65
                            if _752 + ceil32(return_data.size) + ceil32(ceil32(mem[_752 + mem[_752]])) + 1 > test266151307() or ceil32(ceil32(mem[_752 + mem[_752]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _752 + ceil32(return_data.size) + ceil32(ceil32(mem[_752 + mem[_752]])) + 1
                            mem[_752 + ceil32(return_data.size)] = _841
                            require _789 + _841 + 32 <= return_data.size
                            s = 0
                            while s < _841:
                                mem[_752 + ceil32(return_data.size) + s + 32] = mem[_752 + _789 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_841) > _841:
                                mem[_752 + ceil32(return_data.size) + _841 + 32] = 0
                            mem[_588 + 224] = _752 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                                mem[_603 + 32] = 256 * stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800
                                mem[_588 + 224] = _603
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _791 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _823 = mem[_791]
                                require mem[_791] <= test266151307()
                                require _791 + mem[_791] + 31 < _791 + return_data.size
                                _878 = mem[_791 + mem[_791]]
                                if mem[_791 + mem[_791]] > test266151307():
                                    revert with 'NH{q', 65
                                if _791 + ceil32(return_data.size) + ceil32(ceil32(mem[_791 + mem[_791]])) + 1 > test266151307() or ceil32(ceil32(mem[_791 + mem[_791]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _791 + ceil32(return_data.size) + ceil32(ceil32(mem[_791 + mem[_791]])) + 1
                                mem[_791 + ceil32(return_data.size)] = _878
                                require _823 + _878 + 32 <= return_data.size
                                s = 0
                                while s < _878:
                                    mem[_791 + ceil32(return_data.size) + s + 32] = mem[_791 + _823 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_878) > _878:
                                    mem[_791 + ceil32(return_data.size) + _878 + 32] = 0
                                mem[_588 + 224] = _791 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + sha3(2) + 7
                                mem[_603 + 32] = stor[sha3((8 * stor[('name', 'stor3', 3) + arg1 + idx]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _603 + 32
                                t = sha3(mem[0])
                                while _603 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_588 + 224] = _603
                                _1177 = mem[_588 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1177
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1177
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1240 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1250 = mem[_1240]
                                require mem[_1240] <= test266151307()
                                require _1240 + mem[_1240] + 31 < _1240 + return_data.size
                                _1265 = mem[_1240 + mem[_1240]]
                                if mem[_1240 + mem[_1240]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1240 + ceil32(return_data.size) + ceil32(ceil32(mem[_1240 + mem[_1240]])) + 1 > test266151307() or ceil32(ceil32(mem[_1240 + mem[_1240]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1240 + ceil32(return_data.size) + ceil32(ceil32(mem[_1240 + mem[_1240]])) + 1
                                mem[_1240 + ceil32(return_data.size)] = _1265
                                require _1250 + _1265 + 32 <= return_data.size
                                s = 0
                                while s < _1265:
                                    mem[_1240 + ceil32(return_data.size) + s + 32] = mem[_1240 + _1250 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1265) > _1265:
                                    mem[_1240 + ceil32(return_data.size) + _1265 + 32] = 0
                                mem[_588 + 224] = _1240 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _588
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _579 = mem[64]
            mem[mem[64]] = 32
            _581 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _581:
                mem[u] = t + -_579 - 64
                _1153 = mem[s]
                mem[t] = bool(mem[mem[s]])
                mem[t + 32] = mem[_1153 + 32]
                mem[t + 64] = mem[_1153 + 64]
                mem[t + 96] = mem[_1153 + 96]
                mem[t + 128] = mem[_1153 + 128]
                mem[t + 160] = mem[_1153 + 160]
                mem[t + 192] = mem[_1153 + 204 len 20]
                _1377 = mem[_1153 + 224]
                mem[t + 224] = 256
                _1411 = mem[_1377]
                mem[t + 256] = mem[_1377]
                v = 0
                while v < _1411:
                    mem[t + v + 288] = mem[_1377 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1411) > _1411:
                    mem[t + _1411 + 288] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1411) + 288
                u = u + 32
                continue 
        else:
            mem[64] = (32 * arg2) + 384
            mem[(32 * arg2) + 128] = 0
            mem[(32 * arg2) + 160] = 0
            mem[(32 * arg2) + 192] = 0
            mem[(32 * arg2) + 224] = 0
            mem[(32 * arg2) + 256] = 0
            mem[(32 * arg2) + 288] = 0
            mem[(32 * arg2) + 320] = 0
            mem[(32 * arg2) + 352] = 96
            mem[var34001] = (32 * arg2) + 128
            s = var34001
            idx = var34002
            while idx - 1:
                mem[64] = mem[64] + 256
                mem[(32 * arg2) + 128] = 0
                mem[(32 * arg2) + 160] = 0
                mem[(32 * arg2) + 192] = 0
                mem[(32 * arg2) + 224] = 0
                mem[(32 * arg2) + 256] = 0
                mem[(32 * arg2) + 288] = 0
                mem[(32 * arg2) + 320] = 0
                mem[(32 * arg2) + 352] = 96
                mem[s + 32] = (32 * arg2) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < arg2:
                if arg1 > -idx - 1:
                    revert with 'NH{q', 17
                if arg1 + idx >= sub_61cf4863.length:
                    revert with 'NH{q', 50
                if stor[('name', 'sub_61cf4863', 3) + arg1 + idx] >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                _1624 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1624] = bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_0)
                mem[_1624 + 32] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_256
                mem[_1624 + 64] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                mem[_1624 + 96] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_768
                mem[_1624 + 128] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1024
                mem[_1624 + 160] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1280
                mem[_1624 + 192] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1536
                if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792:
                    if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                        revert with 'NH{q', 34
                    _1631 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793) + 32
                    mem[_1631] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793
                    if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792:
                        if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                            mem[_1624 + 224] = _1631
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1705 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1719 = mem[_1705]
                            require mem[_1705] <= test266151307()
                            require _1705 + mem[_1705] + 31 < _1705 + return_data.size
                            _1753 = mem[_1705 + mem[_1705]]
                            if mem[_1705 + mem[_1705]] > test266151307():
                                revert with 'NH{q', 65
                            if _1705 + ceil32(return_data.size) + ceil32(ceil32(mem[_1705 + mem[_1705]])) + 1 > test266151307() or ceil32(ceil32(mem[_1705 + mem[_1705]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1705 + ceil32(return_data.size) + ceil32(ceil32(mem[_1705 + mem[_1705]])) + 1
                            mem[_1705 + ceil32(return_data.size)] = _1753
                            require _1719 + _1753 + 32 <= return_data.size
                            s = 0
                            while s < _1753:
                                mem[_1705 + ceil32(return_data.size) + s + 32] = mem[_1705 + _1719 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1753) > _1753:
                                mem[_1705 + ceil32(return_data.size) + _1753 + 32] = 0
                            mem[_1624 + 224] = _1705 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                                mem[_1631 + 32] = 256 * stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800
                                mem[_1624 + 224] = _1631
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1721 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1744 = mem[_1721]
                                require mem[_1721] <= test266151307()
                                require _1721 + mem[_1721] + 31 < _1721 + return_data.size
                                _1774 = mem[_1721 + mem[_1721]]
                                if mem[_1721 + mem[_1721]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1721 + ceil32(return_data.size) + ceil32(ceil32(mem[_1721 + mem[_1721]])) + 1 > test266151307() or ceil32(ceil32(mem[_1721 + mem[_1721]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1721 + ceil32(return_data.size) + ceil32(ceil32(mem[_1721 + mem[_1721]])) + 1
                                mem[_1721 + ceil32(return_data.size)] = _1774
                                require _1744 + _1774 + 32 <= return_data.size
                                s = 0
                                while s < _1774:
                                    mem[_1721 + ceil32(return_data.size) + s + 32] = mem[_1721 + _1744 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1774) > _1774:
                                    mem[_1721 + ceil32(return_data.size) + _1774 + 32] = 0
                                mem[_1624 + 224] = _1721 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + sha3(2) + 7
                                mem[_1631 + 32] = stor[sha3((8 * stor[('name', 'stor3', 3) + arg1 + idx]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _1631 + 32
                                t = sha3(mem[0])
                                while _1631 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1624 + 224] = _1631
                                _1921 = mem[_1624 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1921
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1921
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1983 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1993 = mem[_1983]
                                require mem[_1983] <= test266151307()
                                require _1983 + mem[_1983] + 31 < _1983 + return_data.size
                                _2002 = mem[_1983 + mem[_1983]]
                                if mem[_1983 + mem[_1983]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1983 + ceil32(return_data.size) + ceil32(ceil32(mem[_1983 + mem[_1983]])) + 1 > test266151307() or ceil32(ceil32(mem[_1983 + mem[_1983]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1983 + ceil32(return_data.size) + ceil32(ceil32(mem[_1983 + mem[_1983]])) + 1
                                mem[_1983 + ceil32(return_data.size)] = _2002
                                require _1993 + _2002 + 32 <= return_data.size
                                s = 0
                                while s < _2002:
                                    mem[_1983 + ceil32(return_data.size) + s + 32] = mem[_1983 + _1993 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2002) > _2002:
                                    mem[_1983 + ceil32(return_data.size) + _2002 + 32] = 0
                                mem[_1624 + 224] = _1983 + ceil32(return_data.size)
                    else:
                        if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                            mem[_1624 + 224] = _1631
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1711 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1730 = mem[_1711]
                            require mem[_1711] <= test266151307()
                            require _1711 + mem[_1711] + 31 < _1711 + return_data.size
                            _1764 = mem[_1711 + mem[_1711]]
                            if mem[_1711 + mem[_1711]] > test266151307():
                                revert with 'NH{q', 65
                            if _1711 + ceil32(return_data.size) + ceil32(ceil32(mem[_1711 + mem[_1711]])) + 1 > test266151307() or ceil32(ceil32(mem[_1711 + mem[_1711]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1711 + ceil32(return_data.size) + ceil32(ceil32(mem[_1711 + mem[_1711]])) + 1
                            mem[_1711 + ceil32(return_data.size)] = _1764
                            require _1730 + _1764 + 32 <= return_data.size
                            s = 0
                            while s < _1764:
                                mem[_1711 + ceil32(return_data.size) + s + 32] = mem[_1711 + _1730 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1764) > _1764:
                                mem[_1711 + ceil32(return_data.size) + _1764 + 32] = 0
                            mem[_1624 + 224] = _1711 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                                mem[_1631 + 32] = 256 * stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800
                                mem[_1624 + 224] = _1631
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1732 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1755 = mem[_1732]
                                require mem[_1732] <= test266151307()
                                require _1732 + mem[_1732] + 31 < _1732 + return_data.size
                                _1783 = mem[_1732 + mem[_1732]]
                                if mem[_1732 + mem[_1732]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1732 + ceil32(return_data.size) + ceil32(ceil32(mem[_1732 + mem[_1732]])) + 1 > test266151307() or ceil32(ceil32(mem[_1732 + mem[_1732]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1732 + ceil32(return_data.size) + ceil32(ceil32(mem[_1732 + mem[_1732]])) + 1
                                mem[_1732 + ceil32(return_data.size)] = _1783
                                require _1755 + _1783 + 32 <= return_data.size
                                s = 0
                                while s < _1783:
                                    mem[_1732 + ceil32(return_data.size) + s + 32] = mem[_1732 + _1755 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1783) > _1783:
                                    mem[_1732 + ceil32(return_data.size) + _1783 + 32] = 0
                                mem[_1624 + 224] = _1732 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + sha3(2) + 7
                                mem[_1631 + 32] = stor[sha3((8 * stor[('name', 'stor3', 3) + arg1 + idx]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _1631 + 32
                                t = sha3(mem[0])
                                while _1631 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1624 + 224] = _1631
                                _1923 = mem[_1624 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1923
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1923
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1984 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1994 = mem[_1984]
                                require mem[_1984] <= test266151307()
                                require _1984 + mem[_1984] + 31 < _1984 + return_data.size
                                _2003 = mem[_1984 + mem[_1984]]
                                if mem[_1984 + mem[_1984]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1984 + ceil32(return_data.size) + ceil32(ceil32(mem[_1984 + mem[_1984]])) + 1 > test266151307() or ceil32(ceil32(mem[_1984 + mem[_1984]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1984 + ceil32(return_data.size) + ceil32(ceil32(mem[_1984 + mem[_1984]])) + 1
                                mem[_1984 + ceil32(return_data.size)] = _2003
                                require _1994 + _2003 + 32 <= return_data.size
                                s = 0
                                while s < _2003:
                                    mem[_1984 + ceil32(return_data.size) + s + 32] = mem[_1984 + _1994 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2003) > _2003:
                                    mem[_1984 + ceil32(return_data.size) + _2003 + 32] = 0
                                mem[_1624 + 224] = _1984 + ceil32(return_data.size)
                else:
                    if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                        revert with 'NH{q', 34
                    _1635 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793) + 32
                    mem[_1635] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793
                    if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792:
                        if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                            mem[_1624 + 224] = _1635
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1713 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1733 = mem[_1713]
                            require mem[_1713] <= test266151307()
                            require _1713 + mem[_1713] + 31 < _1713 + return_data.size
                            _1765 = mem[_1713 + mem[_1713]]
                            if mem[_1713 + mem[_1713]] > test266151307():
                                revert with 'NH{q', 65
                            if _1713 + ceil32(return_data.size) + ceil32(ceil32(mem[_1713 + mem[_1713]])) + 1 > test266151307() or ceil32(ceil32(mem[_1713 + mem[_1713]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1713 + ceil32(return_data.size) + ceil32(ceil32(mem[_1713 + mem[_1713]])) + 1
                            mem[_1713 + ceil32(return_data.size)] = _1765
                            require _1733 + _1765 + 32 <= return_data.size
                            s = 0
                            while s < _1765:
                                mem[_1713 + ceil32(return_data.size) + s + 32] = mem[_1713 + _1733 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1765) > _1765:
                                mem[_1713 + ceil32(return_data.size) + _1765 + 32] = 0
                            mem[_1624 + 224] = _1713 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                                mem[_1635 + 32] = 256 * stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800
                                mem[_1624 + 224] = _1635
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1735 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1757 = mem[_1735]
                                require mem[_1735] <= test266151307()
                                require _1735 + mem[_1735] + 31 < _1735 + return_data.size
                                _1784 = mem[_1735 + mem[_1735]]
                                if mem[_1735 + mem[_1735]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1735 + ceil32(return_data.size) + ceil32(ceil32(mem[_1735 + mem[_1735]])) + 1 > test266151307() or ceil32(ceil32(mem[_1735 + mem[_1735]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1735 + ceil32(return_data.size) + ceil32(ceil32(mem[_1735 + mem[_1735]])) + 1
                                mem[_1735 + ceil32(return_data.size)] = _1784
                                require _1757 + _1784 + 32 <= return_data.size
                                s = 0
                                while s < _1784:
                                    mem[_1735 + ceil32(return_data.size) + s + 32] = mem[_1735 + _1757 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1784) > _1784:
                                    mem[_1735 + ceil32(return_data.size) + _1784 + 32] = 0
                                mem[_1624 + 224] = _1735 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + sha3(2) + 7
                                mem[_1635 + 32] = stor[sha3((8 * stor[('name', 'stor3', 3) + arg1 + idx]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _1635 + 32
                                t = sha3(mem[0])
                                while _1635 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1624 + 224] = _1635
                                _1925 = mem[_1624 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1925
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1925
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1985 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1995 = mem[_1985]
                                require mem[_1985] <= test266151307()
                                require _1985 + mem[_1985] + 31 < _1985 + return_data.size
                                _2004 = mem[_1985 + mem[_1985]]
                                if mem[_1985 + mem[_1985]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1985 + ceil32(return_data.size) + ceil32(ceil32(mem[_1985 + mem[_1985]])) + 1 > test266151307() or ceil32(ceil32(mem[_1985 + mem[_1985]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1985 + ceil32(return_data.size) + ceil32(ceil32(mem[_1985 + mem[_1985]])) + 1
                                mem[_1985 + ceil32(return_data.size)] = _2004
                                require _1995 + _2004 + 32 <= return_data.size
                                s = 0
                                while s < _2004:
                                    mem[_1985 + ceil32(return_data.size) + s + 32] = mem[_1985 + _1995 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2004) > _2004:
                                    mem[_1985 + ceil32(return_data.size) + _2004 + 32] = 0
                                mem[_1624 + 224] = _1985 + ceil32(return_data.size)
                    else:
                        if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                            mem[_1624 + 224] = _1635
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1722 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1745 = mem[_1722]
                            require mem[_1722] <= test266151307()
                            require _1722 + mem[_1722] + 31 < _1722 + return_data.size
                            _1777 = mem[_1722 + mem[_1722]]
                            if mem[_1722 + mem[_1722]] > test266151307():
                                revert with 'NH{q', 65
                            if _1722 + ceil32(return_data.size) + ceil32(ceil32(mem[_1722 + mem[_1722]])) + 1 > test266151307() or ceil32(ceil32(mem[_1722 + mem[_1722]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1722 + ceil32(return_data.size) + ceil32(ceil32(mem[_1722 + mem[_1722]])) + 1
                            mem[_1722 + ceil32(return_data.size)] = _1777
                            require _1745 + _1777 + 32 <= return_data.size
                            s = 0
                            while s < _1777:
                                mem[_1722 + ceil32(return_data.size) + s + 32] = mem[_1722 + _1745 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1777) > _1777:
                                mem[_1722 + ceil32(return_data.size) + _1777 + 32] = 0
                            mem[_1624 + 224] = _1722 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                                mem[_1635 + 32] = 256 * stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800
                                mem[_1624 + 224] = _1635
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1747 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1767 = mem[_1747]
                                require mem[_1747] <= test266151307()
                                require _1747 + mem[_1747] + 31 < _1747 + return_data.size
                                _1790 = mem[_1747 + mem[_1747]]
                                if mem[_1747 + mem[_1747]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1747 + ceil32(return_data.size) + ceil32(ceil32(mem[_1747 + mem[_1747]])) + 1 > test266151307() or ceil32(ceil32(mem[_1747 + mem[_1747]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1747 + ceil32(return_data.size) + ceil32(ceil32(mem[_1747 + mem[_1747]])) + 1
                                mem[_1747 + ceil32(return_data.size)] = _1790
                                require _1767 + _1790 + 32 <= return_data.size
                                s = 0
                                while s < _1790:
                                    mem[_1747 + ceil32(return_data.size) + s + 32] = mem[_1747 + _1767 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1790) > _1790:
                                    mem[_1747 + ceil32(return_data.size) + _1790 + 32] = 0
                                mem[_1624 + 224] = _1747 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + sha3(2) + 7
                                mem[_1635 + 32] = stor[sha3((8 * stor[('name', 'stor3', 3) + arg1 + idx]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _1635 + 32
                                t = sha3(mem[0])
                                while _1635 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1624 + 224] = _1635
                                _1927 = mem[_1624 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1927
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1927
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1986 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1996 = mem[_1986]
                                require mem[_1986] <= test266151307()
                                require _1986 + mem[_1986] + 31 < _1986 + return_data.size
                                _2005 = mem[_1986 + mem[_1986]]
                                if mem[_1986 + mem[_1986]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1986 + ceil32(return_data.size) + ceil32(ceil32(mem[_1986 + mem[_1986]])) + 1 > test266151307() or ceil32(ceil32(mem[_1986 + mem[_1986]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1986 + ceil32(return_data.size) + ceil32(ceil32(mem[_1986 + mem[_1986]])) + 1
                                mem[_1986 + ceil32(return_data.size)] = _2005
                                require _1996 + _2005 + 32 <= return_data.size
                                s = 0
                                while s < _2005:
                                    mem[_1986 + ceil32(return_data.size) + s + 32] = mem[_1986 + _1996 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2005) > _2005:
                                    mem[_1986 + ceil32(return_data.size) + _2005 + 32] = 0
                                mem[_1624 + 224] = _1986 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1624
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1601 = mem[64]
            mem[mem[64]] = 32
            _1603 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _1603:
                mem[u] = t + -_1601 - 64
                _1903 = mem[s]
                mem[t] = bool(mem[mem[s]])
                mem[t + 32] = mem[_1903 + 32]
                mem[t + 64] = mem[_1903 + 64]
                mem[t + 96] = mem[_1903 + 96]
                mem[t + 128] = mem[_1903 + 128]
                mem[t + 160] = mem[_1903 + 160]
                mem[t + 192] = mem[_1903 + 204 len 20]
                _2025 = mem[_1903 + 224]
                mem[t + 224] = 256
                _2035 = mem[_2025]
                mem[t + 256] = mem[_2025]
                v = 0
                while v < _2035:
                    mem[t + v + 288] = mem[_2025 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_2035) > _2035:
                    mem[t + _2035 + 288] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_2035) + 288
                u = u + 32
                continue 
    else:
        if sub_61cf4863.length < arg1:
            revert with 'NH{q', 17
        if sub_61cf4863.length - arg1 > test266151307():
            revert with 'NH{q', 65
        mem[96] = sub_61cf4863.length - arg1
        mem[64] = (32 * sub_61cf4863.length - arg1) + 128
        if not sub_61cf4863.length - arg1:
            idx = 0
            while idx < sub_61cf4863.length - arg1:
                if arg1 > -idx - 1:
                    revert with 'NH{q', 17
                if arg1 + idx >= sub_61cf4863.length:
                    revert with 'NH{q', 50
                if stor[('name', 'sub_61cf4863', 3) + arg1 + idx] >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                _591 = mem[64]
                mem[64] = mem[64] + 256
                mem[_591] = bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_0)
                mem[_591 + 32] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_256
                mem[_591 + 64] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                mem[_591 + 96] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_768
                mem[_591 + 128] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1024
                mem[_591 + 160] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1280
                mem[_591 + 192] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1536
                if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792:
                    if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                        revert with 'NH{q', 34
                    _601 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793) + 32
                    mem[_601] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793
                    if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792:
                        if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                            mem[_591 + 224] = _601
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _724 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _758 = mem[_724]
                            require mem[_724] <= test266151307()
                            require _724 + mem[_724] + 31 < _724 + return_data.size
                            _811 = mem[_724 + mem[_724]]
                            if mem[_724 + mem[_724]] > test266151307():
                                revert with 'NH{q', 65
                            if _724 + ceil32(return_data.size) + ceil32(ceil32(mem[_724 + mem[_724]])) + 1 > test266151307() or ceil32(ceil32(mem[_724 + mem[_724]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _724 + ceil32(return_data.size) + ceil32(ceil32(mem[_724 + mem[_724]])) + 1
                            mem[_724 + ceil32(return_data.size)] = _811
                            require _758 + _811 + 32 <= return_data.size
                            s = 0
                            while s < _811:
                                mem[_724 + ceil32(return_data.size) + s + 32] = mem[_724 + _758 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_811) > _811:
                                mem[_724 + ceil32(return_data.size) + _811 + 32] = 0
                            mem[_591 + 224] = _724 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                                mem[_601 + 32] = 256 * stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800
                                mem[_591 + 224] = _601
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _760 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _796 = mem[_760]
                                require mem[_760] <= test266151307()
                                require _760 + mem[_760] + 31 < _760 + return_data.size
                                _848 = mem[_760 + mem[_760]]
                                if mem[_760 + mem[_760]] > test266151307():
                                    revert with 'NH{q', 65
                                if _760 + ceil32(return_data.size) + ceil32(ceil32(mem[_760 + mem[_760]])) + 1 > test266151307() or ceil32(ceil32(mem[_760 + mem[_760]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _760 + ceil32(return_data.size) + ceil32(ceil32(mem[_760 + mem[_760]])) + 1
                                mem[_760 + ceil32(return_data.size)] = _848
                                require _796 + _848 + 32 <= return_data.size
                                s = 0
                                while s < _848:
                                    mem[_760 + ceil32(return_data.size) + s + 32] = mem[_760 + _796 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_848) > _848:
                                    mem[_760 + ceil32(return_data.size) + _848 + 32] = 0
                                mem[_591 + 224] = _760 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + sha3(2) + 7
                                mem[_601 + 32] = stor[sha3((8 * stor[('name', 'stor3', 3) + arg1 + idx]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _601 + 32
                                t = sha3(mem[0])
                                while _601 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_591 + 224] = _601
                                _1179 = mem[_591 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1179
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1179
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1241 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1251 = mem[_1241]
                                require mem[_1241] <= test266151307()
                                require _1241 + mem[_1241] + 31 < _1241 + return_data.size
                                _1267 = mem[_1241 + mem[_1241]]
                                if mem[_1241 + mem[_1241]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1241 + ceil32(return_data.size) + ceil32(ceil32(mem[_1241 + mem[_1241]])) + 1 > test266151307() or ceil32(ceil32(mem[_1241 + mem[_1241]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1241 + ceil32(return_data.size) + ceil32(ceil32(mem[_1241 + mem[_1241]])) + 1
                                mem[_1241 + ceil32(return_data.size)] = _1267
                                require _1251 + _1267 + 32 <= return_data.size
                                s = 0
                                while s < _1267:
                                    mem[_1241 + ceil32(return_data.size) + s + 32] = mem[_1241 + _1251 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1267) > _1267:
                                    mem[_1241 + ceil32(return_data.size) + _1267 + 32] = 0
                                mem[_591 + 224] = _1241 + ceil32(return_data.size)
                    else:
                        if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                            mem[_591 + 224] = _601
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _741 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _778 = mem[_741]
                            require mem[_741] <= test266151307()
                            require _741 + mem[_741] + 31 < _741 + return_data.size
                            _829 = mem[_741 + mem[_741]]
                            if mem[_741 + mem[_741]] > test266151307():
                                revert with 'NH{q', 65
                            if _741 + ceil32(return_data.size) + ceil32(ceil32(mem[_741 + mem[_741]])) + 1 > test266151307() or ceil32(ceil32(mem[_741 + mem[_741]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _741 + ceil32(return_data.size) + ceil32(ceil32(mem[_741 + mem[_741]])) + 1
                            mem[_741 + ceil32(return_data.size)] = _829
                            require _778 + _829 + 32 <= return_data.size
                            s = 0
                            while s < _829:
                                mem[_741 + ceil32(return_data.size) + s + 32] = mem[_741 + _778 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_829) > _829:
                                mem[_741 + ceil32(return_data.size) + _829 + 32] = 0
                            mem[_591 + 224] = _741 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                                mem[_601 + 32] = 256 * stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800
                                mem[_591 + 224] = _601
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _780 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _813 = mem[_780]
                                require mem[_780] <= test266151307()
                                require _780 + mem[_780] + 31 < _780 + return_data.size
                                _867 = mem[_780 + mem[_780]]
                                if mem[_780 + mem[_780]] > test266151307():
                                    revert with 'NH{q', 65
                                if _780 + ceil32(return_data.size) + ceil32(ceil32(mem[_780 + mem[_780]])) + 1 > test266151307() or ceil32(ceil32(mem[_780 + mem[_780]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _780 + ceil32(return_data.size) + ceil32(ceil32(mem[_780 + mem[_780]])) + 1
                                mem[_780 + ceil32(return_data.size)] = _867
                                require _813 + _867 + 32 <= return_data.size
                                s = 0
                                while s < _867:
                                    mem[_780 + ceil32(return_data.size) + s + 32] = mem[_780 + _813 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_867) > _867:
                                    mem[_780 + ceil32(return_data.size) + _867 + 32] = 0
                                mem[_591 + 224] = _780 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + sha3(2) + 7
                                mem[_601 + 32] = stor[sha3((8 * stor[('name', 'stor3', 3) + arg1 + idx]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _601 + 32
                                t = sha3(mem[0])
                                while _601 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_591 + 224] = _601
                                _1181 = mem[_591 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1181
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1181
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1242 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1252 = mem[_1242]
                                require mem[_1242] <= test266151307()
                                require _1242 + mem[_1242] + 31 < _1242 + return_data.size
                                _1268 = mem[_1242 + mem[_1242]]
                                if mem[_1242 + mem[_1242]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1242 + ceil32(return_data.size) + ceil32(ceil32(mem[_1242 + mem[_1242]])) + 1 > test266151307() or ceil32(ceil32(mem[_1242 + mem[_1242]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1242 + ceil32(return_data.size) + ceil32(ceil32(mem[_1242 + mem[_1242]])) + 1
                                mem[_1242 + ceil32(return_data.size)] = _1268
                                require _1252 + _1268 + 32 <= return_data.size
                                s = 0
                                while s < _1268:
                                    mem[_1242 + ceil32(return_data.size) + s + 32] = mem[_1242 + _1252 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1268) > _1268:
                                    mem[_1242 + ceil32(return_data.size) + _1268 + 32] = 0
                                mem[_591 + 224] = _1242 + ceil32(return_data.size)
                else:
                    if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                        revert with 'NH{q', 34
                    _606 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793) + 32
                    mem[_606] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793
                    if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792:
                        if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                            mem[_591 + 224] = _606
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _743 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _781 = mem[_743]
                            require mem[_743] <= test266151307()
                            require _743 + mem[_743] + 31 < _743 + return_data.size
                            _830 = mem[_743 + mem[_743]]
                            if mem[_743 + mem[_743]] > test266151307():
                                revert with 'NH{q', 65
                            if _743 + ceil32(return_data.size) + ceil32(ceil32(mem[_743 + mem[_743]])) + 1 > test266151307() or ceil32(ceil32(mem[_743 + mem[_743]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _743 + ceil32(return_data.size) + ceil32(ceil32(mem[_743 + mem[_743]])) + 1
                            mem[_743 + ceil32(return_data.size)] = _830
                            require _781 + _830 + 32 <= return_data.size
                            s = 0
                            while s < _830:
                                mem[_743 + ceil32(return_data.size) + s + 32] = mem[_743 + _781 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_830) > _830:
                                mem[_743 + ceil32(return_data.size) + _830 + 32] = 0
                            mem[_591 + 224] = _743 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                                mem[_606 + 32] = 256 * stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800
                                mem[_591 + 224] = _606
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _783 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _815 = mem[_783]
                                require mem[_783] <= test266151307()
                                require _783 + mem[_783] + 31 < _783 + return_data.size
                                _868 = mem[_783 + mem[_783]]
                                if mem[_783 + mem[_783]] > test266151307():
                                    revert with 'NH{q', 65
                                if _783 + ceil32(return_data.size) + ceil32(ceil32(mem[_783 + mem[_783]])) + 1 > test266151307() or ceil32(ceil32(mem[_783 + mem[_783]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _783 + ceil32(return_data.size) + ceil32(ceil32(mem[_783 + mem[_783]])) + 1
                                mem[_783 + ceil32(return_data.size)] = _868
                                require _815 + _868 + 32 <= return_data.size
                                s = 0
                                while s < _868:
                                    mem[_783 + ceil32(return_data.size) + s + 32] = mem[_783 + _815 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_868) > _868:
                                    mem[_783 + ceil32(return_data.size) + _868 + 32] = 0
                                mem[_591 + 224] = _783 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + sha3(2) + 7
                                mem[_606 + 32] = stor[sha3((8 * stor[('name', 'stor3', 3) + arg1 + idx]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _606 + 32
                                t = sha3(mem[0])
                                while _606 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_591 + 224] = _606
                                _1183 = mem[_591 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1183
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1183
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1243 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1253 = mem[_1243]
                                require mem[_1243] <= test266151307()
                                require _1243 + mem[_1243] + 31 < _1243 + return_data.size
                                _1269 = mem[_1243 + mem[_1243]]
                                if mem[_1243 + mem[_1243]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1243 + ceil32(return_data.size) + ceil32(ceil32(mem[_1243 + mem[_1243]])) + 1 > test266151307() or ceil32(ceil32(mem[_1243 + mem[_1243]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1243 + ceil32(return_data.size) + ceil32(ceil32(mem[_1243 + mem[_1243]])) + 1
                                mem[_1243 + ceil32(return_data.size)] = _1269
                                require _1253 + _1269 + 32 <= return_data.size
                                s = 0
                                while s < _1269:
                                    mem[_1243 + ceil32(return_data.size) + s + 32] = mem[_1243 + _1253 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1269) > _1269:
                                    mem[_1243 + ceil32(return_data.size) + _1269 + 32] = 0
                                mem[_591 + 224] = _1243 + ceil32(return_data.size)
                    else:
                        if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                            mem[_591 + 224] = _606
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _761 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _797 = mem[_761]
                            require mem[_761] <= test266151307()
                            require _761 + mem[_761] + 31 < _761 + return_data.size
                            _851 = mem[_761 + mem[_761]]
                            if mem[_761 + mem[_761]] > test266151307():
                                revert with 'NH{q', 65
                            if _761 + ceil32(return_data.size) + ceil32(ceil32(mem[_761 + mem[_761]])) + 1 > test266151307() or ceil32(ceil32(mem[_761 + mem[_761]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _761 + ceil32(return_data.size) + ceil32(ceil32(mem[_761 + mem[_761]])) + 1
                            mem[_761 + ceil32(return_data.size)] = _851
                            require _797 + _851 + 32 <= return_data.size
                            s = 0
                            while s < _851:
                                mem[_761 + ceil32(return_data.size) + s + 32] = mem[_761 + _797 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_851) > _851:
                                mem[_761 + ceil32(return_data.size) + _851 + 32] = 0
                            mem[_591 + 224] = _761 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                                mem[_606 + 32] = 256 * stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800
                                mem[_591 + 224] = _606
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _799 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _832 = mem[_799]
                                require mem[_799] <= test266151307()
                                require _799 + mem[_799] + 31 < _799 + return_data.size
                                _885 = mem[_799 + mem[_799]]
                                if mem[_799 + mem[_799]] > test266151307():
                                    revert with 'NH{q', 65
                                if _799 + ceil32(return_data.size) + ceil32(ceil32(mem[_799 + mem[_799]])) + 1 > test266151307() or ceil32(ceil32(mem[_799 + mem[_799]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _799 + ceil32(return_data.size) + ceil32(ceil32(mem[_799 + mem[_799]])) + 1
                                mem[_799 + ceil32(return_data.size)] = _885
                                require _832 + _885 + 32 <= return_data.size
                                s = 0
                                while s < _885:
                                    mem[_799 + ceil32(return_data.size) + s + 32] = mem[_799 + _832 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_885) > _885:
                                    mem[_799 + ceil32(return_data.size) + _885 + 32] = 0
                                mem[_591 + 224] = _799 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + sha3(2) + 7
                                mem[_606 + 32] = stor[sha3((8 * stor[('name', 'stor3', 3) + arg1 + idx]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _606 + 32
                                t = sha3(mem[0])
                                while _606 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_591 + 224] = _606
                                _1185 = mem[_591 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1185
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1185
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1244 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1254 = mem[_1244]
                                require mem[_1244] <= test266151307()
                                require _1244 + mem[_1244] + 31 < _1244 + return_data.size
                                _1270 = mem[_1244 + mem[_1244]]
                                if mem[_1244 + mem[_1244]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1244 + ceil32(return_data.size) + ceil32(ceil32(mem[_1244 + mem[_1244]])) + 1 > test266151307() or ceil32(ceil32(mem[_1244 + mem[_1244]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1244 + ceil32(return_data.size) + ceil32(ceil32(mem[_1244 + mem[_1244]])) + 1
                                mem[_1244 + ceil32(return_data.size)] = _1270
                                require _1254 + _1270 + 32 <= return_data.size
                                s = 0
                                while s < _1270:
                                    mem[_1244 + ceil32(return_data.size) + s + 32] = mem[_1244 + _1254 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1270) > _1270:
                                    mem[_1244 + ceil32(return_data.size) + _1270 + 32] = 0
                                mem[_591 + 224] = _1244 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _591
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _580 = mem[64]
            mem[mem[64]] = 32
            _582 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _582:
                mem[u] = t + -_580 - 64
                _1162 = mem[s]
                mem[t] = bool(mem[mem[s]])
                mem[t + 32] = mem[_1162 + 32]
                mem[t + 64] = mem[_1162 + 64]
                mem[t + 96] = mem[_1162 + 96]
                mem[t + 128] = mem[_1162 + 128]
                mem[t + 160] = mem[_1162 + 160]
                mem[t + 192] = mem[_1162 + 204 len 20]
                _1383 = mem[_1162 + 224]
                mem[t + 224] = 256
                _1417 = mem[_1383]
                mem[t + 256] = mem[_1383]
                v = 0
                while v < _1417:
                    mem[t + v + 288] = mem[_1383 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1417) > _1417:
                    mem[t + _1417 + 288] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1417) + 288
                u = u + 32
                continue 
        else:
            mem[64] = (32 * sub_61cf4863.length - arg1) + 384
            mem[(32 * sub_61cf4863.length - arg1) + 128] = 0
            mem[(32 * sub_61cf4863.length - arg1) + 160] = 0
            mem[(32 * sub_61cf4863.length - arg1) + 192] = 0
            mem[(32 * sub_61cf4863.length - arg1) + 224] = 0
            mem[(32 * sub_61cf4863.length - arg1) + 256] = 0
            mem[(32 * sub_61cf4863.length - arg1) + 288] = 0
            mem[(32 * sub_61cf4863.length - arg1) + 320] = 0
            mem[(32 * sub_61cf4863.length - arg1) + 352] = 96
            mem[var42001] = (32 * sub_61cf4863.length - arg1) + 128
            s = var42001
            idx = var42002
            while idx - 1:
                mem[64] = mem[64] + 256
                mem[(32 * sub_61cf4863.length - arg1) + 128] = 0
                mem[(32 * sub_61cf4863.length - arg1) + 160] = 0
                mem[(32 * sub_61cf4863.length - arg1) + 192] = 0
                mem[(32 * sub_61cf4863.length - arg1) + 224] = 0
                mem[(32 * sub_61cf4863.length - arg1) + 256] = 0
                mem[(32 * sub_61cf4863.length - arg1) + 288] = 0
                mem[(32 * sub_61cf4863.length - arg1) + 320] = 0
                mem[(32 * sub_61cf4863.length - arg1) + 352] = 96
                mem[s + 32] = (32 * sub_61cf4863.length - arg1) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < sub_61cf4863.length - arg1:
                if arg1 > -idx - 1:
                    revert with 'NH{q', 17
                if arg1 + idx >= sub_61cf4863.length:
                    revert with 'NH{q', 50
                if stor[('name', 'sub_61cf4863', 3) + arg1 + idx] >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                _1626 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1626] = bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_0)
                mem[_1626 + 32] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_256
                mem[_1626 + 64] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                mem[_1626 + 96] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_768
                mem[_1626 + 128] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1024
                mem[_1626 + 160] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1280
                mem[_1626 + 192] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1536
                if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792:
                    if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                        revert with 'NH{q', 34
                    _1634 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793) + 32
                    mem[_1634] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793
                    if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792:
                        if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                            mem[_1626 + 224] = _1634
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1708 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1724 = mem[_1708]
                            require mem[_1708] <= test266151307()
                            require _1708 + mem[_1708] + 31 < _1708 + return_data.size
                            _1758 = mem[_1708 + mem[_1708]]
                            if mem[_1708 + mem[_1708]] > test266151307():
                                revert with 'NH{q', 65
                            if _1708 + ceil32(return_data.size) + ceil32(ceil32(mem[_1708 + mem[_1708]])) + 1 > test266151307() or ceil32(ceil32(mem[_1708 + mem[_1708]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1708 + ceil32(return_data.size) + ceil32(ceil32(mem[_1708 + mem[_1708]])) + 1
                            mem[_1708 + ceil32(return_data.size)] = _1758
                            require _1724 + _1758 + 32 <= return_data.size
                            s = 0
                            while s < _1758:
                                mem[_1708 + ceil32(return_data.size) + s + 32] = mem[_1708 + _1724 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1758) > _1758:
                                mem[_1708 + ceil32(return_data.size) + _1758 + 32] = 0
                            mem[_1626 + 224] = _1708 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                                mem[_1634 + 32] = 256 * stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800
                                mem[_1626 + 224] = _1634
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1726 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1749 = mem[_1726]
                                require mem[_1726] <= test266151307()
                                require _1726 + mem[_1726] + 31 < _1726 + return_data.size
                                _1779 = mem[_1726 + mem[_1726]]
                                if mem[_1726 + mem[_1726]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1726 + ceil32(return_data.size) + ceil32(ceil32(mem[_1726 + mem[_1726]])) + 1 > test266151307() or ceil32(ceil32(mem[_1726 + mem[_1726]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1726 + ceil32(return_data.size) + ceil32(ceil32(mem[_1726 + mem[_1726]])) + 1
                                mem[_1726 + ceil32(return_data.size)] = _1779
                                require _1749 + _1779 + 32 <= return_data.size
                                s = 0
                                while s < _1779:
                                    mem[_1726 + ceil32(return_data.size) + s + 32] = mem[_1726 + _1749 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1779) > _1779:
                                    mem[_1726 + ceil32(return_data.size) + _1779 + 32] = 0
                                mem[_1626 + 224] = _1726 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + sha3(2) + 7
                                mem[_1634 + 32] = stor[sha3((8 * stor[('name', 'stor3', 3) + arg1 + idx]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _1634 + 32
                                t = sha3(mem[0])
                                while _1634 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1626 + 224] = _1634
                                _1929 = mem[_1626 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1929
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1929
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1987 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1997 = mem[_1987]
                                require mem[_1987] <= test266151307()
                                require _1987 + mem[_1987] + 31 < _1987 + return_data.size
                                _2007 = mem[_1987 + mem[_1987]]
                                if mem[_1987 + mem[_1987]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1987 + ceil32(return_data.size) + ceil32(ceil32(mem[_1987 + mem[_1987]])) + 1 > test266151307() or ceil32(ceil32(mem[_1987 + mem[_1987]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1987 + ceil32(return_data.size) + ceil32(ceil32(mem[_1987 + mem[_1987]])) + 1
                                mem[_1987 + ceil32(return_data.size)] = _2007
                                require _1997 + _2007 + 32 <= return_data.size
                                s = 0
                                while s < _2007:
                                    mem[_1987 + ceil32(return_data.size) + s + 32] = mem[_1987 + _1997 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2007) > _2007:
                                    mem[_1987 + ceil32(return_data.size) + _2007 + 32] = 0
                                mem[_1626 + 224] = _1987 + ceil32(return_data.size)
                    else:
                        if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                            mem[_1626 + 224] = _1634
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1715 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1737 = mem[_1715]
                            require mem[_1715] <= test266151307()
                            require _1715 + mem[_1715] + 31 < _1715 + return_data.size
                            _1769 = mem[_1715 + mem[_1715]]
                            if mem[_1715 + mem[_1715]] > test266151307():
                                revert with 'NH{q', 65
                            if _1715 + ceil32(return_data.size) + ceil32(ceil32(mem[_1715 + mem[_1715]])) + 1 > test266151307() or ceil32(ceil32(mem[_1715 + mem[_1715]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1715 + ceil32(return_data.size) + ceil32(ceil32(mem[_1715 + mem[_1715]])) + 1
                            mem[_1715 + ceil32(return_data.size)] = _1769
                            require _1737 + _1769 + 32 <= return_data.size
                            s = 0
                            while s < _1769:
                                mem[_1715 + ceil32(return_data.size) + s + 32] = mem[_1715 + _1737 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1769) > _1769:
                                mem[_1715 + ceil32(return_data.size) + _1769 + 32] = 0
                            mem[_1626 + 224] = _1715 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                                mem[_1634 + 32] = 256 * stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800
                                mem[_1626 + 224] = _1634
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1739 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1760 = mem[_1739]
                                require mem[_1739] <= test266151307()
                                require _1739 + mem[_1739] + 31 < _1739 + return_data.size
                                _1786 = mem[_1739 + mem[_1739]]
                                if mem[_1739 + mem[_1739]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1739 + ceil32(return_data.size) + ceil32(ceil32(mem[_1739 + mem[_1739]])) + 1 > test266151307() or ceil32(ceil32(mem[_1739 + mem[_1739]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1739 + ceil32(return_data.size) + ceil32(ceil32(mem[_1739 + mem[_1739]])) + 1
                                mem[_1739 + ceil32(return_data.size)] = _1786
                                require _1760 + _1786 + 32 <= return_data.size
                                s = 0
                                while s < _1786:
                                    mem[_1739 + ceil32(return_data.size) + s + 32] = mem[_1739 + _1760 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1786) > _1786:
                                    mem[_1739 + ceil32(return_data.size) + _1786 + 32] = 0
                                mem[_1626 + 224] = _1739 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + sha3(2) + 7
                                mem[_1634 + 32] = stor[sha3((8 * stor[('name', 'stor3', 3) + arg1 + idx]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _1634 + 32
                                t = sha3(mem[0])
                                while _1634 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1626 + 224] = _1634
                                _1931 = mem[_1626 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1931
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1931
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1988 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1998 = mem[_1988]
                                require mem[_1988] <= test266151307()
                                require _1988 + mem[_1988] + 31 < _1988 + return_data.size
                                _2008 = mem[_1988 + mem[_1988]]
                                if mem[_1988 + mem[_1988]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1988 + ceil32(return_data.size) + ceil32(ceil32(mem[_1988 + mem[_1988]])) + 1 > test266151307() or ceil32(ceil32(mem[_1988 + mem[_1988]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1988 + ceil32(return_data.size) + ceil32(ceil32(mem[_1988 + mem[_1988]])) + 1
                                mem[_1988 + ceil32(return_data.size)] = _2008
                                require _1998 + _2008 + 32 <= return_data.size
                                s = 0
                                while s < _2008:
                                    mem[_1988 + ceil32(return_data.size) + s + 32] = mem[_1988 + _1998 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2008) > _2008:
                                    mem[_1988 + ceil32(return_data.size) + _2008 + 32] = 0
                                mem[_1626 + 224] = _1988 + ceil32(return_data.size)
                else:
                    if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                        revert with 'NH{q', 34
                    _1636 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793) + 32
                    mem[_1636] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793
                    if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792:
                        if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                            mem[_1626 + 224] = _1636
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1717 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1740 = mem[_1717]
                            require mem[_1717] <= test266151307()
                            require _1717 + mem[_1717] + 31 < _1717 + return_data.size
                            _1770 = mem[_1717 + mem[_1717]]
                            if mem[_1717 + mem[_1717]] > test266151307():
                                revert with 'NH{q', 65
                            if _1717 + ceil32(return_data.size) + ceil32(ceil32(mem[_1717 + mem[_1717]])) + 1 > test266151307() or ceil32(ceil32(mem[_1717 + mem[_1717]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1717 + ceil32(return_data.size) + ceil32(ceil32(mem[_1717 + mem[_1717]])) + 1
                            mem[_1717 + ceil32(return_data.size)] = _1770
                            require _1740 + _1770 + 32 <= return_data.size
                            s = 0
                            while s < _1770:
                                mem[_1717 + ceil32(return_data.size) + s + 32] = mem[_1717 + _1740 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1770) > _1770:
                                mem[_1717 + ceil32(return_data.size) + _1770 + 32] = 0
                            mem[_1626 + 224] = _1717 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                                mem[_1636 + 32] = 256 * stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800
                                mem[_1626 + 224] = _1636
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1742 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1762 = mem[_1742]
                                require mem[_1742] <= test266151307()
                                require _1742 + mem[_1742] + 31 < _1742 + return_data.size
                                _1787 = mem[_1742 + mem[_1742]]
                                if mem[_1742 + mem[_1742]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1742 + ceil32(return_data.size) + ceil32(ceil32(mem[_1742 + mem[_1742]])) + 1 > test266151307() or ceil32(ceil32(mem[_1742 + mem[_1742]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1742 + ceil32(return_data.size) + ceil32(ceil32(mem[_1742 + mem[_1742]])) + 1
                                mem[_1742 + ceil32(return_data.size)] = _1787
                                require _1762 + _1787 + 32 <= return_data.size
                                s = 0
                                while s < _1787:
                                    mem[_1742 + ceil32(return_data.size) + s + 32] = mem[_1742 + _1762 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1787) > _1787:
                                    mem[_1742 + ceil32(return_data.size) + _1787 + 32] = 0
                                mem[_1626 + 224] = _1742 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + sha3(2) + 7
                                mem[_1636 + 32] = stor[sha3((8 * stor[('name', 'stor3', 3) + arg1 + idx]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _1636 + 32
                                t = sha3(mem[0])
                                while _1636 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1626 + 224] = _1636
                                _1933 = mem[_1626 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1933
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1933
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1989 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1999 = mem[_1989]
                                require mem[_1989] <= test266151307()
                                require _1989 + mem[_1989] + 31 < _1989 + return_data.size
                                _2009 = mem[_1989 + mem[_1989]]
                                if mem[_1989 + mem[_1989]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1989 + ceil32(return_data.size) + ceil32(ceil32(mem[_1989 + mem[_1989]])) + 1 > test266151307() or ceil32(ceil32(mem[_1989 + mem[_1989]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1989 + ceil32(return_data.size) + ceil32(ceil32(mem[_1989 + mem[_1989]])) + 1
                                mem[_1989 + ceil32(return_data.size)] = _2009
                                require _1999 + _2009 + 32 <= return_data.size
                                s = 0
                                while s < _2009:
                                    mem[_1989 + ceil32(return_data.size) + s + 32] = mem[_1989 + _1999 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2009) > _2009:
                                    mem[_1989 + ceil32(return_data.size) + _2009 + 32] = 0
                                mem[_1626 + 224] = _1989 + ceil32(return_data.size)
                    else:
                        if stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792 == stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                            mem[_1626 + 224] = _1636
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1727 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1750 = mem[_1727]
                            require mem[_1727] <= test266151307()
                            require _1727 + mem[_1727] + 31 < _1727 + return_data.size
                            _1782 = mem[_1727 + mem[_1727]]
                            if mem[_1727 + mem[_1727]] > test266151307():
                                revert with 'NH{q', 65
                            if _1727 + ceil32(return_data.size) + ceil32(ceil32(mem[_1727 + mem[_1727]])) + 1 > test266151307() or ceil32(ceil32(mem[_1727 + mem[_1727]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1727 + ceil32(return_data.size) + ceil32(ceil32(mem[_1727 + mem[_1727]])) + 1
                            mem[_1727 + ceil32(return_data.size)] = _1782
                            require _1750 + _1782 + 32 <= return_data.size
                            s = 0
                            while s < _1782:
                                mem[_1727 + ceil32(return_data.size) + s + 32] = mem[_1727 + _1750 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1782) > _1782:
                                mem[_1727 + ceil32(return_data.size) + _1782 + 32] = 0
                            mem[_1626 + 224] = _1727 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793:
                                mem[_1636 + 32] = 256 * stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800
                                mem[_1626 + 224] = _1636
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1752 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1772 = mem[_1752]
                                require mem[_1752] <= test266151307()
                                require _1752 + mem[_1752] + 31 < _1752 + return_data.size
                                _1792 = mem[_1752 + mem[_1752]]
                                if mem[_1752 + mem[_1752]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1752 + ceil32(return_data.size) + ceil32(ceil32(mem[_1752 + mem[_1752]])) + 1 > test266151307() or ceil32(ceil32(mem[_1752 + mem[_1752]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1752 + ceil32(return_data.size) + ceil32(ceil32(mem[_1752 + mem[_1752]])) + 1
                                mem[_1752 + ceil32(return_data.size)] = _1792
                                require _1772 + _1792 + 32 <= return_data.size
                                s = 0
                                while s < _1792:
                                    mem[_1752 + ceil32(return_data.size) + s + 32] = mem[_1752 + _1772 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1792) > _1792:
                                    mem[_1752 + ceil32(return_data.size) + _1792 + 32] = 0
                                mem[_1626 + 224] = _1752 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + sha3(2) + 7
                                mem[_1636 + 32] = stor[sha3((8 * stor[('name', 'stor3', 3) + arg1 + idx]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _1636 + 32
                                t = sha3(mem[0])
                                while _1636 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1626 + 224] = _1636
                                _1935 = mem[_1626 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1935
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1935
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1990 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2000 = mem[_1990]
                                require mem[_1990] <= test266151307()
                                require _1990 + mem[_1990] + 31 < _1990 + return_data.size
                                _2010 = mem[_1990 + mem[_1990]]
                                if mem[_1990 + mem[_1990]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1990 + ceil32(return_data.size) + ceil32(ceil32(mem[_1990 + mem[_1990]])) + 1 > test266151307() or ceil32(ceil32(mem[_1990 + mem[_1990]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1990 + ceil32(return_data.size) + ceil32(ceil32(mem[_1990 + mem[_1990]])) + 1
                                mem[_1990 + ceil32(return_data.size)] = _2010
                                require _2000 + _2010 + 32 <= return_data.size
                                s = 0
                                while s < _2010:
                                    mem[_1990 + ceil32(return_data.size) + s + 32] = mem[_1990 + _2000 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2010) > _2010:
                                    mem[_1990 + ceil32(return_data.size) + _2010 + 32] = 0
                                mem[_1626 + 224] = _1990 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1626
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1602 = mem[64]
            mem[mem[64]] = 32
            _1604 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _1604:
                mem[u] = t + -_1602 - 64
                _1912 = mem[s]
                mem[t] = bool(mem[mem[s]])
                mem[t + 32] = mem[_1912 + 32]
                mem[t + 64] = mem[_1912 + 64]
                mem[t + 96] = mem[_1912 + 96]
                mem[t + 128] = mem[_1912 + 128]
                mem[t + 160] = mem[_1912 + 160]
                mem[t + 192] = mem[_1912 + 204 len 20]
                _2026 = mem[_1912 + 224]
                mem[t + 224] = 256
                _2036 = mem[_2026]
                mem[t + 256] = mem[_2026]
                v = 0
                while v < _2036:
                    mem[t + v + 288] = mem[_2026 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_2036) > _2036:
                    mem[t + _2036 + 288] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_2036) + 288
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_c06d61f5(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[0] = msg.sender
    mem[32] = 4
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 <= sub_15f4d22a[address(msg.sender)]:
        if arg2 > test266151307():
            revert with 'NH{q', 65
        mem[96] = arg2
        mem[64] = (32 * arg2) + 128
        if not arg2:
            idx = 0
            while idx < arg2:
                mem[32] = 4
                if idx > -arg1 - 1:
                    revert with 'NH{q', 17
                if idx + arg1 >= sub_15f4d22a[address(msg.sender)]:
                    revert with 'NH{q', 50
                if stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_15f4d22a', 4)) + idx + arg1] >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                _597 = mem[64]
                mem[64] = mem[64] + 256
                mem[_597] = bool(stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_0)
                mem[_597 + 32] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_256
                mem[_597 + 64] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                mem[_597 + 96] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_768
                mem[_597 + 128] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1024
                mem[_597 + 160] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1280
                mem[_597 + 192] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1536
                if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792:
                    if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                        revert with 'NH{q', 34
                    _606 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793) + 32
                    mem[_606] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793
                    if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792:
                        if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                            mem[_597 + 224] = _606
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _724 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _758 = mem[_724]
                            require mem[_724] <= test266151307()
                            require _724 + mem[_724] + 31 < _724 + return_data.size
                            _812 = mem[_724 + mem[_724]]
                            if mem[_724 + mem[_724]] > test266151307():
                                revert with 'NH{q', 65
                            if _724 + ceil32(return_data.size) + ceil32(ceil32(mem[_724 + mem[_724]])) + 1 > test266151307() or ceil32(ceil32(mem[_724 + mem[_724]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _724 + ceil32(return_data.size) + ceil32(ceil32(mem[_724 + mem[_724]])) + 1
                            mem[_724 + ceil32(return_data.size)] = _812
                            require _758 + _812 + 32 <= return_data.size
                            s = 0
                            while s < _812:
                                mem[_724 + ceil32(return_data.size) + s + 32] = mem[_724 + _758 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_812) > _812:
                                mem[_724 + ceil32(return_data.size) + _812 + 32] = 0
                            mem[_597 + 224] = _724 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                                mem[_606 + 32] = 256 * stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1800
                                mem[_597 + 224] = _606
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _760 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _797 = mem[_760]
                                require mem[_760] <= test266151307()
                                require _760 + mem[_760] + 31 < _760 + return_data.size
                                _847 = mem[_760 + mem[_760]]
                                if mem[_760 + mem[_760]] > test266151307():
                                    revert with 'NH{q', 65
                                if _760 + ceil32(return_data.size) + ceil32(ceil32(mem[_760 + mem[_760]])) + 1 > test266151307() or ceil32(ceil32(mem[_760 + mem[_760]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _760 + ceil32(return_data.size) + ceil32(ceil32(mem[_760 + mem[_760]])) + 1
                                mem[_760 + ceil32(return_data.size)] = _847
                                require _797 + _847 + 32 <= return_data.size
                                s = 0
                                while s < _847:
                                    mem[_760 + ceil32(return_data.size) + s + 32] = mem[_760 + _797 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_847) > _847:
                                    mem[_760 + ceil32(return_data.size) + _847 + 32] = 0
                                mem[_597 + 224] = _760 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + sha3(2) + 7
                                mem[_606 + 32] = stor[sha3((8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _606 + 32
                                t = sha3(mem[0])
                                while _606 + stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_597 + 224] = _606
                                _1180 = mem[_597 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1180
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1180
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1248 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1258 = mem[_1248]
                                require mem[_1248] <= test266151307()
                                require _1248 + mem[_1248] + 31 < _1248 + return_data.size
                                _1273 = mem[_1248 + mem[_1248]]
                                if mem[_1248 + mem[_1248]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1248 + ceil32(return_data.size) + ceil32(ceil32(mem[_1248 + mem[_1248]])) + 1 > test266151307() or ceil32(ceil32(mem[_1248 + mem[_1248]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1248 + ceil32(return_data.size) + ceil32(ceil32(mem[_1248 + mem[_1248]])) + 1
                                mem[_1248 + ceil32(return_data.size)] = _1273
                                require _1258 + _1273 + 32 <= return_data.size
                                s = 0
                                while s < _1273:
                                    mem[_1248 + ceil32(return_data.size) + s + 32] = mem[_1248 + _1258 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1273) > _1273:
                                    mem[_1248 + ceil32(return_data.size) + _1273 + 32] = 0
                                mem[_597 + 224] = _1248 + ceil32(return_data.size)
                    else:
                        if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                            mem[_597 + 224] = _606
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _742 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _777 = mem[_742]
                            require mem[_742] <= test266151307()
                            require _742 + mem[_742] + 31 < _742 + return_data.size
                            _829 = mem[_742 + mem[_742]]
                            if mem[_742 + mem[_742]] > test266151307():
                                revert with 'NH{q', 65
                            if _742 + ceil32(return_data.size) + ceil32(ceil32(mem[_742 + mem[_742]])) + 1 > test266151307() or ceil32(ceil32(mem[_742 + mem[_742]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _742 + ceil32(return_data.size) + ceil32(ceil32(mem[_742 + mem[_742]])) + 1
                            mem[_742 + ceil32(return_data.size)] = _829
                            require _777 + _829 + 32 <= return_data.size
                            s = 0
                            while s < _829:
                                mem[_742 + ceil32(return_data.size) + s + 32] = mem[_742 + _777 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_829) > _829:
                                mem[_742 + ceil32(return_data.size) + _829 + 32] = 0
                            mem[_597 + 224] = _742 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                                mem[_606 + 32] = 256 * stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1800
                                mem[_597 + 224] = _606
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _779 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _814 = mem[_779]
                                require mem[_779] <= test266151307()
                                require _779 + mem[_779] + 31 < _779 + return_data.size
                                _866 = mem[_779 + mem[_779]]
                                if mem[_779 + mem[_779]] > test266151307():
                                    revert with 'NH{q', 65
                                if _779 + ceil32(return_data.size) + ceil32(ceil32(mem[_779 + mem[_779]])) + 1 > test266151307() or ceil32(ceil32(mem[_779 + mem[_779]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _779 + ceil32(return_data.size) + ceil32(ceil32(mem[_779 + mem[_779]])) + 1
                                mem[_779 + ceil32(return_data.size)] = _866
                                require _814 + _866 + 32 <= return_data.size
                                s = 0
                                while s < _866:
                                    mem[_779 + ceil32(return_data.size) + s + 32] = mem[_779 + _814 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_866) > _866:
                                    mem[_779 + ceil32(return_data.size) + _866 + 32] = 0
                                mem[_597 + 224] = _779 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + sha3(2) + 7
                                mem[_606 + 32] = stor[sha3((8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _606 + 32
                                t = sha3(mem[0])
                                while _606 + stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_597 + 224] = _606
                                _1182 = mem[_597 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1182
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1182
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1249 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1259 = mem[_1249]
                                require mem[_1249] <= test266151307()
                                require _1249 + mem[_1249] + 31 < _1249 + return_data.size
                                _1274 = mem[_1249 + mem[_1249]]
                                if mem[_1249 + mem[_1249]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1249 + ceil32(return_data.size) + ceil32(ceil32(mem[_1249 + mem[_1249]])) + 1 > test266151307() or ceil32(ceil32(mem[_1249 + mem[_1249]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1249 + ceil32(return_data.size) + ceil32(ceil32(mem[_1249 + mem[_1249]])) + 1
                                mem[_1249 + ceil32(return_data.size)] = _1274
                                require _1259 + _1274 + 32 <= return_data.size
                                s = 0
                                while s < _1274:
                                    mem[_1249 + ceil32(return_data.size) + s + 32] = mem[_1249 + _1259 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1274) > _1274:
                                    mem[_1249 + ceil32(return_data.size) + _1274 + 32] = 0
                                mem[_597 + 224] = _1249 + ceil32(return_data.size)
                else:
                    if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                        revert with 'NH{q', 34
                    _612 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793) + 32
                    mem[_612] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793
                    if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792:
                        if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                            mem[_597 + 224] = _612
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _744 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _780 = mem[_744]
                            require mem[_744] <= test266151307()
                            require _744 + mem[_744] + 31 < _744 + return_data.size
                            _830 = mem[_744 + mem[_744]]
                            if mem[_744 + mem[_744]] > test266151307():
                                revert with 'NH{q', 65
                            if _744 + ceil32(return_data.size) + ceil32(ceil32(mem[_744 + mem[_744]])) + 1 > test266151307() or ceil32(ceil32(mem[_744 + mem[_744]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _744 + ceil32(return_data.size) + ceil32(ceil32(mem[_744 + mem[_744]])) + 1
                            mem[_744 + ceil32(return_data.size)] = _830
                            require _780 + _830 + 32 <= return_data.size
                            s = 0
                            while s < _830:
                                mem[_744 + ceil32(return_data.size) + s + 32] = mem[_744 + _780 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_830) > _830:
                                mem[_744 + ceil32(return_data.size) + _830 + 32] = 0
                            mem[_597 + 224] = _744 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                                mem[_612 + 32] = 256 * stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1800
                                mem[_597 + 224] = _612
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _782 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _816 = mem[_782]
                                require mem[_782] <= test266151307()
                                require _782 + mem[_782] + 31 < _782 + return_data.size
                                _867 = mem[_782 + mem[_782]]
                                if mem[_782 + mem[_782]] > test266151307():
                                    revert with 'NH{q', 65
                                if _782 + ceil32(return_data.size) + ceil32(ceil32(mem[_782 + mem[_782]])) + 1 > test266151307() or ceil32(ceil32(mem[_782 + mem[_782]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _782 + ceil32(return_data.size) + ceil32(ceil32(mem[_782 + mem[_782]])) + 1
                                mem[_782 + ceil32(return_data.size)] = _867
                                require _816 + _867 + 32 <= return_data.size
                                s = 0
                                while s < _867:
                                    mem[_782 + ceil32(return_data.size) + s + 32] = mem[_782 + _816 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_867) > _867:
                                    mem[_782 + ceil32(return_data.size) + _867 + 32] = 0
                                mem[_597 + 224] = _782 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + sha3(2) + 7
                                mem[_612 + 32] = stor[sha3((8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _612 + 32
                                t = sha3(mem[0])
                                while _612 + stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_597 + 224] = _612
                                _1184 = mem[_597 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1184
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1184
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1250 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1260 = mem[_1250]
                                require mem[_1250] <= test266151307()
                                require _1250 + mem[_1250] + 31 < _1250 + return_data.size
                                _1275 = mem[_1250 + mem[_1250]]
                                if mem[_1250 + mem[_1250]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1250 + ceil32(return_data.size) + ceil32(ceil32(mem[_1250 + mem[_1250]])) + 1 > test266151307() or ceil32(ceil32(mem[_1250 + mem[_1250]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1250 + ceil32(return_data.size) + ceil32(ceil32(mem[_1250 + mem[_1250]])) + 1
                                mem[_1250 + ceil32(return_data.size)] = _1275
                                require _1260 + _1275 + 32 <= return_data.size
                                s = 0
                                while s < _1275:
                                    mem[_1250 + ceil32(return_data.size) + s + 32] = mem[_1250 + _1260 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1275) > _1275:
                                    mem[_1250 + ceil32(return_data.size) + _1275 + 32] = 0
                                mem[_597 + 224] = _1250 + ceil32(return_data.size)
                    else:
                        if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                            mem[_597 + 224] = _612
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _761 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _798 = mem[_761]
                            require mem[_761] <= test266151307()
                            require _761 + mem[_761] + 31 < _761 + return_data.size
                            _850 = mem[_761 + mem[_761]]
                            if mem[_761 + mem[_761]] > test266151307():
                                revert with 'NH{q', 65
                            if _761 + ceil32(return_data.size) + ceil32(ceil32(mem[_761 + mem[_761]])) + 1 > test266151307() or ceil32(ceil32(mem[_761 + mem[_761]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _761 + ceil32(return_data.size) + ceil32(ceil32(mem[_761 + mem[_761]])) + 1
                            mem[_761 + ceil32(return_data.size)] = _850
                            require _798 + _850 + 32 <= return_data.size
                            s = 0
                            while s < _850:
                                mem[_761 + ceil32(return_data.size) + s + 32] = mem[_761 + _798 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_850) > _850:
                                mem[_761 + ceil32(return_data.size) + _850 + 32] = 0
                            mem[_597 + 224] = _761 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                                mem[_612 + 32] = 256 * stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1800
                                mem[_597 + 224] = _612
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _800 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _832 = mem[_800]
                                require mem[_800] <= test266151307()
                                require _800 + mem[_800] + 31 < _800 + return_data.size
                                _887 = mem[_800 + mem[_800]]
                                if mem[_800 + mem[_800]] > test266151307():
                                    revert with 'NH{q', 65
                                if _800 + ceil32(return_data.size) + ceil32(ceil32(mem[_800 + mem[_800]])) + 1 > test266151307() or ceil32(ceil32(mem[_800 + mem[_800]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _800 + ceil32(return_data.size) + ceil32(ceil32(mem[_800 + mem[_800]])) + 1
                                mem[_800 + ceil32(return_data.size)] = _887
                                require _832 + _887 + 32 <= return_data.size
                                s = 0
                                while s < _887:
                                    mem[_800 + ceil32(return_data.size) + s + 32] = mem[_800 + _832 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_887) > _887:
                                    mem[_800 + ceil32(return_data.size) + _887 + 32] = 0
                                mem[_597 + 224] = _800 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + sha3(2) + 7
                                mem[_612 + 32] = stor[sha3((8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _612 + 32
                                t = sha3(mem[0])
                                while _612 + stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_597 + 224] = _612
                                _1186 = mem[_597 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1186
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1186
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1251 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1261 = mem[_1251]
                                require mem[_1251] <= test266151307()
                                require _1251 + mem[_1251] + 31 < _1251 + return_data.size
                                _1276 = mem[_1251 + mem[_1251]]
                                if mem[_1251 + mem[_1251]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1251 + ceil32(return_data.size) + ceil32(ceil32(mem[_1251 + mem[_1251]])) + 1 > test266151307() or ceil32(ceil32(mem[_1251 + mem[_1251]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1251 + ceil32(return_data.size) + ceil32(ceil32(mem[_1251 + mem[_1251]])) + 1
                                mem[_1251 + ceil32(return_data.size)] = _1276
                                require _1261 + _1276 + 32 <= return_data.size
                                s = 0
                                while s < _1276:
                                    mem[_1251 + ceil32(return_data.size) + s + 32] = mem[_1251 + _1261 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1276) > _1276:
                                    mem[_1251 + ceil32(return_data.size) + _1276 + 32] = 0
                                mem[_597 + 224] = _1251 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _597
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _586 = mem[64]
            mem[mem[64]] = 32
            _588 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _588:
                mem[u] = t + -_586 - 64
                _1162 = mem[s]
                mem[t] = bool(mem[mem[s]])
                mem[t + 32] = mem[_1162 + 32]
                mem[t + 64] = mem[_1162 + 64]
                mem[t + 96] = mem[_1162 + 96]
                mem[t + 128] = mem[_1162 + 128]
                mem[t + 160] = mem[_1162 + 160]
                mem[t + 192] = mem[_1162 + 204 len 20]
                _1388 = mem[_1162 + 224]
                mem[t + 224] = 256
                _1422 = mem[_1388]
                mem[t + 256] = mem[_1388]
                v = 0
                while v < _1422:
                    mem[t + v + 288] = mem[_1388 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1422) > _1422:
                    mem[t + _1422 + 288] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1422) + 288
                u = u + 32
                continue 
        else:
            mem[64] = (32 * arg2) + 384
            mem[(32 * arg2) + 128] = 0
            mem[(32 * arg2) + 160] = 0
            mem[(32 * arg2) + 192] = 0
            mem[(32 * arg2) + 224] = 0
            mem[(32 * arg2) + 256] = 0
            mem[(32 * arg2) + 288] = 0
            mem[(32 * arg2) + 320] = 0
            mem[(32 * arg2) + 352] = 96
            mem[var34001] = (32 * arg2) + 128
            s = var34001
            idx = var34002
            while idx - 1:
                mem[64] = mem[64] + 256
                mem[(32 * arg2) + 128] = 0
                mem[(32 * arg2) + 160] = 0
                mem[(32 * arg2) + 192] = 0
                mem[(32 * arg2) + 224] = 0
                mem[(32 * arg2) + 256] = 0
                mem[(32 * arg2) + 288] = 0
                mem[(32 * arg2) + 320] = 0
                mem[(32 * arg2) + 352] = 96
                mem[s + 32] = (32 * arg2) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < arg2:
                mem[32] = 4
                if idx > -arg1 - 1:
                    revert with 'NH{q', 17
                if idx + arg1 >= sub_15f4d22a[address(msg.sender)]:
                    revert with 'NH{q', 50
                if stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_15f4d22a', 4)) + idx + arg1] >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                _1637 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1637] = bool(stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_0)
                mem[_1637 + 32] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_256
                mem[_1637 + 64] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                mem[_1637 + 96] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_768
                mem[_1637 + 128] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1024
                mem[_1637 + 160] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1280
                mem[_1637 + 192] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1536
                if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792:
                    if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                        revert with 'NH{q', 34
                    _1644 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793) + 32
                    mem[_1644] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793
                    if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792:
                        if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                            mem[_1637 + 224] = _1644
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1718 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1732 = mem[_1718]
                            require mem[_1718] <= test266151307()
                            require _1718 + mem[_1718] + 31 < _1718 + return_data.size
                            _1766 = mem[_1718 + mem[_1718]]
                            if mem[_1718 + mem[_1718]] > test266151307():
                                revert with 'NH{q', 65
                            if _1718 + ceil32(return_data.size) + ceil32(ceil32(mem[_1718 + mem[_1718]])) + 1 > test266151307() or ceil32(ceil32(mem[_1718 + mem[_1718]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1718 + ceil32(return_data.size) + ceil32(ceil32(mem[_1718 + mem[_1718]])) + 1
                            mem[_1718 + ceil32(return_data.size)] = _1766
                            require _1732 + _1766 + 32 <= return_data.size
                            s = 0
                            while s < _1766:
                                mem[_1718 + ceil32(return_data.size) + s + 32] = mem[_1718 + _1732 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1766) > _1766:
                                mem[_1718 + ceil32(return_data.size) + _1766 + 32] = 0
                            mem[_1637 + 224] = _1718 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                                mem[_1644 + 32] = 256 * stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1800
                                mem[_1637 + 224] = _1644
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1734 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1757 = mem[_1734]
                                require mem[_1734] <= test266151307()
                                require _1734 + mem[_1734] + 31 < _1734 + return_data.size
                                _1787 = mem[_1734 + mem[_1734]]
                                if mem[_1734 + mem[_1734]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1734 + ceil32(return_data.size) + ceil32(ceil32(mem[_1734 + mem[_1734]])) + 1 > test266151307() or ceil32(ceil32(mem[_1734 + mem[_1734]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1734 + ceil32(return_data.size) + ceil32(ceil32(mem[_1734 + mem[_1734]])) + 1
                                mem[_1734 + ceil32(return_data.size)] = _1787
                                require _1757 + _1787 + 32 <= return_data.size
                                s = 0
                                while s < _1787:
                                    mem[_1734 + ceil32(return_data.size) + s + 32] = mem[_1734 + _1757 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1787) > _1787:
                                    mem[_1734 + ceil32(return_data.size) + _1787 + 32] = 0
                                mem[_1637 + 224] = _1734 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + sha3(2) + 7
                                mem[_1644 + 32] = stor[sha3((8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _1644 + 32
                                t = sha3(mem[0])
                                while _1644 + stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1637 + 224] = _1644
                                _1934 = mem[_1637 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1934
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1934
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1996 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2006 = mem[_1996]
                                require mem[_1996] <= test266151307()
                                require _1996 + mem[_1996] + 31 < _1996 + return_data.size
                                _2015 = mem[_1996 + mem[_1996]]
                                if mem[_1996 + mem[_1996]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1996 + ceil32(return_data.size) + ceil32(ceil32(mem[_1996 + mem[_1996]])) + 1 > test266151307() or ceil32(ceil32(mem[_1996 + mem[_1996]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1996 + ceil32(return_data.size) + ceil32(ceil32(mem[_1996 + mem[_1996]])) + 1
                                mem[_1996 + ceil32(return_data.size)] = _2015
                                require _2006 + _2015 + 32 <= return_data.size
                                s = 0
                                while s < _2015:
                                    mem[_1996 + ceil32(return_data.size) + s + 32] = mem[_1996 + _2006 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2015) > _2015:
                                    mem[_1996 + ceil32(return_data.size) + _2015 + 32] = 0
                                mem[_1637 + 224] = _1996 + ceil32(return_data.size)
                    else:
                        if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                            mem[_1637 + 224] = _1644
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1724 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1743 = mem[_1724]
                            require mem[_1724] <= test266151307()
                            require _1724 + mem[_1724] + 31 < _1724 + return_data.size
                            _1777 = mem[_1724 + mem[_1724]]
                            if mem[_1724 + mem[_1724]] > test266151307():
                                revert with 'NH{q', 65
                            if _1724 + ceil32(return_data.size) + ceil32(ceil32(mem[_1724 + mem[_1724]])) + 1 > test266151307() or ceil32(ceil32(mem[_1724 + mem[_1724]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1724 + ceil32(return_data.size) + ceil32(ceil32(mem[_1724 + mem[_1724]])) + 1
                            mem[_1724 + ceil32(return_data.size)] = _1777
                            require _1743 + _1777 + 32 <= return_data.size
                            s = 0
                            while s < _1777:
                                mem[_1724 + ceil32(return_data.size) + s + 32] = mem[_1724 + _1743 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1777) > _1777:
                                mem[_1724 + ceil32(return_data.size) + _1777 + 32] = 0
                            mem[_1637 + 224] = _1724 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                                mem[_1644 + 32] = 256 * stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1800
                                mem[_1637 + 224] = _1644
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1745 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1768 = mem[_1745]
                                require mem[_1745] <= test266151307()
                                require _1745 + mem[_1745] + 31 < _1745 + return_data.size
                                _1796 = mem[_1745 + mem[_1745]]
                                if mem[_1745 + mem[_1745]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1745 + ceil32(return_data.size) + ceil32(ceil32(mem[_1745 + mem[_1745]])) + 1 > test266151307() or ceil32(ceil32(mem[_1745 + mem[_1745]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1745 + ceil32(return_data.size) + ceil32(ceil32(mem[_1745 + mem[_1745]])) + 1
                                mem[_1745 + ceil32(return_data.size)] = _1796
                                require _1768 + _1796 + 32 <= return_data.size
                                s = 0
                                while s < _1796:
                                    mem[_1745 + ceil32(return_data.size) + s + 32] = mem[_1745 + _1768 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1796) > _1796:
                                    mem[_1745 + ceil32(return_data.size) + _1796 + 32] = 0
                                mem[_1637 + 224] = _1745 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + sha3(2) + 7
                                mem[_1644 + 32] = stor[sha3((8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _1644 + 32
                                t = sha3(mem[0])
                                while _1644 + stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1637 + 224] = _1644
                                _1936 = mem[_1637 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1936
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1936
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1997 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2007 = mem[_1997]
                                require mem[_1997] <= test266151307()
                                require _1997 + mem[_1997] + 31 < _1997 + return_data.size
                                _2016 = mem[_1997 + mem[_1997]]
                                if mem[_1997 + mem[_1997]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1997 + ceil32(return_data.size) + ceil32(ceil32(mem[_1997 + mem[_1997]])) + 1 > test266151307() or ceil32(ceil32(mem[_1997 + mem[_1997]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1997 + ceil32(return_data.size) + ceil32(ceil32(mem[_1997 + mem[_1997]])) + 1
                                mem[_1997 + ceil32(return_data.size)] = _2016
                                require _2007 + _2016 + 32 <= return_data.size
                                s = 0
                                while s < _2016:
                                    mem[_1997 + ceil32(return_data.size) + s + 32] = mem[_1997 + _2007 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2016) > _2016:
                                    mem[_1997 + ceil32(return_data.size) + _2016 + 32] = 0
                                mem[_1637 + 224] = _1997 + ceil32(return_data.size)
                else:
                    if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                        revert with 'NH{q', 34
                    _1648 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793) + 32
                    mem[_1648] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793
                    if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792:
                        if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                            mem[_1637 + 224] = _1648
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1726 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1746 = mem[_1726]
                            require mem[_1726] <= test266151307()
                            require _1726 + mem[_1726] + 31 < _1726 + return_data.size
                            _1778 = mem[_1726 + mem[_1726]]
                            if mem[_1726 + mem[_1726]] > test266151307():
                                revert with 'NH{q', 65
                            if _1726 + ceil32(return_data.size) + ceil32(ceil32(mem[_1726 + mem[_1726]])) + 1 > test266151307() or ceil32(ceil32(mem[_1726 + mem[_1726]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1726 + ceil32(return_data.size) + ceil32(ceil32(mem[_1726 + mem[_1726]])) + 1
                            mem[_1726 + ceil32(return_data.size)] = _1778
                            require _1746 + _1778 + 32 <= return_data.size
                            s = 0
                            while s < _1778:
                                mem[_1726 + ceil32(return_data.size) + s + 32] = mem[_1726 + _1746 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1778) > _1778:
                                mem[_1726 + ceil32(return_data.size) + _1778 + 32] = 0
                            mem[_1637 + 224] = _1726 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                                mem[_1648 + 32] = 256 * stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1800
                                mem[_1637 + 224] = _1648
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1748 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1770 = mem[_1748]
                                require mem[_1748] <= test266151307()
                                require _1748 + mem[_1748] + 31 < _1748 + return_data.size
                                _1797 = mem[_1748 + mem[_1748]]
                                if mem[_1748 + mem[_1748]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1748 + ceil32(return_data.size) + ceil32(ceil32(mem[_1748 + mem[_1748]])) + 1 > test266151307() or ceil32(ceil32(mem[_1748 + mem[_1748]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1748 + ceil32(return_data.size) + ceil32(ceil32(mem[_1748 + mem[_1748]])) + 1
                                mem[_1748 + ceil32(return_data.size)] = _1797
                                require _1770 + _1797 + 32 <= return_data.size
                                s = 0
                                while s < _1797:
                                    mem[_1748 + ceil32(return_data.size) + s + 32] = mem[_1748 + _1770 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1797) > _1797:
                                    mem[_1748 + ceil32(return_data.size) + _1797 + 32] = 0
                                mem[_1637 + 224] = _1748 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + sha3(2) + 7
                                mem[_1648 + 32] = stor[sha3((8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _1648 + 32
                                t = sha3(mem[0])
                                while _1648 + stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1637 + 224] = _1648
                                _1938 = mem[_1637 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1938
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1938
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1998 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2008 = mem[_1998]
                                require mem[_1998] <= test266151307()
                                require _1998 + mem[_1998] + 31 < _1998 + return_data.size
                                _2017 = mem[_1998 + mem[_1998]]
                                if mem[_1998 + mem[_1998]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1998 + ceil32(return_data.size) + ceil32(ceil32(mem[_1998 + mem[_1998]])) + 1 > test266151307() or ceil32(ceil32(mem[_1998 + mem[_1998]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1998 + ceil32(return_data.size) + ceil32(ceil32(mem[_1998 + mem[_1998]])) + 1
                                mem[_1998 + ceil32(return_data.size)] = _2017
                                require _2008 + _2017 + 32 <= return_data.size
                                s = 0
                                while s < _2017:
                                    mem[_1998 + ceil32(return_data.size) + s + 32] = mem[_1998 + _2008 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2017) > _2017:
                                    mem[_1998 + ceil32(return_data.size) + _2017 + 32] = 0
                                mem[_1637 + 224] = _1998 + ceil32(return_data.size)
                    else:
                        if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                            mem[_1637 + 224] = _1648
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1735 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1758 = mem[_1735]
                            require mem[_1735] <= test266151307()
                            require _1735 + mem[_1735] + 31 < _1735 + return_data.size
                            _1790 = mem[_1735 + mem[_1735]]
                            if mem[_1735 + mem[_1735]] > test266151307():
                                revert with 'NH{q', 65
                            if _1735 + ceil32(return_data.size) + ceil32(ceil32(mem[_1735 + mem[_1735]])) + 1 > test266151307() or ceil32(ceil32(mem[_1735 + mem[_1735]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1735 + ceil32(return_data.size) + ceil32(ceil32(mem[_1735 + mem[_1735]])) + 1
                            mem[_1735 + ceil32(return_data.size)] = _1790
                            require _1758 + _1790 + 32 <= return_data.size
                            s = 0
                            while s < _1790:
                                mem[_1735 + ceil32(return_data.size) + s + 32] = mem[_1735 + _1758 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1790) > _1790:
                                mem[_1735 + ceil32(return_data.size) + _1790 + 32] = 0
                            mem[_1637 + 224] = _1735 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                                mem[_1648 + 32] = 256 * stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1800
                                mem[_1637 + 224] = _1648
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1760 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1780 = mem[_1760]
                                require mem[_1760] <= test266151307()
                                require _1760 + mem[_1760] + 31 < _1760 + return_data.size
                                _1803 = mem[_1760 + mem[_1760]]
                                if mem[_1760 + mem[_1760]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1760 + ceil32(return_data.size) + ceil32(ceil32(mem[_1760 + mem[_1760]])) + 1 > test266151307() or ceil32(ceil32(mem[_1760 + mem[_1760]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1760 + ceil32(return_data.size) + ceil32(ceil32(mem[_1760 + mem[_1760]])) + 1
                                mem[_1760 + ceil32(return_data.size)] = _1803
                                require _1780 + _1803 + 32 <= return_data.size
                                s = 0
                                while s < _1803:
                                    mem[_1760 + ceil32(return_data.size) + s + 32] = mem[_1760 + _1780 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1803) > _1803:
                                    mem[_1760 + ceil32(return_data.size) + _1803 + 32] = 0
                                mem[_1637 + 224] = _1760 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + sha3(2) + 7
                                mem[_1648 + 32] = stor[sha3((8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _1648 + 32
                                t = sha3(mem[0])
                                while _1648 + stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1637 + 224] = _1648
                                _1940 = mem[_1637 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1940
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1940
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1999 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2009 = mem[_1999]
                                require mem[_1999] <= test266151307()
                                require _1999 + mem[_1999] + 31 < _1999 + return_data.size
                                _2018 = mem[_1999 + mem[_1999]]
                                if mem[_1999 + mem[_1999]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1999 + ceil32(return_data.size) + ceil32(ceil32(mem[_1999 + mem[_1999]])) + 1 > test266151307() or ceil32(ceil32(mem[_1999 + mem[_1999]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1999 + ceil32(return_data.size) + ceil32(ceil32(mem[_1999 + mem[_1999]])) + 1
                                mem[_1999 + ceil32(return_data.size)] = _2018
                                require _2009 + _2018 + 32 <= return_data.size
                                s = 0
                                while s < _2018:
                                    mem[_1999 + ceil32(return_data.size) + s + 32] = mem[_1999 + _2009 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2018) > _2018:
                                    mem[_1999 + ceil32(return_data.size) + _2018 + 32] = 0
                                mem[_1637 + 224] = _1999 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1637
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1614 = mem[64]
            mem[mem[64]] = 32
            _1616 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _1616:
                mem[u] = t + -_1614 - 64
                _1916 = mem[s]
                mem[t] = bool(mem[mem[s]])
                mem[t + 32] = mem[_1916 + 32]
                mem[t + 64] = mem[_1916 + 64]
                mem[t + 96] = mem[_1916 + 96]
                mem[t + 128] = mem[_1916 + 128]
                mem[t + 160] = mem[_1916 + 160]
                mem[t + 192] = mem[_1916 + 204 len 20]
                _2038 = mem[_1916 + 224]
                mem[t + 224] = 256
                _2048 = mem[_2038]
                mem[t + 256] = mem[_2038]
                v = 0
                while v < _2048:
                    mem[t + v + 288] = mem[_2038 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_2048) > _2048:
                    mem[t + _2048 + 288] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_2048) + 288
                u = u + 32
                continue 
    else:
        if sub_15f4d22a[address(msg.sender)] < arg1:
            revert with 'NH{q', 17
        if sub_15f4d22a[address(msg.sender)] - arg1 > test266151307():
            revert with 'NH{q', 65
        mem[96] = sub_15f4d22a[address(msg.sender)] - arg1
        mem[64] = (32 * sub_15f4d22a[address(msg.sender)] - arg1) + 128
        if not sub_15f4d22a[address(msg.sender)] - arg1:
            idx = 0
            while idx < sub_15f4d22a[address(msg.sender)] - arg1:
                mem[32] = 4
                if idx > -arg1 - 1:
                    revert with 'NH{q', 17
                if idx + arg1 >= sub_15f4d22a[address(msg.sender)]:
                    revert with 'NH{q', 50
                if stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_15f4d22a', 4)) + idx + arg1] >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                _600 = mem[64]
                mem[64] = mem[64] + 256
                mem[_600] = bool(stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_0)
                mem[_600 + 32] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_256
                mem[_600 + 64] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                mem[_600 + 96] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_768
                mem[_600 + 128] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1024
                mem[_600 + 160] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1280
                mem[_600 + 192] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1536
                if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792:
                    if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                        revert with 'NH{q', 34
                    _610 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793) + 32
                    mem[_610] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793
                    if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792:
                        if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                            mem[_600 + 224] = _610
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _733 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _767 = mem[_733]
                            require mem[_733] <= test266151307()
                            require _733 + mem[_733] + 31 < _733 + return_data.size
                            _820 = mem[_733 + mem[_733]]
                            if mem[_733 + mem[_733]] > test266151307():
                                revert with 'NH{q', 65
                            if _733 + ceil32(return_data.size) + ceil32(ceil32(mem[_733 + mem[_733]])) + 1 > test266151307() or ceil32(ceil32(mem[_733 + mem[_733]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _733 + ceil32(return_data.size) + ceil32(ceil32(mem[_733 + mem[_733]])) + 1
                            mem[_733 + ceil32(return_data.size)] = _820
                            require _767 + _820 + 32 <= return_data.size
                            s = 0
                            while s < _820:
                                mem[_733 + ceil32(return_data.size) + s + 32] = mem[_733 + _767 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_820) > _820:
                                mem[_733 + ceil32(return_data.size) + _820 + 32] = 0
                            mem[_600 + 224] = _733 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                                mem[_610 + 32] = 256 * stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1800
                                mem[_600 + 224] = _610
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _769 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _805 = mem[_769]
                                require mem[_769] <= test266151307()
                                require _769 + mem[_769] + 31 < _769 + return_data.size
                                _857 = mem[_769 + mem[_769]]
                                if mem[_769 + mem[_769]] > test266151307():
                                    revert with 'NH{q', 65
                                if _769 + ceil32(return_data.size) + ceil32(ceil32(mem[_769 + mem[_769]])) + 1 > test266151307() or ceil32(ceil32(mem[_769 + mem[_769]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _769 + ceil32(return_data.size) + ceil32(ceil32(mem[_769 + mem[_769]])) + 1
                                mem[_769 + ceil32(return_data.size)] = _857
                                require _805 + _857 + 32 <= return_data.size
                                s = 0
                                while s < _857:
                                    mem[_769 + ceil32(return_data.size) + s + 32] = mem[_769 + _805 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_857) > _857:
                                    mem[_769 + ceil32(return_data.size) + _857 + 32] = 0
                                mem[_600 + 224] = _769 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + sha3(2) + 7
                                mem[_610 + 32] = stor[sha3((8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _610 + 32
                                t = sha3(mem[0])
                                while _610 + stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_600 + 224] = _610
                                _1188 = mem[_600 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1188
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1188
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1252 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1262 = mem[_1252]
                                require mem[_1252] <= test266151307()
                                require _1252 + mem[_1252] + 31 < _1252 + return_data.size
                                _1278 = mem[_1252 + mem[_1252]]
                                if mem[_1252 + mem[_1252]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1252 + ceil32(return_data.size) + ceil32(ceil32(mem[_1252 + mem[_1252]])) + 1 > test266151307() or ceil32(ceil32(mem[_1252 + mem[_1252]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1252 + ceil32(return_data.size) + ceil32(ceil32(mem[_1252 + mem[_1252]])) + 1
                                mem[_1252 + ceil32(return_data.size)] = _1278
                                require _1262 + _1278 + 32 <= return_data.size
                                s = 0
                                while s < _1278:
                                    mem[_1252 + ceil32(return_data.size) + s + 32] = mem[_1252 + _1262 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1278) > _1278:
                                    mem[_1252 + ceil32(return_data.size) + _1278 + 32] = 0
                                mem[_600 + 224] = _1252 + ceil32(return_data.size)
                    else:
                        if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                            mem[_600 + 224] = _610
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _750 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _787 = mem[_750]
                            require mem[_750] <= test266151307()
                            require _750 + mem[_750] + 31 < _750 + return_data.size
                            _838 = mem[_750 + mem[_750]]
                            if mem[_750 + mem[_750]] > test266151307():
                                revert with 'NH{q', 65
                            if _750 + ceil32(return_data.size) + ceil32(ceil32(mem[_750 + mem[_750]])) + 1 > test266151307() or ceil32(ceil32(mem[_750 + mem[_750]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _750 + ceil32(return_data.size) + ceil32(ceil32(mem[_750 + mem[_750]])) + 1
                            mem[_750 + ceil32(return_data.size)] = _838
                            require _787 + _838 + 32 <= return_data.size
                            s = 0
                            while s < _838:
                                mem[_750 + ceil32(return_data.size) + s + 32] = mem[_750 + _787 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_838) > _838:
                                mem[_750 + ceil32(return_data.size) + _838 + 32] = 0
                            mem[_600 + 224] = _750 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                                mem[_610 + 32] = 256 * stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1800
                                mem[_600 + 224] = _610
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _789 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _822 = mem[_789]
                                require mem[_789] <= test266151307()
                                require _789 + mem[_789] + 31 < _789 + return_data.size
                                _876 = mem[_789 + mem[_789]]
                                if mem[_789 + mem[_789]] > test266151307():
                                    revert with 'NH{q', 65
                                if _789 + ceil32(return_data.size) + ceil32(ceil32(mem[_789 + mem[_789]])) + 1 > test266151307() or ceil32(ceil32(mem[_789 + mem[_789]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _789 + ceil32(return_data.size) + ceil32(ceil32(mem[_789 + mem[_789]])) + 1
                                mem[_789 + ceil32(return_data.size)] = _876
                                require _822 + _876 + 32 <= return_data.size
                                s = 0
                                while s < _876:
                                    mem[_789 + ceil32(return_data.size) + s + 32] = mem[_789 + _822 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_876) > _876:
                                    mem[_789 + ceil32(return_data.size) + _876 + 32] = 0
                                mem[_600 + 224] = _789 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + sha3(2) + 7
                                mem[_610 + 32] = stor[sha3((8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _610 + 32
                                t = sha3(mem[0])
                                while _610 + stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_600 + 224] = _610
                                _1190 = mem[_600 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1190
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1190
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1253 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1263 = mem[_1253]
                                require mem[_1253] <= test266151307()
                                require _1253 + mem[_1253] + 31 < _1253 + return_data.size
                                _1279 = mem[_1253 + mem[_1253]]
                                if mem[_1253 + mem[_1253]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1253 + ceil32(return_data.size) + ceil32(ceil32(mem[_1253 + mem[_1253]])) + 1 > test266151307() or ceil32(ceil32(mem[_1253 + mem[_1253]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1253 + ceil32(return_data.size) + ceil32(ceil32(mem[_1253 + mem[_1253]])) + 1
                                mem[_1253 + ceil32(return_data.size)] = _1279
                                require _1263 + _1279 + 32 <= return_data.size
                                s = 0
                                while s < _1279:
                                    mem[_1253 + ceil32(return_data.size) + s + 32] = mem[_1253 + _1263 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1279) > _1279:
                                    mem[_1253 + ceil32(return_data.size) + _1279 + 32] = 0
                                mem[_600 + 224] = _1253 + ceil32(return_data.size)
                else:
                    if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                        revert with 'NH{q', 34
                    _615 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793) + 32
                    mem[_615] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793
                    if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792:
                        if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                            mem[_600 + 224] = _615
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _752 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _790 = mem[_752]
                            require mem[_752] <= test266151307()
                            require _752 + mem[_752] + 31 < _752 + return_data.size
                            _839 = mem[_752 + mem[_752]]
                            if mem[_752 + mem[_752]] > test266151307():
                                revert with 'NH{q', 65
                            if _752 + ceil32(return_data.size) + ceil32(ceil32(mem[_752 + mem[_752]])) + 1 > test266151307() or ceil32(ceil32(mem[_752 + mem[_752]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _752 + ceil32(return_data.size) + ceil32(ceil32(mem[_752 + mem[_752]])) + 1
                            mem[_752 + ceil32(return_data.size)] = _839
                            require _790 + _839 + 32 <= return_data.size
                            s = 0
                            while s < _839:
                                mem[_752 + ceil32(return_data.size) + s + 32] = mem[_752 + _790 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_839) > _839:
                                mem[_752 + ceil32(return_data.size) + _839 + 32] = 0
                            mem[_600 + 224] = _752 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                                mem[_615 + 32] = 256 * stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1800
                                mem[_600 + 224] = _615
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _792 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _824 = mem[_792]
                                require mem[_792] <= test266151307()
                                require _792 + mem[_792] + 31 < _792 + return_data.size
                                _877 = mem[_792 + mem[_792]]
                                if mem[_792 + mem[_792]] > test266151307():
                                    revert with 'NH{q', 65
                                if _792 + ceil32(return_data.size) + ceil32(ceil32(mem[_792 + mem[_792]])) + 1 > test266151307() or ceil32(ceil32(mem[_792 + mem[_792]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _792 + ceil32(return_data.size) + ceil32(ceil32(mem[_792 + mem[_792]])) + 1
                                mem[_792 + ceil32(return_data.size)] = _877
                                require _824 + _877 + 32 <= return_data.size
                                s = 0
                                while s < _877:
                                    mem[_792 + ceil32(return_data.size) + s + 32] = mem[_792 + _824 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_877) > _877:
                                    mem[_792 + ceil32(return_data.size) + _877 + 32] = 0
                                mem[_600 + 224] = _792 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + sha3(2) + 7
                                mem[_615 + 32] = stor[sha3((8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _615 + 32
                                t = sha3(mem[0])
                                while _615 + stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_600 + 224] = _615
                                _1192 = mem[_600 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1192
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1192
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1254 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1264 = mem[_1254]
                                require mem[_1254] <= test266151307()
                                require _1254 + mem[_1254] + 31 < _1254 + return_data.size
                                _1280 = mem[_1254 + mem[_1254]]
                                if mem[_1254 + mem[_1254]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1254 + ceil32(return_data.size) + ceil32(ceil32(mem[_1254 + mem[_1254]])) + 1 > test266151307() or ceil32(ceil32(mem[_1254 + mem[_1254]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1254 + ceil32(return_data.size) + ceil32(ceil32(mem[_1254 + mem[_1254]])) + 1
                                mem[_1254 + ceil32(return_data.size)] = _1280
                                require _1264 + _1280 + 32 <= return_data.size
                                s = 0
                                while s < _1280:
                                    mem[_1254 + ceil32(return_data.size) + s + 32] = mem[_1254 + _1264 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1280) > _1280:
                                    mem[_1254 + ceil32(return_data.size) + _1280 + 32] = 0
                                mem[_600 + 224] = _1254 + ceil32(return_data.size)
                    else:
                        if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                            mem[_600 + 224] = _615
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _770 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _806 = mem[_770]
                            require mem[_770] <= test266151307()
                            require _770 + mem[_770] + 31 < _770 + return_data.size
                            _860 = mem[_770 + mem[_770]]
                            if mem[_770 + mem[_770]] > test266151307():
                                revert with 'NH{q', 65
                            if _770 + ceil32(return_data.size) + ceil32(ceil32(mem[_770 + mem[_770]])) + 1 > test266151307() or ceil32(ceil32(mem[_770 + mem[_770]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _770 + ceil32(return_data.size) + ceil32(ceil32(mem[_770 + mem[_770]])) + 1
                            mem[_770 + ceil32(return_data.size)] = _860
                            require _806 + _860 + 32 <= return_data.size
                            s = 0
                            while s < _860:
                                mem[_770 + ceil32(return_data.size) + s + 32] = mem[_770 + _806 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_860) > _860:
                                mem[_770 + ceil32(return_data.size) + _860 + 32] = 0
                            mem[_600 + 224] = _770 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                                mem[_615 + 32] = 256 * stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1800
                                mem[_600 + 224] = _615
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _808 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _841 = mem[_808]
                                require mem[_808] <= test266151307()
                                require _808 + mem[_808] + 31 < _808 + return_data.size
                                _894 = mem[_808 + mem[_808]]
                                if mem[_808 + mem[_808]] > test266151307():
                                    revert with 'NH{q', 65
                                if _808 + ceil32(return_data.size) + ceil32(ceil32(mem[_808 + mem[_808]])) + 1 > test266151307() or ceil32(ceil32(mem[_808 + mem[_808]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _808 + ceil32(return_data.size) + ceil32(ceil32(mem[_808 + mem[_808]])) + 1
                                mem[_808 + ceil32(return_data.size)] = _894
                                require _841 + _894 + 32 <= return_data.size
                                s = 0
                                while s < _894:
                                    mem[_808 + ceil32(return_data.size) + s + 32] = mem[_808 + _841 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_894) > _894:
                                    mem[_808 + ceil32(return_data.size) + _894 + 32] = 0
                                mem[_600 + 224] = _808 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + sha3(2) + 7
                                mem[_615 + 32] = stor[sha3((8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _615 + 32
                                t = sha3(mem[0])
                                while _615 + stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_600 + 224] = _615
                                _1194 = mem[_600 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1194
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1194
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1255 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1265 = mem[_1255]
                                require mem[_1255] <= test266151307()
                                require _1255 + mem[_1255] + 31 < _1255 + return_data.size
                                _1281 = mem[_1255 + mem[_1255]]
                                if mem[_1255 + mem[_1255]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1255 + ceil32(return_data.size) + ceil32(ceil32(mem[_1255 + mem[_1255]])) + 1 > test266151307() or ceil32(ceil32(mem[_1255 + mem[_1255]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1255 + ceil32(return_data.size) + ceil32(ceil32(mem[_1255 + mem[_1255]])) + 1
                                mem[_1255 + ceil32(return_data.size)] = _1281
                                require _1265 + _1281 + 32 <= return_data.size
                                s = 0
                                while s < _1281:
                                    mem[_1255 + ceil32(return_data.size) + s + 32] = mem[_1255 + _1265 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1281) > _1281:
                                    mem[_1255 + ceil32(return_data.size) + _1281 + 32] = 0
                                mem[_600 + 224] = _1255 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _600
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _587 = mem[64]
            mem[mem[64]] = 32
            _589 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _589:
                mem[u] = t + -_587 - 64
                _1171 = mem[s]
                mem[t] = bool(mem[mem[s]])
                mem[t + 32] = mem[_1171 + 32]
                mem[t + 64] = mem[_1171 + 64]
                mem[t + 96] = mem[_1171 + 96]
                mem[t + 128] = mem[_1171 + 128]
                mem[t + 160] = mem[_1171 + 160]
                mem[t + 192] = mem[_1171 + 204 len 20]
                _1394 = mem[_1171 + 224]
                mem[t + 224] = 256
                _1428 = mem[_1394]
                mem[t + 256] = mem[_1394]
                v = 0
                while v < _1428:
                    mem[t + v + 288] = mem[_1394 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1428) > _1428:
                    mem[t + _1428 + 288] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1428) + 288
                u = u + 32
                continue 
        else:
            mem[64] = (32 * sub_15f4d22a[address(msg.sender)] - arg1) + 384
            mem[(32 * sub_15f4d22a[address(msg.sender)] - arg1) + 128] = 0
            mem[(32 * sub_15f4d22a[address(msg.sender)] - arg1) + 160] = 0
            mem[(32 * sub_15f4d22a[address(msg.sender)] - arg1) + 192] = 0
            mem[(32 * sub_15f4d22a[address(msg.sender)] - arg1) + 224] = 0
            mem[(32 * sub_15f4d22a[address(msg.sender)] - arg1) + 256] = 0
            mem[(32 * sub_15f4d22a[address(msg.sender)] - arg1) + 288] = 0
            mem[(32 * sub_15f4d22a[address(msg.sender)] - arg1) + 320] = 0
            mem[(32 * sub_15f4d22a[address(msg.sender)] - arg1) + 352] = 96
            mem[var42001] = (32 * sub_15f4d22a[address(msg.sender)] - arg1) + 128
            s = var42001
            idx = var42002
            while idx - 1:
                mem[64] = mem[64] + 256
                mem[(32 * sub_15f4d22a[address(msg.sender)] - arg1) + 128] = 0
                mem[(32 * sub_15f4d22a[address(msg.sender)] - arg1) + 160] = 0
                mem[(32 * sub_15f4d22a[address(msg.sender)] - arg1) + 192] = 0
                mem[(32 * sub_15f4d22a[address(msg.sender)] - arg1) + 224] = 0
                mem[(32 * sub_15f4d22a[address(msg.sender)] - arg1) + 256] = 0
                mem[(32 * sub_15f4d22a[address(msg.sender)] - arg1) + 288] = 0
                mem[(32 * sub_15f4d22a[address(msg.sender)] - arg1) + 320] = 0
                mem[(32 * sub_15f4d22a[address(msg.sender)] - arg1) + 352] = 96
                mem[s + 32] = (32 * sub_15f4d22a[address(msg.sender)] - arg1) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < sub_15f4d22a[address(msg.sender)] - arg1:
                mem[32] = 4
                if idx > -arg1 - 1:
                    revert with 'NH{q', 17
                if idx + arg1 >= sub_15f4d22a[address(msg.sender)]:
                    revert with 'NH{q', 50
                if stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_15f4d22a', 4)) + idx + arg1] >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                _1639 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1639] = bool(stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_0)
                mem[_1639 + 32] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_256
                mem[_1639 + 64] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                mem[_1639 + 96] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_768
                mem[_1639 + 128] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1024
                mem[_1639 + 160] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1280
                mem[_1639 + 192] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1536
                if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792:
                    if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                        revert with 'NH{q', 34
                    _1647 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793) + 32
                    mem[_1647] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793
                    if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792:
                        if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                            mem[_1639 + 224] = _1647
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1721 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1737 = mem[_1721]
                            require mem[_1721] <= test266151307()
                            require _1721 + mem[_1721] + 31 < _1721 + return_data.size
                            _1771 = mem[_1721 + mem[_1721]]
                            if mem[_1721 + mem[_1721]] > test266151307():
                                revert with 'NH{q', 65
                            if _1721 + ceil32(return_data.size) + ceil32(ceil32(mem[_1721 + mem[_1721]])) + 1 > test266151307() or ceil32(ceil32(mem[_1721 + mem[_1721]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1721 + ceil32(return_data.size) + ceil32(ceil32(mem[_1721 + mem[_1721]])) + 1
                            mem[_1721 + ceil32(return_data.size)] = _1771
                            require _1737 + _1771 + 32 <= return_data.size
                            s = 0
                            while s < _1771:
                                mem[_1721 + ceil32(return_data.size) + s + 32] = mem[_1721 + _1737 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1771) > _1771:
                                mem[_1721 + ceil32(return_data.size) + _1771 + 32] = 0
                            mem[_1639 + 224] = _1721 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                                mem[_1647 + 32] = 256 * stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1800
                                mem[_1639 + 224] = _1647
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1739 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1762 = mem[_1739]
                                require mem[_1739] <= test266151307()
                                require _1739 + mem[_1739] + 31 < _1739 + return_data.size
                                _1792 = mem[_1739 + mem[_1739]]
                                if mem[_1739 + mem[_1739]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1739 + ceil32(return_data.size) + ceil32(ceil32(mem[_1739 + mem[_1739]])) + 1 > test266151307() or ceil32(ceil32(mem[_1739 + mem[_1739]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1739 + ceil32(return_data.size) + ceil32(ceil32(mem[_1739 + mem[_1739]])) + 1
                                mem[_1739 + ceil32(return_data.size)] = _1792
                                require _1762 + _1792 + 32 <= return_data.size
                                s = 0
                                while s < _1792:
                                    mem[_1739 + ceil32(return_data.size) + s + 32] = mem[_1739 + _1762 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1792) > _1792:
                                    mem[_1739 + ceil32(return_data.size) + _1792 + 32] = 0
                                mem[_1639 + 224] = _1739 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + sha3(2) + 7
                                mem[_1647 + 32] = stor[sha3((8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _1647 + 32
                                t = sha3(mem[0])
                                while _1647 + stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1639 + 224] = _1647
                                _1942 = mem[_1639 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1942
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1942
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2000 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2010 = mem[_2000]
                                require mem[_2000] <= test266151307()
                                require _2000 + mem[_2000] + 31 < _2000 + return_data.size
                                _2020 = mem[_2000 + mem[_2000]]
                                if mem[_2000 + mem[_2000]] > test266151307():
                                    revert with 'NH{q', 65
                                if _2000 + ceil32(return_data.size) + ceil32(ceil32(mem[_2000 + mem[_2000]])) + 1 > test266151307() or ceil32(ceil32(mem[_2000 + mem[_2000]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _2000 + ceil32(return_data.size) + ceil32(ceil32(mem[_2000 + mem[_2000]])) + 1
                                mem[_2000 + ceil32(return_data.size)] = _2020
                                require _2010 + _2020 + 32 <= return_data.size
                                s = 0
                                while s < _2020:
                                    mem[_2000 + ceil32(return_data.size) + s + 32] = mem[_2000 + _2010 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2020) > _2020:
                                    mem[_2000 + ceil32(return_data.size) + _2020 + 32] = 0
                                mem[_1639 + 224] = _2000 + ceil32(return_data.size)
                    else:
                        if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                            mem[_1639 + 224] = _1647
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1728 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1750 = mem[_1728]
                            require mem[_1728] <= test266151307()
                            require _1728 + mem[_1728] + 31 < _1728 + return_data.size
                            _1782 = mem[_1728 + mem[_1728]]
                            if mem[_1728 + mem[_1728]] > test266151307():
                                revert with 'NH{q', 65
                            if _1728 + ceil32(return_data.size) + ceil32(ceil32(mem[_1728 + mem[_1728]])) + 1 > test266151307() or ceil32(ceil32(mem[_1728 + mem[_1728]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1728 + ceil32(return_data.size) + ceil32(ceil32(mem[_1728 + mem[_1728]])) + 1
                            mem[_1728 + ceil32(return_data.size)] = _1782
                            require _1750 + _1782 + 32 <= return_data.size
                            s = 0
                            while s < _1782:
                                mem[_1728 + ceil32(return_data.size) + s + 32] = mem[_1728 + _1750 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1782) > _1782:
                                mem[_1728 + ceil32(return_data.size) + _1782 + 32] = 0
                            mem[_1639 + 224] = _1728 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                                mem[_1647 + 32] = 256 * stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1800
                                mem[_1639 + 224] = _1647
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1752 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1773 = mem[_1752]
                                require mem[_1752] <= test266151307()
                                require _1752 + mem[_1752] + 31 < _1752 + return_data.size
                                _1799 = mem[_1752 + mem[_1752]]
                                if mem[_1752 + mem[_1752]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1752 + ceil32(return_data.size) + ceil32(ceil32(mem[_1752 + mem[_1752]])) + 1 > test266151307() or ceil32(ceil32(mem[_1752 + mem[_1752]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1752 + ceil32(return_data.size) + ceil32(ceil32(mem[_1752 + mem[_1752]])) + 1
                                mem[_1752 + ceil32(return_data.size)] = _1799
                                require _1773 + _1799 + 32 <= return_data.size
                                s = 0
                                while s < _1799:
                                    mem[_1752 + ceil32(return_data.size) + s + 32] = mem[_1752 + _1773 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1799) > _1799:
                                    mem[_1752 + ceil32(return_data.size) + _1799 + 32] = 0
                                mem[_1639 + 224] = _1752 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + sha3(2) + 7
                                mem[_1647 + 32] = stor[sha3((8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _1647 + 32
                                t = sha3(mem[0])
                                while _1647 + stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1639 + 224] = _1647
                                _1944 = mem[_1639 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1944
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1944
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2001 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2011 = mem[_2001]
                                require mem[_2001] <= test266151307()
                                require _2001 + mem[_2001] + 31 < _2001 + return_data.size
                                _2021 = mem[_2001 + mem[_2001]]
                                if mem[_2001 + mem[_2001]] > test266151307():
                                    revert with 'NH{q', 65
                                if _2001 + ceil32(return_data.size) + ceil32(ceil32(mem[_2001 + mem[_2001]])) + 1 > test266151307() or ceil32(ceil32(mem[_2001 + mem[_2001]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _2001 + ceil32(return_data.size) + ceil32(ceil32(mem[_2001 + mem[_2001]])) + 1
                                mem[_2001 + ceil32(return_data.size)] = _2021
                                require _2011 + _2021 + 32 <= return_data.size
                                s = 0
                                while s < _2021:
                                    mem[_2001 + ceil32(return_data.size) + s + 32] = mem[_2001 + _2011 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2021) > _2021:
                                    mem[_2001 + ceil32(return_data.size) + _2021 + 32] = 0
                                mem[_1639 + 224] = _2001 + ceil32(return_data.size)
                else:
                    if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                        revert with 'NH{q', 34
                    _1649 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793) + 32
                    mem[_1649] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793
                    if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792:
                        if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                            mem[_1639 + 224] = _1649
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1730 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1753 = mem[_1730]
                            require mem[_1730] <= test266151307()
                            require _1730 + mem[_1730] + 31 < _1730 + return_data.size
                            _1783 = mem[_1730 + mem[_1730]]
                            if mem[_1730 + mem[_1730]] > test266151307():
                                revert with 'NH{q', 65
                            if _1730 + ceil32(return_data.size) + ceil32(ceil32(mem[_1730 + mem[_1730]])) + 1 > test266151307() or ceil32(ceil32(mem[_1730 + mem[_1730]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1730 + ceil32(return_data.size) + ceil32(ceil32(mem[_1730 + mem[_1730]])) + 1
                            mem[_1730 + ceil32(return_data.size)] = _1783
                            require _1753 + _1783 + 32 <= return_data.size
                            s = 0
                            while s < _1783:
                                mem[_1730 + ceil32(return_data.size) + s + 32] = mem[_1730 + _1753 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1783) > _1783:
                                mem[_1730 + ceil32(return_data.size) + _1783 + 32] = 0
                            mem[_1639 + 224] = _1730 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                                mem[_1649 + 32] = 256 * stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1800
                                mem[_1639 + 224] = _1649
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1755 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1775 = mem[_1755]
                                require mem[_1755] <= test266151307()
                                require _1755 + mem[_1755] + 31 < _1755 + return_data.size
                                _1800 = mem[_1755 + mem[_1755]]
                                if mem[_1755 + mem[_1755]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1755 + ceil32(return_data.size) + ceil32(ceil32(mem[_1755 + mem[_1755]])) + 1 > test266151307() or ceil32(ceil32(mem[_1755 + mem[_1755]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1755 + ceil32(return_data.size) + ceil32(ceil32(mem[_1755 + mem[_1755]])) + 1
                                mem[_1755 + ceil32(return_data.size)] = _1800
                                require _1775 + _1800 + 32 <= return_data.size
                                s = 0
                                while s < _1800:
                                    mem[_1755 + ceil32(return_data.size) + s + 32] = mem[_1755 + _1775 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1800) > _1800:
                                    mem[_1755 + ceil32(return_data.size) + _1800 + 32] = 0
                                mem[_1639 + 224] = _1755 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + sha3(2) + 7
                                mem[_1649 + 32] = stor[sha3((8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _1649 + 32
                                t = sha3(mem[0])
                                while _1649 + stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1639 + 224] = _1649
                                _1946 = mem[_1639 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1946
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1946
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2002 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2012 = mem[_2002]
                                require mem[_2002] <= test266151307()
                                require _2002 + mem[_2002] + 31 < _2002 + return_data.size
                                _2022 = mem[_2002 + mem[_2002]]
                                if mem[_2002 + mem[_2002]] > test266151307():
                                    revert with 'NH{q', 65
                                if _2002 + ceil32(return_data.size) + ceil32(ceil32(mem[_2002 + mem[_2002]])) + 1 > test266151307() or ceil32(ceil32(mem[_2002 + mem[_2002]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _2002 + ceil32(return_data.size) + ceil32(ceil32(mem[_2002 + mem[_2002]])) + 1
                                mem[_2002 + ceil32(return_data.size)] = _2022
                                require _2012 + _2022 + 32 <= return_data.size
                                s = 0
                                while s < _2022:
                                    mem[_2002 + ceil32(return_data.size) + s + 32] = mem[_2002 + _2012 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2022) > _2022:
                                    mem[_2002 + ceil32(return_data.size) + _2022 + 32] = 0
                                mem[_1639 + 224] = _2002 + ceil32(return_data.size)
                    else:
                        if stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1792 == stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 < 32:
                            revert with 'NH{q', 34
                        if not stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                            mem[_1639 + 224] = _1649
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1740 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1763 = mem[_1740]
                            require mem[_1740] <= test266151307()
                            require _1740 + mem[_1740] + 31 < _1740 + return_data.size
                            _1795 = mem[_1740 + mem[_1740]]
                            if mem[_1740 + mem[_1740]] > test266151307():
                                revert with 'NH{q', 65
                            if _1740 + ceil32(return_data.size) + ceil32(ceil32(mem[_1740 + mem[_1740]])) + 1 > test266151307() or ceil32(ceil32(mem[_1740 + mem[_1740]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1740 + ceil32(return_data.size) + ceil32(ceil32(mem[_1740 + mem[_1740]])) + 1
                            mem[_1740 + ceil32(return_data.size)] = _1795
                            require _1763 + _1795 + 32 <= return_data.size
                            s = 0
                            while s < _1795:
                                mem[_1740 + ceil32(return_data.size) + s + 32] = mem[_1740 + _1763 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1795) > _1795:
                                mem[_1740 + ceil32(return_data.size) + _1795 + 32] = 0
                            mem[_1639 + 224] = _1740 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793:
                                mem[_1649 + 32] = 256 * stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1800
                                mem[_1639 + 224] = _1649
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1765 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1785 = mem[_1765]
                                require mem[_1765] <= test266151307()
                                require _1765 + mem[_1765] + 31 < _1765 + return_data.size
                                _1805 = mem[_1765 + mem[_1765]]
                                if mem[_1765 + mem[_1765]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1765 + ceil32(return_data.size) + ceil32(ceil32(mem[_1765 + mem[_1765]])) + 1 > test266151307() or ceil32(ceil32(mem[_1765 + mem[_1765]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1765 + ceil32(return_data.size) + ceil32(ceil32(mem[_1765 + mem[_1765]])) + 1
                                mem[_1765 + ceil32(return_data.size)] = _1805
                                require _1785 + _1805 + 32 <= return_data.size
                                s = 0
                                while s < _1805:
                                    mem[_1765 + ceil32(return_data.size) + s + 32] = mem[_1765 + _1785 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1805) > _1805:
                                    mem[_1765 + ceil32(return_data.size) + _1805 + 32] = 0
                                mem[_1639 + 224] = _1765 + ceil32(return_data.size)
                            else:
                                mem[0] = (8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + sha3(2) + 7
                                mem[_1649 + 32] = stor[sha3((8 * stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]) + ('name', 'stor2', 2) + 7)].field_0
                                s = _1649 + 32
                                t = sha3(mem[0])
                                while _1649 + stor2[stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor4', 4)) + idx + arg1]].field_1793 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1639 + 224] = _1649
                                _1948 = mem[_1639 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1948
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1948
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2003 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2013 = mem[_2003]
                                require mem[_2003] <= test266151307()
                                require _2003 + mem[_2003] + 31 < _2003 + return_data.size
                                _2023 = mem[_2003 + mem[_2003]]
                                if mem[_2003 + mem[_2003]] > test266151307():
                                    revert with 'NH{q', 65
                                if _2003 + ceil32(return_data.size) + ceil32(ceil32(mem[_2003 + mem[_2003]])) + 1 > test266151307() or ceil32(ceil32(mem[_2003 + mem[_2003]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _2003 + ceil32(return_data.size) + ceil32(ceil32(mem[_2003 + mem[_2003]])) + 1
                                mem[_2003 + ceil32(return_data.size)] = _2023
                                require _2013 + _2023 + 32 <= return_data.size
                                s = 0
                                while s < _2023:
                                    mem[_2003 + ceil32(return_data.size) + s + 32] = mem[_2003 + _2013 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2023) > _2023:
                                    mem[_2003 + ceil32(return_data.size) + _2023 + 32] = 0
                                mem[_1639 + 224] = _2003 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1639
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1615 = mem[64]
            mem[mem[64]] = 32
            _1617 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _1617:
                mem[u] = t + -_1615 - 64
                _1925 = mem[s]
                mem[t] = bool(mem[mem[s]])
                mem[t + 32] = mem[_1925 + 32]
                mem[t + 64] = mem[_1925 + 64]
                mem[t + 96] = mem[_1925 + 96]
                mem[t + 128] = mem[_1925 + 128]
                mem[t + 160] = mem[_1925 + 160]
                mem[t + 192] = mem[_1925 + 204 len 20]
                _2039 = mem[_1925 + 224]
                mem[t + 224] = 256
                _2049 = mem[_2039]
                mem[t + 256] = mem[_2039]
                v = 0
                while v < _2049:
                    mem[t + v + 288] = mem[_2039 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_2049) > _2049:
                    mem[t + _2049 + 288] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_2049) + 288
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
