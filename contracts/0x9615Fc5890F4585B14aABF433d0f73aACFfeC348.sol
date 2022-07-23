contract main {




// =====================  Runtime code  =====================


#
#  - sub_3912fc85(?)
#
const withdrawableBalance = eth.balance(this.address)


address owner;
array of uint256 stor1;
array of struct stor2;
array of uint256 sub_61cf4863;
array of uint256 sub_15f4d22a;
uint256 sub_aaf51b7e;
uint256 totalVolume;
uint256 totalSales;
uint256 sub_3fe1e117;
uint8 stor9;
uint8 stor9; offset 8
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403024;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403025;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403026;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403027;
array of address stor29102676481673041902632991033461445430619272659676223336789171408008386403028;
array of struct stor29102676481673041902632991033461445430619272659676223336789171408008386403029;

function sub_15f4d22a(?) {
    return sub_15f4d22a[msg.sender]
}

function sub_3fe1e117(?) {
    return sub_3fe1e117
}

function totalVolume() {
    return totalVolume
}

function sub_61cf4863(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_61cf4863.length
    return sub_61cf4863[arg1]
}

function totalSales() {
    return totalSales
}

function sub_741520b0(?) {
    return sub_61cf4863.length
}

function owner() {
    return owner
}

function sub_aaf51b7e(?) {
    return sub_aaf51b7e
}

function sub_aca20f07(?) {
    return bool(uint8(stor9.field_8))
}

function sub_b2245558(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_15f4d22a[arg1]
    return sub_15f4d22a[arg1][arg2]
}

function totalListings() {
    return stor2.length
}

function isMarketOpen() {
    return bool(uint8(stor9.field_0))
}

function _fallback() payable {
    revert
}

function openMarket() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor9.field_0) = 1
}

function closeMarket() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor9.field_0) = 0
}

function sub_607133a0(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor9.field_8) = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setNFTAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor1.length) = arg1
}

function withdrawBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_91f76419(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Give a percentage value from 0 to 100'
    sub_aaf51b7e = arg1
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

function sub_632541b4(?) {
    require calldata.size - 4 >= 32
    if not uint8(stor9.field_8):
        revert with 0, 'Only in emergency.'
    if uint8(stor9.field_0):
        revert with 0, 'Only in emergency.'
    if arg1 >= stor2.length:
        revert with 0, 'Invalid Listing'
    if bool(stor2[arg1].field_1792):
        if not bool(stor2[arg1].field_1792) - (uint255(stor2[arg1].field_1792) * 0.5 < 32):
            revert with 0, 34
    else:
        if not bool(stor2[arg1].field_1792) - (stor2[arg1].field_1793 % 128 < 32):
            revert with 0, 34
    if bool(stor2[arg1].field_1792):
        if not bool(stor2[arg1].field_1792) - (uint255(stor2[arg1].field_1792) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor2[arg1].field_1792):
            if 31 < uint255(stor2[arg1].field_1792) * 0.5:
                idx = 384
                s = 0
                while (uint255(stor2[arg1].field_1792) * 0.5) + 352 > idx:
                    mem[idx + 32] = stor[s + sha3(('name', 'stor2', 2) + (8 * arg1) + 7)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if not bool(stor2[arg1].field_1792) - (stor2[arg1].field_1793 % 128 < 32):
            revert with 0, 34
        if stor2[arg1].field_1793 % 128:
            if 31 < stor2[arg1].field_1793 % 128:
                idx = 384
                s = 0
                while stor2[arg1].field_1793 % 128 + 352 > idx:
                    mem[idx + 32] = stor[s + sha3(('name', 'stor2', 2) + (8 * arg1) + 7)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(stor2[arg1].field_1536), stor2[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addListing(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor9.field_0):
        revert with 0, 'Market is closed.'
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
    uint8(stor2[stor2.length].field_0) = 1
    stor4057[stor2.length] = stor2.length
    stor4057[stor2.length] = arg1
    stor4057[stor2.length] = arg2
    stor4057[stor2.length] = sub_61cf4863.length
    stor4057[stor2.length] = sub_15f4d22a[msg.sender]
    stor4057[stor2.length] = msg.sender
    if bool(stor4057[stor2.length].field_0):
        if not bool(stor4057[stor2.length].field_0) - (uint255(stor4057[stor2.length].field_0) * 0.5 < 32):
            revert with 0, 34
        stor4057[stor2.length].field_0 = 0
        idx = 0
        while (uint255(stor4057[stor2.length].field_0) * 0.5) + 31 / 32 > idx:
            stor[idx + sha3((8 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad5)] = 0
            idx = idx + 1
            continue 
    else:
        if not bool(stor4057[stor2.length].field_0) - (stor4057[stor2.length].field_1 % 128 < 32):
            revert with 0, 34
        stor4057[stor2.length].field_0 = 0
        idx = 0
        while stor4057[stor2.length].field_1 % 128 + 31 / 32 > idx:
            stor[idx + sha3((8 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad5)] = 0
            idx = idx + 1
            continue 
    sub_15f4d22a[msg.sender]++
    sub_15f4d22a[msg.sender][sub_15f4d22a[msg.sender]] = stor2.length
    sub_61cf4863.length++
    sub_61cf4863[sub_61cf4863.length] = stor2.length
    emit 0xf8566eba: 32, 1, stor2.length, arg1, arg2, sub_61cf4863.length, sub_15f4d22a[msg.sender], msg.sender, 256, 0
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateListing(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 >= stor2.length:
        revert with 0, 'Invalid Listing'
    if not uint8(stor2[arg1].field_0):
        revert with 0, 'Listing no longer active'
    if arg1 >= stor2.length:
        revert with 0, 50
    if address(stor2[arg1].field_1536) != msg.sender:
        revert with 0, 'Invalid Owner'
    if arg1 >= stor2.length:
        revert with 0, 50
    stor2[arg1].field_768 = arg2
    if bool(stor2[arg1].field_1792):
        if not bool(stor2[arg1].field_1792) - (uint255(stor2[arg1].field_1792) * 0.5 < 32):
            revert with 0, 34
        if not bool(stor2[arg1].field_1792):
            emit 0x6573c92d: 32, bool(uint8(stor2[arg1].field_0)), stor2[arg1].field_256, stor2[arg1].field_512, stor2[arg1].field_768, stor2[arg1].field_1024, stor2[arg1].field_1280, address(stor2[arg1].field_1536), 256, 2 * Mask(256, -1, stor2[arg1].field_1792), Mask(248, 8, stor2[arg1].field_1792)
        else:
            if bool(stor2[arg1].field_1792) != 1:
                emit 0x6573c92d: mem[96 len -96]
            else:
                idx = 0
                s = 0
                while idx < uint255(stor2[arg1].field_1792) * 0.5:
                    mem[idx + 416] = stor[s + sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x6573c92d: 32, bool(uint8(stor2[arg1].field_0)), stor2[arg1].field_256, stor2[arg1].field_512, stor2[arg1].field_768, stor2[arg1].field_1024, stor2[arg1].field_1280, address(stor2[arg1].field_1536), 256, 2 * Mask(256, -1, stor2[arg1].field_1792), mem[416 len ceil32(uint255(stor2[arg1].field_1792) * 0.5)]
    else:
        if not bool(stor2[arg1].field_1792) - (stor2[arg1].field_1793 % 128 < 32):
            revert with 0, 34
        if not bool(stor2[arg1].field_1792):
            emit 0x6573c92d: 32, bool(uint8(stor2[arg1].field_0)), stor2[arg1].field_256, stor2[arg1].field_512, stor2[arg1].field_768, stor2[arg1].field_1024, stor2[arg1].field_1280, address(stor2[arg1].field_1536), 256, stor2[arg1].field_1792 % 128, Mask(248, 8, stor2[arg1].field_1792)
        else:
            if bool(stor2[arg1].field_1792) != 1:
                emit 0x6573c92d: mem[96 len -96]
            else:
                idx = 0
                s = 0
                while idx < stor2[arg1].field_1793 % 128:
                    mem[idx + 416] = stor[s + sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x6573c92d: 32, bool(uint8(stor2[arg1].field_0)), stor2[arg1].field_256, stor2[arg1].field_512, stor2[arg1].field_768, stor2[arg1].field_1024, stor2[arg1].field_1280, address(stor2[arg1].field_1536), 256, stor2[arg1].field_1792 % 128, mem[416 len ceil32(stor2[arg1].field_1793 % 128)]
}

function listings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor2.length
    if bool(stor2[arg1].field_1792):
        if not bool(stor2[arg1].field_1792) - (uint255(stor2[arg1].field_1792) * 0.5 < 32):
            revert with 0, 34
        if bool(stor2[arg1].field_1792):
            if not bool(stor2[arg1].field_1792) - (uint255(stor2[arg1].field_1792) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor2[arg1].field_1792):
                if 31 >= uint255(stor2[arg1].field_1792) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor2[arg1].field_1800)
                else:
                    mem[128] = stor[sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor2[arg1].field_1792) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if not bool(stor2[arg1].field_1792) - (stor2[arg1].field_1793 % 128 < 32):
                revert with 0, 34
            if stor2[arg1].field_1793 % 128:
                if 31 >= stor2[arg1].field_1793 % 128:
                    mem[128] = 256 * Mask(248, 0, stor2[arg1].field_1800)
                else:
                    mem[128] = stor[sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_1793 % 128 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return bool(uint8(stor2[arg1].field_0)), 
               stor2[arg1].field_256,
               stor2[arg1].field_512,
               stor2[arg1].field_768,
               stor2[arg1].field_1024,
               stor2[arg1].field_1280,
               address(stor2[arg1].field_1536),
               Array(len=2 * Mask(256, -1, stor2[arg1].field_1792), data=mem[128 len ceil32(uint255(stor2[arg1].field_1792) * 0.5)])
    if not bool(stor2[arg1].field_1792) - (stor2[arg1].field_1793 % 128 < 32):
        revert with 0, 34
    if bool(stor2[arg1].field_1792):
        if not bool(stor2[arg1].field_1792) - (uint255(stor2[arg1].field_1792) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor2[arg1].field_1792):
            if 31 >= uint255(stor2[arg1].field_1792) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor2[arg1].field_1800)
            else:
                mem[128] = stor[sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_0
                idx = 128
                s = 0
                while (uint255(stor2[arg1].field_1792) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if not bool(stor2[arg1].field_1792) - (stor2[arg1].field_1793 % 128 < 32):
            revert with 0, 34
        if stor2[arg1].field_1793 % 128:
            if 31 >= stor2[arg1].field_1793 % 128:
                mem[128] = 256 * Mask(248, 0, stor2[arg1].field_1800)
            else:
                mem[128] = stor[sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_1793 % 128 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'stor2', 2) + 7)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return bool(uint8(stor2[arg1].field_0)), 
           stor2[arg1].field_256,
           stor2[arg1].field_512,
           stor2[arg1].field_768,
           stor2[arg1].field_1024,
           stor2[arg1].field_1280,
           address(stor2[arg1].field_1536),
           Array(len=stor2[arg1].field_1792 % 128, data=mem[128 len ceil32(stor2[arg1].field_1793 % 128)])
}

function cancelListing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor2.length:
        revert with 0, 'Invalid Listing'
    if bool(stor2[arg1].field_1792):
        if not bool(stor2[arg1].field_1792) - (uint255(stor2[arg1].field_1792) * 0.5 < 32):
            revert with 0, 34
        if bool(stor2[arg1].field_1792):
            if not bool(stor2[arg1].field_1792) - (uint255(stor2[arg1].field_1792) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor2[arg1].field_1792):
                if 31 >= uint255(stor2[arg1].field_1792) * 0.5:
                    mem[384] = 256 * Mask(248, 0, stor2[arg1].field_1800)
                else:
                    mem[384] = stor[sha3(('name', 'stor2', 2) + (8 * arg1) + 7)].field_0
                    idx = 384
                    s = 0
                    while (uint255(stor2[arg1].field_1792) * 0.5) + 352 > idx:
                        mem[idx + 32] = stor[s + sha3(('name', 'stor2', 2) + (8 * arg1) + 7)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if not bool(stor2[arg1].field_1792) - (stor2[arg1].field_1793 % 128 < 32):
                revert with 0, 34
            if stor2[arg1].field_1793 % 128:
                if 31 >= stor2[arg1].field_1793 % 128:
                    mem[384] = 256 * Mask(248, 0, stor2[arg1].field_1800)
                else:
                    mem[384] = stor[sha3(('name', 'stor2', 2) + (8 * arg1) + 7)].field_0
                    idx = 384
                    s = 0
                    while stor2[arg1].field_1793 % 128 + 352 > idx:
                        mem[idx + 32] = stor[s + sha3(('name', 'stor2', 2) + (8 * arg1) + 7)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if not uint8(stor2[arg1].field_0):
            revert with 0, 'Listing no longer active'
        if address(stor2[arg1].field_1536) != msg.sender:
            revert with 0, 'Invalid Owner'
        if not sub_61cf4863.length:
            revert with 0, 'There are no active listings'
        if stor2[arg1].field_1024 >= sub_61cf4863.length:
            revert with 0, 'Incorrect index'
        if sub_61cf4863.length < 1:
            revert with 0, 17
        if sub_61cf4863.length - 1 >= sub_61cf4863.length:
            revert with 0, 50
        if stor2[arg1].field_1024 >= sub_61cf4863.length:
            revert with 0, 50
        sub_61cf4863[stor2[arg1].field_1024] = sub_61cf4863[sub_61cf4863.length]
        if sub_61cf4863[stor2[arg1].field_1024] >= stor2.length:
            revert with 0, 50
        stor2[stor3[stor2[arg1].field_1024]].field_1024 = stor2[arg1].field_1024
        if not sub_61cf4863.length:
            revert with 0, 49
        sub_61cf4863[sub_61cf4863.length] = 0
        sub_61cf4863.length--
        if not sub_15f4d22a[address(msg.sender)]:
            revert with 0, 'There are no active listings for this user.'
        if stor2[arg1].field_1280 >= sub_15f4d22a[address(msg.sender)]:
            revert with 0, 'Incorrect index'
        if sub_15f4d22a[address(msg.sender)] < 1:
            revert with 0, 17
        if sub_15f4d22a[address(msg.sender)] - 1 >= sub_15f4d22a[address(msg.sender)]:
            revert with 0, 50
        if stor2[arg1].field_1280 >= sub_15f4d22a[address(msg.sender)]:
            revert with 0, 50
        sub_15f4d22a[address(msg.sender)][stor2[arg1].field_1280] = sub_15f4d22a[address(msg.sender)][sub_15f4d22a[address(msg.sender)]]
        if stor2[arg1].field_1280 >= sub_15f4d22a[address(msg.sender)]:
            revert with 0, 50
        if sub_15f4d22a[address(msg.sender)][stor2[arg1].field_1280] >= stor2.length:
            revert with 0, 50
        stor2[stor4[address(msg.sender)][stor2[arg1].field_1280]].field_1280 = stor2[arg1].field_1280
        if not sub_15f4d22a[address(msg.sender)]:
            revert with 0, 49
        sub_15f4d22a[address(msg.sender)][sub_15f4d22a[address(msg.sender)]] = 0
        sub_15f4d22a[address(msg.sender)]--
        if arg1 >= stor2.length:
            revert with 0, 50
        uint8(stor2[arg1].field_0) = 0
        emit 0xe528a318: 32, bool(uint8(stor2[arg1].field_0)), stor2[arg1].field_256, stor2[arg1].field_512, stor2[arg1].field_768, stor2[arg1].field_1024, stor2[arg1].field_1280, address(stor2[arg1].field_1536), 256, 2 * Mask(256, -1, stor2[arg1].field_1792), mem[384 len ceil32(uint255(stor2[arg1].field_1792) * 0.5)]
    else:
        if not bool(stor2[arg1].field_1792) - (stor2[arg1].field_1793 % 128 < 32):
            revert with 0, 34
        if bool(stor2[arg1].field_1792):
            if not bool(stor2[arg1].field_1792) - (uint255(stor2[arg1].field_1792) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor2[arg1].field_1792):
                if 31 >= uint255(stor2[arg1].field_1792) * 0.5:
                    mem[384] = 256 * Mask(248, 0, stor2[arg1].field_1800)
                else:
                    mem[384] = stor[sha3(('name', 'stor2', 2) + (8 * arg1) + 7)].field_0
                    idx = 384
                    s = 0
                    while (uint255(stor2[arg1].field_1792) * 0.5) + 352 > idx:
                        mem[idx + 32] = stor[s + sha3(('name', 'stor2', 2) + (8 * arg1) + 7)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if not bool(stor2[arg1].field_1792) - (stor2[arg1].field_1793 % 128 < 32):
                revert with 0, 34
            if stor2[arg1].field_1793 % 128:
                if 31 >= stor2[arg1].field_1793 % 128:
                    mem[384] = 256 * Mask(248, 0, stor2[arg1].field_1800)
                else:
                    mem[384] = stor[sha3(('name', 'stor2', 2) + (8 * arg1) + 7)].field_0
                    idx = 384
                    s = 0
                    while stor2[arg1].field_1793 % 128 + 352 > idx:
                        mem[idx + 32] = stor[s + sha3(('name', 'stor2', 2) + (8 * arg1) + 7)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if not uint8(stor2[arg1].field_0):
            revert with 0, 'Listing no longer active'
        if address(stor2[arg1].field_1536) != msg.sender:
            revert with 0, 'Invalid Owner'
        if not sub_61cf4863.length:
            revert with 0, 'There are no active listings'
        if stor2[arg1].field_1024 >= sub_61cf4863.length:
            revert with 0, 'Incorrect index'
        if sub_61cf4863.length < 1:
            revert with 0, 17
        if sub_61cf4863.length - 1 >= sub_61cf4863.length:
            revert with 0, 50
        if stor2[arg1].field_1024 >= sub_61cf4863.length:
            revert with 0, 50
        sub_61cf4863[stor2[arg1].field_1024] = sub_61cf4863[sub_61cf4863.length]
        if sub_61cf4863[stor2[arg1].field_1024] >= stor2.length:
            revert with 0, 50
        stor2[stor3[stor2[arg1].field_1024]].field_1024 = stor2[arg1].field_1024
        if not sub_61cf4863.length:
            revert with 0, 49
        sub_61cf4863[sub_61cf4863.length] = 0
        sub_61cf4863.length--
        if not sub_15f4d22a[address(msg.sender)]:
            revert with 0, 'There are no active listings for this user.'
        if stor2[arg1].field_1280 >= sub_15f4d22a[address(msg.sender)]:
            revert with 0, 'Incorrect index'
        if sub_15f4d22a[address(msg.sender)] < 1:
            revert with 0, 17
        if sub_15f4d22a[address(msg.sender)] - 1 >= sub_15f4d22a[address(msg.sender)]:
            revert with 0, 50
        if stor2[arg1].field_1280 >= sub_15f4d22a[address(msg.sender)]:
            revert with 0, 50
        sub_15f4d22a[address(msg.sender)][stor2[arg1].field_1280] = sub_15f4d22a[address(msg.sender)][sub_15f4d22a[address(msg.sender)]]
        if stor2[arg1].field_1280 >= sub_15f4d22a[address(msg.sender)]:
            revert with 0, 50
        if sub_15f4d22a[address(msg.sender)][stor2[arg1].field_1280] >= stor2.length:
            revert with 0, 50
        stor2[stor4[address(msg.sender)][stor2[arg1].field_1280]].field_1280 = stor2[arg1].field_1280
        if not sub_15f4d22a[address(msg.sender)]:
            revert with 0, 49
        sub_15f4d22a[address(msg.sender)][sub_15f4d22a[address(msg.sender)]] = 0
        sub_15f4d22a[address(msg.sender)]--
        if arg1 >= stor2.length:
            revert with 0, 50
        uint8(stor2[arg1].field_0) = 0
        emit 0xe528a318: 32, bool(uint8(stor2[arg1].field_0)), stor2[arg1].field_256, stor2[arg1].field_512, stor2[arg1].field_768, stor2[arg1].field_1024, stor2[arg1].field_1280, address(stor2[arg1].field_1536), 256, stor2[arg1].field_1792 % 128, mem[384 len ceil32(stor2[arg1].field_1793 % 128)]
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(stor2[arg1].field_1536), stor2[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c128b231(?) {
    require calldata.size - 4 >= 64
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 <= sub_61cf4863.length:
        if arg2 > test266151307():
            revert with 0, 65
        mem[96] = arg2
        mem[64] = (32 * arg2) + 128
        if not arg2:
            idx = 0
            while idx < arg2:
                if arg1 > !idx:
                    revert with 0, 17
                if arg1 + idx >= sub_61cf4863.length:
                    revert with 0, 50
                if stor[('name', 'sub_61cf4863', 3) + arg1 + idx] >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                _597 = mem[64]
                mem[64] = mem[64] + 256
                mem[_597] = bool(uint8(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_0))
                mem[_597 + 32] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_256
                mem[_597 + 64] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                mem[_597 + 96] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_768
                mem[_597 + 128] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1024
                mem[_597 + 160] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1280
                mem[_597 + 192] = address(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1536)
                if bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792):
                    if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5 < 32):
                        revert with 0, 34
                    _616 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5) + 32
                    mem[_616] = uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5
                    if bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792):
                        if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5 < 32):
                            revert with 0, 34
                        if not Mask(256, -1, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792):
                            mem[_597 + 224] = _616
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _659 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _697 = mem[_659]
                            require mem[_659] <= test266151307()
                            require _659 + mem[_659] + 31 < _659 + return_data.size
                            _737 = mem[_659 + mem[_659]]
                            if mem[_659 + mem[_659]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_659 + mem[_659]])) + 1 < 0 or _659 + ceil32(return_data.size) + ceil32(ceil32(mem[_659 + mem[_659]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _659 + ceil32(return_data.size) + ceil32(ceil32(mem[_659 + mem[_659]])) + 1
                            mem[_659 + ceil32(return_data.size)] = _737
                            require _697 + _737 + 32 <= return_data.size
                            s = 0
                            while s < _737:
                                mem[s + _659 + ceil32(return_data.size) + 32] = mem[s + _659 + _697 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_737) > _737:
                                mem[_659 + ceil32(return_data.size) + _737 + 32] = 0
                            mem[_597 + 224] = _659 + ceil32(return_data.size)
                        else:
                            if 31 >= uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5:
                                mem[_616 + 32] = 256 * Mask(248, 0, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800)
                                mem[_597 + 224] = _616
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _698 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _739 = mem[_698]
                                require mem[_698] <= test266151307()
                                require _698 + mem[_698] + 31 < _698 + return_data.size
                                _802 = mem[_698 + mem[_698]]
                                if mem[_698 + mem[_698]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_698 + mem[_698]])) + 1 < 0 or _698 + ceil32(return_data.size) + ceil32(ceil32(mem[_698 + mem[_698]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _698 + ceil32(return_data.size) + ceil32(ceil32(mem[_698 + mem[_698]])) + 1
                                mem[_698 + ceil32(return_data.size)] = _802
                                require _739 + _802 + 32 <= return_data.size
                                s = 0
                                while s < _802:
                                    mem[s + _698 + ceil32(return_data.size) + 32] = mem[s + _698 + _739 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_802) > _802:
                                    mem[_698 + ceil32(return_data.size) + _802 + 32] = 0
                                mem[_597 + 224] = _698 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + 7
                                mem[_616 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('name', 'stor3', 3) + arg1 + idx]) + 7)].field_0
                                s = _616 + 32
                                t = sha3(mem[0])
                                while _616 + (uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_597 + 224] = _616
                                _1180 = mem[_597 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1180
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1180
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1214 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1240 = mem[_1214]
                                require mem[_1214] <= test266151307()
                                require _1214 + mem[_1214] + 31 < _1214 + return_data.size
                                _1267 = mem[_1214 + mem[_1214]]
                                if mem[_1214 + mem[_1214]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1214 + mem[_1214]])) + 1 < 0 or _1214 + ceil32(return_data.size) + ceil32(ceil32(mem[_1214 + mem[_1214]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1214 + ceil32(return_data.size) + ceil32(ceil32(mem[_1214 + mem[_1214]])) + 1
                                mem[_1214 + ceil32(return_data.size)] = _1267
                                require _1240 + _1267 + 32 <= return_data.size
                                s = 0
                                while s < _1267:
                                    mem[s + _1214 + ceil32(return_data.size) + 32] = mem[s + _1214 + _1240 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1267) > _1267:
                                    mem[_1214 + ceil32(return_data.size) + _1267 + 32] = 0
                                mem[_597 + 224] = _1214 + ceil32(return_data.size)
                    else:
                        if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128 < 32):
                            revert with 0, 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128:
                            mem[_597 + 224] = _616
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _680 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _720 = mem[_680]
                            require mem[_680] <= test266151307()
                            require _680 + mem[_680] + 31 < _680 + return_data.size
                            _766 = mem[_680 + mem[_680]]
                            if mem[_680 + mem[_680]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_680 + mem[_680]])) + 1 < 0 or _680 + ceil32(return_data.size) + ceil32(ceil32(mem[_680 + mem[_680]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _680 + ceil32(return_data.size) + ceil32(ceil32(mem[_680 + mem[_680]])) + 1
                            mem[_680 + ceil32(return_data.size)] = _766
                            require _720 + _766 + 32 <= return_data.size
                            s = 0
                            while s < _766:
                                mem[s + _680 + ceil32(return_data.size) + 32] = mem[s + _680 + _720 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_766) > _766:
                                mem[_680 + ceil32(return_data.size) + _766 + 32] = 0
                            mem[_597 + 224] = _680 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128:
                                mem[_616 + 32] = 256 * Mask(248, 0, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800)
                                mem[_597 + 224] = _616
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _721 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _768 = mem[_721]
                                require mem[_721] <= test266151307()
                                require _721 + mem[_721] + 31 < _721 + return_data.size
                                _837 = mem[_721 + mem[_721]]
                                if mem[_721 + mem[_721]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_721 + mem[_721]])) + 1 < 0 or _721 + ceil32(return_data.size) + ceil32(ceil32(mem[_721 + mem[_721]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _721 + ceil32(return_data.size) + ceil32(ceil32(mem[_721 + mem[_721]])) + 1
                                mem[_721 + ceil32(return_data.size)] = _837
                                require _768 + _837 + 32 <= return_data.size
                                s = 0
                                while s < _837:
                                    mem[s + _721 + ceil32(return_data.size) + 32] = mem[s + _721 + _768 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_837) > _837:
                                    mem[_721 + ceil32(return_data.size) + _837 + 32] = 0
                                mem[_597 + 224] = _721 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + 7
                                mem[_616 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('name', 'stor3', 3) + arg1 + idx]) + 7)].field_0
                                s = _616 + 32
                                t = sha3(mem[0])
                                while _616 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_597 + 224] = _616
                                _1183 = mem[_597 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1183
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1183
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1215 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1243 = mem[_1215]
                                require mem[_1215] <= test266151307()
                                require _1215 + mem[_1215] + 31 < _1215 + return_data.size
                                _1268 = mem[_1215 + mem[_1215]]
                                if mem[_1215 + mem[_1215]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1215 + mem[_1215]])) + 1 < 0 or _1215 + ceil32(return_data.size) + ceil32(ceil32(mem[_1215 + mem[_1215]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1215 + ceil32(return_data.size) + ceil32(ceil32(mem[_1215 + mem[_1215]])) + 1
                                mem[_1215 + ceil32(return_data.size)] = _1268
                                require _1243 + _1268 + 32 <= return_data.size
                                s = 0
                                while s < _1268:
                                    mem[s + _1215 + ceil32(return_data.size) + 32] = mem[s + _1215 + _1243 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1268) > _1268:
                                    mem[_1215 + ceil32(return_data.size) + _1268 + 32] = 0
                                mem[_597 + 224] = _1215 + ceil32(return_data.size)
                else:
                    if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128 < 32):
                        revert with 0, 34
                    _623 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128) + 32
                    mem[_623] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128
                    if bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792):
                        if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5 < 32):
                            revert with 0, 34
                        if not Mask(256, -1, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792):
                            mem[_597 + 224] = _623
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _682 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _722 = mem[_682]
                            require mem[_682] <= test266151307()
                            require _682 + mem[_682] + 31 < _682 + return_data.size
                            _769 = mem[_682 + mem[_682]]
                            if mem[_682 + mem[_682]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_682 + mem[_682]])) + 1 < 0 or _682 + ceil32(return_data.size) + ceil32(ceil32(mem[_682 + mem[_682]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _682 + ceil32(return_data.size) + ceil32(ceil32(mem[_682 + mem[_682]])) + 1
                            mem[_682 + ceil32(return_data.size)] = _769
                            require _722 + _769 + 32 <= return_data.size
                            s = 0
                            while s < _769:
                                mem[s + _682 + ceil32(return_data.size) + 32] = mem[s + _682 + _722 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_769) > _769:
                                mem[_682 + ceil32(return_data.size) + _769 + 32] = 0
                            mem[_597 + 224] = _682 + ceil32(return_data.size)
                        else:
                            if 31 >= uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5:
                                mem[_623 + 32] = 256 * Mask(248, 0, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800)
                                mem[_597 + 224] = _623
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _723 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _771 = mem[_723]
                                require mem[_723] <= test266151307()
                                require _723 + mem[_723] + 31 < _723 + return_data.size
                                _839 = mem[_723 + mem[_723]]
                                if mem[_723 + mem[_723]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_723 + mem[_723]])) + 1 < 0 or _723 + ceil32(return_data.size) + ceil32(ceil32(mem[_723 + mem[_723]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _723 + ceil32(return_data.size) + ceil32(ceil32(mem[_723 + mem[_723]])) + 1
                                mem[_723 + ceil32(return_data.size)] = _839
                                require _771 + _839 + 32 <= return_data.size
                                s = 0
                                while s < _839:
                                    mem[s + _723 + ceil32(return_data.size) + 32] = mem[s + _723 + _771 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_839) > _839:
                                    mem[_723 + ceil32(return_data.size) + _839 + 32] = 0
                                mem[_597 + 224] = _723 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + 7
                                mem[_623 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('name', 'stor3', 3) + arg1 + idx]) + 7)].field_0
                                s = _623 + 32
                                t = sha3(mem[0])
                                while _623 + (uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_597 + 224] = _623
                                _1186 = mem[_597 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1186
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1186
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1216 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1246 = mem[_1216]
                                require mem[_1216] <= test266151307()
                                require _1216 + mem[_1216] + 31 < _1216 + return_data.size
                                _1269 = mem[_1216 + mem[_1216]]
                                if mem[_1216 + mem[_1216]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1216 + mem[_1216]])) + 1 < 0 or _1216 + ceil32(return_data.size) + ceil32(ceil32(mem[_1216 + mem[_1216]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1216 + ceil32(return_data.size) + ceil32(ceil32(mem[_1216 + mem[_1216]])) + 1
                                mem[_1216 + ceil32(return_data.size)] = _1269
                                require _1246 + _1269 + 32 <= return_data.size
                                s = 0
                                while s < _1269:
                                    mem[s + _1216 + ceil32(return_data.size) + 32] = mem[s + _1216 + _1246 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1269) > _1269:
                                    mem[_1216 + ceil32(return_data.size) + _1269 + 32] = 0
                                mem[_597 + 224] = _1216 + ceil32(return_data.size)
                    else:
                        if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128 < 32):
                            revert with 0, 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128:
                            mem[_597 + 224] = _623
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _705 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _746 = mem[_705]
                            require mem[_705] <= test266151307()
                            require _705 + mem[_705] + 31 < _705 + return_data.size
                            _805 = mem[_705 + mem[_705]]
                            if mem[_705 + mem[_705]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_705 + mem[_705]])) + 1 < 0 or _705 + ceil32(return_data.size) + ceil32(ceil32(mem[_705 + mem[_705]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _705 + ceil32(return_data.size) + ceil32(ceil32(mem[_705 + mem[_705]])) + 1
                            mem[_705 + ceil32(return_data.size)] = _805
                            require _746 + _805 + 32 <= return_data.size
                            s = 0
                            while s < _805:
                                mem[s + _705 + ceil32(return_data.size) + 32] = mem[s + _705 + _746 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_805) > _805:
                                mem[_705 + ceil32(return_data.size) + _805 + 32] = 0
                            mem[_597 + 224] = _705 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128:
                                mem[_623 + 32] = 256 * Mask(248, 0, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800)
                                mem[_597 + 224] = _623
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _747 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _807 = mem[_747]
                                require mem[_747] <= test266151307()
                                require _747 + mem[_747] + 31 < _747 + return_data.size
                                _871 = mem[_747 + mem[_747]]
                                if mem[_747 + mem[_747]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_747 + mem[_747]])) + 1 < 0 or _747 + ceil32(return_data.size) + ceil32(ceil32(mem[_747 + mem[_747]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _747 + ceil32(return_data.size) + ceil32(ceil32(mem[_747 + mem[_747]])) + 1
                                mem[_747 + ceil32(return_data.size)] = _871
                                require _807 + _871 + 32 <= return_data.size
                                s = 0
                                while s < _871:
                                    mem[s + _747 + ceil32(return_data.size) + 32] = mem[s + _747 + _807 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_871) > _871:
                                    mem[_747 + ceil32(return_data.size) + _871 + 32] = 0
                                mem[_597 + 224] = _747 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + 7
                                mem[_623 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('name', 'stor3', 3) + arg1 + idx]) + 7)].field_0
                                s = _623 + 32
                                t = sha3(mem[0])
                                while _623 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_597 + 224] = _623
                                _1189 = mem[_597 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1189
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1189
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1217 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1249 = mem[_1217]
                                require mem[_1217] <= test266151307()
                                require _1217 + mem[_1217] + 31 < _1217 + return_data.size
                                _1270 = mem[_1217 + mem[_1217]]
                                if mem[_1217 + mem[_1217]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1217 + mem[_1217]])) + 1 < 0 or _1217 + ceil32(return_data.size) + ceil32(ceil32(mem[_1217 + mem[_1217]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1217 + ceil32(return_data.size) + ceil32(ceil32(mem[_1217 + mem[_1217]])) + 1
                                mem[_1217 + ceil32(return_data.size)] = _1270
                                require _1249 + _1270 + 32 <= return_data.size
                                s = 0
                                while s < _1270:
                                    mem[s + _1217 + ceil32(return_data.size) + 32] = mem[s + _1217 + _1249 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1270) > _1270:
                                    mem[_1217 + ceil32(return_data.size) + _1270 + 32] = 0
                                mem[_597 + 224] = _1217 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _597
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _579 = mem[64]
            mem[mem[64]] = 32
            _581 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _581:
                mem[t] = u + -_579 - 64
                _1153 = mem[s]
                mem[u] = bool(mem[mem[s]])
                mem[u + 32] = mem[_1153 + 32]
                mem[u + 64] = mem[_1153 + 64]
                mem[u + 96] = mem[_1153 + 96]
                mem[u + 128] = mem[_1153 + 128]
                mem[u + 160] = mem[_1153 + 160]
                mem[u + 192] = mem[_1153 + 204 len 20]
                _1179 = mem[_1153 + 224]
                mem[u + 224] = 256
                _1213 = mem[_1179]
                mem[u + 256] = mem[_1179]
                v = 0
                while v < _1213:
                    mem[v + u + 288] = mem[v + _1179 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1213) > _1213:
                    mem[u + _1213 + 288] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_1213) + u + 288
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
            mem[var16001] = (32 * arg2) + 128
            s = var16001
            idx = var16002
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
                if arg1 > !idx:
                    revert with 0, 17
                if arg1 + idx >= sub_61cf4863.length:
                    revert with 0, 50
                if stor[('name', 'sub_61cf4863', 3) + arg1 + idx] >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                _1635 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1635] = bool(uint8(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_0))
                mem[_1635 + 32] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_256
                mem[_1635 + 64] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                mem[_1635 + 96] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_768
                mem[_1635 + 128] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1024
                mem[_1635 + 160] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1280
                mem[_1635 + 192] = address(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1536)
                if bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792):
                    if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5 < 32):
                        revert with 0, 34
                    _1650 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5) + 32
                    mem[_1650] = uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5
                    if bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792):
                        if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5 < 32):
                            revert with 0, 34
                        if not Mask(256, -1, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792):
                            mem[_1635 + 224] = _1650
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1661 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1697 = mem[_1661]
                            require mem[_1661] <= test266151307()
                            require _1661 + mem[_1661] + 31 < _1661 + return_data.size
                            _1737 = mem[_1661 + mem[_1661]]
                            if mem[_1661 + mem[_1661]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_1661 + mem[_1661]])) + 1 < 0 or _1661 + ceil32(return_data.size) + ceil32(ceil32(mem[_1661 + mem[_1661]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1661 + ceil32(return_data.size) + ceil32(ceil32(mem[_1661 + mem[_1661]])) + 1
                            mem[_1661 + ceil32(return_data.size)] = _1737
                            require _1697 + _1737 + 32 <= return_data.size
                            s = 0
                            while s < _1737:
                                mem[s + _1661 + ceil32(return_data.size) + 32] = mem[s + _1661 + _1697 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1737) > _1737:
                                mem[_1661 + ceil32(return_data.size) + _1737 + 32] = 0
                            mem[_1635 + 224] = _1661 + ceil32(return_data.size)
                        else:
                            if 31 >= uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5:
                                mem[_1650 + 32] = 256 * Mask(248, 0, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800)
                                mem[_1635 + 224] = _1650
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1698 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1739 = mem[_1698]
                                require mem[_1698] <= test266151307()
                                require _1698 + mem[_1698] + 31 < _1698 + return_data.size
                                _1780 = mem[_1698 + mem[_1698]]
                                if mem[_1698 + mem[_1698]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1698 + mem[_1698]])) + 1 < 0 or _1698 + ceil32(return_data.size) + ceil32(ceil32(mem[_1698 + mem[_1698]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1698 + ceil32(return_data.size) + ceil32(ceil32(mem[_1698 + mem[_1698]])) + 1
                                mem[_1698 + ceil32(return_data.size)] = _1780
                                require _1739 + _1780 + 32 <= return_data.size
                                s = 0
                                while s < _1780:
                                    mem[s + _1698 + ceil32(return_data.size) + 32] = mem[s + _1698 + _1739 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1780) > _1780:
                                    mem[_1698 + ceil32(return_data.size) + _1780 + 32] = 0
                                mem[_1635 + 224] = _1698 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + 7
                                mem[_1650 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('name', 'stor3', 3) + arg1 + idx]) + 7)].field_0
                                s = _1650 + 32
                                t = sha3(mem[0])
                                while _1650 + (uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1635 + 224] = _1650
                                _1930 = mem[_1635 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1930
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1930
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1964 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1990 = mem[_1964]
                                require mem[_1964] <= test266151307()
                                require _1964 + mem[_1964] + 31 < _1964 + return_data.size
                                _2015 = mem[_1964 + mem[_1964]]
                                if mem[_1964 + mem[_1964]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1964 + mem[_1964]])) + 1 < 0 or _1964 + ceil32(return_data.size) + ceil32(ceil32(mem[_1964 + mem[_1964]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1964 + ceil32(return_data.size) + ceil32(ceil32(mem[_1964 + mem[_1964]])) + 1
                                mem[_1964 + ceil32(return_data.size)] = _2015
                                require _1990 + _2015 + 32 <= return_data.size
                                s = 0
                                while s < _2015:
                                    mem[s + _1964 + ceil32(return_data.size) + 32] = mem[s + _1964 + _1990 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2015) > _2015:
                                    mem[_1964 + ceil32(return_data.size) + _2015 + 32] = 0
                                mem[_1635 + 224] = _1964 + ceil32(return_data.size)
                    else:
                        if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128 < 32):
                            revert with 0, 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128:
                            mem[_1635 + 224] = _1650
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1680 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1720 = mem[_1680]
                            require mem[_1680] <= test266151307()
                            require _1680 + mem[_1680] + 31 < _1680 + return_data.size
                            _1760 = mem[_1680 + mem[_1680]]
                            if mem[_1680 + mem[_1680]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_1680 + mem[_1680]])) + 1 < 0 or _1680 + ceil32(return_data.size) + ceil32(ceil32(mem[_1680 + mem[_1680]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1680 + ceil32(return_data.size) + ceil32(ceil32(mem[_1680 + mem[_1680]])) + 1
                            mem[_1680 + ceil32(return_data.size)] = _1760
                            require _1720 + _1760 + 32 <= return_data.size
                            s = 0
                            while s < _1760:
                                mem[s + _1680 + ceil32(return_data.size) + 32] = mem[s + _1680 + _1720 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1760) > _1760:
                                mem[_1680 + ceil32(return_data.size) + _1760 + 32] = 0
                            mem[_1635 + 224] = _1680 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128:
                                mem[_1650 + 32] = 256 * Mask(248, 0, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800)
                                mem[_1635 + 224] = _1650
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1721 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1762 = mem[_1721]
                                require mem[_1721] <= test266151307()
                                require _1721 + mem[_1721] + 31 < _1721 + return_data.size
                                _1795 = mem[_1721 + mem[_1721]]
                                if mem[_1721 + mem[_1721]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1721 + mem[_1721]])) + 1 < 0 or _1721 + ceil32(return_data.size) + ceil32(ceil32(mem[_1721 + mem[_1721]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1721 + ceil32(return_data.size) + ceil32(ceil32(mem[_1721 + mem[_1721]])) + 1
                                mem[_1721 + ceil32(return_data.size)] = _1795
                                require _1762 + _1795 + 32 <= return_data.size
                                s = 0
                                while s < _1795:
                                    mem[s + _1721 + ceil32(return_data.size) + 32] = mem[s + _1721 + _1762 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1795) > _1795:
                                    mem[_1721 + ceil32(return_data.size) + _1795 + 32] = 0
                                mem[_1635 + 224] = _1721 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + 7
                                mem[_1650 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('name', 'stor3', 3) + arg1 + idx]) + 7)].field_0
                                s = _1650 + 32
                                t = sha3(mem[0])
                                while _1650 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1635 + 224] = _1650
                                _1933 = mem[_1635 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1933
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1933
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1965 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1993 = mem[_1965]
                                require mem[_1965] <= test266151307()
                                require _1965 + mem[_1965] + 31 < _1965 + return_data.size
                                _2016 = mem[_1965 + mem[_1965]]
                                if mem[_1965 + mem[_1965]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1965 + mem[_1965]])) + 1 < 0 or _1965 + ceil32(return_data.size) + ceil32(ceil32(mem[_1965 + mem[_1965]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1965 + ceil32(return_data.size) + ceil32(ceil32(mem[_1965 + mem[_1965]])) + 1
                                mem[_1965 + ceil32(return_data.size)] = _2016
                                require _1993 + _2016 + 32 <= return_data.size
                                s = 0
                                while s < _2016:
                                    mem[s + _1965 + ceil32(return_data.size) + 32] = mem[s + _1965 + _1993 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2016) > _2016:
                                    mem[_1965 + ceil32(return_data.size) + _2016 + 32] = 0
                                mem[_1635 + 224] = _1965 + ceil32(return_data.size)
                else:
                    if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128 < 32):
                        revert with 0, 34
                    _1653 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128) + 32
                    mem[_1653] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128
                    if bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792):
                        if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5 < 32):
                            revert with 0, 34
                        if not Mask(256, -1, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792):
                            mem[_1635 + 224] = _1653
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1682 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1722 = mem[_1682]
                            require mem[_1682] <= test266151307()
                            require _1682 + mem[_1682] + 31 < _1682 + return_data.size
                            _1763 = mem[_1682 + mem[_1682]]
                            if mem[_1682 + mem[_1682]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_1682 + mem[_1682]])) + 1 < 0 or _1682 + ceil32(return_data.size) + ceil32(ceil32(mem[_1682 + mem[_1682]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1682 + ceil32(return_data.size) + ceil32(ceil32(mem[_1682 + mem[_1682]])) + 1
                            mem[_1682 + ceil32(return_data.size)] = _1763
                            require _1722 + _1763 + 32 <= return_data.size
                            s = 0
                            while s < _1763:
                                mem[s + _1682 + ceil32(return_data.size) + 32] = mem[s + _1682 + _1722 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1763) > _1763:
                                mem[_1682 + ceil32(return_data.size) + _1763 + 32] = 0
                            mem[_1635 + 224] = _1682 + ceil32(return_data.size)
                        else:
                            if 31 >= uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5:
                                mem[_1653 + 32] = 256 * Mask(248, 0, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800)
                                mem[_1635 + 224] = _1653
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1723 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1765 = mem[_1723]
                                require mem[_1723] <= test266151307()
                                require _1723 + mem[_1723] + 31 < _1723 + return_data.size
                                _1797 = mem[_1723 + mem[_1723]]
                                if mem[_1723 + mem[_1723]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1723 + mem[_1723]])) + 1 < 0 or _1723 + ceil32(return_data.size) + ceil32(ceil32(mem[_1723 + mem[_1723]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1723 + ceil32(return_data.size) + ceil32(ceil32(mem[_1723 + mem[_1723]])) + 1
                                mem[_1723 + ceil32(return_data.size)] = _1797
                                require _1765 + _1797 + 32 <= return_data.size
                                s = 0
                                while s < _1797:
                                    mem[s + _1723 + ceil32(return_data.size) + 32] = mem[s + _1723 + _1765 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1797) > _1797:
                                    mem[_1723 + ceil32(return_data.size) + _1797 + 32] = 0
                                mem[_1635 + 224] = _1723 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + 7
                                mem[_1653 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('name', 'stor3', 3) + arg1 + idx]) + 7)].field_0
                                s = _1653 + 32
                                t = sha3(mem[0])
                                while _1653 + (uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1635 + 224] = _1653
                                _1936 = mem[_1635 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1936
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1936
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1966 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1996 = mem[_1966]
                                require mem[_1966] <= test266151307()
                                require _1966 + mem[_1966] + 31 < _1966 + return_data.size
                                _2017 = mem[_1966 + mem[_1966]]
                                if mem[_1966 + mem[_1966]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1966 + mem[_1966]])) + 1 < 0 or _1966 + ceil32(return_data.size) + ceil32(ceil32(mem[_1966 + mem[_1966]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1966 + ceil32(return_data.size) + ceil32(ceil32(mem[_1966 + mem[_1966]])) + 1
                                mem[_1966 + ceil32(return_data.size)] = _2017
                                require _1996 + _2017 + 32 <= return_data.size
                                s = 0
                                while s < _2017:
                                    mem[s + _1966 + ceil32(return_data.size) + 32] = mem[s + _1966 + _1996 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2017) > _2017:
                                    mem[_1966 + ceil32(return_data.size) + _2017 + 32] = 0
                                mem[_1635 + 224] = _1966 + ceil32(return_data.size)
                    else:
                        if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128 < 32):
                            revert with 0, 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128:
                            mem[_1635 + 224] = _1653
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1705 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1746 = mem[_1705]
                            require mem[_1705] <= test266151307()
                            require _1705 + mem[_1705] + 31 < _1705 + return_data.size
                            _1783 = mem[_1705 + mem[_1705]]
                            if mem[_1705 + mem[_1705]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_1705 + mem[_1705]])) + 1 < 0 or _1705 + ceil32(return_data.size) + ceil32(ceil32(mem[_1705 + mem[_1705]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1705 + ceil32(return_data.size) + ceil32(ceil32(mem[_1705 + mem[_1705]])) + 1
                            mem[_1705 + ceil32(return_data.size)] = _1783
                            require _1746 + _1783 + 32 <= return_data.size
                            s = 0
                            while s < _1783:
                                mem[s + _1705 + ceil32(return_data.size) + 32] = mem[s + _1705 + _1746 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1783) > _1783:
                                mem[_1705 + ceil32(return_data.size) + _1783 + 32] = 0
                            mem[_1635 + 224] = _1705 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128:
                                mem[_1653 + 32] = 256 * Mask(248, 0, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800)
                                mem[_1635 + 224] = _1653
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1747 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1785 = mem[_1747]
                                require mem[_1747] <= test266151307()
                                require _1747 + mem[_1747] + 31 < _1747 + return_data.size
                                _1809 = mem[_1747 + mem[_1747]]
                                if mem[_1747 + mem[_1747]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1747 + mem[_1747]])) + 1 < 0 or _1747 + ceil32(return_data.size) + ceil32(ceil32(mem[_1747 + mem[_1747]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1747 + ceil32(return_data.size) + ceil32(ceil32(mem[_1747 + mem[_1747]])) + 1
                                mem[_1747 + ceil32(return_data.size)] = _1809
                                require _1785 + _1809 + 32 <= return_data.size
                                s = 0
                                while s < _1809:
                                    mem[s + _1747 + ceil32(return_data.size) + 32] = mem[s + _1747 + _1785 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1809) > _1809:
                                    mem[_1747 + ceil32(return_data.size) + _1809 + 32] = 0
                                mem[_1635 + 224] = _1747 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + 7
                                mem[_1653 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('name', 'stor3', 3) + arg1 + idx]) + 7)].field_0
                                s = _1653 + 32
                                t = sha3(mem[0])
                                while _1653 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1635 + 224] = _1653
                                _1939 = mem[_1635 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1939
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1939
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1967 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1999 = mem[_1967]
                                require mem[_1967] <= test266151307()
                                require _1967 + mem[_1967] + 31 < _1967 + return_data.size
                                _2018 = mem[_1967 + mem[_1967]]
                                if mem[_1967 + mem[_1967]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1967 + mem[_1967]])) + 1 < 0 or _1967 + ceil32(return_data.size) + ceil32(ceil32(mem[_1967 + mem[_1967]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1967 + ceil32(return_data.size) + ceil32(ceil32(mem[_1967 + mem[_1967]])) + 1
                                mem[_1967 + ceil32(return_data.size)] = _2018
                                require _1999 + _2018 + 32 <= return_data.size
                                s = 0
                                while s < _2018:
                                    mem[s + _1967 + ceil32(return_data.size) + 32] = mem[s + _1967 + _1999 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2018) > _2018:
                                    mem[_1967 + ceil32(return_data.size) + _2018 + 32] = 0
                                mem[_1635 + 224] = _1967 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1635
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1601 = mem[64]
            mem[mem[64]] = 32
            _1603 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _1603:
                mem[t] = u + -_1601 - 64
                _1903 = mem[s]
                mem[u] = bool(mem[mem[s]])
                mem[u + 32] = mem[_1903 + 32]
                mem[u + 64] = mem[_1903 + 64]
                mem[u + 96] = mem[_1903 + 96]
                mem[u + 128] = mem[_1903 + 128]
                mem[u + 160] = mem[_1903 + 160]
                mem[u + 192] = mem[_1903 + 204 len 20]
                _1929 = mem[_1903 + 224]
                mem[u + 224] = 256
                _1963 = mem[_1929]
                mem[u + 256] = mem[_1929]
                v = 0
                while v < _1963:
                    mem[v + u + 288] = mem[v + _1929 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1963) > _1963:
                    mem[u + _1963 + 288] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_1963) + u + 288
                continue 
    else:
        if sub_61cf4863.length < arg1:
            revert with 0, 17
        if sub_61cf4863.length - arg1 > test266151307():
            revert with 0, 65
        mem[96] = sub_61cf4863.length - arg1
        mem[64] = (32 * sub_61cf4863.length - arg1) + 128
        if not sub_61cf4863.length - arg1:
            idx = 0
            while idx < sub_61cf4863.length - arg1:
                if arg1 > !idx:
                    revert with 0, 17
                if arg1 + idx >= sub_61cf4863.length:
                    revert with 0, 50
                if stor[('name', 'sub_61cf4863', 3) + arg1 + idx] >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                _608 = mem[64]
                mem[64] = mem[64] + 256
                mem[_608] = bool(uint8(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_0))
                mem[_608 + 32] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_256
                mem[_608 + 64] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                mem[_608 + 96] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_768
                mem[_608 + 128] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1024
                mem[_608 + 160] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1280
                mem[_608 + 192] = address(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1536)
                if bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792):
                    if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5 < 32):
                        revert with 0, 34
                    _620 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5) + 32
                    mem[_620] = uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5
                    if bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792):
                        if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5 < 32):
                            revert with 0, 34
                        if not Mask(256, -1, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792):
                            mem[_608 + 224] = _620
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _668 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _707 = mem[_668]
                            require mem[_668] <= test266151307()
                            require _668 + mem[_668] + 31 < _668 + return_data.size
                            _751 = mem[_668 + mem[_668]]
                            if mem[_668 + mem[_668]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_668 + mem[_668]])) + 1 < 0 or _668 + ceil32(return_data.size) + ceil32(ceil32(mem[_668 + mem[_668]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _668 + ceil32(return_data.size) + ceil32(ceil32(mem[_668 + mem[_668]])) + 1
                            mem[_668 + ceil32(return_data.size)] = _751
                            require _707 + _751 + 32 <= return_data.size
                            s = 0
                            while s < _751:
                                mem[s + _668 + ceil32(return_data.size) + 32] = mem[s + _668 + _707 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_751) > _751:
                                mem[_668 + ceil32(return_data.size) + _751 + 32] = 0
                            mem[_608 + 224] = _668 + ceil32(return_data.size)
                        else:
                            if 31 >= uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5:
                                mem[_620 + 32] = 256 * Mask(248, 0, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800)
                                mem[_608 + 224] = _620
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _708 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _753 = mem[_708]
                                require mem[_708] <= test266151307()
                                require _708 + mem[_708] + 31 < _708 + return_data.size
                                _819 = mem[_708 + mem[_708]]
                                if mem[_708 + mem[_708]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_708 + mem[_708]])) + 1 < 0 or _708 + ceil32(return_data.size) + ceil32(ceil32(mem[_708 + mem[_708]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _708 + ceil32(return_data.size) + ceil32(ceil32(mem[_708 + mem[_708]])) + 1
                                mem[_708 + ceil32(return_data.size)] = _819
                                require _753 + _819 + 32 <= return_data.size
                                s = 0
                                while s < _819:
                                    mem[s + _708 + ceil32(return_data.size) + 32] = mem[s + _708 + _753 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_819) > _819:
                                    mem[_708 + ceil32(return_data.size) + _819 + 32] = 0
                                mem[_608 + 224] = _708 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + 7
                                mem[_620 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('name', 'stor3', 3) + arg1 + idx]) + 7)].field_0
                                s = _620 + 32
                                t = sha3(mem[0])
                                while _620 + (uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_608 + 224] = _620
                                _1201 = mem[_608 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1201
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1201
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1219 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1252 = mem[_1219]
                                require mem[_1219] <= test266151307()
                                require _1219 + mem[_1219] + 31 < _1219 + return_data.size
                                _1272 = mem[_1219 + mem[_1219]]
                                if mem[_1219 + mem[_1219]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1219 + mem[_1219]])) + 1 < 0 or _1219 + ceil32(return_data.size) + ceil32(ceil32(mem[_1219 + mem[_1219]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1219 + ceil32(return_data.size) + ceil32(ceil32(mem[_1219 + mem[_1219]])) + 1
                                mem[_1219 + ceil32(return_data.size)] = _1272
                                require _1252 + _1272 + 32 <= return_data.size
                                s = 0
                                while s < _1272:
                                    mem[s + _1219 + ceil32(return_data.size) + 32] = mem[s + _1219 + _1252 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1272) > _1272:
                                    mem[_1219 + ceil32(return_data.size) + _1272 + 32] = 0
                                mem[_608 + 224] = _1219 + ceil32(return_data.size)
                    else:
                        if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128 < 32):
                            revert with 0, 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128:
                            mem[_608 + 224] = _620
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _690 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _730 = mem[_690]
                            require mem[_690] <= test266151307()
                            require _690 + mem[_690] + 31 < _690 + return_data.size
                            _784 = mem[_690 + mem[_690]]
                            if mem[_690 + mem[_690]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_690 + mem[_690]])) + 1 < 0 or _690 + ceil32(return_data.size) + ceil32(ceil32(mem[_690 + mem[_690]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _690 + ceil32(return_data.size) + ceil32(ceil32(mem[_690 + mem[_690]])) + 1
                            mem[_690 + ceil32(return_data.size)] = _784
                            require _730 + _784 + 32 <= return_data.size
                            s = 0
                            while s < _784:
                                mem[s + _690 + ceil32(return_data.size) + 32] = mem[s + _690 + _730 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_784) > _784:
                                mem[_690 + ceil32(return_data.size) + _784 + 32] = 0
                            mem[_608 + 224] = _690 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128:
                                mem[_620 + 32] = 256 * Mask(248, 0, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800)
                                mem[_608 + 224] = _620
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _731 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _786 = mem[_731]
                                require mem[_731] <= test266151307()
                                require _731 + mem[_731] + 31 < _731 + return_data.size
                                _853 = mem[_731 + mem[_731]]
                                if mem[_731 + mem[_731]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_731 + mem[_731]])) + 1 < 0 or _731 + ceil32(return_data.size) + ceil32(ceil32(mem[_731 + mem[_731]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _731 + ceil32(return_data.size) + ceil32(ceil32(mem[_731 + mem[_731]])) + 1
                                mem[_731 + ceil32(return_data.size)] = _853
                                require _786 + _853 + 32 <= return_data.size
                                s = 0
                                while s < _853:
                                    mem[s + _731 + ceil32(return_data.size) + 32] = mem[s + _731 + _786 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_853) > _853:
                                    mem[_731 + ceil32(return_data.size) + _853 + 32] = 0
                                mem[_608 + 224] = _731 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + 7
                                mem[_620 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('name', 'stor3', 3) + arg1 + idx]) + 7)].field_0
                                s = _620 + 32
                                t = sha3(mem[0])
                                while _620 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_608 + 224] = _620
                                _1204 = mem[_608 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1204
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1204
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1220 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1255 = mem[_1220]
                                require mem[_1220] <= test266151307()
                                require _1220 + mem[_1220] + 31 < _1220 + return_data.size
                                _1273 = mem[_1220 + mem[_1220]]
                                if mem[_1220 + mem[_1220]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1220 + mem[_1220]])) + 1 < 0 or _1220 + ceil32(return_data.size) + ceil32(ceil32(mem[_1220 + mem[_1220]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1220 + ceil32(return_data.size) + ceil32(ceil32(mem[_1220 + mem[_1220]])) + 1
                                mem[_1220 + ceil32(return_data.size)] = _1273
                                require _1255 + _1273 + 32 <= return_data.size
                                s = 0
                                while s < _1273:
                                    mem[s + _1220 + ceil32(return_data.size) + 32] = mem[s + _1220 + _1255 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1273) > _1273:
                                    mem[_1220 + ceil32(return_data.size) + _1273 + 32] = 0
                                mem[_608 + 224] = _1220 + ceil32(return_data.size)
                else:
                    if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128 < 32):
                        revert with 0, 34
                    _635 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128) + 32
                    mem[_635] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128
                    if bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792):
                        if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5 < 32):
                            revert with 0, 34
                        if not Mask(256, -1, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792):
                            mem[_608 + 224] = _635
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _692 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _732 = mem[_692]
                            require mem[_692] <= test266151307()
                            require _692 + mem[_692] + 31 < _692 + return_data.size
                            _787 = mem[_692 + mem[_692]]
                            if mem[_692 + mem[_692]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_692 + mem[_692]])) + 1 < 0 or _692 + ceil32(return_data.size) + ceil32(ceil32(mem[_692 + mem[_692]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _692 + ceil32(return_data.size) + ceil32(ceil32(mem[_692 + mem[_692]])) + 1
                            mem[_692 + ceil32(return_data.size)] = _787
                            require _732 + _787 + 32 <= return_data.size
                            s = 0
                            while s < _787:
                                mem[s + _692 + ceil32(return_data.size) + 32] = mem[s + _692 + _732 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_787) > _787:
                                mem[_692 + ceil32(return_data.size) + _787 + 32] = 0
                            mem[_608 + 224] = _692 + ceil32(return_data.size)
                        else:
                            if 31 >= uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5:
                                mem[_635 + 32] = 256 * Mask(248, 0, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800)
                                mem[_608 + 224] = _635
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _733 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _789 = mem[_733]
                                require mem[_733] <= test266151307()
                                require _733 + mem[_733] + 31 < _733 + return_data.size
                                _855 = mem[_733 + mem[_733]]
                                if mem[_733 + mem[_733]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_733 + mem[_733]])) + 1 < 0 or _733 + ceil32(return_data.size) + ceil32(ceil32(mem[_733 + mem[_733]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _733 + ceil32(return_data.size) + ceil32(ceil32(mem[_733 + mem[_733]])) + 1
                                mem[_733 + ceil32(return_data.size)] = _855
                                require _789 + _855 + 32 <= return_data.size
                                s = 0
                                while s < _855:
                                    mem[s + _733 + ceil32(return_data.size) + 32] = mem[s + _733 + _789 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_855) > _855:
                                    mem[_733 + ceil32(return_data.size) + _855 + 32] = 0
                                mem[_608 + 224] = _733 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + 7
                                mem[_635 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('name', 'stor3', 3) + arg1 + idx]) + 7)].field_0
                                s = _635 + 32
                                t = sha3(mem[0])
                                while _635 + (uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_608 + 224] = _635
                                _1207 = mem[_608 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1207
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1207
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1221 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1258 = mem[_1221]
                                require mem[_1221] <= test266151307()
                                require _1221 + mem[_1221] + 31 < _1221 + return_data.size
                                _1274 = mem[_1221 + mem[_1221]]
                                if mem[_1221 + mem[_1221]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1221 + mem[_1221]])) + 1 < 0 or _1221 + ceil32(return_data.size) + ceil32(ceil32(mem[_1221 + mem[_1221]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1221 + ceil32(return_data.size) + ceil32(ceil32(mem[_1221 + mem[_1221]])) + 1
                                mem[_1221 + ceil32(return_data.size)] = _1274
                                require _1258 + _1274 + 32 <= return_data.size
                                s = 0
                                while s < _1274:
                                    mem[s + _1221 + ceil32(return_data.size) + 32] = mem[s + _1221 + _1258 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1274) > _1274:
                                    mem[_1221 + ceil32(return_data.size) + _1274 + 32] = 0
                                mem[_608 + 224] = _1221 + ceil32(return_data.size)
                    else:
                        if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128 < 32):
                            revert with 0, 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128:
                            mem[_608 + 224] = _635
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _715 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _760 = mem[_715]
                            require mem[_715] <= test266151307()
                            require _715 + mem[_715] + 31 < _715 + return_data.size
                            _822 = mem[_715 + mem[_715]]
                            if mem[_715 + mem[_715]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_715 + mem[_715]])) + 1 < 0 or _715 + ceil32(return_data.size) + ceil32(ceil32(mem[_715 + mem[_715]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _715 + ceil32(return_data.size) + ceil32(ceil32(mem[_715 + mem[_715]])) + 1
                            mem[_715 + ceil32(return_data.size)] = _822
                            require _760 + _822 + 32 <= return_data.size
                            s = 0
                            while s < _822:
                                mem[s + _715 + ceil32(return_data.size) + 32] = mem[s + _715 + _760 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_822) > _822:
                                mem[_715 + ceil32(return_data.size) + _822 + 32] = 0
                            mem[_608 + 224] = _715 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128:
                                mem[_635 + 32] = 256 * Mask(248, 0, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800)
                                mem[_608 + 224] = _635
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _761 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _824 = mem[_761]
                                require mem[_761] <= test266151307()
                                require _761 + mem[_761] + 31 < _761 + return_data.size
                                _886 = mem[_761 + mem[_761]]
                                if mem[_761 + mem[_761]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_761 + mem[_761]])) + 1 < 0 or _761 + ceil32(return_data.size) + ceil32(ceil32(mem[_761 + mem[_761]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _761 + ceil32(return_data.size) + ceil32(ceil32(mem[_761 + mem[_761]])) + 1
                                mem[_761 + ceil32(return_data.size)] = _886
                                require _824 + _886 + 32 <= return_data.size
                                s = 0
                                while s < _886:
                                    mem[s + _761 + ceil32(return_data.size) + 32] = mem[s + _761 + _824 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_886) > _886:
                                    mem[_761 + ceil32(return_data.size) + _886 + 32] = 0
                                mem[_608 + 224] = _761 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + 7
                                mem[_635 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('name', 'stor3', 3) + arg1 + idx]) + 7)].field_0
                                s = _635 + 32
                                t = sha3(mem[0])
                                while _635 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_608 + 224] = _635
                                _1210 = mem[_608 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1210
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1210
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1222 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1261 = mem[_1222]
                                require mem[_1222] <= test266151307()
                                require _1222 + mem[_1222] + 31 < _1222 + return_data.size
                                _1275 = mem[_1222 + mem[_1222]]
                                if mem[_1222 + mem[_1222]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1222 + mem[_1222]])) + 1 < 0 or _1222 + ceil32(return_data.size) + ceil32(ceil32(mem[_1222 + mem[_1222]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1222 + ceil32(return_data.size) + ceil32(ceil32(mem[_1222 + mem[_1222]])) + 1
                                mem[_1222 + ceil32(return_data.size)] = _1275
                                require _1261 + _1275 + 32 <= return_data.size
                                s = 0
                                while s < _1275:
                                    mem[s + _1222 + ceil32(return_data.size) + 32] = mem[s + _1222 + _1261 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1275) > _1275:
                                    mem[_1222 + ceil32(return_data.size) + _1275 + 32] = 0
                                mem[_608 + 224] = _1222 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _608
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _580 = mem[64]
            mem[mem[64]] = 32
            _582 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _582:
                mem[t] = u + -_580 - 64
                _1162 = mem[s]
                mem[u] = bool(mem[mem[s]])
                mem[u + 32] = mem[_1162 + 32]
                mem[u + 64] = mem[_1162 + 64]
                mem[u + 96] = mem[_1162 + 96]
                mem[u + 128] = mem[_1162 + 128]
                mem[u + 160] = mem[_1162 + 160]
                mem[u + 192] = mem[_1162 + 204 len 20]
                _1200 = mem[_1162 + 224]
                mem[u + 224] = 256
                _1218 = mem[_1200]
                mem[u + 256] = mem[_1200]
                v = 0
                while v < _1218:
                    mem[v + u + 288] = mem[v + _1200 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1218) > _1218:
                    mem[u + _1218 + 288] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_1218) + u + 288
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
            mem[var20001] = (32 * sub_61cf4863.length - arg1) + 128
            s = var20001
            idx = var20002
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
                if arg1 > !idx:
                    revert with 0, 17
                if arg1 + idx >= sub_61cf4863.length:
                    revert with 0, 50
                if stor[('name', 'sub_61cf4863', 3) + arg1 + idx] >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                _1646 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1646] = bool(uint8(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_0))
                mem[_1646 + 32] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_256
                mem[_1646 + 64] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                mem[_1646 + 96] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_768
                mem[_1646 + 128] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1024
                mem[_1646 + 160] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1280
                mem[_1646 + 192] = address(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1536)
                if bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792):
                    if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5 < 32):
                        revert with 0, 34
                    _1652 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5) + 32
                    mem[_1652] = uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5
                    if bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792):
                        if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5 < 32):
                            revert with 0, 34
                        if not Mask(256, -1, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792):
                            mem[_1646 + 224] = _1652
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1669 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1707 = mem[_1669]
                            require mem[_1669] <= test266151307()
                            require _1669 + mem[_1669] + 31 < _1669 + return_data.size
                            _1748 = mem[_1669 + mem[_1669]]
                            if mem[_1669 + mem[_1669]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_1669 + mem[_1669]])) + 1 < 0 or _1669 + ceil32(return_data.size) + ceil32(ceil32(mem[_1669 + mem[_1669]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1669 + ceil32(return_data.size) + ceil32(ceil32(mem[_1669 + mem[_1669]])) + 1
                            mem[_1669 + ceil32(return_data.size)] = _1748
                            require _1707 + _1748 + 32 <= return_data.size
                            s = 0
                            while s < _1748:
                                mem[s + _1669 + ceil32(return_data.size) + 32] = mem[s + _1669 + _1707 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1748) > _1748:
                                mem[_1669 + ceil32(return_data.size) + _1748 + 32] = 0
                            mem[_1646 + 224] = _1669 + ceil32(return_data.size)
                        else:
                            if 31 >= uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5:
                                mem[_1652 + 32] = 256 * Mask(248, 0, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800)
                                mem[_1646 + 224] = _1652
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1708 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1750 = mem[_1708]
                                require mem[_1708] <= test266151307()
                                require _1708 + mem[_1708] + 31 < _1708 + return_data.size
                                _1787 = mem[_1708 + mem[_1708]]
                                if mem[_1708 + mem[_1708]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1708 + mem[_1708]])) + 1 < 0 or _1708 + ceil32(return_data.size) + ceil32(ceil32(mem[_1708 + mem[_1708]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1708 + ceil32(return_data.size) + ceil32(ceil32(mem[_1708 + mem[_1708]])) + 1
                                mem[_1708 + ceil32(return_data.size)] = _1787
                                require _1750 + _1787 + 32 <= return_data.size
                                s = 0
                                while s < _1787:
                                    mem[s + _1708 + ceil32(return_data.size) + 32] = mem[s + _1708 + _1750 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1787) > _1787:
                                    mem[_1708 + ceil32(return_data.size) + _1787 + 32] = 0
                                mem[_1646 + 224] = _1708 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + 7
                                mem[_1652 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('name', 'stor3', 3) + arg1 + idx]) + 7)].field_0
                                s = _1652 + 32
                                t = sha3(mem[0])
                                while _1652 + (uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1646 + 224] = _1652
                                _1951 = mem[_1646 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1951
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1951
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1969 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2002 = mem[_1969]
                                require mem[_1969] <= test266151307()
                                require _1969 + mem[_1969] + 31 < _1969 + return_data.size
                                _2019 = mem[_1969 + mem[_1969]]
                                if mem[_1969 + mem[_1969]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1969 + mem[_1969]])) + 1 < 0 or _1969 + ceil32(return_data.size) + ceil32(ceil32(mem[_1969 + mem[_1969]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1969 + ceil32(return_data.size) + ceil32(ceil32(mem[_1969 + mem[_1969]])) + 1
                                mem[_1969 + ceil32(return_data.size)] = _2019
                                require _2002 + _2019 + 32 <= return_data.size
                                s = 0
                                while s < _2019:
                                    mem[s + _1969 + ceil32(return_data.size) + 32] = mem[s + _1969 + _2002 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2019) > _2019:
                                    mem[_1969 + ceil32(return_data.size) + _2019 + 32] = 0
                                mem[_1646 + 224] = _1969 + ceil32(return_data.size)
                    else:
                        if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128 < 32):
                            revert with 0, 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128:
                            mem[_1646 + 224] = _1652
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1690 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1730 = mem[_1690]
                            require mem[_1690] <= test266151307()
                            require _1690 + mem[_1690] + 31 < _1690 + return_data.size
                            _1770 = mem[_1690 + mem[_1690]]
                            if mem[_1690 + mem[_1690]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_1690 + mem[_1690]])) + 1 < 0 or _1690 + ceil32(return_data.size) + ceil32(ceil32(mem[_1690 + mem[_1690]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1690 + ceil32(return_data.size) + ceil32(ceil32(mem[_1690 + mem[_1690]])) + 1
                            mem[_1690 + ceil32(return_data.size)] = _1770
                            require _1730 + _1770 + 32 <= return_data.size
                            s = 0
                            while s < _1770:
                                mem[s + _1690 + ceil32(return_data.size) + 32] = mem[s + _1690 + _1730 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1770) > _1770:
                                mem[_1690 + ceil32(return_data.size) + _1770 + 32] = 0
                            mem[_1646 + 224] = _1690 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128:
                                mem[_1652 + 32] = 256 * Mask(248, 0, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800)
                                mem[_1646 + 224] = _1652
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1731 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1772 = mem[_1731]
                                require mem[_1731] <= test266151307()
                                require _1731 + mem[_1731] + 31 < _1731 + return_data.size
                                _1801 = mem[_1731 + mem[_1731]]
                                if mem[_1731 + mem[_1731]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1731 + mem[_1731]])) + 1 < 0 or _1731 + ceil32(return_data.size) + ceil32(ceil32(mem[_1731 + mem[_1731]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1731 + ceil32(return_data.size) + ceil32(ceil32(mem[_1731 + mem[_1731]])) + 1
                                mem[_1731 + ceil32(return_data.size)] = _1801
                                require _1772 + _1801 + 32 <= return_data.size
                                s = 0
                                while s < _1801:
                                    mem[s + _1731 + ceil32(return_data.size) + 32] = mem[s + _1731 + _1772 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1801) > _1801:
                                    mem[_1731 + ceil32(return_data.size) + _1801 + 32] = 0
                                mem[_1646 + 224] = _1731 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + 7
                                mem[_1652 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('name', 'stor3', 3) + arg1 + idx]) + 7)].field_0
                                s = _1652 + 32
                                t = sha3(mem[0])
                                while _1652 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1646 + 224] = _1652
                                _1954 = mem[_1646 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1954
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1954
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1970 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2005 = mem[_1970]
                                require mem[_1970] <= test266151307()
                                require _1970 + mem[_1970] + 31 < _1970 + return_data.size
                                _2020 = mem[_1970 + mem[_1970]]
                                if mem[_1970 + mem[_1970]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1970 + mem[_1970]])) + 1 < 0 or _1970 + ceil32(return_data.size) + ceil32(ceil32(mem[_1970 + mem[_1970]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1970 + ceil32(return_data.size) + ceil32(ceil32(mem[_1970 + mem[_1970]])) + 1
                                mem[_1970 + ceil32(return_data.size)] = _2020
                                require _2005 + _2020 + 32 <= return_data.size
                                s = 0
                                while s < _2020:
                                    mem[s + _1970 + ceil32(return_data.size) + 32] = mem[s + _1970 + _2005 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2020) > _2020:
                                    mem[_1970 + ceil32(return_data.size) + _2020 + 32] = 0
                                mem[_1646 + 224] = _1970 + ceil32(return_data.size)
                else:
                    if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128 < 32):
                        revert with 0, 34
                    _1654 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128) + 32
                    mem[_1654] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128
                    if bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792):
                        if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5 < 32):
                            revert with 0, 34
                        if not Mask(256, -1, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792):
                            mem[_1646 + 224] = _1654
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1692 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1732 = mem[_1692]
                            require mem[_1692] <= test266151307()
                            require _1692 + mem[_1692] + 31 < _1692 + return_data.size
                            _1773 = mem[_1692 + mem[_1692]]
                            if mem[_1692 + mem[_1692]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_1692 + mem[_1692]])) + 1 < 0 or _1692 + ceil32(return_data.size) + ceil32(ceil32(mem[_1692 + mem[_1692]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1692 + ceil32(return_data.size) + ceil32(ceil32(mem[_1692 + mem[_1692]])) + 1
                            mem[_1692 + ceil32(return_data.size)] = _1773
                            require _1732 + _1773 + 32 <= return_data.size
                            s = 0
                            while s < _1773:
                                mem[s + _1692 + ceil32(return_data.size) + 32] = mem[s + _1692 + _1732 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1773) > _1773:
                                mem[_1692 + ceil32(return_data.size) + _1773 + 32] = 0
                            mem[_1646 + 224] = _1692 + ceil32(return_data.size)
                        else:
                            if 31 >= uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5:
                                mem[_1654 + 32] = 256 * Mask(248, 0, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800)
                                mem[_1646 + 224] = _1654
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1733 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1775 = mem[_1733]
                                require mem[_1733] <= test266151307()
                                require _1733 + mem[_1733] + 31 < _1733 + return_data.size
                                _1803 = mem[_1733 + mem[_1733]]
                                if mem[_1733 + mem[_1733]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1733 + mem[_1733]])) + 1 < 0 or _1733 + ceil32(return_data.size) + ceil32(ceil32(mem[_1733 + mem[_1733]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1733 + ceil32(return_data.size) + ceil32(ceil32(mem[_1733 + mem[_1733]])) + 1
                                mem[_1733 + ceil32(return_data.size)] = _1803
                                require _1775 + _1803 + 32 <= return_data.size
                                s = 0
                                while s < _1803:
                                    mem[s + _1733 + ceil32(return_data.size) + 32] = mem[s + _1733 + _1775 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1803) > _1803:
                                    mem[_1733 + ceil32(return_data.size) + _1803 + 32] = 0
                                mem[_1646 + 224] = _1733 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + 7
                                mem[_1654 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('name', 'stor3', 3) + arg1 + idx]) + 7)].field_0
                                s = _1654 + 32
                                t = sha3(mem[0])
                                while _1654 + (uint255(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1646 + 224] = _1654
                                _1957 = mem[_1646 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1957
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1957
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1971 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2008 = mem[_1971]
                                require mem[_1971] <= test266151307()
                                require _1971 + mem[_1971] + 31 < _1971 + return_data.size
                                _2021 = mem[_1971 + mem[_1971]]
                                if mem[_1971 + mem[_1971]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1971 + mem[_1971]])) + 1 < 0 or _1971 + ceil32(return_data.size) + ceil32(ceil32(mem[_1971 + mem[_1971]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1971 + ceil32(return_data.size) + ceil32(ceil32(mem[_1971 + mem[_1971]])) + 1
                                mem[_1971 + ceil32(return_data.size)] = _2021
                                require _2008 + _2021 + 32 <= return_data.size
                                s = 0
                                while s < _2021:
                                    mem[s + _1971 + ceil32(return_data.size) + 32] = mem[s + _1971 + _2008 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2021) > _2021:
                                    mem[_1971 + ceil32(return_data.size) + _2021 + 32] = 0
                                mem[_1646 + 224] = _1971 + ceil32(return_data.size)
                    else:
                        if not bool(stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1792) - (stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128 < 32):
                            revert with 0, 34
                        if not stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128:
                            mem[_1646 + 224] = _1654
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1715 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1757 = mem[_1715]
                            require mem[_1715] <= test266151307()
                            require _1715 + mem[_1715] + 31 < _1715 + return_data.size
                            _1790 = mem[_1715 + mem[_1715]]
                            if mem[_1715 + mem[_1715]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_1715 + mem[_1715]])) + 1 < 0 or _1715 + ceil32(return_data.size) + ceil32(ceil32(mem[_1715 + mem[_1715]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1715 + ceil32(return_data.size) + ceil32(ceil32(mem[_1715 + mem[_1715]])) + 1
                            mem[_1715 + ceil32(return_data.size)] = _1790
                            require _1757 + _1790 + 32 <= return_data.size
                            s = 0
                            while s < _1790:
                                mem[s + _1715 + ceil32(return_data.size) + 32] = mem[s + _1715 + _1757 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1790) > _1790:
                                mem[_1715 + ceil32(return_data.size) + _1790 + 32] = 0
                            mem[_1646 + 224] = _1715 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128:
                                mem[_1654 + 32] = 256 * Mask(248, 0, stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1800)
                                mem[_1646 + 224] = _1654
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1758 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1792 = mem[_1758]
                                require mem[_1758] <= test266151307()
                                require _1758 + mem[_1758] + 31 < _1758 + return_data.size
                                _1814 = mem[_1758 + mem[_1758]]
                                if mem[_1758 + mem[_1758]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1758 + mem[_1758]])) + 1 < 0 or _1758 + ceil32(return_data.size) + ceil32(ceil32(mem[_1758 + mem[_1758]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1758 + ceil32(return_data.size) + ceil32(ceil32(mem[_1758 + mem[_1758]])) + 1
                                mem[_1758 + ceil32(return_data.size)] = _1814
                                require _1792 + _1814 + 32 <= return_data.size
                                s = 0
                                while s < _1814:
                                    mem[s + _1758 + ceil32(return_data.size) + 32] = mem[s + _1758 + _1792 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1814) > _1814:
                                    mem[_1758 + ceil32(return_data.size) + _1814 + 32] = 0
                                mem[_1646 + 224] = _1758 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('name', 'sub_61cf4863', 3) + arg1 + idx]) + 7
                                mem[_1654 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('name', 'stor3', 3) + arg1 + idx]) + 7)].field_0
                                s = _1654 + 32
                                t = sha3(mem[0])
                                while _1654 + stor2[stor[('name', 'stor3', 3) + arg1 + idx]].field_1793 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1646 + 224] = _1654
                                _1960 = mem[_1646 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1960
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1960
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1972 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2011 = mem[_1972]
                                require mem[_1972] <= test266151307()
                                require _1972 + mem[_1972] + 31 < _1972 + return_data.size
                                _2022 = mem[_1972 + mem[_1972]]
                                if mem[_1972 + mem[_1972]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1972 + mem[_1972]])) + 1 < 0 or _1972 + ceil32(return_data.size) + ceil32(ceil32(mem[_1972 + mem[_1972]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1972 + ceil32(return_data.size) + ceil32(ceil32(mem[_1972 + mem[_1972]])) + 1
                                mem[_1972 + ceil32(return_data.size)] = _2022
                                require _2011 + _2022 + 32 <= return_data.size
                                s = 0
                                while s < _2022:
                                    mem[s + _1972 + ceil32(return_data.size) + 32] = mem[s + _1972 + _2011 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2022) > _2022:
                                    mem[_1972 + ceil32(return_data.size) + _2022 + 32] = 0
                                mem[_1646 + 224] = _1972 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1646
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1602 = mem[64]
            mem[mem[64]] = 32
            _1604 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _1604:
                mem[t] = u + -_1602 - 64
                _1912 = mem[s]
                mem[u] = bool(mem[mem[s]])
                mem[u + 32] = mem[_1912 + 32]
                mem[u + 64] = mem[_1912 + 64]
                mem[u + 96] = mem[_1912 + 96]
                mem[u + 128] = mem[_1912 + 128]
                mem[u + 160] = mem[_1912 + 160]
                mem[u + 192] = mem[_1912 + 204 len 20]
                _1950 = mem[_1912 + 224]
                mem[u + 224] = 256
                _1968 = mem[_1950]
                mem[u + 256] = mem[_1950]
                v = 0
                while v < _1968:
                    mem[v + u + 288] = mem[v + _1950 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1968) > _1968:
                    mem[u + _1968 + 288] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_1968) + u + 288
                continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_c06d61f5(?) {
    require calldata.size - 4 >= 64
    mem[0] = msg.sender
    mem[32] = 4
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 <= sub_15f4d22a[msg.sender]:
        if arg2 > test266151307():
            revert with 0, 65
        mem[96] = arg2
        mem[64] = (32 * arg2) + 128
        if not arg2:
            idx = 0
            while idx < arg2:
                mem[32] = 4
                if idx > !arg1:
                    revert with 0, 17
                if idx + arg1 >= sub_15f4d22a[msg.sender]:
                    revert with 0, 50
                if stor[('map', 'msg.sender', ('name', 'sub_15f4d22a', 4)) + idx + arg1] >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                _604 = mem[64]
                mem[64] = mem[64] + 256
                mem[_604] = bool(uint8(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_0))
                mem[_604 + 32] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_256
                mem[_604 + 64] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                mem[_604 + 96] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_768
                mem[_604 + 128] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1024
                mem[_604 + 160] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1280
                mem[_604 + 192] = address(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1536)
                if bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792):
                    if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5 < 32):
                        revert with 0, 34
                    _625 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5) + 32
                    mem[_625] = uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5
                    if bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792):
                        if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5 < 32):
                            revert with 0, 34
                        if not Mask(256, -1, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792):
                            mem[_604 + 224] = _625
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _668 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _706 = mem[_668]
                            require mem[_668] <= test266151307()
                            require _668 + mem[_668] + 31 < _668 + return_data.size
                            _746 = mem[_668 + mem[_668]]
                            if mem[_668 + mem[_668]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_668 + mem[_668]])) + 1 < 0 or _668 + ceil32(return_data.size) + ceil32(ceil32(mem[_668 + mem[_668]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _668 + ceil32(return_data.size) + ceil32(ceil32(mem[_668 + mem[_668]])) + 1
                            mem[_668 + ceil32(return_data.size)] = _746
                            require _706 + _746 + 32 <= return_data.size
                            s = 0
                            while s < _746:
                                mem[s + _668 + ceil32(return_data.size) + 32] = mem[s + _668 + _706 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_746) > _746:
                                mem[_668 + ceil32(return_data.size) + _746 + 32] = 0
                            mem[_604 + 224] = _668 + ceil32(return_data.size)
                        else:
                            if 31 >= uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5:
                                mem[_625 + 32] = 256 * Mask(248, 0, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1800)
                                mem[_604 + 224] = _625
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _707 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _748 = mem[_707]
                                require mem[_707] <= test266151307()
                                require _707 + mem[_707] + 31 < _707 + return_data.size
                                _811 = mem[_707 + mem[_707]]
                                if mem[_707 + mem[_707]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_707 + mem[_707]])) + 1 < 0 or _707 + ceil32(return_data.size) + ceil32(ceil32(mem[_707 + mem[_707]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _707 + ceil32(return_data.size) + ceil32(ceil32(mem[_707 + mem[_707]])) + 1
                                mem[_707 + ceil32(return_data.size)] = _811
                                require _748 + _811 + 32 <= return_data.size
                                s = 0
                                while s < _811:
                                    mem[s + _707 + ceil32(return_data.size) + 32] = mem[s + _707 + _748 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_811) > _811:
                                    mem[_707 + ceil32(return_data.size) + _811 + 32] = 0
                                mem[_604 + 224] = _707 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('map', 'msg.sender', ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + 7
                                mem[_625 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]) + 7)].field_0
                                s = _625 + 32
                                t = sha3(mem[0])
                                while _625 + (uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_604 + 224] = _625
                                _1189 = mem[_604 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1189
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1189
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1223 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1249 = mem[_1223]
                                require mem[_1223] <= test266151307()
                                require _1223 + mem[_1223] + 31 < _1223 + return_data.size
                                _1278 = mem[_1223 + mem[_1223]]
                                if mem[_1223 + mem[_1223]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1223 + mem[_1223]])) + 1 < 0 or _1223 + ceil32(return_data.size) + ceil32(ceil32(mem[_1223 + mem[_1223]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1223 + ceil32(return_data.size) + ceil32(ceil32(mem[_1223 + mem[_1223]])) + 1
                                mem[_1223 + ceil32(return_data.size)] = _1278
                                require _1249 + _1278 + 32 <= return_data.size
                                s = 0
                                while s < _1278:
                                    mem[s + _1223 + ceil32(return_data.size) + 32] = mem[s + _1223 + _1249 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1278) > _1278:
                                    mem[_1223 + ceil32(return_data.size) + _1278 + 32] = 0
                                mem[_604 + 224] = _1223 + ceil32(return_data.size)
                    else:
                        if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128 < 32):
                            revert with 0, 34
                        if not stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128:
                            mem[_604 + 224] = _625
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _689 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _729 = mem[_689]
                            require mem[_689] <= test266151307()
                            require _689 + mem[_689] + 31 < _689 + return_data.size
                            _775 = mem[_689 + mem[_689]]
                            if mem[_689 + mem[_689]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_689 + mem[_689]])) + 1 < 0 or _689 + ceil32(return_data.size) + ceil32(ceil32(mem[_689 + mem[_689]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _689 + ceil32(return_data.size) + ceil32(ceil32(mem[_689 + mem[_689]])) + 1
                            mem[_689 + ceil32(return_data.size)] = _775
                            require _729 + _775 + 32 <= return_data.size
                            s = 0
                            while s < _775:
                                mem[s + _689 + ceil32(return_data.size) + 32] = mem[s + _689 + _729 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_775) > _775:
                                mem[_689 + ceil32(return_data.size) + _775 + 32] = 0
                            mem[_604 + 224] = _689 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128:
                                mem[_625 + 32] = 256 * Mask(248, 0, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1800)
                                mem[_604 + 224] = _625
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _730 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _777 = mem[_730]
                                require mem[_730] <= test266151307()
                                require _730 + mem[_730] + 31 < _730 + return_data.size
                                _846 = mem[_730 + mem[_730]]
                                if mem[_730 + mem[_730]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_730 + mem[_730]])) + 1 < 0 or _730 + ceil32(return_data.size) + ceil32(ceil32(mem[_730 + mem[_730]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _730 + ceil32(return_data.size) + ceil32(ceil32(mem[_730 + mem[_730]])) + 1
                                mem[_730 + ceil32(return_data.size)] = _846
                                require _777 + _846 + 32 <= return_data.size
                                s = 0
                                while s < _846:
                                    mem[s + _730 + ceil32(return_data.size) + 32] = mem[s + _730 + _777 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_846) > _846:
                                    mem[_730 + ceil32(return_data.size) + _846 + 32] = 0
                                mem[_604 + 224] = _730 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('map', 'msg.sender', ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + 7
                                mem[_625 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]) + 7)].field_0
                                s = _625 + 32
                                t = sha3(mem[0])
                                while _625 + stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_604 + 224] = _625
                                _1192 = mem[_604 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1192
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1192
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1224 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1252 = mem[_1224]
                                require mem[_1224] <= test266151307()
                                require _1224 + mem[_1224] + 31 < _1224 + return_data.size
                                _1279 = mem[_1224 + mem[_1224]]
                                if mem[_1224 + mem[_1224]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1224 + mem[_1224]])) + 1 < 0 or _1224 + ceil32(return_data.size) + ceil32(ceil32(mem[_1224 + mem[_1224]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1224 + ceil32(return_data.size) + ceil32(ceil32(mem[_1224 + mem[_1224]])) + 1
                                mem[_1224 + ceil32(return_data.size)] = _1279
                                require _1252 + _1279 + 32 <= return_data.size
                                s = 0
                                while s < _1279:
                                    mem[s + _1224 + ceil32(return_data.size) + 32] = mem[s + _1224 + _1252 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1279) > _1279:
                                    mem[_1224 + ceil32(return_data.size) + _1279 + 32] = 0
                                mem[_604 + 224] = _1224 + ceil32(return_data.size)
                else:
                    if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128 < 32):
                        revert with 0, 34
                    _632 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128) + 32
                    mem[_632] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128
                    if bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792):
                        if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5 < 32):
                            revert with 0, 34
                        if not Mask(256, -1, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792):
                            mem[_604 + 224] = _632
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _691 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _731 = mem[_691]
                            require mem[_691] <= test266151307()
                            require _691 + mem[_691] + 31 < _691 + return_data.size
                            _778 = mem[_691 + mem[_691]]
                            if mem[_691 + mem[_691]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_691 + mem[_691]])) + 1 < 0 or _691 + ceil32(return_data.size) + ceil32(ceil32(mem[_691 + mem[_691]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _691 + ceil32(return_data.size) + ceil32(ceil32(mem[_691 + mem[_691]])) + 1
                            mem[_691 + ceil32(return_data.size)] = _778
                            require _731 + _778 + 32 <= return_data.size
                            s = 0
                            while s < _778:
                                mem[s + _691 + ceil32(return_data.size) + 32] = mem[s + _691 + _731 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_778) > _778:
                                mem[_691 + ceil32(return_data.size) + _778 + 32] = 0
                            mem[_604 + 224] = _691 + ceil32(return_data.size)
                        else:
                            if 31 >= uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5:
                                mem[_632 + 32] = 256 * Mask(248, 0, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1800)
                                mem[_604 + 224] = _632
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _732 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _780 = mem[_732]
                                require mem[_732] <= test266151307()
                                require _732 + mem[_732] + 31 < _732 + return_data.size
                                _848 = mem[_732 + mem[_732]]
                                if mem[_732 + mem[_732]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_732 + mem[_732]])) + 1 < 0 or _732 + ceil32(return_data.size) + ceil32(ceil32(mem[_732 + mem[_732]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _732 + ceil32(return_data.size) + ceil32(ceil32(mem[_732 + mem[_732]])) + 1
                                mem[_732 + ceil32(return_data.size)] = _848
                                require _780 + _848 + 32 <= return_data.size
                                s = 0
                                while s < _848:
                                    mem[s + _732 + ceil32(return_data.size) + 32] = mem[s + _732 + _780 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_848) > _848:
                                    mem[_732 + ceil32(return_data.size) + _848 + 32] = 0
                                mem[_604 + 224] = _732 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('map', 'msg.sender', ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + 7
                                mem[_632 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]) + 7)].field_0
                                s = _632 + 32
                                t = sha3(mem[0])
                                while _632 + (uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_604 + 224] = _632
                                _1195 = mem[_604 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1195
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1195
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1225 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1255 = mem[_1225]
                                require mem[_1225] <= test266151307()
                                require _1225 + mem[_1225] + 31 < _1225 + return_data.size
                                _1280 = mem[_1225 + mem[_1225]]
                                if mem[_1225 + mem[_1225]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1225 + mem[_1225]])) + 1 < 0 or _1225 + ceil32(return_data.size) + ceil32(ceil32(mem[_1225 + mem[_1225]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1225 + ceil32(return_data.size) + ceil32(ceil32(mem[_1225 + mem[_1225]])) + 1
                                mem[_1225 + ceil32(return_data.size)] = _1280
                                require _1255 + _1280 + 32 <= return_data.size
                                s = 0
                                while s < _1280:
                                    mem[s + _1225 + ceil32(return_data.size) + 32] = mem[s + _1225 + _1255 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1280) > _1280:
                                    mem[_1225 + ceil32(return_data.size) + _1280 + 32] = 0
                                mem[_604 + 224] = _1225 + ceil32(return_data.size)
                    else:
                        if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128 < 32):
                            revert with 0, 34
                        if not stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128:
                            mem[_604 + 224] = _632
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _714 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _755 = mem[_714]
                            require mem[_714] <= test266151307()
                            require _714 + mem[_714] + 31 < _714 + return_data.size
                            _814 = mem[_714 + mem[_714]]
                            if mem[_714 + mem[_714]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_714 + mem[_714]])) + 1 < 0 or _714 + ceil32(return_data.size) + ceil32(ceil32(mem[_714 + mem[_714]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _714 + ceil32(return_data.size) + ceil32(ceil32(mem[_714 + mem[_714]])) + 1
                            mem[_714 + ceil32(return_data.size)] = _814
                            require _755 + _814 + 32 <= return_data.size
                            s = 0
                            while s < _814:
                                mem[s + _714 + ceil32(return_data.size) + 32] = mem[s + _714 + _755 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_814) > _814:
                                mem[_714 + ceil32(return_data.size) + _814 + 32] = 0
                            mem[_604 + 224] = _714 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128:
                                mem[_632 + 32] = 256 * Mask(248, 0, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1800)
                                mem[_604 + 224] = _632
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _756 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _816 = mem[_756]
                                require mem[_756] <= test266151307()
                                require _756 + mem[_756] + 31 < _756 + return_data.size
                                _880 = mem[_756 + mem[_756]]
                                if mem[_756 + mem[_756]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_756 + mem[_756]])) + 1 < 0 or _756 + ceil32(return_data.size) + ceil32(ceil32(mem[_756 + mem[_756]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _756 + ceil32(return_data.size) + ceil32(ceil32(mem[_756 + mem[_756]])) + 1
                                mem[_756 + ceil32(return_data.size)] = _880
                                require _816 + _880 + 32 <= return_data.size
                                s = 0
                                while s < _880:
                                    mem[s + _756 + ceil32(return_data.size) + 32] = mem[s + _756 + _816 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_880) > _880:
                                    mem[_756 + ceil32(return_data.size) + _880 + 32] = 0
                                mem[_604 + 224] = _756 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('map', 'msg.sender', ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + 7
                                mem[_632 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]) + 7)].field_0
                                s = _632 + 32
                                t = sha3(mem[0])
                                while _632 + stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_604 + 224] = _632
                                _1198 = mem[_604 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1198
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1198
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1226 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1258 = mem[_1226]
                                require mem[_1226] <= test266151307()
                                require _1226 + mem[_1226] + 31 < _1226 + return_data.size
                                _1281 = mem[_1226 + mem[_1226]]
                                if mem[_1226 + mem[_1226]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1226 + mem[_1226]])) + 1 < 0 or _1226 + ceil32(return_data.size) + ceil32(ceil32(mem[_1226 + mem[_1226]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1226 + ceil32(return_data.size) + ceil32(ceil32(mem[_1226 + mem[_1226]])) + 1
                                mem[_1226 + ceil32(return_data.size)] = _1281
                                require _1258 + _1281 + 32 <= return_data.size
                                s = 0
                                while s < _1281:
                                    mem[s + _1226 + ceil32(return_data.size) + 32] = mem[s + _1226 + _1258 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1281) > _1281:
                                    mem[_1226 + ceil32(return_data.size) + _1281 + 32] = 0
                                mem[_604 + 224] = _1226 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _604
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _586 = mem[64]
            mem[mem[64]] = 32
            _588 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _588:
                mem[t] = u + -_586 - 64
                _1162 = mem[s]
                mem[u] = bool(mem[mem[s]])
                mem[u + 32] = mem[_1162 + 32]
                mem[u + 64] = mem[_1162 + 64]
                mem[u + 96] = mem[_1162 + 96]
                mem[u + 128] = mem[_1162 + 128]
                mem[u + 160] = mem[_1162 + 160]
                mem[u + 192] = mem[_1162 + 204 len 20]
                _1188 = mem[_1162 + 224]
                mem[u + 224] = 256
                _1222 = mem[_1188]
                mem[u + 256] = mem[_1188]
                v = 0
                while v < _1222:
                    mem[v + u + 288] = mem[v + _1188 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1222) > _1222:
                    mem[u + _1222 + 288] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_1222) + u + 288
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
            mem[var16001] = (32 * arg2) + 128
            s = var16001
            idx = var16002
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
                if idx > !arg1:
                    revert with 0, 17
                if idx + arg1 >= sub_15f4d22a[msg.sender]:
                    revert with 0, 50
                if stor[('map', 'msg.sender', ('name', 'sub_15f4d22a', 4)) + idx + arg1] >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                _1648 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1648] = bool(uint8(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_0))
                mem[_1648 + 32] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_256
                mem[_1648 + 64] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                mem[_1648 + 96] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_768
                mem[_1648 + 128] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1024
                mem[_1648 + 160] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1280
                mem[_1648 + 192] = address(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1536)
                if bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792):
                    if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5 < 32):
                        revert with 0, 34
                    _1663 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5) + 32
                    mem[_1663] = uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5
                    if bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792):
                        if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5 < 32):
                            revert with 0, 34
                        if not Mask(256, -1, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792):
                            mem[_1648 + 224] = _1663
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1674 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1710 = mem[_1674]
                            require mem[_1674] <= test266151307()
                            require _1674 + mem[_1674] + 31 < _1674 + return_data.size
                            _1750 = mem[_1674 + mem[_1674]]
                            if mem[_1674 + mem[_1674]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_1674 + mem[_1674]])) + 1 < 0 or _1674 + ceil32(return_data.size) + ceil32(ceil32(mem[_1674 + mem[_1674]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1674 + ceil32(return_data.size) + ceil32(ceil32(mem[_1674 + mem[_1674]])) + 1
                            mem[_1674 + ceil32(return_data.size)] = _1750
                            require _1710 + _1750 + 32 <= return_data.size
                            s = 0
                            while s < _1750:
                                mem[s + _1674 + ceil32(return_data.size) + 32] = mem[s + _1674 + _1710 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1750) > _1750:
                                mem[_1674 + ceil32(return_data.size) + _1750 + 32] = 0
                            mem[_1648 + 224] = _1674 + ceil32(return_data.size)
                        else:
                            if 31 >= uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5:
                                mem[_1663 + 32] = 256 * Mask(248, 0, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1800)
                                mem[_1648 + 224] = _1663
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1711 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1752 = mem[_1711]
                                require mem[_1711] <= test266151307()
                                require _1711 + mem[_1711] + 31 < _1711 + return_data.size
                                _1793 = mem[_1711 + mem[_1711]]
                                if mem[_1711 + mem[_1711]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1711 + mem[_1711]])) + 1 < 0 or _1711 + ceil32(return_data.size) + ceil32(ceil32(mem[_1711 + mem[_1711]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1711 + ceil32(return_data.size) + ceil32(ceil32(mem[_1711 + mem[_1711]])) + 1
                                mem[_1711 + ceil32(return_data.size)] = _1793
                                require _1752 + _1793 + 32 <= return_data.size
                                s = 0
                                while s < _1793:
                                    mem[s + _1711 + ceil32(return_data.size) + 32] = mem[s + _1711 + _1752 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1793) > _1793:
                                    mem[_1711 + ceil32(return_data.size) + _1793 + 32] = 0
                                mem[_1648 + 224] = _1711 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('map', 'msg.sender', ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + 7
                                mem[_1663 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]) + 7)].field_0
                                s = _1663 + 32
                                t = sha3(mem[0])
                                while _1663 + (uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1648 + 224] = _1663
                                _1943 = mem[_1648 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1943
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1943
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1977 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2003 = mem[_1977]
                                require mem[_1977] <= test266151307()
                                require _1977 + mem[_1977] + 31 < _1977 + return_data.size
                                _2028 = mem[_1977 + mem[_1977]]
                                if mem[_1977 + mem[_1977]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1977 + mem[_1977]])) + 1 < 0 or _1977 + ceil32(return_data.size) + ceil32(ceil32(mem[_1977 + mem[_1977]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1977 + ceil32(return_data.size) + ceil32(ceil32(mem[_1977 + mem[_1977]])) + 1
                                mem[_1977 + ceil32(return_data.size)] = _2028
                                require _2003 + _2028 + 32 <= return_data.size
                                s = 0
                                while s < _2028:
                                    mem[s + _1977 + ceil32(return_data.size) + 32] = mem[s + _1977 + _2003 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2028) > _2028:
                                    mem[_1977 + ceil32(return_data.size) + _2028 + 32] = 0
                                mem[_1648 + 224] = _1977 + ceil32(return_data.size)
                    else:
                        if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128 < 32):
                            revert with 0, 34
                        if not stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128:
                            mem[_1648 + 224] = _1663
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1693 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1733 = mem[_1693]
                            require mem[_1693] <= test266151307()
                            require _1693 + mem[_1693] + 31 < _1693 + return_data.size
                            _1773 = mem[_1693 + mem[_1693]]
                            if mem[_1693 + mem[_1693]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_1693 + mem[_1693]])) + 1 < 0 or _1693 + ceil32(return_data.size) + ceil32(ceil32(mem[_1693 + mem[_1693]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1693 + ceil32(return_data.size) + ceil32(ceil32(mem[_1693 + mem[_1693]])) + 1
                            mem[_1693 + ceil32(return_data.size)] = _1773
                            require _1733 + _1773 + 32 <= return_data.size
                            s = 0
                            while s < _1773:
                                mem[s + _1693 + ceil32(return_data.size) + 32] = mem[s + _1693 + _1733 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1773) > _1773:
                                mem[_1693 + ceil32(return_data.size) + _1773 + 32] = 0
                            mem[_1648 + 224] = _1693 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128:
                                mem[_1663 + 32] = 256 * Mask(248, 0, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1800)
                                mem[_1648 + 224] = _1663
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1734 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1775 = mem[_1734]
                                require mem[_1734] <= test266151307()
                                require _1734 + mem[_1734] + 31 < _1734 + return_data.size
                                _1808 = mem[_1734 + mem[_1734]]
                                if mem[_1734 + mem[_1734]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1734 + mem[_1734]])) + 1 < 0 or _1734 + ceil32(return_data.size) + ceil32(ceil32(mem[_1734 + mem[_1734]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1734 + ceil32(return_data.size) + ceil32(ceil32(mem[_1734 + mem[_1734]])) + 1
                                mem[_1734 + ceil32(return_data.size)] = _1808
                                require _1775 + _1808 + 32 <= return_data.size
                                s = 0
                                while s < _1808:
                                    mem[s + _1734 + ceil32(return_data.size) + 32] = mem[s + _1734 + _1775 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1808) > _1808:
                                    mem[_1734 + ceil32(return_data.size) + _1808 + 32] = 0
                                mem[_1648 + 224] = _1734 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('map', 'msg.sender', ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + 7
                                mem[_1663 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]) + 7)].field_0
                                s = _1663 + 32
                                t = sha3(mem[0])
                                while _1663 + stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1648 + 224] = _1663
                                _1946 = mem[_1648 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1946
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1946
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1978 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2006 = mem[_1978]
                                require mem[_1978] <= test266151307()
                                require _1978 + mem[_1978] + 31 < _1978 + return_data.size
                                _2029 = mem[_1978 + mem[_1978]]
                                if mem[_1978 + mem[_1978]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1978 + mem[_1978]])) + 1 < 0 or _1978 + ceil32(return_data.size) + ceil32(ceil32(mem[_1978 + mem[_1978]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1978 + ceil32(return_data.size) + ceil32(ceil32(mem[_1978 + mem[_1978]])) + 1
                                mem[_1978 + ceil32(return_data.size)] = _2029
                                require _2006 + _2029 + 32 <= return_data.size
                                s = 0
                                while s < _2029:
                                    mem[s + _1978 + ceil32(return_data.size) + 32] = mem[s + _1978 + _2006 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2029) > _2029:
                                    mem[_1978 + ceil32(return_data.size) + _2029 + 32] = 0
                                mem[_1648 + 224] = _1978 + ceil32(return_data.size)
                else:
                    if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128 < 32):
                        revert with 0, 34
                    _1666 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128) + 32
                    mem[_1666] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128
                    if bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792):
                        if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5 < 32):
                            revert with 0, 34
                        if not Mask(256, -1, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792):
                            mem[_1648 + 224] = _1666
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1695 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1735 = mem[_1695]
                            require mem[_1695] <= test266151307()
                            require _1695 + mem[_1695] + 31 < _1695 + return_data.size
                            _1776 = mem[_1695 + mem[_1695]]
                            if mem[_1695 + mem[_1695]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_1695 + mem[_1695]])) + 1 < 0 or _1695 + ceil32(return_data.size) + ceil32(ceil32(mem[_1695 + mem[_1695]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1695 + ceil32(return_data.size) + ceil32(ceil32(mem[_1695 + mem[_1695]])) + 1
                            mem[_1695 + ceil32(return_data.size)] = _1776
                            require _1735 + _1776 + 32 <= return_data.size
                            s = 0
                            while s < _1776:
                                mem[s + _1695 + ceil32(return_data.size) + 32] = mem[s + _1695 + _1735 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1776) > _1776:
                                mem[_1695 + ceil32(return_data.size) + _1776 + 32] = 0
                            mem[_1648 + 224] = _1695 + ceil32(return_data.size)
                        else:
                            if 31 >= uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5:
                                mem[_1666 + 32] = 256 * Mask(248, 0, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1800)
                                mem[_1648 + 224] = _1666
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1736 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1778 = mem[_1736]
                                require mem[_1736] <= test266151307()
                                require _1736 + mem[_1736] + 31 < _1736 + return_data.size
                                _1810 = mem[_1736 + mem[_1736]]
                                if mem[_1736 + mem[_1736]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1736 + mem[_1736]])) + 1 < 0 or _1736 + ceil32(return_data.size) + ceil32(ceil32(mem[_1736 + mem[_1736]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1736 + ceil32(return_data.size) + ceil32(ceil32(mem[_1736 + mem[_1736]])) + 1
                                mem[_1736 + ceil32(return_data.size)] = _1810
                                require _1778 + _1810 + 32 <= return_data.size
                                s = 0
                                while s < _1810:
                                    mem[s + _1736 + ceil32(return_data.size) + 32] = mem[s + _1736 + _1778 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1810) > _1810:
                                    mem[_1736 + ceil32(return_data.size) + _1810 + 32] = 0
                                mem[_1648 + 224] = _1736 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('map', 'msg.sender', ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + 7
                                mem[_1666 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]) + 7)].field_0
                                s = _1666 + 32
                                t = sha3(mem[0])
                                while _1666 + (uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1648 + 224] = _1666
                                _1949 = mem[_1648 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1949
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1949
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1979 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2009 = mem[_1979]
                                require mem[_1979] <= test266151307()
                                require _1979 + mem[_1979] + 31 < _1979 + return_data.size
                                _2030 = mem[_1979 + mem[_1979]]
                                if mem[_1979 + mem[_1979]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1979 + mem[_1979]])) + 1 < 0 or _1979 + ceil32(return_data.size) + ceil32(ceil32(mem[_1979 + mem[_1979]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1979 + ceil32(return_data.size) + ceil32(ceil32(mem[_1979 + mem[_1979]])) + 1
                                mem[_1979 + ceil32(return_data.size)] = _2030
                                require _2009 + _2030 + 32 <= return_data.size
                                s = 0
                                while s < _2030:
                                    mem[s + _1979 + ceil32(return_data.size) + 32] = mem[s + _1979 + _2009 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2030) > _2030:
                                    mem[_1979 + ceil32(return_data.size) + _2030 + 32] = 0
                                mem[_1648 + 224] = _1979 + ceil32(return_data.size)
                    else:
                        if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128 < 32):
                            revert with 0, 34
                        if not stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128:
                            mem[_1648 + 224] = _1666
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1718 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1759 = mem[_1718]
                            require mem[_1718] <= test266151307()
                            require _1718 + mem[_1718] + 31 < _1718 + return_data.size
                            _1796 = mem[_1718 + mem[_1718]]
                            if mem[_1718 + mem[_1718]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_1718 + mem[_1718]])) + 1 < 0 or _1718 + ceil32(return_data.size) + ceil32(ceil32(mem[_1718 + mem[_1718]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1718 + ceil32(return_data.size) + ceil32(ceil32(mem[_1718 + mem[_1718]])) + 1
                            mem[_1718 + ceil32(return_data.size)] = _1796
                            require _1759 + _1796 + 32 <= return_data.size
                            s = 0
                            while s < _1796:
                                mem[s + _1718 + ceil32(return_data.size) + 32] = mem[s + _1718 + _1759 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1796) > _1796:
                                mem[_1718 + ceil32(return_data.size) + _1796 + 32] = 0
                            mem[_1648 + 224] = _1718 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128:
                                mem[_1666 + 32] = 256 * Mask(248, 0, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1800)
                                mem[_1648 + 224] = _1666
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1760 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1798 = mem[_1760]
                                require mem[_1760] <= test266151307()
                                require _1760 + mem[_1760] + 31 < _1760 + return_data.size
                                _1822 = mem[_1760 + mem[_1760]]
                                if mem[_1760 + mem[_1760]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1760 + mem[_1760]])) + 1 < 0 or _1760 + ceil32(return_data.size) + ceil32(ceil32(mem[_1760 + mem[_1760]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1760 + ceil32(return_data.size) + ceil32(ceil32(mem[_1760 + mem[_1760]])) + 1
                                mem[_1760 + ceil32(return_data.size)] = _1822
                                require _1798 + _1822 + 32 <= return_data.size
                                s = 0
                                while s < _1822:
                                    mem[s + _1760 + ceil32(return_data.size) + 32] = mem[s + _1760 + _1798 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1822) > _1822:
                                    mem[_1760 + ceil32(return_data.size) + _1822 + 32] = 0
                                mem[_1648 + 224] = _1760 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('map', 'msg.sender', ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + 7
                                mem[_1666 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]) + 7)].field_0
                                s = _1666 + 32
                                t = sha3(mem[0])
                                while _1666 + stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1648 + 224] = _1666
                                _1952 = mem[_1648 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1952
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1952
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1980 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2012 = mem[_1980]
                                require mem[_1980] <= test266151307()
                                require _1980 + mem[_1980] + 31 < _1980 + return_data.size
                                _2031 = mem[_1980 + mem[_1980]]
                                if mem[_1980 + mem[_1980]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1980 + mem[_1980]])) + 1 < 0 or _1980 + ceil32(return_data.size) + ceil32(ceil32(mem[_1980 + mem[_1980]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1980 + ceil32(return_data.size) + ceil32(ceil32(mem[_1980 + mem[_1980]])) + 1
                                mem[_1980 + ceil32(return_data.size)] = _2031
                                require _2012 + _2031 + 32 <= return_data.size
                                s = 0
                                while s < _2031:
                                    mem[s + _1980 + ceil32(return_data.size) + 32] = mem[s + _1980 + _2012 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2031) > _2031:
                                    mem[_1980 + ceil32(return_data.size) + _2031 + 32] = 0
                                mem[_1648 + 224] = _1980 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1648
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1614 = mem[64]
            mem[mem[64]] = 32
            _1616 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _1616:
                mem[t] = u + -_1614 - 64
                _1916 = mem[s]
                mem[u] = bool(mem[mem[s]])
                mem[u + 32] = mem[_1916 + 32]
                mem[u + 64] = mem[_1916 + 64]
                mem[u + 96] = mem[_1916 + 96]
                mem[u + 128] = mem[_1916 + 128]
                mem[u + 160] = mem[_1916 + 160]
                mem[u + 192] = mem[_1916 + 204 len 20]
                _1942 = mem[_1916 + 224]
                mem[u + 224] = 256
                _1976 = mem[_1942]
                mem[u + 256] = mem[_1942]
                v = 0
                while v < _1976:
                    mem[v + u + 288] = mem[v + _1942 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1976) > _1976:
                    mem[u + _1976 + 288] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_1976) + u + 288
                continue 
    else:
        if sub_15f4d22a[msg.sender] < arg1:
            revert with 0, 17
        if sub_15f4d22a[msg.sender] - arg1 > test266151307():
            revert with 0, 65
        mem[96] = sub_15f4d22a[msg.sender] - arg1
        mem[64] = (32 * sub_15f4d22a[msg.sender] - arg1) + 128
        if not sub_15f4d22a[msg.sender] - arg1:
            idx = 0
            while idx < sub_15f4d22a[msg.sender] - arg1:
                mem[32] = 4
                if idx > !arg1:
                    revert with 0, 17
                if idx + arg1 >= sub_15f4d22a[msg.sender]:
                    revert with 0, 50
                if stor[('map', 'msg.sender', ('name', 'sub_15f4d22a', 4)) + idx + arg1] >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                _616 = mem[64]
                mem[64] = mem[64] + 256
                mem[_616] = bool(uint8(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_0))
                mem[_616 + 32] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_256
                mem[_616 + 64] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                mem[_616 + 96] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_768
                mem[_616 + 128] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1024
                mem[_616 + 160] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1280
                mem[_616 + 192] = address(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1536)
                if bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792):
                    if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5 < 32):
                        revert with 0, 34
                    _629 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5) + 32
                    mem[_629] = uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5
                    if bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792):
                        if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5 < 32):
                            revert with 0, 34
                        if not Mask(256, -1, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792):
                            mem[_616 + 224] = _629
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _677 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _716 = mem[_677]
                            require mem[_677] <= test266151307()
                            require _677 + mem[_677] + 31 < _677 + return_data.size
                            _760 = mem[_677 + mem[_677]]
                            if mem[_677 + mem[_677]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_677 + mem[_677]])) + 1 < 0 or _677 + ceil32(return_data.size) + ceil32(ceil32(mem[_677 + mem[_677]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _677 + ceil32(return_data.size) + ceil32(ceil32(mem[_677 + mem[_677]])) + 1
                            mem[_677 + ceil32(return_data.size)] = _760
                            require _716 + _760 + 32 <= return_data.size
                            s = 0
                            while s < _760:
                                mem[s + _677 + ceil32(return_data.size) + 32] = mem[s + _677 + _716 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_760) > _760:
                                mem[_677 + ceil32(return_data.size) + _760 + 32] = 0
                            mem[_616 + 224] = _677 + ceil32(return_data.size)
                        else:
                            if 31 >= uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5:
                                mem[_629 + 32] = 256 * Mask(248, 0, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1800)
                                mem[_616 + 224] = _629
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _717 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _762 = mem[_717]
                                require mem[_717] <= test266151307()
                                require _717 + mem[_717] + 31 < _717 + return_data.size
                                _828 = mem[_717 + mem[_717]]
                                if mem[_717 + mem[_717]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_717 + mem[_717]])) + 1 < 0 or _717 + ceil32(return_data.size) + ceil32(ceil32(mem[_717 + mem[_717]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _717 + ceil32(return_data.size) + ceil32(ceil32(mem[_717 + mem[_717]])) + 1
                                mem[_717 + ceil32(return_data.size)] = _828
                                require _762 + _828 + 32 <= return_data.size
                                s = 0
                                while s < _828:
                                    mem[s + _717 + ceil32(return_data.size) + 32] = mem[s + _717 + _762 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_828) > _828:
                                    mem[_717 + ceil32(return_data.size) + _828 + 32] = 0
                                mem[_616 + 224] = _717 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('map', 'msg.sender', ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + 7
                                mem[_629 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]) + 7)].field_0
                                s = _629 + 32
                                t = sha3(mem[0])
                                while _629 + (uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_616 + 224] = _629
                                _1210 = mem[_616 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1210
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1210
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1228 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1262 = mem[_1228]
                                require mem[_1228] <= test266151307()
                                require _1228 + mem[_1228] + 31 < _1228 + return_data.size
                                _1283 = mem[_1228 + mem[_1228]]
                                if mem[_1228 + mem[_1228]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1228 + mem[_1228]])) + 1 < 0 or _1228 + ceil32(return_data.size) + ceil32(ceil32(mem[_1228 + mem[_1228]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1228 + ceil32(return_data.size) + ceil32(ceil32(mem[_1228 + mem[_1228]])) + 1
                                mem[_1228 + ceil32(return_data.size)] = _1283
                                require _1262 + _1283 + 32 <= return_data.size
                                s = 0
                                while s < _1283:
                                    mem[s + _1228 + ceil32(return_data.size) + 32] = mem[s + _1228 + _1262 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1283) > _1283:
                                    mem[_1228 + ceil32(return_data.size) + _1283 + 32] = 0
                                mem[_616 + 224] = _1228 + ceil32(return_data.size)
                    else:
                        if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128 < 32):
                            revert with 0, 34
                        if not stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128:
                            mem[_616 + 224] = _629
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _699 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _739 = mem[_699]
                            require mem[_699] <= test266151307()
                            require _699 + mem[_699] + 31 < _699 + return_data.size
                            _793 = mem[_699 + mem[_699]]
                            if mem[_699 + mem[_699]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_699 + mem[_699]])) + 1 < 0 or _699 + ceil32(return_data.size) + ceil32(ceil32(mem[_699 + mem[_699]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _699 + ceil32(return_data.size) + ceil32(ceil32(mem[_699 + mem[_699]])) + 1
                            mem[_699 + ceil32(return_data.size)] = _793
                            require _739 + _793 + 32 <= return_data.size
                            s = 0
                            while s < _793:
                                mem[s + _699 + ceil32(return_data.size) + 32] = mem[s + _699 + _739 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_793) > _793:
                                mem[_699 + ceil32(return_data.size) + _793 + 32] = 0
                            mem[_616 + 224] = _699 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128:
                                mem[_629 + 32] = 256 * Mask(248, 0, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1800)
                                mem[_616 + 224] = _629
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _740 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _795 = mem[_740]
                                require mem[_740] <= test266151307()
                                require _740 + mem[_740] + 31 < _740 + return_data.size
                                _862 = mem[_740 + mem[_740]]
                                if mem[_740 + mem[_740]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_740 + mem[_740]])) + 1 < 0 or _740 + ceil32(return_data.size) + ceil32(ceil32(mem[_740 + mem[_740]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _740 + ceil32(return_data.size) + ceil32(ceil32(mem[_740 + mem[_740]])) + 1
                                mem[_740 + ceil32(return_data.size)] = _862
                                require _795 + _862 + 32 <= return_data.size
                                s = 0
                                while s < _862:
                                    mem[s + _740 + ceil32(return_data.size) + 32] = mem[s + _740 + _795 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_862) > _862:
                                    mem[_740 + ceil32(return_data.size) + _862 + 32] = 0
                                mem[_616 + 224] = _740 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('map', 'msg.sender', ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + 7
                                mem[_629 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]) + 7)].field_0
                                s = _629 + 32
                                t = sha3(mem[0])
                                while _629 + stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_616 + 224] = _629
                                _1213 = mem[_616 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1213
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1213
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1229 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1265 = mem[_1229]
                                require mem[_1229] <= test266151307()
                                require _1229 + mem[_1229] + 31 < _1229 + return_data.size
                                _1284 = mem[_1229 + mem[_1229]]
                                if mem[_1229 + mem[_1229]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1229 + mem[_1229]])) + 1 < 0 or _1229 + ceil32(return_data.size) + ceil32(ceil32(mem[_1229 + mem[_1229]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1229 + ceil32(return_data.size) + ceil32(ceil32(mem[_1229 + mem[_1229]])) + 1
                                mem[_1229 + ceil32(return_data.size)] = _1284
                                require _1265 + _1284 + 32 <= return_data.size
                                s = 0
                                while s < _1284:
                                    mem[s + _1229 + ceil32(return_data.size) + 32] = mem[s + _1229 + _1265 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1284) > _1284:
                                    mem[_1229 + ceil32(return_data.size) + _1284 + 32] = 0
                                mem[_616 + 224] = _1229 + ceil32(return_data.size)
                else:
                    if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128 < 32):
                        revert with 0, 34
                    _644 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128) + 32
                    mem[_644] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128
                    if bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792):
                        if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5 < 32):
                            revert with 0, 34
                        if not Mask(256, -1, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792):
                            mem[_616 + 224] = _644
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _701 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _741 = mem[_701]
                            require mem[_701] <= test266151307()
                            require _701 + mem[_701] + 31 < _701 + return_data.size
                            _796 = mem[_701 + mem[_701]]
                            if mem[_701 + mem[_701]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_701 + mem[_701]])) + 1 < 0 or _701 + ceil32(return_data.size) + ceil32(ceil32(mem[_701 + mem[_701]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _701 + ceil32(return_data.size) + ceil32(ceil32(mem[_701 + mem[_701]])) + 1
                            mem[_701 + ceil32(return_data.size)] = _796
                            require _741 + _796 + 32 <= return_data.size
                            s = 0
                            while s < _796:
                                mem[s + _701 + ceil32(return_data.size) + 32] = mem[s + _701 + _741 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_796) > _796:
                                mem[_701 + ceil32(return_data.size) + _796 + 32] = 0
                            mem[_616 + 224] = _701 + ceil32(return_data.size)
                        else:
                            if 31 >= uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5:
                                mem[_644 + 32] = 256 * Mask(248, 0, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1800)
                                mem[_616 + 224] = _644
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _742 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _798 = mem[_742]
                                require mem[_742] <= test266151307()
                                require _742 + mem[_742] + 31 < _742 + return_data.size
                                _864 = mem[_742 + mem[_742]]
                                if mem[_742 + mem[_742]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_742 + mem[_742]])) + 1 < 0 or _742 + ceil32(return_data.size) + ceil32(ceil32(mem[_742 + mem[_742]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _742 + ceil32(return_data.size) + ceil32(ceil32(mem[_742 + mem[_742]])) + 1
                                mem[_742 + ceil32(return_data.size)] = _864
                                require _798 + _864 + 32 <= return_data.size
                                s = 0
                                while s < _864:
                                    mem[s + _742 + ceil32(return_data.size) + 32] = mem[s + _742 + _798 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_864) > _864:
                                    mem[_742 + ceil32(return_data.size) + _864 + 32] = 0
                                mem[_616 + 224] = _742 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('map', 'msg.sender', ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + 7
                                mem[_644 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]) + 7)].field_0
                                s = _644 + 32
                                t = sha3(mem[0])
                                while _644 + (uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_616 + 224] = _644
                                _1216 = mem[_616 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1216
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1216
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1230 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1268 = mem[_1230]
                                require mem[_1230] <= test266151307()
                                require _1230 + mem[_1230] + 31 < _1230 + return_data.size
                                _1285 = mem[_1230 + mem[_1230]]
                                if mem[_1230 + mem[_1230]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1230 + mem[_1230]])) + 1 < 0 or _1230 + ceil32(return_data.size) + ceil32(ceil32(mem[_1230 + mem[_1230]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1230 + ceil32(return_data.size) + ceil32(ceil32(mem[_1230 + mem[_1230]])) + 1
                                mem[_1230 + ceil32(return_data.size)] = _1285
                                require _1268 + _1285 + 32 <= return_data.size
                                s = 0
                                while s < _1285:
                                    mem[s + _1230 + ceil32(return_data.size) + 32] = mem[s + _1230 + _1268 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1285) > _1285:
                                    mem[_1230 + ceil32(return_data.size) + _1285 + 32] = 0
                                mem[_616 + 224] = _1230 + ceil32(return_data.size)
                    else:
                        if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128 < 32):
                            revert with 0, 34
                        if not stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128:
                            mem[_616 + 224] = _644
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _724 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _769 = mem[_724]
                            require mem[_724] <= test266151307()
                            require _724 + mem[_724] + 31 < _724 + return_data.size
                            _831 = mem[_724 + mem[_724]]
                            if mem[_724 + mem[_724]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_724 + mem[_724]])) + 1 < 0 or _724 + ceil32(return_data.size) + ceil32(ceil32(mem[_724 + mem[_724]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _724 + ceil32(return_data.size) + ceil32(ceil32(mem[_724 + mem[_724]])) + 1
                            mem[_724 + ceil32(return_data.size)] = _831
                            require _769 + _831 + 32 <= return_data.size
                            s = 0
                            while s < _831:
                                mem[s + _724 + ceil32(return_data.size) + 32] = mem[s + _724 + _769 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_831) > _831:
                                mem[_724 + ceil32(return_data.size) + _831 + 32] = 0
                            mem[_616 + 224] = _724 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128:
                                mem[_644 + 32] = 256 * Mask(248, 0, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1800)
                                mem[_616 + 224] = _644
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _770 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _833 = mem[_770]
                                require mem[_770] <= test266151307()
                                require _770 + mem[_770] + 31 < _770 + return_data.size
                                _895 = mem[_770 + mem[_770]]
                                if mem[_770 + mem[_770]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_770 + mem[_770]])) + 1 < 0 or _770 + ceil32(return_data.size) + ceil32(ceil32(mem[_770 + mem[_770]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _770 + ceil32(return_data.size) + ceil32(ceil32(mem[_770 + mem[_770]])) + 1
                                mem[_770 + ceil32(return_data.size)] = _895
                                require _833 + _895 + 32 <= return_data.size
                                s = 0
                                while s < _895:
                                    mem[s + _770 + ceil32(return_data.size) + 32] = mem[s + _770 + _833 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_895) > _895:
                                    mem[_770 + ceil32(return_data.size) + _895 + 32] = 0
                                mem[_616 + 224] = _770 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('map', 'msg.sender', ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + 7
                                mem[_644 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]) + 7)].field_0
                                s = _644 + 32
                                t = sha3(mem[0])
                                while _644 + stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_616 + 224] = _644
                                _1219 = mem[_616 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1219
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1219
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1231 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1271 = mem[_1231]
                                require mem[_1231] <= test266151307()
                                require _1231 + mem[_1231] + 31 < _1231 + return_data.size
                                _1286 = mem[_1231 + mem[_1231]]
                                if mem[_1231 + mem[_1231]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1231 + mem[_1231]])) + 1 < 0 or _1231 + ceil32(return_data.size) + ceil32(ceil32(mem[_1231 + mem[_1231]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1231 + ceil32(return_data.size) + ceil32(ceil32(mem[_1231 + mem[_1231]])) + 1
                                mem[_1231 + ceil32(return_data.size)] = _1286
                                require _1271 + _1286 + 32 <= return_data.size
                                s = 0
                                while s < _1286:
                                    mem[s + _1231 + ceil32(return_data.size) + 32] = mem[s + _1231 + _1271 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1286) > _1286:
                                    mem[_1231 + ceil32(return_data.size) + _1286 + 32] = 0
                                mem[_616 + 224] = _1231 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _616
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _587 = mem[64]
            mem[mem[64]] = 32
            _589 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _589:
                mem[t] = u + -_587 - 64
                _1171 = mem[s]
                mem[u] = bool(mem[mem[s]])
                mem[u + 32] = mem[_1171 + 32]
                mem[u + 64] = mem[_1171 + 64]
                mem[u + 96] = mem[_1171 + 96]
                mem[u + 128] = mem[_1171 + 128]
                mem[u + 160] = mem[_1171 + 160]
                mem[u + 192] = mem[_1171 + 204 len 20]
                _1209 = mem[_1171 + 224]
                mem[u + 224] = 256
                _1227 = mem[_1209]
                mem[u + 256] = mem[_1209]
                v = 0
                while v < _1227:
                    mem[v + u + 288] = mem[v + _1209 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1227) > _1227:
                    mem[u + _1227 + 288] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_1227) + u + 288
                continue 
        else:
            mem[64] = (32 * sub_15f4d22a[msg.sender] - arg1) + 384
            mem[(32 * sub_15f4d22a[msg.sender] - arg1) + 128] = 0
            mem[(32 * sub_15f4d22a[msg.sender] - arg1) + 160] = 0
            mem[(32 * sub_15f4d22a[msg.sender] - arg1) + 192] = 0
            mem[(32 * sub_15f4d22a[msg.sender] - arg1) + 224] = 0
            mem[(32 * sub_15f4d22a[msg.sender] - arg1) + 256] = 0
            mem[(32 * sub_15f4d22a[msg.sender] - arg1) + 288] = 0
            mem[(32 * sub_15f4d22a[msg.sender] - arg1) + 320] = 0
            mem[(32 * sub_15f4d22a[msg.sender] - arg1) + 352] = 96
            mem[var20001] = (32 * sub_15f4d22a[msg.sender] - arg1) + 128
            s = var20001
            idx = var20002
            while idx - 1:
                mem[64] = mem[64] + 256
                mem[(32 * sub_15f4d22a[msg.sender] - arg1) + 128] = 0
                mem[(32 * sub_15f4d22a[msg.sender] - arg1) + 160] = 0
                mem[(32 * sub_15f4d22a[msg.sender] - arg1) + 192] = 0
                mem[(32 * sub_15f4d22a[msg.sender] - arg1) + 224] = 0
                mem[(32 * sub_15f4d22a[msg.sender] - arg1) + 256] = 0
                mem[(32 * sub_15f4d22a[msg.sender] - arg1) + 288] = 0
                mem[(32 * sub_15f4d22a[msg.sender] - arg1) + 320] = 0
                mem[(32 * sub_15f4d22a[msg.sender] - arg1) + 352] = 96
                mem[s + 32] = (32 * sub_15f4d22a[msg.sender] - arg1) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < sub_15f4d22a[msg.sender] - arg1:
                mem[32] = 4
                if idx > !arg1:
                    revert with 0, 17
                if idx + arg1 >= sub_15f4d22a[msg.sender]:
                    revert with 0, 50
                if stor[('map', 'msg.sender', ('name', 'sub_15f4d22a', 4)) + idx + arg1] >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                _1659 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1659] = bool(uint8(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_0))
                mem[_1659 + 32] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_256
                mem[_1659 + 64] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                mem[_1659 + 96] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_768
                mem[_1659 + 128] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1024
                mem[_1659 + 160] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1280
                mem[_1659 + 192] = address(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1536)
                if bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792):
                    if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5 < 32):
                        revert with 0, 34
                    _1665 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5) + 32
                    mem[_1665] = uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5
                    if bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792):
                        if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5 < 32):
                            revert with 0, 34
                        if not Mask(256, -1, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792):
                            mem[_1659 + 224] = _1665
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1682 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1720 = mem[_1682]
                            require mem[_1682] <= test266151307()
                            require _1682 + mem[_1682] + 31 < _1682 + return_data.size
                            _1761 = mem[_1682 + mem[_1682]]
                            if mem[_1682 + mem[_1682]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_1682 + mem[_1682]])) + 1 < 0 or _1682 + ceil32(return_data.size) + ceil32(ceil32(mem[_1682 + mem[_1682]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1682 + ceil32(return_data.size) + ceil32(ceil32(mem[_1682 + mem[_1682]])) + 1
                            mem[_1682 + ceil32(return_data.size)] = _1761
                            require _1720 + _1761 + 32 <= return_data.size
                            s = 0
                            while s < _1761:
                                mem[s + _1682 + ceil32(return_data.size) + 32] = mem[s + _1682 + _1720 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1761) > _1761:
                                mem[_1682 + ceil32(return_data.size) + _1761 + 32] = 0
                            mem[_1659 + 224] = _1682 + ceil32(return_data.size)
                        else:
                            if 31 >= uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5:
                                mem[_1665 + 32] = 256 * Mask(248, 0, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1800)
                                mem[_1659 + 224] = _1665
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1721 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1763 = mem[_1721]
                                require mem[_1721] <= test266151307()
                                require _1721 + mem[_1721] + 31 < _1721 + return_data.size
                                _1800 = mem[_1721 + mem[_1721]]
                                if mem[_1721 + mem[_1721]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1721 + mem[_1721]])) + 1 < 0 or _1721 + ceil32(return_data.size) + ceil32(ceil32(mem[_1721 + mem[_1721]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1721 + ceil32(return_data.size) + ceil32(ceil32(mem[_1721 + mem[_1721]])) + 1
                                mem[_1721 + ceil32(return_data.size)] = _1800
                                require _1763 + _1800 + 32 <= return_data.size
                                s = 0
                                while s < _1800:
                                    mem[s + _1721 + ceil32(return_data.size) + 32] = mem[s + _1721 + _1763 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1800) > _1800:
                                    mem[_1721 + ceil32(return_data.size) + _1800 + 32] = 0
                                mem[_1659 + 224] = _1721 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('map', 'msg.sender', ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + 7
                                mem[_1665 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]) + 7)].field_0
                                s = _1665 + 32
                                t = sha3(mem[0])
                                while _1665 + (uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1659 + 224] = _1665
                                _1964 = mem[_1659 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1964
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1964
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1982 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2015 = mem[_1982]
                                require mem[_1982] <= test266151307()
                                require _1982 + mem[_1982] + 31 < _1982 + return_data.size
                                _2032 = mem[_1982 + mem[_1982]]
                                if mem[_1982 + mem[_1982]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1982 + mem[_1982]])) + 1 < 0 or _1982 + ceil32(return_data.size) + ceil32(ceil32(mem[_1982 + mem[_1982]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1982 + ceil32(return_data.size) + ceil32(ceil32(mem[_1982 + mem[_1982]])) + 1
                                mem[_1982 + ceil32(return_data.size)] = _2032
                                require _2015 + _2032 + 32 <= return_data.size
                                s = 0
                                while s < _2032:
                                    mem[s + _1982 + ceil32(return_data.size) + 32] = mem[s + _1982 + _2015 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2032) > _2032:
                                    mem[_1982 + ceil32(return_data.size) + _2032 + 32] = 0
                                mem[_1659 + 224] = _1982 + ceil32(return_data.size)
                    else:
                        if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128 < 32):
                            revert with 0, 34
                        if not stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128:
                            mem[_1659 + 224] = _1665
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1703 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1743 = mem[_1703]
                            require mem[_1703] <= test266151307()
                            require _1703 + mem[_1703] + 31 < _1703 + return_data.size
                            _1783 = mem[_1703 + mem[_1703]]
                            if mem[_1703 + mem[_1703]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_1703 + mem[_1703]])) + 1 < 0 or _1703 + ceil32(return_data.size) + ceil32(ceil32(mem[_1703 + mem[_1703]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1703 + ceil32(return_data.size) + ceil32(ceil32(mem[_1703 + mem[_1703]])) + 1
                            mem[_1703 + ceil32(return_data.size)] = _1783
                            require _1743 + _1783 + 32 <= return_data.size
                            s = 0
                            while s < _1783:
                                mem[s + _1703 + ceil32(return_data.size) + 32] = mem[s + _1703 + _1743 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1783) > _1783:
                                mem[_1703 + ceil32(return_data.size) + _1783 + 32] = 0
                            mem[_1659 + 224] = _1703 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128:
                                mem[_1665 + 32] = 256 * Mask(248, 0, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1800)
                                mem[_1659 + 224] = _1665
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1744 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1785 = mem[_1744]
                                require mem[_1744] <= test266151307()
                                require _1744 + mem[_1744] + 31 < _1744 + return_data.size
                                _1814 = mem[_1744 + mem[_1744]]
                                if mem[_1744 + mem[_1744]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1744 + mem[_1744]])) + 1 < 0 or _1744 + ceil32(return_data.size) + ceil32(ceil32(mem[_1744 + mem[_1744]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1744 + ceil32(return_data.size) + ceil32(ceil32(mem[_1744 + mem[_1744]])) + 1
                                mem[_1744 + ceil32(return_data.size)] = _1814
                                require _1785 + _1814 + 32 <= return_data.size
                                s = 0
                                while s < _1814:
                                    mem[s + _1744 + ceil32(return_data.size) + 32] = mem[s + _1744 + _1785 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1814) > _1814:
                                    mem[_1744 + ceil32(return_data.size) + _1814 + 32] = 0
                                mem[_1659 + 224] = _1744 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('map', 'msg.sender', ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + 7
                                mem[_1665 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]) + 7)].field_0
                                s = _1665 + 32
                                t = sha3(mem[0])
                                while _1665 + stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1659 + 224] = _1665
                                _1967 = mem[_1659 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1967
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1967
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1983 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2018 = mem[_1983]
                                require mem[_1983] <= test266151307()
                                require _1983 + mem[_1983] + 31 < _1983 + return_data.size
                                _2033 = mem[_1983 + mem[_1983]]
                                if mem[_1983 + mem[_1983]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1983 + mem[_1983]])) + 1 < 0 or _1983 + ceil32(return_data.size) + ceil32(ceil32(mem[_1983 + mem[_1983]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1983 + ceil32(return_data.size) + ceil32(ceil32(mem[_1983 + mem[_1983]])) + 1
                                mem[_1983 + ceil32(return_data.size)] = _2033
                                require _2018 + _2033 + 32 <= return_data.size
                                s = 0
                                while s < _2033:
                                    mem[s + _1983 + ceil32(return_data.size) + 32] = mem[s + _1983 + _2018 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2033) > _2033:
                                    mem[_1983 + ceil32(return_data.size) + _2033 + 32] = 0
                                mem[_1659 + 224] = _1983 + ceil32(return_data.size)
                else:
                    if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128 < 32):
                        revert with 0, 34
                    _1667 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128) + 32
                    mem[_1667] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128
                    if bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792):
                        if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5 < 32):
                            revert with 0, 34
                        if not Mask(256, -1, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792):
                            mem[_1659 + 224] = _1667
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1705 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1745 = mem[_1705]
                            require mem[_1705] <= test266151307()
                            require _1705 + mem[_1705] + 31 < _1705 + return_data.size
                            _1786 = mem[_1705 + mem[_1705]]
                            if mem[_1705 + mem[_1705]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_1705 + mem[_1705]])) + 1 < 0 or _1705 + ceil32(return_data.size) + ceil32(ceil32(mem[_1705 + mem[_1705]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1705 + ceil32(return_data.size) + ceil32(ceil32(mem[_1705 + mem[_1705]])) + 1
                            mem[_1705 + ceil32(return_data.size)] = _1786
                            require _1745 + _1786 + 32 <= return_data.size
                            s = 0
                            while s < _1786:
                                mem[s + _1705 + ceil32(return_data.size) + 32] = mem[s + _1705 + _1745 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1786) > _1786:
                                mem[_1705 + ceil32(return_data.size) + _1786 + 32] = 0
                            mem[_1659 + 224] = _1705 + ceil32(return_data.size)
                        else:
                            if 31 >= uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5:
                                mem[_1667 + 32] = 256 * Mask(248, 0, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1800)
                                mem[_1659 + 224] = _1667
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1746 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1788 = mem[_1746]
                                require mem[_1746] <= test266151307()
                                require _1746 + mem[_1746] + 31 < _1746 + return_data.size
                                _1816 = mem[_1746 + mem[_1746]]
                                if mem[_1746 + mem[_1746]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1746 + mem[_1746]])) + 1 < 0 or _1746 + ceil32(return_data.size) + ceil32(ceil32(mem[_1746 + mem[_1746]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1746 + ceil32(return_data.size) + ceil32(ceil32(mem[_1746 + mem[_1746]])) + 1
                                mem[_1746 + ceil32(return_data.size)] = _1816
                                require _1788 + _1816 + 32 <= return_data.size
                                s = 0
                                while s < _1816:
                                    mem[s + _1746 + ceil32(return_data.size) + 32] = mem[s + _1746 + _1788 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1816) > _1816:
                                    mem[_1746 + ceil32(return_data.size) + _1816 + 32] = 0
                                mem[_1659 + 224] = _1746 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('map', 'msg.sender', ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + 7
                                mem[_1667 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]) + 7)].field_0
                                s = _1667 + 32
                                t = sha3(mem[0])
                                while _1667 + (uint255(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1659 + 224] = _1667
                                _1970 = mem[_1659 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1970
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1970
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1984 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2021 = mem[_1984]
                                require mem[_1984] <= test266151307()
                                require _1984 + mem[_1984] + 31 < _1984 + return_data.size
                                _2034 = mem[_1984 + mem[_1984]]
                                if mem[_1984 + mem[_1984]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1984 + mem[_1984]])) + 1 < 0 or _1984 + ceil32(return_data.size) + ceil32(ceil32(mem[_1984 + mem[_1984]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1984 + ceil32(return_data.size) + ceil32(ceil32(mem[_1984 + mem[_1984]])) + 1
                                mem[_1984 + ceil32(return_data.size)] = _2034
                                require _2021 + _2034 + 32 <= return_data.size
                                s = 0
                                while s < _2034:
                                    mem[s + _1984 + ceil32(return_data.size) + 32] = mem[s + _1984 + _2021 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2034) > _2034:
                                    mem[_1984 + ceil32(return_data.size) + _2034 + 32] = 0
                                mem[_1659 + 224] = _1984 + ceil32(return_data.size)
                    else:
                        if not bool(stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1792) - (stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128 < 32):
                            revert with 0, 34
                        if not stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128:
                            mem[_1659 + 224] = _1667
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1728 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1770 = mem[_1728]
                            require mem[_1728] <= test266151307()
                            require _1728 + mem[_1728] + 31 < _1728 + return_data.size
                            _1803 = mem[_1728 + mem[_1728]]
                            if mem[_1728 + mem[_1728]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_1728 + mem[_1728]])) + 1 < 0 or _1728 + ceil32(return_data.size) + ceil32(ceil32(mem[_1728 + mem[_1728]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1728 + ceil32(return_data.size) + ceil32(ceil32(mem[_1728 + mem[_1728]])) + 1
                            mem[_1728 + ceil32(return_data.size)] = _1803
                            require _1770 + _1803 + 32 <= return_data.size
                            s = 0
                            while s < _1803:
                                mem[s + _1728 + ceil32(return_data.size) + 32] = mem[s + _1728 + _1770 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1803) > _1803:
                                mem[_1728 + ceil32(return_data.size) + _1803 + 32] = 0
                            mem[_1659 + 224] = _1728 + ceil32(return_data.size)
                        else:
                            if 31 >= stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128:
                                mem[_1667 + 32] = 256 * Mask(248, 0, stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1800)
                                mem[_1659 + 224] = _1667
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1771 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1805 = mem[_1771]
                                require mem[_1771] <= test266151307()
                                require _1771 + mem[_1771] + 31 < _1771 + return_data.size
                                _1827 = mem[_1771 + mem[_1771]]
                                if mem[_1771 + mem[_1771]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1771 + mem[_1771]])) + 1 < 0 or _1771 + ceil32(return_data.size) + ceil32(ceil32(mem[_1771 + mem[_1771]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1771 + ceil32(return_data.size) + ceil32(ceil32(mem[_1771 + mem[_1771]])) + 1
                                mem[_1771 + ceil32(return_data.size)] = _1827
                                require _1805 + _1827 + 32 <= return_data.size
                                s = 0
                                while s < _1827:
                                    mem[s + _1771 + ceil32(return_data.size) + 32] = mem[s + _1771 + _1805 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1827) > _1827:
                                    mem[_1771 + ceil32(return_data.size) + _1827 + 32] = 0
                                mem[_1659 + 224] = _1771 + ceil32(return_data.size)
                            else:
                                mem[0] = sha3(2) + (8 * stor[('map', 'msg.sender', ('name', 'sub_15f4d22a', 4)) + idx + arg1]) + 7
                                mem[_1667 + 32] = stor[sha3(('name', 'stor2', 2) + (8 * stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]) + 7)].field_0
                                s = _1667 + 32
                                t = sha3(mem[0])
                                while _1667 + stor2[stor[('map', 'msg.sender', ('name', 'stor4', 4)) + idx + arg1]].field_1793 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1659 + 224] = _1667
                                _1973 = mem[_1659 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1973
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1973
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1985 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2024 = mem[_1985]
                                require mem[_1985] <= test266151307()
                                require _1985 + mem[_1985] + 31 < _1985 + return_data.size
                                _2035 = mem[_1985 + mem[_1985]]
                                if mem[_1985 + mem[_1985]] > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(mem[_1985 + mem[_1985]])) + 1 < 0 or _1985 + ceil32(return_data.size) + ceil32(ceil32(mem[_1985 + mem[_1985]])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1985 + ceil32(return_data.size) + ceil32(ceil32(mem[_1985 + mem[_1985]])) + 1
                                mem[_1985 + ceil32(return_data.size)] = _2035
                                require _2024 + _2035 + 32 <= return_data.size
                                s = 0
                                while s < _2035:
                                    mem[s + _1985 + ceil32(return_data.size) + 32] = mem[s + _1985 + _2024 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2035) > _2035:
                                    mem[_1985 + ceil32(return_data.size) + _2035 + 32] = 0
                                mem[_1659 + 224] = _1985 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1659
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1615 = mem[64]
            mem[mem[64]] = 32
            _1617 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _1617:
                mem[t] = u + -_1615 - 64
                _1925 = mem[s]
                mem[u] = bool(mem[mem[s]])
                mem[u + 32] = mem[_1925 + 32]
                mem[u + 64] = mem[_1925 + 64]
                mem[u + 96] = mem[_1925 + 96]
                mem[u + 128] = mem[_1925 + 128]
                mem[u + 160] = mem[_1925 + 160]
                mem[u + 192] = mem[_1925 + 204 len 20]
                _1963 = mem[_1925 + 224]
                mem[u + 224] = 256
                _1981 = mem[_1963]
                mem[u + 256] = mem[_1963]
                v = 0
                while v < _1981:
                    mem[v + u + 288] = mem[v + _1963 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1981) > _1981:
                    mem[u + _1981 + 288] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_1981) + u + 288
                continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
