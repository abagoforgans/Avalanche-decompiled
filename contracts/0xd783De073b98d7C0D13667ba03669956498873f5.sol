contract main {




// =====================  Runtime code  =====================


#
#  - claimRewards()
#
address owner;
array of uint256 stor1;
address stor2;
array of struct stor3;
array of uint256 sub_61cf4863;
mapping of uint256 sub_f7cae643;
uint256 sub_297dc18c;
uint256 sub_74ee6d4f;
uint256 sub_aaf51b7e;
uint256 totalVolume;
uint256 totalSales;
uint256 sub_3fe1e117;
uint256 sub_6d0c689e;
uint8 stor13;

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

function totalListings() {
    return stor3.length
}

function isMarketOpen() {
    return bool(stor13)
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
    stor13 = 1
}

function closeMarket() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = 0
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

function addListing(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor13:
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
    stor3.length++
    stor3[stor3.length].field_0 = 1
    stor3[stor3.length].field_256 = stor3.length
    stor3[stor3.length].field_512 = arg1
    stor3[stor3.length].field_768 = arg2
    stor3[stor3.length].field_1024 = msg.sender
    if stor3[stor3.length].field_1280:
        if stor3[stor3.length].field_1280 == stor3[stor3.length].field_1281 < 32:
            revert with 'NH{q', 34
        stor3[stor3.length].field_1280 = 0
        idx = 0
        while stor3[stor3.length].field_1281 + 31 / 32 > idx:
            stor[idx + sha3((6 * stor3.length) + ('name', 'stor3', 3) + 5)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor3[stor3.length].field_1280 == stor3[stor3.length].field_1281 < 32:
            revert with 'NH{q', 34
        stor3[stor3.length].field_1280 = 0
        idx = 0
        while stor3[stor3.length].field_1281 + 31 / 32 > idx:
            stor[idx + sha3((6 * stor3.length) + ('name', 'stor3', 3) + 5)].field_0 = 0
            idx = idx + 1
            continue 
    sub_61cf4863.length++
    sub_61cf4863[sub_61cf4863.length] = stor3.length
    emit 0x819a5a95: 32, 1, stor3.length, arg1, arg2, msg.sender, 192, 0
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
    if arg1 >= stor3.length:
        revert with 0, 'Invalid Listing'
    if not stor3[arg1].field_0:
        revert with 0, 'Listing no longer active'
    if arg1 >= stor3.length:
        revert with 'NH{q', 50
    if stor3[arg1].field_1024 != msg.sender:
        revert with 0, 'Invalid Owner'
    if arg1 >= stor3.length:
        revert with 'NH{q', 50
    stor3[arg1].field_768 = arg2
    if stor3[arg1].field_1280:
        if stor3[arg1].field_1280 == stor3[arg1].field_1281 < 32:
            revert with 'NH{q', 34
        if not stor3[arg1].field_1280:
            emit 0xc10ac207: 32, bool(stor3[arg1].field_0), stor3[arg1].field_256, stor3[arg1].field_512, stor3[arg1].field_768, stor3[arg1].field_1024, 192, 2 * Mask(256, -1, stor3[arg1].field_1281), Mask(248, 8, stor3[arg1].field_1280)
        else:
            if stor3[arg1].field_1280 != 1:
                emit 0xc10ac207: mem[96 len -96]
            else:
                idx = 0
                s = 0
                while idx < stor3[arg1].field_1281:
                    mem[idx + 352] = stor[s + sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xc10ac207: 32, bool(stor3[arg1].field_0), stor3[arg1].field_256, stor3[arg1].field_512, stor3[arg1].field_768, stor3[arg1].field_1024, 192, 2 * Mask(256, -1, stor3[arg1].field_1281), mem[352 len ceil32(stor3[arg1].field_1281)]
    else:
        if stor3[arg1].field_1280 == stor3[arg1].field_1281 < 32:
            revert with 'NH{q', 34
        if not stor3[arg1].field_1280:
            emit 0xc10ac207: 32, bool(stor3[arg1].field_0), stor3[arg1].field_256, stor3[arg1].field_512, stor3[arg1].field_768, stor3[arg1].field_1024, 192, stor3[arg1].field_1280, Mask(248, 8, stor3[arg1].field_1280)
        else:
            if stor3[arg1].field_1280 != 1:
                emit 0xc10ac207: mem[96 len -96]
            else:
                idx = 0
                s = 0
                while idx < stor3[arg1].field_1281:
                    mem[idx + 352] = stor[s + sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xc10ac207: 32, bool(stor3[arg1].field_0), stor3[arg1].field_256, stor3[arg1].field_512, stor3[arg1].field_768, stor3[arg1].field_1024, 192, stor3[arg1].field_1280, mem[352 len ceil32(stor3[arg1].field_1281)]
}

function listings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor3.length
    if stor3[arg1].field_1280:
        if stor3[arg1].field_1280 == stor3[arg1].field_1281 < 32:
            revert with 'NH{q', 34
        if stor3[arg1].field_1280:
            if stor3[arg1].field_1280 == stor3[arg1].field_1281 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_1281:
                if 31 >= stor3[arg1].field_1281:
                    mem[128] = 256 * stor3[arg1].field_1288
                else:
                    mem[128] = stor[sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_0
                    idx = 128
                    s = 0
                    while stor3[arg1].field_1281 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor3[arg1].field_1280 == stor3[arg1].field_1281 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_1281:
                if 31 >= stor3[arg1].field_1281:
                    mem[128] = 256 * stor3[arg1].field_1288
                else:
                    mem[128] = stor[sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_0
                    idx = 128
                    s = 0
                    while stor3[arg1].field_1281 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return bool(stor3[arg1].field_0), 
               stor3[arg1].field_256,
               stor3[arg1].field_512,
               stor3[arg1].field_768,
               stor3[arg1].field_1024,
               Array(len=2 * Mask(256, -1, stor3[arg1].field_1281), data=mem[128 len ceil32(stor3[arg1].field_1281)])
    if stor3[arg1].field_1280 == stor3[arg1].field_1281 < 32:
        revert with 'NH{q', 34
    if stor3[arg1].field_1280:
        if stor3[arg1].field_1280 == stor3[arg1].field_1281 < 32:
            revert with 'NH{q', 34
        if stor3[arg1].field_1281:
            if 31 >= stor3[arg1].field_1281:
                mem[128] = 256 * stor3[arg1].field_1288
            else:
                mem[128] = stor[sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_0
                idx = 128
                s = 0
                while stor3[arg1].field_1281 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor3[arg1].field_1280 == stor3[arg1].field_1281 < 32:
            revert with 'NH{q', 34
        if stor3[arg1].field_1281:
            if 31 >= stor3[arg1].field_1281:
                mem[128] = 256 * stor3[arg1].field_1288
            else:
                mem[128] = stor[sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_0
                idx = 128
                s = 0
                while stor3[arg1].field_1281 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return bool(stor3[arg1].field_0), 
           stor3[arg1].field_256,
           stor3[arg1].field_512,
           stor3[arg1].field_768,
           stor3[arg1].field_1024,
           Array(len=stor3[arg1].field_1280, data=mem[128 len ceil32(stor3[arg1].field_1281)])
}

function cancelListing(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor3.length:
        revert with 0, 'Invalid Listing'
    mem[0] = 3
    mem[96] = bool(stor3[arg1].field_0)
    mem[128] = stor3[arg1].field_256
    mem[160] = stor3[arg1].field_512
    mem[192] = stor3[arg1].field_768
    mem[224] = stor3[arg1].field_1024
    if stor3[arg1].field_1280:
        if stor3[arg1].field_1280 == stor3[arg1].field_1281 < 32:
            revert with 'NH{q', 34
        mem[64] = ceil32(stor3[arg1].field_1281) + 320
        mem[288] = stor3[arg1].field_1281
        if stor3[arg1].field_1280:
            if stor3[arg1].field_1280 == stor3[arg1].field_1281 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_1281:
                if 31 >= stor3[arg1].field_1281:
                    mem[320] = 256 * stor3[arg1].field_1288
                else:
                    mem[0] = (6 * arg1) + sha3(3) + 5
                    mem[320] = stor[sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_0
                    idx = 320
                    s = 0
                    while stor3[arg1].field_1281 + 288 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor3[arg1].field_1280 == stor3[arg1].field_1281 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_1281:
                if 31 >= stor3[arg1].field_1281:
                    mem[320] = 256 * stor3[arg1].field_1288
                else:
                    mem[0] = (6 * arg1) + sha3(3) + 5
                    mem[320] = stor[sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_0
                    idx = 320
                    s = 0
                    while stor3[arg1].field_1281 + 288 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[256] = 288
        if not stor3[arg1].field_0:
            revert with 0, 'Listing no longer active'
        if stor3[arg1].field_1024 != msg.sender:
            revert with 0, 'Invalid Owner'
        idx = 0
        while idx < sub_61cf4863.length:
            mem[0] = 4
            if sub_61cf4863[idx] != arg1:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if sub_61cf4863.length < 1:
                revert with 'NH{q', 17
            if sub_61cf4863.length - 1 >= sub_61cf4863.length:
                revert with 'NH{q', 50
            if idx >= sub_61cf4863.length:
                revert with 'NH{q', 50
            sub_61cf4863[idx] = sub_61cf4863[sub_61cf4863.length]
            if not sub_61cf4863.length:
                revert with 'NH{q', 49
            sub_61cf4863[sub_61cf4863.length] = 0
            sub_61cf4863.length--
            if arg1 >= stor3.length:
                revert with 'NH{q', 50
            stor3[arg1].field_0 = 0
            mem[ceil32(stor3[arg1].field_1281) + 320] = 32
            idx = 0
            while idx < stor3[arg1].field_1281:
                mem[ceil32(stor3[arg1].field_1281) + idx + 576] = mem[idx + 320]
                idx = idx + 32
                continue 
            if ceil32(stor3[arg1].field_1281) > stor3[arg1].field_1281:
                mem[ceil32(stor3[arg1].field_1281) + stor3[arg1].field_1281 + 576] = 0
            emit 0xcd14b4e4: 32, bool(stor3[arg1].field_0), stor3[arg1].field_256, stor3[arg1].field_512, stor3[arg1].field_768, stor3[arg1].field_1024, 192, 2 * Mask(256, -1, stor3[arg1].field_1281), mem[ceil32(stor3[arg1].field_1281) + 576 len ceil32(stor3[arg1].field_1281)]
            require ext_code.size(address(stor1.length))
            call address(stor1.length).0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), stor3[arg1].field_1024, stor3[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if arg1 >= stor3.length:
            revert with 'NH{q', 50
        stor3[arg1].field_0 = 0
        emit 0xcd14b4e4: 32, bool(stor3[arg1].field_0), stor3[arg1].field_256, stor3[arg1].field_512, stor3[arg1].field_768, stor3[arg1].field_1024, 192, 2 * Mask(256, -1, stor3[arg1].field_1281), mem[320 len ceil32(stor3[arg1].field_1281)]
    else:
        if stor3[arg1].field_1280 == stor3[arg1].field_1281 < 32:
            revert with 'NH{q', 34
        mem[64] = ceil32(stor3[arg1].field_1281) + 320
        mem[288] = stor3[arg1].field_1281
        if stor3[arg1].field_1280:
            if stor3[arg1].field_1280 == stor3[arg1].field_1281 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_1281:
                if 31 >= stor3[arg1].field_1281:
                    mem[320] = 256 * stor3[arg1].field_1288
                else:
                    mem[0] = (6 * arg1) + sha3(3) + 5
                    mem[320] = stor[sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_0
                    idx = 320
                    s = 0
                    while stor3[arg1].field_1281 + 288 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor3[arg1].field_1280 == stor3[arg1].field_1281 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_1281:
                if 31 >= stor3[arg1].field_1281:
                    mem[320] = 256 * stor3[arg1].field_1288
                else:
                    mem[0] = (6 * arg1) + sha3(3) + 5
                    mem[320] = stor[sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_0
                    idx = 320
                    s = 0
                    while stor3[arg1].field_1281 + 288 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[256] = 288
        if not stor3[arg1].field_0:
            revert with 0, 'Listing no longer active'
        if stor3[arg1].field_1024 != msg.sender:
            revert with 0, 'Invalid Owner'
        idx = 0
        while idx < sub_61cf4863.length:
            mem[0] = 4
            if sub_61cf4863[idx] != arg1:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if sub_61cf4863.length < 1:
                revert with 'NH{q', 17
            if sub_61cf4863.length - 1 >= sub_61cf4863.length:
                revert with 'NH{q', 50
            if idx >= sub_61cf4863.length:
                revert with 'NH{q', 50
            sub_61cf4863[idx] = sub_61cf4863[sub_61cf4863.length]
            if not sub_61cf4863.length:
                revert with 'NH{q', 49
            sub_61cf4863[sub_61cf4863.length] = 0
            sub_61cf4863.length--
            if arg1 >= stor3.length:
                revert with 'NH{q', 50
            stor3[arg1].field_0 = 0
            mem[ceil32(stor3[arg1].field_1281) + 320] = 32
            idx = 0
            while idx < stor3[arg1].field_1281:
                mem[ceil32(stor3[arg1].field_1281) + idx + 576] = mem[idx + 320]
                idx = idx + 32
                continue 
            if ceil32(stor3[arg1].field_1281) > stor3[arg1].field_1281:
                mem[ceil32(stor3[arg1].field_1281) + stor3[arg1].field_1281 + 576] = 0
            emit 0xcd14b4e4: 32, bool(stor3[arg1].field_0), stor3[arg1].field_256, stor3[arg1].field_512, stor3[arg1].field_768, stor3[arg1].field_1024, 192, stor3[arg1].field_1280, mem[ceil32(stor3[arg1].field_1281) + 576 len ceil32(stor3[arg1].field_1281)]
            require ext_code.size(address(stor1.length))
            call address(stor1.length).0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), stor3[arg1].field_1024, stor3[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if arg1 >= stor3.length:
            revert with 'NH{q', 50
        stor3[arg1].field_0 = 0
        emit 0xcd14b4e4: 32, bool(stor3[arg1].field_0), stor3[arg1].field_256, stor3[arg1].field_512, stor3[arg1].field_768, stor3[arg1].field_1024, 192, stor3[arg1].field_1280, mem[320 len ceil32(stor3[arg1].field_1281)]
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), stor3[arg1].field_1024, stor3[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3912fc85(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor3.length:
        revert with 0, 'Invalid Listing'
    mem[96] = bool(stor3[arg1].field_0)
    mem[128] = stor3[arg1].field_256
    mem[160] = stor3[arg1].field_512
    mem[192] = stor3[arg1].field_768
    mem[224] = stor3[arg1].field_1024
    if stor3[arg1].field_1280:
        if stor3[arg1].field_1280 == stor3[arg1].field_1281 < 32:
            revert with 'NH{q', 34
        mem[288] = stor3[arg1].field_1281
        if stor3[arg1].field_1280:
            if stor3[arg1].field_1280 == stor3[arg1].field_1281 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_1281:
                if 31 >= stor3[arg1].field_1281:
                    mem[320] = 256 * stor3[arg1].field_1288
                else:
                    mem[320] = stor[sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_0
                    idx = 320
                    s = 0
                    while stor3[arg1].field_1281 + 288 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor3[arg1].field_1280 == stor3[arg1].field_1281 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_1281:
                if 31 >= stor3[arg1].field_1281:
                    mem[320] = 256 * stor3[arg1].field_1288
                else:
                    mem[320] = stor[sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_0
                    idx = 320
                    s = 0
                    while stor3[arg1].field_1281 + 288 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[256] = 288
        if not stor3[arg1].field_0:
            revert with 0, 'Listing no longer active'
        if msg.value < stor3[arg1].field_768:
            revert with 0, 'Value Insufficient'
        if msg.sender == stor3[arg1].field_1024:
            revert with 0, 'Owner cannot buy own listing'
        mem[ceil32(stor3[arg1].field_1281) + 356] = stor3[arg1].field_768
        require ext_code.size(stor2)
        staticcall stor2.royaltyInfo(uint256 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args stor3[arg1].field_512, stor3[arg1].field_768
        mem[ceil32(stor3[arg1].field_1281) + 320 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(stor3[arg1].field_1281) + ceil32(return_data.size) + 320
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[32]
        if stor3[arg1].field_768 and sub_74ee6d4f > -1 / stor3[arg1].field_768:
            revert with 'NH{q', 17
        if stor3[arg1].field_768 and sub_aaf51b7e > -1 / stor3[arg1].field_768:
            revert with 'NH{q', 17
        if stor3[arg1].field_768 < ext_call.return_data[32]:
            revert with 'NH{q', 17
        if stor3[arg1].field_768 - ext_call.return_data[32] < stor3[arg1].field_768 * sub_74ee6d4f / 100:
            revert with 'NH{q', 17
        if stor3[arg1].field_768 - ext_call.return_data[32] - (stor3[arg1].field_768 * sub_74ee6d4f / 100) < stor3[arg1].field_768 * sub_aaf51b7e / 100:
            revert with 'NH{q', 17
        if arg1 >= stor3.length:
            revert with 'NH{q', 50
        mem[0] = 3
        stor3[arg1].field_0 = 0
        idx = 0
        while idx < sub_61cf4863.length:
            mem[0] = 4
            if sub_61cf4863[idx] != arg1:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if sub_61cf4863.length < 1:
                revert with 'NH{q', 17
            if sub_61cf4863.length - 1 >= sub_61cf4863.length:
                revert with 'NH{q', 50
            if idx >= sub_61cf4863.length:
                revert with 'NH{q', 50
            sub_61cf4863[idx] = sub_61cf4863[sub_61cf4863.length]
            if not sub_61cf4863.length:
                revert with 'NH{q', 49
            sub_61cf4863[sub_61cf4863.length] = 0
            sub_61cf4863.length--
            if totalVolume > -stor3[arg1].field_768 - 1:
                revert with 'NH{q', 17
            totalVolume += stor3[arg1].field_768
            if totalSales > -2:
                revert with 'NH{q', 17
            totalSales++
            if stor3[arg1].field_768 > sub_3fe1e117:
                sub_3fe1e117 = stor3[arg1].field_768
            if sub_6d0c689e > -(stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000) - 1:
                revert with 'NH{q', 17
            sub_6d0c689e += stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000
            if stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000 and 10000 > -1 / stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000:
                revert with 'NH{q', 17
            if sub_297dc18c > (-10000 * stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000) - 1:
                revert with 'NH{q', 17
            sub_297dc18c += 10000 * stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000
            mem[ceil32(stor3[arg1].field_1281) + ceil32(return_data.size) + 320] = 32
            idx = 0
            while idx < stor3[arg1].field_1281:
                mem[ceil32(stor3[arg1].field_1281) + ceil32(return_data.size) + idx + 576] = mem[idx + 320]
                idx = idx + 32
                continue 
            if ceil32(stor3[arg1].field_1281) > stor3[arg1].field_1281:
                mem[ceil32(stor3[arg1].field_1281) + ceil32(return_data.size) + stor3[arg1].field_1281 + 576] = 0
            emit 0x58f4f6f7: 32, bool(stor3[arg1].field_0), stor3[arg1].field_256, stor3[arg1].field_512, stor3[arg1].field_768, stor3[arg1].field_1024, 192, 2 * Mask(256, -1, stor3[arg1].field_1281), mem[ceil32(stor3[arg1].field_1281) + ceil32(return_data.size) + 576 len ceil32(stor3[arg1].field_1281)]
            call stor3[arg1].field_1024 with:
               value stor3[arg1].field_768 - ext_call.return_data[32] - (stor3[arg1].field_768 * sub_74ee6d4f / 100) - (stor3[arg1].field_768 * sub_aaf51b7e / 100) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(ext_call.return_data[0]) with:
               value ext_call.return_data[32] wei
                 gas 2300 * is_zero(value) wei
            require ext_code.size(address(stor1.length))
            call address(stor1.length).0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, stor3[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if totalVolume > -stor3[arg1].field_768 - 1:
            revert with 'NH{q', 17
        totalVolume += stor3[arg1].field_768
        if totalSales > -2:
            revert with 'NH{q', 17
        totalSales++
        if stor3[arg1].field_768 > sub_3fe1e117:
            sub_3fe1e117 = stor3[arg1].field_768
        if sub_6d0c689e > -(stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000) - 1:
            revert with 'NH{q', 17
        sub_6d0c689e += stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000
        if stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000 and 10000 > -1 / stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000:
            revert with 'NH{q', 17
        if sub_297dc18c > (-10000 * stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000) - 1:
            revert with 'NH{q', 17
        sub_297dc18c += 10000 * stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000
        mem[ceil32(stor3[arg1].field_1281) + ceil32(return_data.size) + 320] = 32
        emit 0x58f4f6f7: 32, bool(stor3[arg1].field_0), stor3[arg1].field_256, stor3[arg1].field_512, stor3[arg1].field_768, stor3[arg1].field_1024, 192, 2 * Mask(256, -1, stor3[arg1].field_1281), mem[320 len ceil32(stor3[arg1].field_1281)]
    else:
        if stor3[arg1].field_1280 == stor3[arg1].field_1281 < 32:
            revert with 'NH{q', 34
        mem[288] = stor3[arg1].field_1281
        if stor3[arg1].field_1280:
            if stor3[arg1].field_1280 == stor3[arg1].field_1281 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_1281:
                if 31 >= stor3[arg1].field_1281:
                    mem[320] = 256 * stor3[arg1].field_1288
                else:
                    mem[320] = stor[sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_0
                    idx = 320
                    s = 0
                    while stor3[arg1].field_1281 + 288 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor3[arg1].field_1280 == stor3[arg1].field_1281 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_1281:
                if 31 >= stor3[arg1].field_1281:
                    mem[320] = 256 * stor3[arg1].field_1288
                else:
                    mem[320] = stor[sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_0
                    idx = 320
                    s = 0
                    while stor3[arg1].field_1281 + 288 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor3', 3) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[256] = 288
        if not stor3[arg1].field_0:
            revert with 0, 'Listing no longer active'
        if msg.value < stor3[arg1].field_768:
            revert with 0, 'Value Insufficient'
        if msg.sender == stor3[arg1].field_1024:
            revert with 0, 'Owner cannot buy own listing'
        mem[ceil32(stor3[arg1].field_1281) + 356] = stor3[arg1].field_768
        require ext_code.size(stor2)
        staticcall stor2.royaltyInfo(uint256 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args stor3[arg1].field_512, stor3[arg1].field_768
        mem[ceil32(stor3[arg1].field_1281) + 320 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(stor3[arg1].field_1281) + ceil32(return_data.size) + 320
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[32]
        if stor3[arg1].field_768 and sub_74ee6d4f > -1 / stor3[arg1].field_768:
            revert with 'NH{q', 17
        if stor3[arg1].field_768 and sub_aaf51b7e > -1 / stor3[arg1].field_768:
            revert with 'NH{q', 17
        if stor3[arg1].field_768 < ext_call.return_data[32]:
            revert with 'NH{q', 17
        if stor3[arg1].field_768 - ext_call.return_data[32] < stor3[arg1].field_768 * sub_74ee6d4f / 100:
            revert with 'NH{q', 17
        if stor3[arg1].field_768 - ext_call.return_data[32] - (stor3[arg1].field_768 * sub_74ee6d4f / 100) < stor3[arg1].field_768 * sub_aaf51b7e / 100:
            revert with 'NH{q', 17
        if arg1 >= stor3.length:
            revert with 'NH{q', 50
        mem[0] = 3
        stor3[arg1].field_0 = 0
        idx = 0
        while idx < sub_61cf4863.length:
            mem[0] = 4
            if sub_61cf4863[idx] != arg1:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if sub_61cf4863.length < 1:
                revert with 'NH{q', 17
            if sub_61cf4863.length - 1 >= sub_61cf4863.length:
                revert with 'NH{q', 50
            if idx >= sub_61cf4863.length:
                revert with 'NH{q', 50
            sub_61cf4863[idx] = sub_61cf4863[sub_61cf4863.length]
            if not sub_61cf4863.length:
                revert with 'NH{q', 49
            sub_61cf4863[sub_61cf4863.length] = 0
            sub_61cf4863.length--
            if totalVolume > -stor3[arg1].field_768 - 1:
                revert with 'NH{q', 17
            totalVolume += stor3[arg1].field_768
            if totalSales > -2:
                revert with 'NH{q', 17
            totalSales++
            if stor3[arg1].field_768 > sub_3fe1e117:
                sub_3fe1e117 = stor3[arg1].field_768
            if sub_6d0c689e > -(stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000) - 1:
                revert with 'NH{q', 17
            sub_6d0c689e += stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000
            if stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000 and 10000 > -1 / stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000:
                revert with 'NH{q', 17
            if sub_297dc18c > (-10000 * stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000) - 1:
                revert with 'NH{q', 17
            sub_297dc18c += 10000 * stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000
            mem[ceil32(stor3[arg1].field_1281) + ceil32(return_data.size) + 320] = 32
            idx = 0
            while idx < stor3[arg1].field_1281:
                mem[ceil32(stor3[arg1].field_1281) + ceil32(return_data.size) + idx + 576] = mem[idx + 320]
                idx = idx + 32
                continue 
            if ceil32(stor3[arg1].field_1281) > stor3[arg1].field_1281:
                mem[ceil32(stor3[arg1].field_1281) + ceil32(return_data.size) + stor3[arg1].field_1281 + 576] = 0
            emit 0x58f4f6f7: 32, bool(stor3[arg1].field_0), stor3[arg1].field_256, stor3[arg1].field_512, stor3[arg1].field_768, stor3[arg1].field_1024, 192, stor3[arg1].field_1280, mem[ceil32(stor3[arg1].field_1281) + ceil32(return_data.size) + 576 len ceil32(stor3[arg1].field_1281)]
            call stor3[arg1].field_1024 with:
               value stor3[arg1].field_768 - ext_call.return_data[32] - (stor3[arg1].field_768 * sub_74ee6d4f / 100) - (stor3[arg1].field_768 * sub_aaf51b7e / 100) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(ext_call.return_data[0]) with:
               value ext_call.return_data[32] wei
                 gas 2300 * is_zero(value) wei
            require ext_code.size(address(stor1.length))
            call address(stor1.length).0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, stor3[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if totalVolume > -stor3[arg1].field_768 - 1:
            revert with 'NH{q', 17
        totalVolume += stor3[arg1].field_768
        if totalSales > -2:
            revert with 'NH{q', 17
        totalSales++
        if stor3[arg1].field_768 > sub_3fe1e117:
            sub_3fe1e117 = stor3[arg1].field_768
        if sub_6d0c689e > -(stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000) - 1:
            revert with 'NH{q', 17
        sub_6d0c689e += stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000
        if stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000 and 10000 > -1 / stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000:
            revert with 'NH{q', 17
        if sub_297dc18c > (-10000 * stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000) - 1:
            revert with 'NH{q', 17
        sub_297dc18c += 10000 * stor3[arg1].field_768 * sub_74ee6d4f / 100 / 10000
        mem[ceil32(stor3[arg1].field_1281) + ceil32(return_data.size) + 320] = 32
        emit 0x58f4f6f7: 32, bool(stor3[arg1].field_0), stor3[arg1].field_256, stor3[arg1].field_512, stor3[arg1].field_768, stor3[arg1].field_1024, 192, stor3[arg1].field_1280, mem[320 len ceil32(stor3[arg1].field_1281)]
    call stor3[arg1].field_1024 with:
       value stor3[arg1].field_768 - ext_call.return_data[32] - (stor3[arg1].field_768 * sub_74ee6d4f / 100) - (stor3[arg1].field_768 * sub_aaf51b7e / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(ext_call.return_data[0]) with:
       value ext_call.return_data[32] wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, stor3[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_137aad0b(?) {
    idx = 0
    s = 0
    while idx < sub_61cf4863.length:
        if sub_61cf4863[idx] >= stor3.length:
            revert with 'NH{q', 50
        mem[0] = 3
        if stor3[stor4[idx]].field_1024 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        t = s
        while idx < sub_61cf4863.length:
            if sub_61cf4863[idx] >= stor3.length:
                revert with 'NH{q', 50
            mem[0] = 3
            _471 = mem[64]
            mem[64] = mem[64] + 192
            mem[_471] = bool(stor3[stor4[idx]].field_0)
            mem[_471 + 32] = stor3[stor4[idx]].field_256
            mem[_471 + 64] = stor3[stor4[idx]].field_512
            mem[_471 + 96] = stor3[stor4[idx]].field_768
            mem[_471 + 128] = stor3[stor4[idx]].field_1024
            if stor3[stor4[idx]].field_1280:
                if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                    revert with 'NH{q', 34
                _473 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[stor4[idx]].field_1281) + 32
                mem[_473] = stor3[stor4[idx]].field_1281
                if stor3[stor4[idx]].field_1280:
                    if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    if not stor3[stor4[idx]].field_1281:
                        mem[_471 + 160] = _473
                        if stor3[stor4[idx]].field_1024 != msg.sender:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            t = t
                            continue 
                        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xc87b56dd with:
                                gas gas_remaining wei
                               args stor3[stor4[idx]].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _553 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _573 = mem[_553]
                        require mem[_553] <= test266151307()
                        require _553 + mem[_553] + 31 < _553 + return_data.size
                        _601 = mem[_553 + mem[_553]]
                        if mem[_553 + mem[_553]] > test266151307():
                            revert with 'NH{q', 65
                        if _553 + ceil32(return_data.size) + ceil32(ceil32(mem[_553 + mem[_553]])) + 1 > test266151307() or ceil32(ceil32(mem[_553 + mem[_553]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _553 + ceil32(return_data.size) + ceil32(ceil32(mem[_553 + mem[_553]])) + 1
                        mem[_553 + ceil32(return_data.size)] = _601
                        require _573 + _601 + 32 <= return_data.size
                        u = 0
                        while u < _601:
                            mem[_553 + ceil32(return_data.size) + u + 32] = mem[_553 + _573 + u + 32]
                            u = u + 32
                            continue 
                        if ceil32(_601) > _601:
                            mem[_553 + ceil32(return_data.size) + _601 + 32] = 0
                        mem[_471 + 160] = _553 + ceil32(return_data.size)
                    else:
                        if 31 >= stor3[stor4[idx]].field_1281:
                            mem[_473 + 32] = 256 * stor3[stor4[idx]].field_1288
                            mem[_471 + 160] = _473
                            if stor3[stor4[idx]].field_1024 != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                t = t
                                continue 
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor4[idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _575 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _594 = mem[_575]
                            require mem[_575] <= test266151307()
                            require _575 + mem[_575] + 31 < _575 + return_data.size
                            _619 = mem[_575 + mem[_575]]
                            if mem[_575 + mem[_575]] > test266151307():
                                revert with 'NH{q', 65
                            if _575 + ceil32(return_data.size) + ceil32(ceil32(mem[_575 + mem[_575]])) + 1 > test266151307() or ceil32(ceil32(mem[_575 + mem[_575]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _575 + ceil32(return_data.size) + ceil32(ceil32(mem[_575 + mem[_575]])) + 1
                            mem[_575 + ceil32(return_data.size)] = _619
                            require _594 + _619 + 32 <= return_data.size
                            u = 0
                            while u < _619:
                                mem[_575 + ceil32(return_data.size) + u + 32] = mem[_575 + _594 + u + 32]
                                u = u + 32
                                continue 
                            if ceil32(_619) > _619:
                                mem[_575 + ceil32(return_data.size) + _619 + 32] = 0
                            mem[_471 + 160] = _575 + ceil32(return_data.size)
                        else:
                            mem[0] = (6 * sub_61cf4863[idx]) + sha3(3) + 5
                            mem[_473 + 32] = stor[sha3((6 * stor4[idx]) + ('name', 'stor3', 3) + 5)].field_0
                            u = _473 + 32
                            v = sha3(mem[0])
                            while _473 + stor3[stor4[idx]].field_1281 > u:
                                mem[u + 32] = uint256(stor1[v])
                                u = u + 32
                                v = v + 1
                                continue 
                            mem[_471 + 160] = _473
                            if mem[_471 + 140 len 20] != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                t = t
                                continue 
                            _790 = mem[_471 + 64]
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _790
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _790
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _809 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _816 = mem[_809]
                            require mem[_809] <= test266151307()
                            require _809 + mem[_809] + 31 < _809 + return_data.size
                            _836 = mem[_809 + mem[_809]]
                            if mem[_809 + mem[_809]] > test266151307():
                                revert with 'NH{q', 65
                            if _809 + ceil32(return_data.size) + ceil32(ceil32(mem[_809 + mem[_809]])) + 1 > test266151307() or ceil32(ceil32(mem[_809 + mem[_809]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _809 + ceil32(return_data.size) + ceil32(ceil32(mem[_809 + mem[_809]])) + 1
                            mem[_809 + ceil32(return_data.size)] = _836
                            require _816 + _836 + 32 <= return_data.size
                            u = 0
                            while u < _836:
                                mem[_809 + ceil32(return_data.size) + u + 32] = mem[_809 + _816 + u + 32]
                                u = u + 32
                                continue 
                            if ceil32(_836) > _836:
                                mem[_809 + ceil32(return_data.size) + _836 + 32] = 0
                            mem[_471 + 160] = _809 + ceil32(return_data.size)
                else:
                    if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    if not stor3[stor4[idx]].field_1281:
                        mem[_471 + 160] = _473
                        if stor3[stor4[idx]].field_1024 != msg.sender:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            t = t
                            continue 
                        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xc87b56dd with:
                                gas gas_remaining wei
                               args stor3[stor4[idx]].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _563 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _584 = mem[_563]
                        require mem[_563] <= test266151307()
                        require _563 + mem[_563] + 31 < _563 + return_data.size
                        _610 = mem[_563 + mem[_563]]
                        if mem[_563 + mem[_563]] > test266151307():
                            revert with 'NH{q', 65
                        if _563 + ceil32(return_data.size) + ceil32(ceil32(mem[_563 + mem[_563]])) + 1 > test266151307() or ceil32(ceil32(mem[_563 + mem[_563]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _563 + ceil32(return_data.size) + ceil32(ceil32(mem[_563 + mem[_563]])) + 1
                        mem[_563 + ceil32(return_data.size)] = _610
                        require _584 + _610 + 32 <= return_data.size
                        u = 0
                        while u < _610:
                            mem[_563 + ceil32(return_data.size) + u + 32] = mem[_563 + _584 + u + 32]
                            u = u + 32
                            continue 
                        if ceil32(_610) > _610:
                            mem[_563 + ceil32(return_data.size) + _610 + 32] = 0
                        mem[_471 + 160] = _563 + ceil32(return_data.size)
                    else:
                        if 31 >= stor3[stor4[idx]].field_1281:
                            mem[_473 + 32] = 256 * stor3[stor4[idx]].field_1288
                            mem[_471 + 160] = _473
                            if stor3[stor4[idx]].field_1024 != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                t = t
                                continue 
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor4[idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _586 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _603 = mem[_586]
                            require mem[_586] <= test266151307()
                            require _586 + mem[_586] + 31 < _586 + return_data.size
                            _628 = mem[_586 + mem[_586]]
                            if mem[_586 + mem[_586]] > test266151307():
                                revert with 'NH{q', 65
                            if _586 + ceil32(return_data.size) + ceil32(ceil32(mem[_586 + mem[_586]])) + 1 > test266151307() or ceil32(ceil32(mem[_586 + mem[_586]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _586 + ceil32(return_data.size) + ceil32(ceil32(mem[_586 + mem[_586]])) + 1
                            mem[_586 + ceil32(return_data.size)] = _628
                            require _603 + _628 + 32 <= return_data.size
                            u = 0
                            while u < _628:
                                mem[_586 + ceil32(return_data.size) + u + 32] = mem[_586 + _603 + u + 32]
                                u = u + 32
                                continue 
                            if ceil32(_628) > _628:
                                mem[_586 + ceil32(return_data.size) + _628 + 32] = 0
                            mem[_471 + 160] = _586 + ceil32(return_data.size)
                        else:
                            mem[0] = (6 * sub_61cf4863[idx]) + sha3(3) + 5
                            mem[_473 + 32] = stor[sha3((6 * stor4[idx]) + ('name', 'stor3', 3) + 5)].field_0
                            u = _473 + 32
                            v = sha3(mem[0])
                            while _473 + stor3[stor4[idx]].field_1281 > u:
                                mem[u + 32] = uint256(stor1[v])
                                u = u + 32
                                v = v + 1
                                continue 
                            mem[_471 + 160] = _473
                            if mem[_471 + 140 len 20] != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                t = t
                                continue 
                            _792 = mem[_471 + 64]
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _792
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _792
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _810 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _819 = mem[_810]
                            require mem[_810] <= test266151307()
                            require _810 + mem[_810] + 31 < _810 + return_data.size
                            _837 = mem[_810 + mem[_810]]
                            if mem[_810 + mem[_810]] > test266151307():
                                revert with 'NH{q', 65
                            if _810 + ceil32(return_data.size) + ceil32(ceil32(mem[_810 + mem[_810]])) + 1 > test266151307() or ceil32(ceil32(mem[_810 + mem[_810]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _810 + ceil32(return_data.size) + ceil32(ceil32(mem[_810 + mem[_810]])) + 1
                            mem[_810 + ceil32(return_data.size)] = _837
                            require _819 + _837 + 32 <= return_data.size
                            u = 0
                            while u < _837:
                                mem[_810 + ceil32(return_data.size) + u + 32] = mem[_810 + _819 + u + 32]
                                u = u + 32
                                continue 
                            if ceil32(_837) > _837:
                                mem[_810 + ceil32(return_data.size) + _837 + 32] = 0
                            mem[_471 + 160] = _810 + ceil32(return_data.size)
            else:
                if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                    revert with 'NH{q', 34
                _476 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[stor4[idx]].field_1281) + 32
                mem[_476] = stor3[stor4[idx]].field_1281
                if stor3[stor4[idx]].field_1280:
                    if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    if not stor3[stor4[idx]].field_1281:
                        mem[_471 + 160] = _476
                        if stor3[stor4[idx]].field_1024 != msg.sender:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            t = t
                            continue 
                        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xc87b56dd with:
                                gas gas_remaining wei
                               args stor3[stor4[idx]].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _565 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _587 = mem[_565]
                        require mem[_565] <= test266151307()
                        require _565 + mem[_565] + 31 < _565 + return_data.size
                        _611 = mem[_565 + mem[_565]]
                        if mem[_565 + mem[_565]] > test266151307():
                            revert with 'NH{q', 65
                        if _565 + ceil32(return_data.size) + ceil32(ceil32(mem[_565 + mem[_565]])) + 1 > test266151307() or ceil32(ceil32(mem[_565 + mem[_565]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _565 + ceil32(return_data.size) + ceil32(ceil32(mem[_565 + mem[_565]])) + 1
                        mem[_565 + ceil32(return_data.size)] = _611
                        require _587 + _611 + 32 <= return_data.size
                        u = 0
                        while u < _611:
                            mem[_565 + ceil32(return_data.size) + u + 32] = mem[_565 + _587 + u + 32]
                            u = u + 32
                            continue 
                        if ceil32(_611) > _611:
                            mem[_565 + ceil32(return_data.size) + _611 + 32] = 0
                        mem[_471 + 160] = _565 + ceil32(return_data.size)
                    else:
                        if 31 >= stor3[stor4[idx]].field_1281:
                            mem[_476 + 32] = 256 * stor3[stor4[idx]].field_1288
                            mem[_471 + 160] = _476
                            if stor3[stor4[idx]].field_1024 != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                t = t
                                continue 
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor4[idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _589 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _605 = mem[_589]
                            require mem[_589] <= test266151307()
                            require _589 + mem[_589] + 31 < _589 + return_data.size
                            _629 = mem[_589 + mem[_589]]
                            if mem[_589 + mem[_589]] > test266151307():
                                revert with 'NH{q', 65
                            if _589 + ceil32(return_data.size) + ceil32(ceil32(mem[_589 + mem[_589]])) + 1 > test266151307() or ceil32(ceil32(mem[_589 + mem[_589]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _589 + ceil32(return_data.size) + ceil32(ceil32(mem[_589 + mem[_589]])) + 1
                            mem[_589 + ceil32(return_data.size)] = _629
                            require _605 + _629 + 32 <= return_data.size
                            u = 0
                            while u < _629:
                                mem[_589 + ceil32(return_data.size) + u + 32] = mem[_589 + _605 + u + 32]
                                u = u + 32
                                continue 
                            if ceil32(_629) > _629:
                                mem[_589 + ceil32(return_data.size) + _629 + 32] = 0
                            mem[_471 + 160] = _589 + ceil32(return_data.size)
                        else:
                            mem[0] = (6 * sub_61cf4863[idx]) + sha3(3) + 5
                            mem[_476 + 32] = stor[sha3((6 * stor4[idx]) + ('name', 'stor3', 3) + 5)].field_0
                            u = _476 + 32
                            v = sha3(mem[0])
                            while _476 + stor3[stor4[idx]].field_1281 > u:
                                mem[u + 32] = uint256(stor1[v])
                                u = u + 32
                                v = v + 1
                                continue 
                            mem[_471 + 160] = _476
                            if mem[_471 + 140 len 20] != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                t = t
                                continue 
                            _794 = mem[_471 + 64]
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _794
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _794
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _811 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _822 = mem[_811]
                            require mem[_811] <= test266151307()
                            require _811 + mem[_811] + 31 < _811 + return_data.size
                            _838 = mem[_811 + mem[_811]]
                            if mem[_811 + mem[_811]] > test266151307():
                                revert with 'NH{q', 65
                            if _811 + ceil32(return_data.size) + ceil32(ceil32(mem[_811 + mem[_811]])) + 1 > test266151307() or ceil32(ceil32(mem[_811 + mem[_811]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _811 + ceil32(return_data.size) + ceil32(ceil32(mem[_811 + mem[_811]])) + 1
                            mem[_811 + ceil32(return_data.size)] = _838
                            require _822 + _838 + 32 <= return_data.size
                            u = 0
                            while u < _838:
                                mem[_811 + ceil32(return_data.size) + u + 32] = mem[_811 + _822 + u + 32]
                                u = u + 32
                                continue 
                            if ceil32(_838) > _838:
                                mem[_811 + ceil32(return_data.size) + _838 + 32] = 0
                            mem[_471 + 160] = _811 + ceil32(return_data.size)
                else:
                    if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    if not stor3[stor4[idx]].field_1281:
                        mem[_471 + 160] = _476
                        if stor3[stor4[idx]].field_1024 != msg.sender:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            t = t
                            continue 
                        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xc87b56dd with:
                                gas gas_remaining wei
                               args stor3[stor4[idx]].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _576 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _595 = mem[_576]
                        require mem[_576] <= test266151307()
                        require _576 + mem[_576] + 31 < _576 + return_data.size
                        _622 = mem[_576 + mem[_576]]
                        if mem[_576 + mem[_576]] > test266151307():
                            revert with 'NH{q', 65
                        if _576 + ceil32(return_data.size) + ceil32(ceil32(mem[_576 + mem[_576]])) + 1 > test266151307() or ceil32(ceil32(mem[_576 + mem[_576]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _576 + ceil32(return_data.size) + ceil32(ceil32(mem[_576 + mem[_576]])) + 1
                        mem[_576 + ceil32(return_data.size)] = _622
                        require _595 + _622 + 32 <= return_data.size
                        u = 0
                        while u < _622:
                            mem[_576 + ceil32(return_data.size) + u + 32] = mem[_576 + _595 + u + 32]
                            u = u + 32
                            continue 
                        if ceil32(_622) > _622:
                            mem[_576 + ceil32(return_data.size) + _622 + 32] = 0
                        mem[_471 + 160] = _576 + ceil32(return_data.size)
                    else:
                        if 31 >= stor3[stor4[idx]].field_1281:
                            mem[_476 + 32] = 256 * stor3[stor4[idx]].field_1288
                            mem[_471 + 160] = _476
                            if stor3[stor4[idx]].field_1024 != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                t = t
                                continue 
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor4[idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _597 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _613 = mem[_597]
                            require mem[_597] <= test266151307()
                            require _597 + mem[_597] + 31 < _597 + return_data.size
                            _639 = mem[_597 + mem[_597]]
                            if mem[_597 + mem[_597]] > test266151307():
                                revert with 'NH{q', 65
                            if _597 + ceil32(return_data.size) + ceil32(ceil32(mem[_597 + mem[_597]])) + 1 > test266151307() or ceil32(ceil32(mem[_597 + mem[_597]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _597 + ceil32(return_data.size) + ceil32(ceil32(mem[_597 + mem[_597]])) + 1
                            mem[_597 + ceil32(return_data.size)] = _639
                            require _613 + _639 + 32 <= return_data.size
                            u = 0
                            while u < _639:
                                mem[_597 + ceil32(return_data.size) + u + 32] = mem[_597 + _613 + u + 32]
                                u = u + 32
                                continue 
                            if ceil32(_639) > _639:
                                mem[_597 + ceil32(return_data.size) + _639 + 32] = 0
                            mem[_471 + 160] = _597 + ceil32(return_data.size)
                        else:
                            mem[0] = (6 * sub_61cf4863[idx]) + sha3(3) + 5
                            mem[_476 + 32] = stor[sha3((6 * stor4[idx]) + ('name', 'stor3', 3) + 5)].field_0
                            u = _476 + 32
                            v = sha3(mem[0])
                            while _476 + stor3[stor4[idx]].field_1281 > u:
                                mem[u + 32] = uint256(stor1[v])
                                u = u + 32
                                v = v + 1
                                continue 
                            mem[_471 + 160] = _476
                            if mem[_471 + 140 len 20] != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                t = t
                                continue 
                            _796 = mem[_471 + 64]
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _796
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _796
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _812 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _825 = mem[_812]
                            require mem[_812] <= test266151307()
                            require _812 + mem[_812] + 31 < _812 + return_data.size
                            _839 = mem[_812 + mem[_812]]
                            if mem[_812 + mem[_812]] > test266151307():
                                revert with 'NH{q', 65
                            if _812 + ceil32(return_data.size) + ceil32(ceil32(mem[_812 + mem[_812]])) + 1 > test266151307() or ceil32(ceil32(mem[_812 + mem[_812]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _812 + ceil32(return_data.size) + ceil32(ceil32(mem[_812 + mem[_812]])) + 1
                            mem[_812 + ceil32(return_data.size)] = _839
                            require _825 + _839 + 32 <= return_data.size
                            u = 0
                            while u < _839:
                                mem[_812 + ceil32(return_data.size) + u + 32] = mem[_812 + _825 + u + 32]
                                u = u + 32
                                continue 
                            if ceil32(_839) > _839:
                                mem[_812 + ceil32(return_data.size) + _839 + 32] = 0
                            mem[_471 + 160] = _812 + ceil32(return_data.size)
            if s < t:
                revert with 'NH{q', 17
            if s - t >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s - t) + 128] = _471
            if t < 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t - 1
            continue 
        _468 = mem[64]
        mem[mem[64]] = 32
        _472 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _472:
            mem[u] = t + -_468 - 64
            _775 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_775 + 32]
            mem[t + 64] = mem[_775 + 64]
            mem[t + 96] = mem[_775 + 96]
            mem[t + 128] = mem[_775 + 140 len 20]
            _892 = mem[_775 + 160]
            mem[t + 160] = 192
            _901 = mem[_892]
            mem[t + 192] = mem[_892]
            v = 0
            while v < _901:
                mem[t + v + 224] = mem[_892 + v + 32]
                v = v + 32
                continue 
            if ceil32(_901) > _901:
                mem[t + _901 + 224] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_901) + 224
            u = u + 32
            continue 
    else:
        mem[64] = (32 * s) + 320
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 96
        mem[var12001] = (32 * s) + 128
        t = var12001
        idx = var12002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[(32 * s) + 128] = 0
            mem[(32 * s) + 160] = 0
            mem[(32 * s) + 192] = 0
            mem[(32 * s) + 224] = 0
            mem[(32 * s) + 256] = 0
            mem[(32 * s) + 288] = 96
            mem[t + 32] = (32 * s) + 128
            t = t + 32
            idx = idx - 1
            continue 
        idx = 0
        t = s
        while idx < sub_61cf4863.length:
            if sub_61cf4863[idx] >= stor3.length:
                revert with 'NH{q', 50
            mem[0] = 3
            _1014 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1014] = bool(stor3[stor4[idx]].field_0)
            mem[_1014 + 32] = stor3[stor4[idx]].field_256
            mem[_1014 + 64] = stor3[stor4[idx]].field_512
            mem[_1014 + 96] = stor3[stor4[idx]].field_768
            mem[_1014 + 128] = stor3[stor4[idx]].field_1024
            if stor3[stor4[idx]].field_1280:
                if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                    revert with 'NH{q', 34
                _1016 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[stor4[idx]].field_1281) + 32
                mem[_1016] = stor3[stor4[idx]].field_1281
                if stor3[stor4[idx]].field_1280:
                    if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    if not stor3[stor4[idx]].field_1281:
                        mem[_1014 + 160] = _1016
                        if stor3[stor4[idx]].field_1024 != msg.sender:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            t = t
                            continue 
                        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xc87b56dd with:
                                gas gas_remaining wei
                               args stor3[stor4[idx]].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1073 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1081 = mem[_1073]
                        require mem[_1073] <= test266151307()
                        require _1073 + mem[_1073] + 31 < _1073 + return_data.size
                        _1098 = mem[_1073 + mem[_1073]]
                        if mem[_1073 + mem[_1073]] > test266151307():
                            revert with 'NH{q', 65
                        if _1073 + ceil32(return_data.size) + ceil32(ceil32(mem[_1073 + mem[_1073]])) + 1 > test266151307() or ceil32(ceil32(mem[_1073 + mem[_1073]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1073 + ceil32(return_data.size) + ceil32(ceil32(mem[_1073 + mem[_1073]])) + 1
                        mem[_1073 + ceil32(return_data.size)] = _1098
                        require _1081 + _1098 + 32 <= return_data.size
                        u = 0
                        while u < _1098:
                            mem[_1073 + ceil32(return_data.size) + u + 32] = mem[_1073 + _1081 + u + 32]
                            u = u + 32
                            continue 
                        if ceil32(_1098) > _1098:
                            mem[_1073 + ceil32(return_data.size) + _1098 + 32] = 0
                        mem[_1014 + 160] = _1073 + ceil32(return_data.size)
                    else:
                        if 31 >= stor3[stor4[idx]].field_1281:
                            mem[_1016 + 32] = 256 * stor3[stor4[idx]].field_1288
                            mem[_1014 + 160] = _1016
                            if stor3[stor4[idx]].field_1024 != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                t = t
                                continue 
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor4[idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1083 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1093 = mem[_1083]
                            require mem[_1083] <= test266151307()
                            require _1083 + mem[_1083] + 31 < _1083 + return_data.size
                            _1108 = mem[_1083 + mem[_1083]]
                            if mem[_1083 + mem[_1083]] > test266151307():
                                revert with 'NH{q', 65
                            if _1083 + ceil32(return_data.size) + ceil32(ceil32(mem[_1083 + mem[_1083]])) + 1 > test266151307() or ceil32(ceil32(mem[_1083 + mem[_1083]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1083 + ceil32(return_data.size) + ceil32(ceil32(mem[_1083 + mem[_1083]])) + 1
                            mem[_1083 + ceil32(return_data.size)] = _1108
                            require _1093 + _1108 + 32 <= return_data.size
                            u = 0
                            while u < _1108:
                                mem[_1083 + ceil32(return_data.size) + u + 32] = mem[_1083 + _1093 + u + 32]
                                u = u + 32
                                continue 
                            if ceil32(_1108) > _1108:
                                mem[_1083 + ceil32(return_data.size) + _1108 + 32] = 0
                            mem[_1014 + 160] = _1083 + ceil32(return_data.size)
                        else:
                            mem[0] = (6 * sub_61cf4863[idx]) + sha3(3) + 5
                            mem[_1016 + 32] = stor[sha3((6 * stor4[idx]) + ('name', 'stor3', 3) + 5)].field_0
                            u = _1016 + 32
                            v = sha3(mem[0])
                            while _1016 + stor3[stor4[idx]].field_1281 > u:
                                mem[u + 32] = uint256(stor1[v])
                                u = u + 32
                                v = v + 1
                                continue 
                            mem[_1014 + 160] = _1016
                            if mem[_1014 + 140 len 20] != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                t = t
                                continue 
                            _1187 = mem[_1014 + 64]
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1187
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _1187
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1201 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1206 = mem[_1201]
                            require mem[_1201] <= test266151307()
                            require _1201 + mem[_1201] + 31 < _1201 + return_data.size
                            _1226 = mem[_1201 + mem[_1201]]
                            if mem[_1201 + mem[_1201]] > test266151307():
                                revert with 'NH{q', 65
                            if _1201 + ceil32(return_data.size) + ceil32(ceil32(mem[_1201 + mem[_1201]])) + 1 > test266151307() or ceil32(ceil32(mem[_1201 + mem[_1201]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1201 + ceil32(return_data.size) + ceil32(ceil32(mem[_1201 + mem[_1201]])) + 1
                            mem[_1201 + ceil32(return_data.size)] = _1226
                            require _1206 + _1226 + 32 <= return_data.size
                            u = 0
                            while u < _1226:
                                mem[_1201 + ceil32(return_data.size) + u + 32] = mem[_1201 + _1206 + u + 32]
                                u = u + 32
                                continue 
                            if ceil32(_1226) > _1226:
                                mem[_1201 + ceil32(return_data.size) + _1226 + 32] = 0
                            mem[_1014 + 160] = _1201 + ceil32(return_data.size)
                else:
                    if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    if not stor3[stor4[idx]].field_1281:
                        mem[_1014 + 160] = _1016
                        if stor3[stor4[idx]].field_1024 != msg.sender:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            t = t
                            continue 
                        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xc87b56dd with:
                                gas gas_remaining wei
                               args stor3[stor4[idx]].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1077 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1086 = mem[_1077]
                        require mem[_1077] <= test266151307()
                        require _1077 + mem[_1077] + 31 < _1077 + return_data.size
                        _1104 = mem[_1077 + mem[_1077]]
                        if mem[_1077 + mem[_1077]] > test266151307():
                            revert with 'NH{q', 65
                        if _1077 + ceil32(return_data.size) + ceil32(ceil32(mem[_1077 + mem[_1077]])) + 1 > test266151307() or ceil32(ceil32(mem[_1077 + mem[_1077]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1077 + ceil32(return_data.size) + ceil32(ceil32(mem[_1077 + mem[_1077]])) + 1
                        mem[_1077 + ceil32(return_data.size)] = _1104
                        require _1086 + _1104 + 32 <= return_data.size
                        u = 0
                        while u < _1104:
                            mem[_1077 + ceil32(return_data.size) + u + 32] = mem[_1077 + _1086 + u + 32]
                            u = u + 32
                            continue 
                        if ceil32(_1104) > _1104:
                            mem[_1077 + ceil32(return_data.size) + _1104 + 32] = 0
                        mem[_1014 + 160] = _1077 + ceil32(return_data.size)
                    else:
                        if 31 >= stor3[stor4[idx]].field_1281:
                            mem[_1016 + 32] = 256 * stor3[stor4[idx]].field_1288
                            mem[_1014 + 160] = _1016
                            if stor3[stor4[idx]].field_1024 != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                t = t
                                continue 
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor4[idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1088 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1100 = mem[_1088]
                            require mem[_1088] <= test266151307()
                            require _1088 + mem[_1088] + 31 < _1088 + return_data.size
                            _1112 = mem[_1088 + mem[_1088]]
                            if mem[_1088 + mem[_1088]] > test266151307():
                                revert with 'NH{q', 65
                            if _1088 + ceil32(return_data.size) + ceil32(ceil32(mem[_1088 + mem[_1088]])) + 1 > test266151307() or ceil32(ceil32(mem[_1088 + mem[_1088]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1088 + ceil32(return_data.size) + ceil32(ceil32(mem[_1088 + mem[_1088]])) + 1
                            mem[_1088 + ceil32(return_data.size)] = _1112
                            require _1100 + _1112 + 32 <= return_data.size
                            u = 0
                            while u < _1112:
                                mem[_1088 + ceil32(return_data.size) + u + 32] = mem[_1088 + _1100 + u + 32]
                                u = u + 32
                                continue 
                            if ceil32(_1112) > _1112:
                                mem[_1088 + ceil32(return_data.size) + _1112 + 32] = 0
                            mem[_1014 + 160] = _1088 + ceil32(return_data.size)
                        else:
                            mem[0] = (6 * sub_61cf4863[idx]) + sha3(3) + 5
                            mem[_1016 + 32] = stor[sha3((6 * stor4[idx]) + ('name', 'stor3', 3) + 5)].field_0
                            u = _1016 + 32
                            v = sha3(mem[0])
                            while _1016 + stor3[stor4[idx]].field_1281 > u:
                                mem[u + 32] = uint256(stor1[v])
                                u = u + 32
                                v = v + 1
                                continue 
                            mem[_1014 + 160] = _1016
                            if mem[_1014 + 140 len 20] != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                t = t
                                continue 
                            _1189 = mem[_1014 + 64]
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1189
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _1189
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1202 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1209 = mem[_1202]
                            require mem[_1202] <= test266151307()
                            require _1202 + mem[_1202] + 31 < _1202 + return_data.size
                            _1227 = mem[_1202 + mem[_1202]]
                            if mem[_1202 + mem[_1202]] > test266151307():
                                revert with 'NH{q', 65
                            if _1202 + ceil32(return_data.size) + ceil32(ceil32(mem[_1202 + mem[_1202]])) + 1 > test266151307() or ceil32(ceil32(mem[_1202 + mem[_1202]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1202 + ceil32(return_data.size) + ceil32(ceil32(mem[_1202 + mem[_1202]])) + 1
                            mem[_1202 + ceil32(return_data.size)] = _1227
                            require _1209 + _1227 + 32 <= return_data.size
                            u = 0
                            while u < _1227:
                                mem[_1202 + ceil32(return_data.size) + u + 32] = mem[_1202 + _1209 + u + 32]
                                u = u + 32
                                continue 
                            if ceil32(_1227) > _1227:
                                mem[_1202 + ceil32(return_data.size) + _1227 + 32] = 0
                            mem[_1014 + 160] = _1202 + ceil32(return_data.size)
            else:
                if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                    revert with 'NH{q', 34
                _1017 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[stor4[idx]].field_1281) + 32
                mem[_1017] = stor3[stor4[idx]].field_1281
                if stor3[stor4[idx]].field_1280:
                    if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    if not stor3[stor4[idx]].field_1281:
                        mem[_1014 + 160] = _1017
                        if stor3[stor4[idx]].field_1024 != msg.sender:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            t = t
                            continue 
                        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xc87b56dd with:
                                gas gas_remaining wei
                               args stor3[stor4[idx]].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1079 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1089 = mem[_1079]
                        require mem[_1079] <= test266151307()
                        require _1079 + mem[_1079] + 31 < _1079 + return_data.size
                        _1105 = mem[_1079 + mem[_1079]]
                        if mem[_1079 + mem[_1079]] > test266151307():
                            revert with 'NH{q', 65
                        if _1079 + ceil32(return_data.size) + ceil32(ceil32(mem[_1079 + mem[_1079]])) + 1 > test266151307() or ceil32(ceil32(mem[_1079 + mem[_1079]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1079 + ceil32(return_data.size) + ceil32(ceil32(mem[_1079 + mem[_1079]])) + 1
                        mem[_1079 + ceil32(return_data.size)] = _1105
                        require _1089 + _1105 + 32 <= return_data.size
                        u = 0
                        while u < _1105:
                            mem[_1079 + ceil32(return_data.size) + u + 32] = mem[_1079 + _1089 + u + 32]
                            u = u + 32
                            continue 
                        if ceil32(_1105) > _1105:
                            mem[_1079 + ceil32(return_data.size) + _1105 + 32] = 0
                        mem[_1014 + 160] = _1079 + ceil32(return_data.size)
                    else:
                        if 31 >= stor3[stor4[idx]].field_1281:
                            mem[_1017 + 32] = 256 * stor3[stor4[idx]].field_1288
                            mem[_1014 + 160] = _1017
                            if stor3[stor4[idx]].field_1024 != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                t = t
                                continue 
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor4[idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1091 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1102 = mem[_1091]
                            require mem[_1091] <= test266151307()
                            require _1091 + mem[_1091] + 31 < _1091 + return_data.size
                            _1113 = mem[_1091 + mem[_1091]]
                            if mem[_1091 + mem[_1091]] > test266151307():
                                revert with 'NH{q', 65
                            if _1091 + ceil32(return_data.size) + ceil32(ceil32(mem[_1091 + mem[_1091]])) + 1 > test266151307() or ceil32(ceil32(mem[_1091 + mem[_1091]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1091 + ceil32(return_data.size) + ceil32(ceil32(mem[_1091 + mem[_1091]])) + 1
                            mem[_1091 + ceil32(return_data.size)] = _1113
                            require _1102 + _1113 + 32 <= return_data.size
                            u = 0
                            while u < _1113:
                                mem[_1091 + ceil32(return_data.size) + u + 32] = mem[_1091 + _1102 + u + 32]
                                u = u + 32
                                continue 
                            if ceil32(_1113) > _1113:
                                mem[_1091 + ceil32(return_data.size) + _1113 + 32] = 0
                            mem[_1014 + 160] = _1091 + ceil32(return_data.size)
                        else:
                            mem[0] = (6 * sub_61cf4863[idx]) + sha3(3) + 5
                            mem[_1017 + 32] = stor[sha3((6 * stor4[idx]) + ('name', 'stor3', 3) + 5)].field_0
                            u = _1017 + 32
                            v = sha3(mem[0])
                            while _1017 + stor3[stor4[idx]].field_1281 > u:
                                mem[u + 32] = uint256(stor1[v])
                                u = u + 32
                                v = v + 1
                                continue 
                            mem[_1014 + 160] = _1017
                            if mem[_1014 + 140 len 20] != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                t = t
                                continue 
                            _1191 = mem[_1014 + 64]
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1191
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _1191
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1203 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1212 = mem[_1203]
                            require mem[_1203] <= test266151307()
                            require _1203 + mem[_1203] + 31 < _1203 + return_data.size
                            _1228 = mem[_1203 + mem[_1203]]
                            if mem[_1203 + mem[_1203]] > test266151307():
                                revert with 'NH{q', 65
                            if _1203 + ceil32(return_data.size) + ceil32(ceil32(mem[_1203 + mem[_1203]])) + 1 > test266151307() or ceil32(ceil32(mem[_1203 + mem[_1203]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1203 + ceil32(return_data.size) + ceil32(ceil32(mem[_1203 + mem[_1203]])) + 1
                            mem[_1203 + ceil32(return_data.size)] = _1228
                            require _1212 + _1228 + 32 <= return_data.size
                            u = 0
                            while u < _1228:
                                mem[_1203 + ceil32(return_data.size) + u + 32] = mem[_1203 + _1212 + u + 32]
                                u = u + 32
                                continue 
                            if ceil32(_1228) > _1228:
                                mem[_1203 + ceil32(return_data.size) + _1228 + 32] = 0
                            mem[_1014 + 160] = _1203 + ceil32(return_data.size)
                else:
                    if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    if not stor3[stor4[idx]].field_1281:
                        mem[_1014 + 160] = _1017
                        if stor3[stor4[idx]].field_1024 != msg.sender:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            t = t
                            continue 
                        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xc87b56dd with:
                                gas gas_remaining wei
                               args stor3[stor4[idx]].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1084 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1094 = mem[_1084]
                        require mem[_1084] <= test266151307()
                        require _1084 + mem[_1084] + 31 < _1084 + return_data.size
                        _1111 = mem[_1084 + mem[_1084]]
                        if mem[_1084 + mem[_1084]] > test266151307():
                            revert with 'NH{q', 65
                        if _1084 + ceil32(return_data.size) + ceil32(ceil32(mem[_1084 + mem[_1084]])) + 1 > test266151307() or ceil32(ceil32(mem[_1084 + mem[_1084]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1084 + ceil32(return_data.size) + ceil32(ceil32(mem[_1084 + mem[_1084]])) + 1
                        mem[_1084 + ceil32(return_data.size)] = _1111
                        require _1094 + _1111 + 32 <= return_data.size
                        u = 0
                        while u < _1111:
                            mem[_1084 + ceil32(return_data.size) + u + 32] = mem[_1084 + _1094 + u + 32]
                            u = u + 32
                            continue 
                        if ceil32(_1111) > _1111:
                            mem[_1084 + ceil32(return_data.size) + _1111 + 32] = 0
                        mem[_1014 + 160] = _1084 + ceil32(return_data.size)
                    else:
                        if 31 >= stor3[stor4[idx]].field_1281:
                            mem[_1017 + 32] = 256 * stor3[stor4[idx]].field_1288
                            mem[_1014 + 160] = _1017
                            if stor3[stor4[idx]].field_1024 != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                t = t
                                continue 
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor4[idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1096 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1107 = mem[_1096]
                            require mem[_1096] <= test266151307()
                            require _1096 + mem[_1096] + 31 < _1096 + return_data.size
                            _1117 = mem[_1096 + mem[_1096]]
                            if mem[_1096 + mem[_1096]] > test266151307():
                                revert with 'NH{q', 65
                            if _1096 + ceil32(return_data.size) + ceil32(ceil32(mem[_1096 + mem[_1096]])) + 1 > test266151307() or ceil32(ceil32(mem[_1096 + mem[_1096]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1096 + ceil32(return_data.size) + ceil32(ceil32(mem[_1096 + mem[_1096]])) + 1
                            mem[_1096 + ceil32(return_data.size)] = _1117
                            require _1107 + _1117 + 32 <= return_data.size
                            u = 0
                            while u < _1117:
                                mem[_1096 + ceil32(return_data.size) + u + 32] = mem[_1096 + _1107 + u + 32]
                                u = u + 32
                                continue 
                            if ceil32(_1117) > _1117:
                                mem[_1096 + ceil32(return_data.size) + _1117 + 32] = 0
                            mem[_1014 + 160] = _1096 + ceil32(return_data.size)
                        else:
                            mem[0] = (6 * sub_61cf4863[idx]) + sha3(3) + 5
                            mem[_1017 + 32] = stor[sha3((6 * stor4[idx]) + ('name', 'stor3', 3) + 5)].field_0
                            u = _1017 + 32
                            v = sha3(mem[0])
                            while _1017 + stor3[stor4[idx]].field_1281 > u:
                                mem[u + 32] = uint256(stor1[v])
                                u = u + 32
                                v = v + 1
                                continue 
                            mem[_1014 + 160] = _1017
                            if mem[_1014 + 140 len 20] != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                t = t
                                continue 
                            _1193 = mem[_1014 + 64]
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1193
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _1193
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1204 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1215 = mem[_1204]
                            require mem[_1204] <= test266151307()
                            require _1204 + mem[_1204] + 31 < _1204 + return_data.size
                            _1229 = mem[_1204 + mem[_1204]]
                            if mem[_1204 + mem[_1204]] > test266151307():
                                revert with 'NH{q', 65
                            if _1204 + ceil32(return_data.size) + ceil32(ceil32(mem[_1204 + mem[_1204]])) + 1 > test266151307() or ceil32(ceil32(mem[_1204 + mem[_1204]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1204 + ceil32(return_data.size) + ceil32(ceil32(mem[_1204 + mem[_1204]])) + 1
                            mem[_1204 + ceil32(return_data.size)] = _1229
                            require _1215 + _1229 + 32 <= return_data.size
                            u = 0
                            while u < _1229:
                                mem[_1204 + ceil32(return_data.size) + u + 32] = mem[_1204 + _1215 + u + 32]
                                u = u + 32
                                continue 
                            if ceil32(_1229) > _1229:
                                mem[_1204 + ceil32(return_data.size) + _1229 + 32] = 0
                            mem[_1014 + 160] = _1204 + ceil32(return_data.size)
            if s < t:
                revert with 'NH{q', 17
            if s - t >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s - t) + 128] = _1014
            if t < 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t - 1
            continue 
        _1011 = mem[64]
        mem[mem[64]] = 32
        _1015 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _1015:
            mem[u] = t + -_1011 - 64
            _1172 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_1172 + 32]
            mem[t + 64] = mem[_1172 + 64]
            mem[t + 96] = mem[_1172 + 96]
            mem[t + 128] = mem[_1172 + 140 len 20]
            _1235 = mem[_1172 + 160]
            mem[t + 160] = 192
            _1236 = mem[_1235]
            mem[t + 192] = mem[_1235]
            v = 0
            while v < _1236:
                mem[t + v + 224] = mem[_1235 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1236) > _1236:
                mem[t + _1236 + 224] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_1236) + 224
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function getRewards() {
    mem[100] = msg.sender
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(address(stor1.length))
        staticcall address(stor1.length).tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _177 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_177] == mem[_177]
        if mem[_177] >= 10000:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[_177]
        mem[32] = 5
        if sub_6d0c689e < sub_f7cae643[mem[0]]:
            revert with 'NH{q', 17
        if s > -sub_6d0c689e + sub_f7cae643[mem[0]] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + sub_6d0c689e - sub_f7cae643[mem[0]]
        continue 
    idx = 0
    t = 0
    while idx < sub_61cf4863.length:
        if sub_61cf4863[idx] >= stor3.length:
            revert with 'NH{q', 50
        mem[0] = 3
        if stor3[stor4[idx]].field_1024 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t
            continue 
        if t > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        t = t + 1
        continue 
    if t > test266151307():
        revert with 'NH{q', 65
    _317 = mem[64]
    mem[mem[64]] = t
    mem[64] = mem[64] + (32 * t) + 32
    if not t:
        idx = 0
        u = t
        while idx < sub_61cf4863.length:
            if sub_61cf4863[idx] >= stor3.length:
                revert with 'NH{q', 50
            mem[0] = 3
            _621 = mem[64]
            mem[64] = mem[64] + 192
            mem[_621] = bool(stor3[stor4[idx]].field_0)
            mem[_621 + 32] = stor3[stor4[idx]].field_256
            mem[_621 + 64] = stor3[stor4[idx]].field_512
            mem[_621 + 96] = stor3[stor4[idx]].field_768
            mem[_621 + 128] = stor3[stor4[idx]].field_1024
            if stor3[stor4[idx]].field_1280:
                if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                    revert with 'NH{q', 34
                _627 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[stor4[idx]].field_1281) + 32
                mem[_627] = stor3[stor4[idx]].field_1281
                if stor3[stor4[idx]].field_1280:
                    if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    if not stor3[stor4[idx]].field_1281:
                        mem[_621 + 160] = _627
                        if stor3[stor4[idx]].field_1024 != msg.sender:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            u = u
                            continue 
                        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xc87b56dd with:
                                gas gas_remaining wei
                               args stor3[stor4[idx]].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _706 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _725 = mem[_706]
                        require mem[_706] <= test266151307()
                        require _706 + mem[_706] + 31 < _706 + return_data.size
                        _751 = mem[_706 + mem[_706]]
                        if mem[_706 + mem[_706]] > test266151307():
                            revert with 'NH{q', 65
                        if _706 + ceil32(return_data.size) + ceil32(ceil32(mem[_706 + mem[_706]])) + 1 > test266151307() or ceil32(ceil32(mem[_706 + mem[_706]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _706 + ceil32(return_data.size) + ceil32(ceil32(mem[_706 + mem[_706]])) + 1
                        mem[_706 + ceil32(return_data.size)] = _751
                        require _725 + _751 + 32 <= return_data.size
                        s = 0
                        while s < _751:
                            mem[_706 + ceil32(return_data.size) + s + 32] = mem[_706 + _725 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_751) > _751:
                            mem[_706 + ceil32(return_data.size) + _751 + 32] = 0
                        mem[_621 + 160] = _706 + ceil32(return_data.size)
                    else:
                        if 31 >= stor3[stor4[idx]].field_1281:
                            mem[_627 + 32] = 256 * stor3[stor4[idx]].field_1288
                            mem[_621 + 160] = _627
                            if stor3[stor4[idx]].field_1024 != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = u
                                continue 
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor4[idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _727 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _745 = mem[_727]
                            require mem[_727] <= test266151307()
                            require _727 + mem[_727] + 31 < _727 + return_data.size
                            _768 = mem[_727 + mem[_727]]
                            if mem[_727 + mem[_727]] > test266151307():
                                revert with 'NH{q', 65
                            if _727 + ceil32(return_data.size) + ceil32(ceil32(mem[_727 + mem[_727]])) + 1 > test266151307() or ceil32(ceil32(mem[_727 + mem[_727]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _727 + ceil32(return_data.size) + ceil32(ceil32(mem[_727 + mem[_727]])) + 1
                            mem[_727 + ceil32(return_data.size)] = _768
                            require _745 + _768 + 32 <= return_data.size
                            s = 0
                            while s < _768:
                                mem[_727 + ceil32(return_data.size) + s + 32] = mem[_727 + _745 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_768) > _768:
                                mem[_727 + ceil32(return_data.size) + _768 + 32] = 0
                            mem[_621 + 160] = _727 + ceil32(return_data.size)
                        else:
                            mem[0] = (6 * sub_61cf4863[idx]) + sha3(3) + 5
                            mem[_627 + 32] = stor[sha3((6 * stor4[idx]) + ('name', 'stor3', 3) + 5)].field_0
                            s = _627 + 32
                            v = sha3(mem[0])
                            while _627 + stor3[stor4[idx]].field_1281 > s:
                                mem[s + 32] = uint256(stor1[v])
                                s = s + 32
                                v = v + 1
                                continue 
                            mem[_621 + 160] = _627
                            if mem[_621 + 140 len 20] != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = u
                                continue 
                            _933 = mem[_621 + 64]
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _933
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _933
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _955 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _962 = mem[_955]
                            require mem[_955] <= test266151307()
                            require _955 + mem[_955] + 31 < _955 + return_data.size
                            _982 = mem[_955 + mem[_955]]
                            if mem[_955 + mem[_955]] > test266151307():
                                revert with 'NH{q', 65
                            if _955 + ceil32(return_data.size) + ceil32(ceil32(mem[_955 + mem[_955]])) + 1 > test266151307() or ceil32(ceil32(mem[_955 + mem[_955]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _955 + ceil32(return_data.size) + ceil32(ceil32(mem[_955 + mem[_955]])) + 1
                            mem[_955 + ceil32(return_data.size)] = _982
                            require _962 + _982 + 32 <= return_data.size
                            s = 0
                            while s < _982:
                                mem[_955 + ceil32(return_data.size) + s + 32] = mem[_955 + _962 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_982) > _982:
                                mem[_955 + ceil32(return_data.size) + _982 + 32] = 0
                            mem[_621 + 160] = _955 + ceil32(return_data.size)
                else:
                    if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    if not stor3[stor4[idx]].field_1281:
                        mem[_621 + 160] = _627
                        if stor3[stor4[idx]].field_1024 != msg.sender:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            u = u
                            continue 
                        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xc87b56dd with:
                                gas gas_remaining wei
                               args stor3[stor4[idx]].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _715 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _735 = mem[_715]
                        require mem[_715] <= test266151307()
                        require _715 + mem[_715] + 31 < _715 + return_data.size
                        _760 = mem[_715 + mem[_715]]
                        if mem[_715 + mem[_715]] > test266151307():
                            revert with 'NH{q', 65
                        if _715 + ceil32(return_data.size) + ceil32(ceil32(mem[_715 + mem[_715]])) + 1 > test266151307() or ceil32(ceil32(mem[_715 + mem[_715]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _715 + ceil32(return_data.size) + ceil32(ceil32(mem[_715 + mem[_715]])) + 1
                        mem[_715 + ceil32(return_data.size)] = _760
                        require _735 + _760 + 32 <= return_data.size
                        s = 0
                        while s < _760:
                            mem[_715 + ceil32(return_data.size) + s + 32] = mem[_715 + _735 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_760) > _760:
                            mem[_715 + ceil32(return_data.size) + _760 + 32] = 0
                        mem[_621 + 160] = _715 + ceil32(return_data.size)
                    else:
                        if 31 >= stor3[stor4[idx]].field_1281:
                            mem[_627 + 32] = 256 * stor3[stor4[idx]].field_1288
                            mem[_621 + 160] = _627
                            if stor3[stor4[idx]].field_1024 != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = u
                                continue 
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor4[idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _737 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _753 = mem[_737]
                            require mem[_737] <= test266151307()
                            require _737 + mem[_737] + 31 < _737 + return_data.size
                            _777 = mem[_737 + mem[_737]]
                            if mem[_737 + mem[_737]] > test266151307():
                                revert with 'NH{q', 65
                            if _737 + ceil32(return_data.size) + ceil32(ceil32(mem[_737 + mem[_737]])) + 1 > test266151307() or ceil32(ceil32(mem[_737 + mem[_737]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _737 + ceil32(return_data.size) + ceil32(ceil32(mem[_737 + mem[_737]])) + 1
                            mem[_737 + ceil32(return_data.size)] = _777
                            require _753 + _777 + 32 <= return_data.size
                            s = 0
                            while s < _777:
                                mem[_737 + ceil32(return_data.size) + s + 32] = mem[_737 + _753 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_777) > _777:
                                mem[_737 + ceil32(return_data.size) + _777 + 32] = 0
                            mem[_621 + 160] = _737 + ceil32(return_data.size)
                        else:
                            mem[0] = (6 * sub_61cf4863[idx]) + sha3(3) + 5
                            mem[_627 + 32] = stor[sha3((6 * stor4[idx]) + ('name', 'stor3', 3) + 5)].field_0
                            s = _627 + 32
                            v = sha3(mem[0])
                            while _627 + stor3[stor4[idx]].field_1281 > s:
                                mem[s + 32] = uint256(stor1[v])
                                s = s + 32
                                v = v + 1
                                continue 
                            mem[_621 + 160] = _627
                            if mem[_621 + 140 len 20] != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = u
                                continue 
                            _935 = mem[_621 + 64]
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _935
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _935
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _956 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _965 = mem[_956]
                            require mem[_956] <= test266151307()
                            require _956 + mem[_956] + 31 < _956 + return_data.size
                            _983 = mem[_956 + mem[_956]]
                            if mem[_956 + mem[_956]] > test266151307():
                                revert with 'NH{q', 65
                            if _956 + ceil32(return_data.size) + ceil32(ceil32(mem[_956 + mem[_956]])) + 1 > test266151307() or ceil32(ceil32(mem[_956 + mem[_956]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _956 + ceil32(return_data.size) + ceil32(ceil32(mem[_956 + mem[_956]])) + 1
                            mem[_956 + ceil32(return_data.size)] = _983
                            require _965 + _983 + 32 <= return_data.size
                            s = 0
                            while s < _983:
                                mem[_956 + ceil32(return_data.size) + s + 32] = mem[_956 + _965 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_983) > _983:
                                mem[_956 + ceil32(return_data.size) + _983 + 32] = 0
                            mem[_621 + 160] = _956 + ceil32(return_data.size)
            else:
                if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                    revert with 'NH{q', 34
                _629 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[stor4[idx]].field_1281) + 32
                mem[_629] = stor3[stor4[idx]].field_1281
                if stor3[stor4[idx]].field_1280:
                    if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    if not stor3[stor4[idx]].field_1281:
                        mem[_621 + 160] = _629
                        if stor3[stor4[idx]].field_1024 != msg.sender:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            u = u
                            continue 
                        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xc87b56dd with:
                                gas gas_remaining wei
                               args stor3[stor4[idx]].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _717 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _738 = mem[_717]
                        require mem[_717] <= test266151307()
                        require _717 + mem[_717] + 31 < _717 + return_data.size
                        _761 = mem[_717 + mem[_717]]
                        if mem[_717 + mem[_717]] > test266151307():
                            revert with 'NH{q', 65
                        if _717 + ceil32(return_data.size) + ceil32(ceil32(mem[_717 + mem[_717]])) + 1 > test266151307() or ceil32(ceil32(mem[_717 + mem[_717]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _717 + ceil32(return_data.size) + ceil32(ceil32(mem[_717 + mem[_717]])) + 1
                        mem[_717 + ceil32(return_data.size)] = _761
                        require _738 + _761 + 32 <= return_data.size
                        s = 0
                        while s < _761:
                            mem[_717 + ceil32(return_data.size) + s + 32] = mem[_717 + _738 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_761) > _761:
                            mem[_717 + ceil32(return_data.size) + _761 + 32] = 0
                        mem[_621 + 160] = _717 + ceil32(return_data.size)
                    else:
                        if 31 >= stor3[stor4[idx]].field_1281:
                            mem[_629 + 32] = 256 * stor3[stor4[idx]].field_1288
                            mem[_621 + 160] = _629
                            if stor3[stor4[idx]].field_1024 != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = u
                                continue 
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor4[idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _740 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _755 = mem[_740]
                            require mem[_740] <= test266151307()
                            require _740 + mem[_740] + 31 < _740 + return_data.size
                            _778 = mem[_740 + mem[_740]]
                            if mem[_740 + mem[_740]] > test266151307():
                                revert with 'NH{q', 65
                            if _740 + ceil32(return_data.size) + ceil32(ceil32(mem[_740 + mem[_740]])) + 1 > test266151307() or ceil32(ceil32(mem[_740 + mem[_740]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _740 + ceil32(return_data.size) + ceil32(ceil32(mem[_740 + mem[_740]])) + 1
                            mem[_740 + ceil32(return_data.size)] = _778
                            require _755 + _778 + 32 <= return_data.size
                            s = 0
                            while s < _778:
                                mem[_740 + ceil32(return_data.size) + s + 32] = mem[_740 + _755 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_778) > _778:
                                mem[_740 + ceil32(return_data.size) + _778 + 32] = 0
                            mem[_621 + 160] = _740 + ceil32(return_data.size)
                        else:
                            mem[0] = (6 * sub_61cf4863[idx]) + sha3(3) + 5
                            mem[_629 + 32] = stor[sha3((6 * stor4[idx]) + ('name', 'stor3', 3) + 5)].field_0
                            s = _629 + 32
                            v = sha3(mem[0])
                            while _629 + stor3[stor4[idx]].field_1281 > s:
                                mem[s + 32] = uint256(stor1[v])
                                s = s + 32
                                v = v + 1
                                continue 
                            mem[_621 + 160] = _629
                            if mem[_621 + 140 len 20] != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = u
                                continue 
                            _937 = mem[_621 + 64]
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _937
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _937
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _957 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _968 = mem[_957]
                            require mem[_957] <= test266151307()
                            require _957 + mem[_957] + 31 < _957 + return_data.size
                            _984 = mem[_957 + mem[_957]]
                            if mem[_957 + mem[_957]] > test266151307():
                                revert with 'NH{q', 65
                            if _957 + ceil32(return_data.size) + ceil32(ceil32(mem[_957 + mem[_957]])) + 1 > test266151307() or ceil32(ceil32(mem[_957 + mem[_957]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _957 + ceil32(return_data.size) + ceil32(ceil32(mem[_957 + mem[_957]])) + 1
                            mem[_957 + ceil32(return_data.size)] = _984
                            require _968 + _984 + 32 <= return_data.size
                            s = 0
                            while s < _984:
                                mem[_957 + ceil32(return_data.size) + s + 32] = mem[_957 + _968 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_984) > _984:
                                mem[_957 + ceil32(return_data.size) + _984 + 32] = 0
                            mem[_621 + 160] = _957 + ceil32(return_data.size)
                else:
                    if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    if not stor3[stor4[idx]].field_1281:
                        mem[_621 + 160] = _629
                        if stor3[stor4[idx]].field_1024 != msg.sender:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            u = u
                            continue 
                        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xc87b56dd with:
                                gas gas_remaining wei
                               args stor3[stor4[idx]].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _728 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _746 = mem[_728]
                        require mem[_728] <= test266151307()
                        require _728 + mem[_728] + 31 < _728 + return_data.size
                        _771 = mem[_728 + mem[_728]]
                        if mem[_728 + mem[_728]] > test266151307():
                            revert with 'NH{q', 65
                        if _728 + ceil32(return_data.size) + ceil32(ceil32(mem[_728 + mem[_728]])) + 1 > test266151307() or ceil32(ceil32(mem[_728 + mem[_728]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _728 + ceil32(return_data.size) + ceil32(ceil32(mem[_728 + mem[_728]])) + 1
                        mem[_728 + ceil32(return_data.size)] = _771
                        require _746 + _771 + 32 <= return_data.size
                        s = 0
                        while s < _771:
                            mem[_728 + ceil32(return_data.size) + s + 32] = mem[_728 + _746 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_771) > _771:
                            mem[_728 + ceil32(return_data.size) + _771 + 32] = 0
                        mem[_621 + 160] = _728 + ceil32(return_data.size)
                    else:
                        if 31 >= stor3[stor4[idx]].field_1281:
                            mem[_629 + 32] = 256 * stor3[stor4[idx]].field_1288
                            mem[_621 + 160] = _629
                            if stor3[stor4[idx]].field_1024 != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = u
                                continue 
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor4[idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _748 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _763 = mem[_748]
                            require mem[_748] <= test266151307()
                            require _748 + mem[_748] + 31 < _748 + return_data.size
                            _787 = mem[_748 + mem[_748]]
                            if mem[_748 + mem[_748]] > test266151307():
                                revert with 'NH{q', 65
                            if _748 + ceil32(return_data.size) + ceil32(ceil32(mem[_748 + mem[_748]])) + 1 > test266151307() or ceil32(ceil32(mem[_748 + mem[_748]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _748 + ceil32(return_data.size) + ceil32(ceil32(mem[_748 + mem[_748]])) + 1
                            mem[_748 + ceil32(return_data.size)] = _787
                            require _763 + _787 + 32 <= return_data.size
                            s = 0
                            while s < _787:
                                mem[_748 + ceil32(return_data.size) + s + 32] = mem[_748 + _763 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_787) > _787:
                                mem[_748 + ceil32(return_data.size) + _787 + 32] = 0
                            mem[_621 + 160] = _748 + ceil32(return_data.size)
                        else:
                            mem[0] = (6 * sub_61cf4863[idx]) + sha3(3) + 5
                            mem[_629 + 32] = stor[sha3((6 * stor4[idx]) + ('name', 'stor3', 3) + 5)].field_0
                            s = _629 + 32
                            v = sha3(mem[0])
                            while _629 + stor3[stor4[idx]].field_1281 > s:
                                mem[s + 32] = uint256(stor1[v])
                                s = s + 32
                                v = v + 1
                                continue 
                            mem[_621 + 160] = _629
                            if mem[_621 + 140 len 20] != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = u
                                continue 
                            _939 = mem[_621 + 64]
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _939
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _939
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _958 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _971 = mem[_958]
                            require mem[_958] <= test266151307()
                            require _958 + mem[_958] + 31 < _958 + return_data.size
                            _985 = mem[_958 + mem[_958]]
                            if mem[_958 + mem[_958]] > test266151307():
                                revert with 'NH{q', 65
                            if _958 + ceil32(return_data.size) + ceil32(ceil32(mem[_958 + mem[_958]])) + 1 > test266151307() or ceil32(ceil32(mem[_958 + mem[_958]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _958 + ceil32(return_data.size) + ceil32(ceil32(mem[_958 + mem[_958]])) + 1
                            mem[_958 + ceil32(return_data.size)] = _985
                            require _971 + _985 + 32 <= return_data.size
                            s = 0
                            while s < _985:
                                mem[_958 + ceil32(return_data.size) + s + 32] = mem[_958 + _971 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_985) > _985:
                                mem[_958 + ceil32(return_data.size) + _985 + 32] = 0
                            mem[_621 + 160] = _958 + ceil32(return_data.size)
            if t < u:
                revert with 'NH{q', 17
            if t - u >= mem[_317]:
                revert with 'NH{q', 50
            mem[(32 * t - u) + _317 + 32] = _621
            if u < 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            u = u - 1
            continue 
        _914 = mem[_317]
        idx = 0
        t = s
        while idx < _914:
            if idx >= mem[_317]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + _317 + 32] + 64] >= 10000:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t
                continue 
            mem[0] = mem[mem[(32 * idx) + _317 + 32] + 64]
            mem[32] = 5
            if sub_6d0c689e < sub_f7cae643[mem[0]]:
                revert with 'NH{q', 17
            if t > -sub_6d0c689e + sub_f7cae643[mem[0]] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t + sub_6d0c689e - sub_f7cae643[mem[0]]
            continue 
    else:
        mem[64] = _317 + (32 * t) + 224
        mem[_317 + (32 * t) + 32] = 0
        mem[_317 + (32 * t) + 64] = 0
        mem[_317 + (32 * t) + 96] = 0
        mem[_317 + (32 * t) + 128] = 0
        mem[_317 + (32 * t) + 160] = 0
        mem[_317 + (32 * t) + 192] = 96
        mem[var36001] = _317 + (32 * t) + 32
        u = var36001
        idx = var36002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[_317 + (32 * t) + 32] = 0
            mem[_317 + (32 * t) + 64] = 0
            mem[_317 + (32 * t) + 96] = 0
            mem[_317 + (32 * t) + 128] = 0
            mem[_317 + (32 * t) + 160] = 0
            mem[_317 + (32 * t) + 192] = 96
            mem[u + 32] = _317 + (32 * t) + 32
            u = u + 32
            idx = idx - 1
            continue 
        idx = 0
        u = t
        while idx < sub_61cf4863.length:
            if sub_61cf4863[idx] >= stor3.length:
                revert with 'NH{q', 50
            mem[0] = 3
            _1145 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1145] = bool(stor3[stor4[idx]].field_0)
            mem[_1145 + 32] = stor3[stor4[idx]].field_256
            mem[_1145 + 64] = stor3[stor4[idx]].field_512
            mem[_1145 + 96] = stor3[stor4[idx]].field_768
            mem[_1145 + 128] = stor3[stor4[idx]].field_1024
            if stor3[stor4[idx]].field_1280:
                if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                    revert with 'NH{q', 34
                _1151 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[stor4[idx]].field_1281) + 32
                mem[_1151] = stor3[stor4[idx]].field_1281
                if stor3[stor4[idx]].field_1280:
                    if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    if not stor3[stor4[idx]].field_1281:
                        mem[_1145 + 160] = _1151
                        if stor3[stor4[idx]].field_1024 != msg.sender:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            u = u
                            continue 
                        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xc87b56dd with:
                                gas gas_remaining wei
                               args stor3[stor4[idx]].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1205 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1212 = mem[_1205]
                        require mem[_1205] <= test266151307()
                        require _1205 + mem[_1205] + 31 < _1205 + return_data.size
                        _1228 = mem[_1205 + mem[_1205]]
                        if mem[_1205 + mem[_1205]] > test266151307():
                            revert with 'NH{q', 65
                        if _1205 + ceil32(return_data.size) + ceil32(ceil32(mem[_1205 + mem[_1205]])) + 1 > test266151307() or ceil32(ceil32(mem[_1205 + mem[_1205]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1205 + ceil32(return_data.size) + ceil32(ceil32(mem[_1205 + mem[_1205]])) + 1
                        mem[_1205 + ceil32(return_data.size)] = _1228
                        require _1212 + _1228 + 32 <= return_data.size
                        s = 0
                        while s < _1228:
                            mem[_1205 + ceil32(return_data.size) + s + 32] = mem[_1205 + _1212 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1228) > _1228:
                            mem[_1205 + ceil32(return_data.size) + _1228 + 32] = 0
                        mem[_1145 + 160] = _1205 + ceil32(return_data.size)
                    else:
                        if 31 >= stor3[stor4[idx]].field_1281:
                            mem[_1151 + 32] = 256 * stor3[stor4[idx]].field_1288
                            mem[_1145 + 160] = _1151
                            if stor3[stor4[idx]].field_1024 != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = u
                                continue 
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor4[idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1214 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1224 = mem[_1214]
                            require mem[_1214] <= test266151307()
                            require _1214 + mem[_1214] + 31 < _1214 + return_data.size
                            _1238 = mem[_1214 + mem[_1214]]
                            if mem[_1214 + mem[_1214]] > test266151307():
                                revert with 'NH{q', 65
                            if _1214 + ceil32(return_data.size) + ceil32(ceil32(mem[_1214 + mem[_1214]])) + 1 > test266151307() or ceil32(ceil32(mem[_1214 + mem[_1214]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1214 + ceil32(return_data.size) + ceil32(ceil32(mem[_1214 + mem[_1214]])) + 1
                            mem[_1214 + ceil32(return_data.size)] = _1238
                            require _1224 + _1238 + 32 <= return_data.size
                            s = 0
                            while s < _1238:
                                mem[_1214 + ceil32(return_data.size) + s + 32] = mem[_1214 + _1224 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1238) > _1238:
                                mem[_1214 + ceil32(return_data.size) + _1238 + 32] = 0
                            mem[_1145 + 160] = _1214 + ceil32(return_data.size)
                        else:
                            mem[0] = (6 * sub_61cf4863[idx]) + sha3(3) + 5
                            mem[_1151 + 32] = stor[sha3((6 * stor4[idx]) + ('name', 'stor3', 3) + 5)].field_0
                            s = _1151 + 32
                            v = sha3(mem[0])
                            while _1151 + stor3[stor4[idx]].field_1281 > s:
                                mem[s + 32] = uint256(stor1[v])
                                s = s + 32
                                v = v + 1
                                continue 
                            mem[_1145 + 160] = _1151
                            if mem[_1145 + 140 len 20] != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = u
                                continue 
                            _1316 = mem[_1145 + 64]
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1316
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _1316
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1329 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1334 = mem[_1329]
                            require mem[_1329] <= test266151307()
                            require _1329 + mem[_1329] + 31 < _1329 + return_data.size
                            _1353 = mem[_1329 + mem[_1329]]
                            if mem[_1329 + mem[_1329]] > test266151307():
                                revert with 'NH{q', 65
                            if _1329 + ceil32(return_data.size) + ceil32(ceil32(mem[_1329 + mem[_1329]])) + 1 > test266151307() or ceil32(ceil32(mem[_1329 + mem[_1329]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1329 + ceil32(return_data.size) + ceil32(ceil32(mem[_1329 + mem[_1329]])) + 1
                            mem[_1329 + ceil32(return_data.size)] = _1353
                            require _1334 + _1353 + 32 <= return_data.size
                            s = 0
                            while s < _1353:
                                mem[_1329 + ceil32(return_data.size) + s + 32] = mem[_1329 + _1334 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1353) > _1353:
                                mem[_1329 + ceil32(return_data.size) + _1353 + 32] = 0
                            mem[_1145 + 160] = _1329 + ceil32(return_data.size)
                else:
                    if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    if not stor3[stor4[idx]].field_1281:
                        mem[_1145 + 160] = _1151
                        if stor3[stor4[idx]].field_1024 != msg.sender:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            u = u
                            continue 
                        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xc87b56dd with:
                                gas gas_remaining wei
                               args stor3[stor4[idx]].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1208 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1217 = mem[_1208]
                        require mem[_1208] <= test266151307()
                        require _1208 + mem[_1208] + 31 < _1208 + return_data.size
                        _1234 = mem[_1208 + mem[_1208]]
                        if mem[_1208 + mem[_1208]] > test266151307():
                            revert with 'NH{q', 65
                        if _1208 + ceil32(return_data.size) + ceil32(ceil32(mem[_1208 + mem[_1208]])) + 1 > test266151307() or ceil32(ceil32(mem[_1208 + mem[_1208]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1208 + ceil32(return_data.size) + ceil32(ceil32(mem[_1208 + mem[_1208]])) + 1
                        mem[_1208 + ceil32(return_data.size)] = _1234
                        require _1217 + _1234 + 32 <= return_data.size
                        s = 0
                        while s < _1234:
                            mem[_1208 + ceil32(return_data.size) + s + 32] = mem[_1208 + _1217 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1234) > _1234:
                            mem[_1208 + ceil32(return_data.size) + _1234 + 32] = 0
                        mem[_1145 + 160] = _1208 + ceil32(return_data.size)
                    else:
                        if 31 >= stor3[stor4[idx]].field_1281:
                            mem[_1151 + 32] = 256 * stor3[stor4[idx]].field_1288
                            mem[_1145 + 160] = _1151
                            if stor3[stor4[idx]].field_1024 != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = u
                                continue 
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor4[idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1219 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1230 = mem[_1219]
                            require mem[_1219] <= test266151307()
                            require _1219 + mem[_1219] + 31 < _1219 + return_data.size
                            _1242 = mem[_1219 + mem[_1219]]
                            if mem[_1219 + mem[_1219]] > test266151307():
                                revert with 'NH{q', 65
                            if _1219 + ceil32(return_data.size) + ceil32(ceil32(mem[_1219 + mem[_1219]])) + 1 > test266151307() or ceil32(ceil32(mem[_1219 + mem[_1219]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1219 + ceil32(return_data.size) + ceil32(ceil32(mem[_1219 + mem[_1219]])) + 1
                            mem[_1219 + ceil32(return_data.size)] = _1242
                            require _1230 + _1242 + 32 <= return_data.size
                            s = 0
                            while s < _1242:
                                mem[_1219 + ceil32(return_data.size) + s + 32] = mem[_1219 + _1230 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1242) > _1242:
                                mem[_1219 + ceil32(return_data.size) + _1242 + 32] = 0
                            mem[_1145 + 160] = _1219 + ceil32(return_data.size)
                        else:
                            mem[0] = (6 * sub_61cf4863[idx]) + sha3(3) + 5
                            mem[_1151 + 32] = stor[sha3((6 * stor4[idx]) + ('name', 'stor3', 3) + 5)].field_0
                            s = _1151 + 32
                            v = sha3(mem[0])
                            while _1151 + stor3[stor4[idx]].field_1281 > s:
                                mem[s + 32] = uint256(stor1[v])
                                s = s + 32
                                v = v + 1
                                continue 
                            mem[_1145 + 160] = _1151
                            if mem[_1145 + 140 len 20] != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = u
                                continue 
                            _1318 = mem[_1145 + 64]
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1318
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _1318
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1330 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1337 = mem[_1330]
                            require mem[_1330] <= test266151307()
                            require _1330 + mem[_1330] + 31 < _1330 + return_data.size
                            _1354 = mem[_1330 + mem[_1330]]
                            if mem[_1330 + mem[_1330]] > test266151307():
                                revert with 'NH{q', 65
                            if _1330 + ceil32(return_data.size) + ceil32(ceil32(mem[_1330 + mem[_1330]])) + 1 > test266151307() or ceil32(ceil32(mem[_1330 + mem[_1330]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1330 + ceil32(return_data.size) + ceil32(ceil32(mem[_1330 + mem[_1330]])) + 1
                            mem[_1330 + ceil32(return_data.size)] = _1354
                            require _1337 + _1354 + 32 <= return_data.size
                            s = 0
                            while s < _1354:
                                mem[_1330 + ceil32(return_data.size) + s + 32] = mem[_1330 + _1337 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1354) > _1354:
                                mem[_1330 + ceil32(return_data.size) + _1354 + 32] = 0
                            mem[_1145 + 160] = _1330 + ceil32(return_data.size)
            else:
                if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                    revert with 'NH{q', 34
                _1152 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[stor4[idx]].field_1281) + 32
                mem[_1152] = stor3[stor4[idx]].field_1281
                if stor3[stor4[idx]].field_1280:
                    if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    if not stor3[stor4[idx]].field_1281:
                        mem[_1145 + 160] = _1152
                        if stor3[stor4[idx]].field_1024 != msg.sender:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            u = u
                            continue 
                        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xc87b56dd with:
                                gas gas_remaining wei
                               args stor3[stor4[idx]].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1210 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1220 = mem[_1210]
                        require mem[_1210] <= test266151307()
                        require _1210 + mem[_1210] + 31 < _1210 + return_data.size
                        _1235 = mem[_1210 + mem[_1210]]
                        if mem[_1210 + mem[_1210]] > test266151307():
                            revert with 'NH{q', 65
                        if _1210 + ceil32(return_data.size) + ceil32(ceil32(mem[_1210 + mem[_1210]])) + 1 > test266151307() or ceil32(ceil32(mem[_1210 + mem[_1210]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1210 + ceil32(return_data.size) + ceil32(ceil32(mem[_1210 + mem[_1210]])) + 1
                        mem[_1210 + ceil32(return_data.size)] = _1235
                        require _1220 + _1235 + 32 <= return_data.size
                        s = 0
                        while s < _1235:
                            mem[_1210 + ceil32(return_data.size) + s + 32] = mem[_1210 + _1220 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1235) > _1235:
                            mem[_1210 + ceil32(return_data.size) + _1235 + 32] = 0
                        mem[_1145 + 160] = _1210 + ceil32(return_data.size)
                    else:
                        if 31 >= stor3[stor4[idx]].field_1281:
                            mem[_1152 + 32] = 256 * stor3[stor4[idx]].field_1288
                            mem[_1145 + 160] = _1152
                            if stor3[stor4[idx]].field_1024 != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = u
                                continue 
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor4[idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1222 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1232 = mem[_1222]
                            require mem[_1222] <= test266151307()
                            require _1222 + mem[_1222] + 31 < _1222 + return_data.size
                            _1243 = mem[_1222 + mem[_1222]]
                            if mem[_1222 + mem[_1222]] > test266151307():
                                revert with 'NH{q', 65
                            if _1222 + ceil32(return_data.size) + ceil32(ceil32(mem[_1222 + mem[_1222]])) + 1 > test266151307() or ceil32(ceil32(mem[_1222 + mem[_1222]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1222 + ceil32(return_data.size) + ceil32(ceil32(mem[_1222 + mem[_1222]])) + 1
                            mem[_1222 + ceil32(return_data.size)] = _1243
                            require _1232 + _1243 + 32 <= return_data.size
                            s = 0
                            while s < _1243:
                                mem[_1222 + ceil32(return_data.size) + s + 32] = mem[_1222 + _1232 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1243) > _1243:
                                mem[_1222 + ceil32(return_data.size) + _1243 + 32] = 0
                            mem[_1145 + 160] = _1222 + ceil32(return_data.size)
                        else:
                            mem[0] = (6 * sub_61cf4863[idx]) + sha3(3) + 5
                            mem[_1152 + 32] = stor[sha3((6 * stor4[idx]) + ('name', 'stor3', 3) + 5)].field_0
                            s = _1152 + 32
                            v = sha3(mem[0])
                            while _1152 + stor3[stor4[idx]].field_1281 > s:
                                mem[s + 32] = uint256(stor1[v])
                                s = s + 32
                                v = v + 1
                                continue 
                            mem[_1145 + 160] = _1152
                            if mem[_1145 + 140 len 20] != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = u
                                continue 
                            _1320 = mem[_1145 + 64]
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1320
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _1320
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1331 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1340 = mem[_1331]
                            require mem[_1331] <= test266151307()
                            require _1331 + mem[_1331] + 31 < _1331 + return_data.size
                            _1355 = mem[_1331 + mem[_1331]]
                            if mem[_1331 + mem[_1331]] > test266151307():
                                revert with 'NH{q', 65
                            if _1331 + ceil32(return_data.size) + ceil32(ceil32(mem[_1331 + mem[_1331]])) + 1 > test266151307() or ceil32(ceil32(mem[_1331 + mem[_1331]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1331 + ceil32(return_data.size) + ceil32(ceil32(mem[_1331 + mem[_1331]])) + 1
                            mem[_1331 + ceil32(return_data.size)] = _1355
                            require _1340 + _1355 + 32 <= return_data.size
                            s = 0
                            while s < _1355:
                                mem[_1331 + ceil32(return_data.size) + s + 32] = mem[_1331 + _1340 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1355) > _1355:
                                mem[_1331 + ceil32(return_data.size) + _1355 + 32] = 0
                            mem[_1145 + 160] = _1331 + ceil32(return_data.size)
                else:
                    if stor3[stor4[idx]].field_1280 == stor3[stor4[idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    if not stor3[stor4[idx]].field_1281:
                        mem[_1145 + 160] = _1152
                        if stor3[stor4[idx]].field_1024 != msg.sender:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            u = u
                            continue 
                        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0xc87b56dd with:
                                gas gas_remaining wei
                               args stor3[stor4[idx]].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1215 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1225 = mem[_1215]
                        require mem[_1215] <= test266151307()
                        require _1215 + mem[_1215] + 31 < _1215 + return_data.size
                        _1241 = mem[_1215 + mem[_1215]]
                        if mem[_1215 + mem[_1215]] > test266151307():
                            revert with 'NH{q', 65
                        if _1215 + ceil32(return_data.size) + ceil32(ceil32(mem[_1215 + mem[_1215]])) + 1 > test266151307() or ceil32(ceil32(mem[_1215 + mem[_1215]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1215 + ceil32(return_data.size) + ceil32(ceil32(mem[_1215 + mem[_1215]])) + 1
                        mem[_1215 + ceil32(return_data.size)] = _1241
                        require _1225 + _1241 + 32 <= return_data.size
                        s = 0
                        while s < _1241:
                            mem[_1215 + ceil32(return_data.size) + s + 32] = mem[_1215 + _1225 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1241) > _1241:
                            mem[_1215 + ceil32(return_data.size) + _1241 + 32] = 0
                        mem[_1145 + 160] = _1215 + ceil32(return_data.size)
                    else:
                        if 31 >= stor3[stor4[idx]].field_1281:
                            mem[_1152 + 32] = 256 * stor3[stor4[idx]].field_1288
                            mem[_1145 + 160] = _1152
                            if stor3[stor4[idx]].field_1024 != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = u
                                continue 
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor4[idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor4[idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1227 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1237 = mem[_1227]
                            require mem[_1227] <= test266151307()
                            require _1227 + mem[_1227] + 31 < _1227 + return_data.size
                            _1246 = mem[_1227 + mem[_1227]]
                            if mem[_1227 + mem[_1227]] > test266151307():
                                revert with 'NH{q', 65
                            if _1227 + ceil32(return_data.size) + ceil32(ceil32(mem[_1227 + mem[_1227]])) + 1 > test266151307() or ceil32(ceil32(mem[_1227 + mem[_1227]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1227 + ceil32(return_data.size) + ceil32(ceil32(mem[_1227 + mem[_1227]])) + 1
                            mem[_1227 + ceil32(return_data.size)] = _1246
                            require _1237 + _1246 + 32 <= return_data.size
                            s = 0
                            while s < _1246:
                                mem[_1227 + ceil32(return_data.size) + s + 32] = mem[_1227 + _1237 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1246) > _1246:
                                mem[_1227 + ceil32(return_data.size) + _1246 + 32] = 0
                            mem[_1145 + 160] = _1227 + ceil32(return_data.size)
                        else:
                            mem[0] = (6 * sub_61cf4863[idx]) + sha3(3) + 5
                            mem[_1152 + 32] = stor[sha3((6 * stor4[idx]) + ('name', 'stor3', 3) + 5)].field_0
                            s = _1152 + 32
                            v = sha3(mem[0])
                            while _1152 + stor3[stor4[idx]].field_1281 > s:
                                mem[s + 32] = uint256(stor1[v])
                                s = s + 32
                                v = v + 1
                                continue 
                            mem[_1145 + 160] = _1152
                            if mem[_1145 + 140 len 20] != msg.sender:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = u
                                continue 
                            _1322 = mem[_1145 + 64]
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1322
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _1322
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1332 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1343 = mem[_1332]
                            require mem[_1332] <= test266151307()
                            require _1332 + mem[_1332] + 31 < _1332 + return_data.size
                            _1356 = mem[_1332 + mem[_1332]]
                            if mem[_1332 + mem[_1332]] > test266151307():
                                revert with 'NH{q', 65
                            if _1332 + ceil32(return_data.size) + ceil32(ceil32(mem[_1332 + mem[_1332]])) + 1 > test266151307() or ceil32(ceil32(mem[_1332 + mem[_1332]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1332 + ceil32(return_data.size) + ceil32(ceil32(mem[_1332 + mem[_1332]])) + 1
                            mem[_1332 + ceil32(return_data.size)] = _1356
                            require _1343 + _1356 + 32 <= return_data.size
                            s = 0
                            while s < _1356:
                                mem[_1332 + ceil32(return_data.size) + s + 32] = mem[_1332 + _1343 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1356) > _1356:
                                mem[_1332 + ceil32(return_data.size) + _1356 + 32] = 0
                            mem[_1145 + 160] = _1332 + ceil32(return_data.size)
            if t < u:
                revert with 'NH{q', 17
            if t - u >= mem[_317]:
                revert with 'NH{q', 50
            mem[(32 * t - u) + _317 + 32] = _1145
            if u < 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            u = u - 1
            continue 
        _1298 = mem[_317]
        idx = 0
        t = s
        while idx < _1298:
            if idx >= mem[_317]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + _317 + 32] + 64] >= 10000:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t
                continue 
            mem[0] = mem[mem[(32 * idx) + _317 + 32] + 64]
            mem[32] = 5
            if sub_6d0c689e < sub_f7cae643[mem[0]]:
                revert with 'NH{q', 17
            if t > -sub_6d0c689e + sub_f7cae643[mem[0]] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t + sub_6d0c689e - sub_f7cae643[mem[0]]
            continue 
    return t
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
                if stor[('name', 'sub_61cf4863', 4) + arg1 + idx] >= stor3.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                _580 = mem[64]
                mem[64] = mem[64] + 192
                mem[_580] = bool(stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_0)
                mem[_580 + 32] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_256
                mem[_580 + 64] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                mem[_580 + 96] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_768
                mem[_580 + 128] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1024
                if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280:
                    if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    _589 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281) + 32
                    mem[_589] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281
                    if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280:
                        if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                            revert with 'NH{q', 34
                        if not stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                            mem[_580 + 160] = _589
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _707 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _741 = mem[_707]
                            require mem[_707] <= test266151307()
                            require _707 + mem[_707] + 31 < _707 + return_data.size
                            _795 = mem[_707 + mem[_707]]
                            if mem[_707 + mem[_707]] > test266151307():
                                revert with 'NH{q', 65
                            if _707 + ceil32(return_data.size) + ceil32(ceil32(mem[_707 + mem[_707]])) + 1 > test266151307() or ceil32(ceil32(mem[_707 + mem[_707]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _707 + ceil32(return_data.size) + ceil32(ceil32(mem[_707 + mem[_707]])) + 1
                            mem[_707 + ceil32(return_data.size)] = _795
                            require _741 + _795 + 32 <= return_data.size
                            s = 0
                            while s < _795:
                                mem[_707 + ceil32(return_data.size) + s + 32] = mem[_707 + _741 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_795) > _795:
                                mem[_707 + ceil32(return_data.size) + _795 + 32] = 0
                            mem[_580 + 160] = _707 + ceil32(return_data.size)
                        else:
                            if 31 >= stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                                mem[_589 + 32] = 256 * stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1288
                                mem[_580 + 160] = _589
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _743 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _780 = mem[_743]
                                require mem[_743] <= test266151307()
                                require _743 + mem[_743] + 31 < _743 + return_data.size
                                _829 = mem[_743 + mem[_743]]
                                if mem[_743 + mem[_743]] > test266151307():
                                    revert with 'NH{q', 65
                                if _743 + ceil32(return_data.size) + ceil32(ceil32(mem[_743 + mem[_743]])) + 1 > test266151307() or ceil32(ceil32(mem[_743 + mem[_743]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _743 + ceil32(return_data.size) + ceil32(ceil32(mem[_743 + mem[_743]])) + 1
                                mem[_743 + ceil32(return_data.size)] = _829
                                require _780 + _829 + 32 <= return_data.size
                                s = 0
                                while s < _829:
                                    mem[_743 + ceil32(return_data.size) + s + 32] = mem[_743 + _780 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_829) > _829:
                                    mem[_743 + ceil32(return_data.size) + _829 + 32] = 0
                                mem[_580 + 160] = _743 + ceil32(return_data.size)
                            else:
                                mem[0] = (6 * stor[('name', 'sub_61cf4863', 4) + arg1 + idx]) + sha3(3) + 5
                                mem[_589 + 32] = stor[sha3((6 * stor[('name', 'stor4', 4) + arg1 + idx]) + ('name', 'stor3', 3) + 5)].field_0
                                s = _589 + 32
                                t = sha3(mem[0])
                                while _589 + stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_580 + 160] = _589
                                _1155 = mem[_580 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1155
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1155
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1221 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1231 = mem[_1221]
                                require mem[_1221] <= test266151307()
                                require _1221 + mem[_1221] + 31 < _1221 + return_data.size
                                _1246 = mem[_1221 + mem[_1221]]
                                if mem[_1221 + mem[_1221]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1221 + ceil32(return_data.size) + ceil32(ceil32(mem[_1221 + mem[_1221]])) + 1 > test266151307() or ceil32(ceil32(mem[_1221 + mem[_1221]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1221 + ceil32(return_data.size) + ceil32(ceil32(mem[_1221 + mem[_1221]])) + 1
                                mem[_1221 + ceil32(return_data.size)] = _1246
                                require _1231 + _1246 + 32 <= return_data.size
                                s = 0
                                while s < _1246:
                                    mem[_1221 + ceil32(return_data.size) + s + 32] = mem[_1221 + _1231 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1246) > _1246:
                                    mem[_1221 + ceil32(return_data.size) + _1246 + 32] = 0
                                mem[_580 + 160] = _1221 + ceil32(return_data.size)
                    else:
                        if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                            revert with 'NH{q', 34
                        if not stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                            mem[_580 + 160] = _589
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _725 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _760 = mem[_725]
                            require mem[_725] <= test266151307()
                            require _725 + mem[_725] + 31 < _725 + return_data.size
                            _812 = mem[_725 + mem[_725]]
                            if mem[_725 + mem[_725]] > test266151307():
                                revert with 'NH{q', 65
                            if _725 + ceil32(return_data.size) + ceil32(ceil32(mem[_725 + mem[_725]])) + 1 > test266151307() or ceil32(ceil32(mem[_725 + mem[_725]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _725 + ceil32(return_data.size) + ceil32(ceil32(mem[_725 + mem[_725]])) + 1
                            mem[_725 + ceil32(return_data.size)] = _812
                            require _760 + _812 + 32 <= return_data.size
                            s = 0
                            while s < _812:
                                mem[_725 + ceil32(return_data.size) + s + 32] = mem[_725 + _760 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_812) > _812:
                                mem[_725 + ceil32(return_data.size) + _812 + 32] = 0
                            mem[_580 + 160] = _725 + ceil32(return_data.size)
                        else:
                            if 31 >= stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                                mem[_589 + 32] = 256 * stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1288
                                mem[_580 + 160] = _589
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _762 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _797 = mem[_762]
                                require mem[_762] <= test266151307()
                                require _762 + mem[_762] + 31 < _762 + return_data.size
                                _847 = mem[_762 + mem[_762]]
                                if mem[_762 + mem[_762]] > test266151307():
                                    revert with 'NH{q', 65
                                if _762 + ceil32(return_data.size) + ceil32(ceil32(mem[_762 + mem[_762]])) + 1 > test266151307() or ceil32(ceil32(mem[_762 + mem[_762]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _762 + ceil32(return_data.size) + ceil32(ceil32(mem[_762 + mem[_762]])) + 1
                                mem[_762 + ceil32(return_data.size)] = _847
                                require _797 + _847 + 32 <= return_data.size
                                s = 0
                                while s < _847:
                                    mem[_762 + ceil32(return_data.size) + s + 32] = mem[_762 + _797 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_847) > _847:
                                    mem[_762 + ceil32(return_data.size) + _847 + 32] = 0
                                mem[_580 + 160] = _762 + ceil32(return_data.size)
                            else:
                                mem[0] = (6 * stor[('name', 'sub_61cf4863', 4) + arg1 + idx]) + sha3(3) + 5
                                mem[_589 + 32] = stor[sha3((6 * stor[('name', 'stor4', 4) + arg1 + idx]) + ('name', 'stor3', 3) + 5)].field_0
                                s = _589 + 32
                                t = sha3(mem[0])
                                while _589 + stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_580 + 160] = _589
                                _1157 = mem[_580 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1157
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1157
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1222 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1232 = mem[_1222]
                                require mem[_1222] <= test266151307()
                                require _1222 + mem[_1222] + 31 < _1222 + return_data.size
                                _1247 = mem[_1222 + mem[_1222]]
                                if mem[_1222 + mem[_1222]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1222 + ceil32(return_data.size) + ceil32(ceil32(mem[_1222 + mem[_1222]])) + 1 > test266151307() or ceil32(ceil32(mem[_1222 + mem[_1222]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1222 + ceil32(return_data.size) + ceil32(ceil32(mem[_1222 + mem[_1222]])) + 1
                                mem[_1222 + ceil32(return_data.size)] = _1247
                                require _1232 + _1247 + 32 <= return_data.size
                                s = 0
                                while s < _1247:
                                    mem[_1222 + ceil32(return_data.size) + s + 32] = mem[_1222 + _1232 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1247) > _1247:
                                    mem[_1222 + ceil32(return_data.size) + _1247 + 32] = 0
                                mem[_580 + 160] = _1222 + ceil32(return_data.size)
                else:
                    if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    _595 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281) + 32
                    mem[_595] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281
                    if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280:
                        if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                            revert with 'NH{q', 34
                        if not stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                            mem[_580 + 160] = _595
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _727 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _763 = mem[_727]
                            require mem[_727] <= test266151307()
                            require _727 + mem[_727] + 31 < _727 + return_data.size
                            _813 = mem[_727 + mem[_727]]
                            if mem[_727 + mem[_727]] > test266151307():
                                revert with 'NH{q', 65
                            if _727 + ceil32(return_data.size) + ceil32(ceil32(mem[_727 + mem[_727]])) + 1 > test266151307() or ceil32(ceil32(mem[_727 + mem[_727]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _727 + ceil32(return_data.size) + ceil32(ceil32(mem[_727 + mem[_727]])) + 1
                            mem[_727 + ceil32(return_data.size)] = _813
                            require _763 + _813 + 32 <= return_data.size
                            s = 0
                            while s < _813:
                                mem[_727 + ceil32(return_data.size) + s + 32] = mem[_727 + _763 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_813) > _813:
                                mem[_727 + ceil32(return_data.size) + _813 + 32] = 0
                            mem[_580 + 160] = _727 + ceil32(return_data.size)
                        else:
                            if 31 >= stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                                mem[_595 + 32] = 256 * stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1288
                                mem[_580 + 160] = _595
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _765 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _799 = mem[_765]
                                require mem[_765] <= test266151307()
                                require _765 + mem[_765] + 31 < _765 + return_data.size
                                _848 = mem[_765 + mem[_765]]
                                if mem[_765 + mem[_765]] > test266151307():
                                    revert with 'NH{q', 65
                                if _765 + ceil32(return_data.size) + ceil32(ceil32(mem[_765 + mem[_765]])) + 1 > test266151307() or ceil32(ceil32(mem[_765 + mem[_765]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _765 + ceil32(return_data.size) + ceil32(ceil32(mem[_765 + mem[_765]])) + 1
                                mem[_765 + ceil32(return_data.size)] = _848
                                require _799 + _848 + 32 <= return_data.size
                                s = 0
                                while s < _848:
                                    mem[_765 + ceil32(return_data.size) + s + 32] = mem[_765 + _799 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_848) > _848:
                                    mem[_765 + ceil32(return_data.size) + _848 + 32] = 0
                                mem[_580 + 160] = _765 + ceil32(return_data.size)
                            else:
                                mem[0] = (6 * stor[('name', 'sub_61cf4863', 4) + arg1 + idx]) + sha3(3) + 5
                                mem[_595 + 32] = stor[sha3((6 * stor[('name', 'stor4', 4) + arg1 + idx]) + ('name', 'stor3', 3) + 5)].field_0
                                s = _595 + 32
                                t = sha3(mem[0])
                                while _595 + stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_580 + 160] = _595
                                _1159 = mem[_580 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1159
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1159
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1223 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1233 = mem[_1223]
                                require mem[_1223] <= test266151307()
                                require _1223 + mem[_1223] + 31 < _1223 + return_data.size
                                _1248 = mem[_1223 + mem[_1223]]
                                if mem[_1223 + mem[_1223]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1223 + ceil32(return_data.size) + ceil32(ceil32(mem[_1223 + mem[_1223]])) + 1 > test266151307() or ceil32(ceil32(mem[_1223 + mem[_1223]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1223 + ceil32(return_data.size) + ceil32(ceil32(mem[_1223 + mem[_1223]])) + 1
                                mem[_1223 + ceil32(return_data.size)] = _1248
                                require _1233 + _1248 + 32 <= return_data.size
                                s = 0
                                while s < _1248:
                                    mem[_1223 + ceil32(return_data.size) + s + 32] = mem[_1223 + _1233 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1248) > _1248:
                                    mem[_1223 + ceil32(return_data.size) + _1248 + 32] = 0
                                mem[_580 + 160] = _1223 + ceil32(return_data.size)
                    else:
                        if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                            revert with 'NH{q', 34
                        if not stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                            mem[_580 + 160] = _595
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _744 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _781 = mem[_744]
                            require mem[_744] <= test266151307()
                            require _744 + mem[_744] + 31 < _744 + return_data.size
                            _832 = mem[_744 + mem[_744]]
                            if mem[_744 + mem[_744]] > test266151307():
                                revert with 'NH{q', 65
                            if _744 + ceil32(return_data.size) + ceil32(ceil32(mem[_744 + mem[_744]])) + 1 > test266151307() or ceil32(ceil32(mem[_744 + mem[_744]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _744 + ceil32(return_data.size) + ceil32(ceil32(mem[_744 + mem[_744]])) + 1
                            mem[_744 + ceil32(return_data.size)] = _832
                            require _781 + _832 + 32 <= return_data.size
                            s = 0
                            while s < _832:
                                mem[_744 + ceil32(return_data.size) + s + 32] = mem[_744 + _781 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_832) > _832:
                                mem[_744 + ceil32(return_data.size) + _832 + 32] = 0
                            mem[_580 + 160] = _744 + ceil32(return_data.size)
                        else:
                            if 31 >= stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                                mem[_595 + 32] = 256 * stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1288
                                mem[_580 + 160] = _595
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _783 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _815 = mem[_783]
                                require mem[_783] <= test266151307()
                                require _783 + mem[_783] + 31 < _783 + return_data.size
                                _869 = mem[_783 + mem[_783]]
                                if mem[_783 + mem[_783]] > test266151307():
                                    revert with 'NH{q', 65
                                if _783 + ceil32(return_data.size) + ceil32(ceil32(mem[_783 + mem[_783]])) + 1 > test266151307() or ceil32(ceil32(mem[_783 + mem[_783]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _783 + ceil32(return_data.size) + ceil32(ceil32(mem[_783 + mem[_783]])) + 1
                                mem[_783 + ceil32(return_data.size)] = _869
                                require _815 + _869 + 32 <= return_data.size
                                s = 0
                                while s < _869:
                                    mem[_783 + ceil32(return_data.size) + s + 32] = mem[_783 + _815 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_869) > _869:
                                    mem[_783 + ceil32(return_data.size) + _869 + 32] = 0
                                mem[_580 + 160] = _783 + ceil32(return_data.size)
                            else:
                                mem[0] = (6 * stor[('name', 'sub_61cf4863', 4) + arg1 + idx]) + sha3(3) + 5
                                mem[_595 + 32] = stor[sha3((6 * stor[('name', 'stor4', 4) + arg1 + idx]) + ('name', 'stor3', 3) + 5)].field_0
                                s = _595 + 32
                                t = sha3(mem[0])
                                while _595 + stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_580 + 160] = _595
                                _1161 = mem[_580 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1161
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1161
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1224 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1234 = mem[_1224]
                                require mem[_1224] <= test266151307()
                                require _1224 + mem[_1224] + 31 < _1224 + return_data.size
                                _1249 = mem[_1224 + mem[_1224]]
                                if mem[_1224 + mem[_1224]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1224 + ceil32(return_data.size) + ceil32(ceil32(mem[_1224 + mem[_1224]])) + 1 > test266151307() or ceil32(ceil32(mem[_1224 + mem[_1224]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1224 + ceil32(return_data.size) + ceil32(ceil32(mem[_1224 + mem[_1224]])) + 1
                                mem[_1224 + ceil32(return_data.size)] = _1249
                                require _1234 + _1249 + 32 <= return_data.size
                                s = 0
                                while s < _1249:
                                    mem[_1224 + ceil32(return_data.size) + s + 32] = mem[_1224 + _1234 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1249) > _1249:
                                    mem[_1224 + ceil32(return_data.size) + _1249 + 32] = 0
                                mem[_580 + 160] = _1224 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _580
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _571 = mem[64]
            mem[mem[64]] = 32
            _573 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _573:
                mem[u] = t + -_571 - 64
                _1137 = mem[s]
                mem[t] = bool(mem[mem[s]])
                mem[t + 32] = mem[_1137 + 32]
                mem[t + 64] = mem[_1137 + 64]
                mem[t + 96] = mem[_1137 + 96]
                mem[t + 128] = mem[_1137 + 140 len 20]
                _1291 = mem[_1137 + 160]
                mem[t + 160] = 192
                _1317 = mem[_1291]
                mem[t + 192] = mem[_1291]
                v = 0
                while v < _1317:
                    mem[t + v + 224] = mem[_1291 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1317) > _1317:
                    mem[t + _1317 + 224] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1317) + 224
                u = u + 32
                continue 
        else:
            mem[64] = (32 * arg2) + 320
            mem[(32 * arg2) + 128] = 0
            mem[(32 * arg2) + 160] = 0
            mem[(32 * arg2) + 192] = 0
            mem[(32 * arg2) + 224] = 0
            mem[(32 * arg2) + 256] = 0
            mem[(32 * arg2) + 288] = 96
            mem[var34001] = (32 * arg2) + 128
            s = var34001
            idx = var34002
            while idx - 1:
                mem[64] = mem[64] + 192
                mem[(32 * arg2) + 128] = 0
                mem[(32 * arg2) + 160] = 0
                mem[(32 * arg2) + 192] = 0
                mem[(32 * arg2) + 224] = 0
                mem[(32 * arg2) + 256] = 0
                mem[(32 * arg2) + 288] = 96
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
                if stor[('name', 'sub_61cf4863', 4) + arg1 + idx] >= stor3.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                _1600 = mem[64]
                mem[64] = mem[64] + 192
                mem[_1600] = bool(stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_0)
                mem[_1600 + 32] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_256
                mem[_1600 + 64] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                mem[_1600 + 96] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_768
                mem[_1600 + 128] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1024
                if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280:
                    if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    _1607 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281) + 32
                    mem[_1607] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281
                    if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280:
                        if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                            revert with 'NH{q', 34
                        if not stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                            mem[_1600 + 160] = _1607
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1681 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1695 = mem[_1681]
                            require mem[_1681] <= test266151307()
                            require _1681 + mem[_1681] + 31 < _1681 + return_data.size
                            _1729 = mem[_1681 + mem[_1681]]
                            if mem[_1681 + mem[_1681]] > test266151307():
                                revert with 'NH{q', 65
                            if _1681 + ceil32(return_data.size) + ceil32(ceil32(mem[_1681 + mem[_1681]])) + 1 > test266151307() or ceil32(ceil32(mem[_1681 + mem[_1681]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1681 + ceil32(return_data.size) + ceil32(ceil32(mem[_1681 + mem[_1681]])) + 1
                            mem[_1681 + ceil32(return_data.size)] = _1729
                            require _1695 + _1729 + 32 <= return_data.size
                            s = 0
                            while s < _1729:
                                mem[_1681 + ceil32(return_data.size) + s + 32] = mem[_1681 + _1695 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1729) > _1729:
                                mem[_1681 + ceil32(return_data.size) + _1729 + 32] = 0
                            mem[_1600 + 160] = _1681 + ceil32(return_data.size)
                        else:
                            if 31 >= stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                                mem[_1607 + 32] = 256 * stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1288
                                mem[_1600 + 160] = _1607
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1697 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1720 = mem[_1697]
                                require mem[_1697] <= test266151307()
                                require _1697 + mem[_1697] + 31 < _1697 + return_data.size
                                _1749 = mem[_1697 + mem[_1697]]
                                if mem[_1697 + mem[_1697]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1697 + ceil32(return_data.size) + ceil32(ceil32(mem[_1697 + mem[_1697]])) + 1 > test266151307() or ceil32(ceil32(mem[_1697 + mem[_1697]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1697 + ceil32(return_data.size) + ceil32(ceil32(mem[_1697 + mem[_1697]])) + 1
                                mem[_1697 + ceil32(return_data.size)] = _1749
                                require _1720 + _1749 + 32 <= return_data.size
                                s = 0
                                while s < _1749:
                                    mem[_1697 + ceil32(return_data.size) + s + 32] = mem[_1697 + _1720 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1749) > _1749:
                                    mem[_1697 + ceil32(return_data.size) + _1749 + 32] = 0
                                mem[_1600 + 160] = _1697 + ceil32(return_data.size)
                            else:
                                mem[0] = (6 * stor[('name', 'sub_61cf4863', 4) + arg1 + idx]) + sha3(3) + 5
                                mem[_1607 + 32] = stor[sha3((6 * stor[('name', 'stor4', 4) + arg1 + idx]) + ('name', 'stor3', 3) + 5)].field_0
                                s = _1607 + 32
                                t = sha3(mem[0])
                                while _1607 + stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1600 + 160] = _1607
                                _1893 = mem[_1600 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1893
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1893
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1955 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1965 = mem[_1955]
                                require mem[_1955] <= test266151307()
                                require _1955 + mem[_1955] + 31 < _1955 + return_data.size
                                _1974 = mem[_1955 + mem[_1955]]
                                if mem[_1955 + mem[_1955]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1955 + ceil32(return_data.size) + ceil32(ceil32(mem[_1955 + mem[_1955]])) + 1 > test266151307() or ceil32(ceil32(mem[_1955 + mem[_1955]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1955 + ceil32(return_data.size) + ceil32(ceil32(mem[_1955 + mem[_1955]])) + 1
                                mem[_1955 + ceil32(return_data.size)] = _1974
                                require _1965 + _1974 + 32 <= return_data.size
                                s = 0
                                while s < _1974:
                                    mem[_1955 + ceil32(return_data.size) + s + 32] = mem[_1955 + _1965 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1974) > _1974:
                                    mem[_1955 + ceil32(return_data.size) + _1974 + 32] = 0
                                mem[_1600 + 160] = _1955 + ceil32(return_data.size)
                    else:
                        if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                            revert with 'NH{q', 34
                        if not stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                            mem[_1600 + 160] = _1607
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1687 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1706 = mem[_1687]
                            require mem[_1687] <= test266151307()
                            require _1687 + mem[_1687] + 31 < _1687 + return_data.size
                            _1740 = mem[_1687 + mem[_1687]]
                            if mem[_1687 + mem[_1687]] > test266151307():
                                revert with 'NH{q', 65
                            if _1687 + ceil32(return_data.size) + ceil32(ceil32(mem[_1687 + mem[_1687]])) + 1 > test266151307() or ceil32(ceil32(mem[_1687 + mem[_1687]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1687 + ceil32(return_data.size) + ceil32(ceil32(mem[_1687 + mem[_1687]])) + 1
                            mem[_1687 + ceil32(return_data.size)] = _1740
                            require _1706 + _1740 + 32 <= return_data.size
                            s = 0
                            while s < _1740:
                                mem[_1687 + ceil32(return_data.size) + s + 32] = mem[_1687 + _1706 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1740) > _1740:
                                mem[_1687 + ceil32(return_data.size) + _1740 + 32] = 0
                            mem[_1600 + 160] = _1687 + ceil32(return_data.size)
                        else:
                            if 31 >= stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                                mem[_1607 + 32] = 256 * stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1288
                                mem[_1600 + 160] = _1607
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1708 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1731 = mem[_1708]
                                require mem[_1708] <= test266151307()
                                require _1708 + mem[_1708] + 31 < _1708 + return_data.size
                                _1757 = mem[_1708 + mem[_1708]]
                                if mem[_1708 + mem[_1708]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1708 + ceil32(return_data.size) + ceil32(ceil32(mem[_1708 + mem[_1708]])) + 1 > test266151307() or ceil32(ceil32(mem[_1708 + mem[_1708]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1708 + ceil32(return_data.size) + ceil32(ceil32(mem[_1708 + mem[_1708]])) + 1
                                mem[_1708 + ceil32(return_data.size)] = _1757
                                require _1731 + _1757 + 32 <= return_data.size
                                s = 0
                                while s < _1757:
                                    mem[_1708 + ceil32(return_data.size) + s + 32] = mem[_1708 + _1731 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1757) > _1757:
                                    mem[_1708 + ceil32(return_data.size) + _1757 + 32] = 0
                                mem[_1600 + 160] = _1708 + ceil32(return_data.size)
                            else:
                                mem[0] = (6 * stor[('name', 'sub_61cf4863', 4) + arg1 + idx]) + sha3(3) + 5
                                mem[_1607 + 32] = stor[sha3((6 * stor[('name', 'stor4', 4) + arg1 + idx]) + ('name', 'stor3', 3) + 5)].field_0
                                s = _1607 + 32
                                t = sha3(mem[0])
                                while _1607 + stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1600 + 160] = _1607
                                _1895 = mem[_1600 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1895
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1895
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1956 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1966 = mem[_1956]
                                require mem[_1956] <= test266151307()
                                require _1956 + mem[_1956] + 31 < _1956 + return_data.size
                                _1975 = mem[_1956 + mem[_1956]]
                                if mem[_1956 + mem[_1956]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1956 + ceil32(return_data.size) + ceil32(ceil32(mem[_1956 + mem[_1956]])) + 1 > test266151307() or ceil32(ceil32(mem[_1956 + mem[_1956]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1956 + ceil32(return_data.size) + ceil32(ceil32(mem[_1956 + mem[_1956]])) + 1
                                mem[_1956 + ceil32(return_data.size)] = _1975
                                require _1966 + _1975 + 32 <= return_data.size
                                s = 0
                                while s < _1975:
                                    mem[_1956 + ceil32(return_data.size) + s + 32] = mem[_1956 + _1966 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1975) > _1975:
                                    mem[_1956 + ceil32(return_data.size) + _1975 + 32] = 0
                                mem[_1600 + 160] = _1956 + ceil32(return_data.size)
                else:
                    if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    _1611 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281) + 32
                    mem[_1611] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281
                    if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280:
                        if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                            revert with 'NH{q', 34
                        if not stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                            mem[_1600 + 160] = _1611
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1689 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1709 = mem[_1689]
                            require mem[_1689] <= test266151307()
                            require _1689 + mem[_1689] + 31 < _1689 + return_data.size
                            _1741 = mem[_1689 + mem[_1689]]
                            if mem[_1689 + mem[_1689]] > test266151307():
                                revert with 'NH{q', 65
                            if _1689 + ceil32(return_data.size) + ceil32(ceil32(mem[_1689 + mem[_1689]])) + 1 > test266151307() or ceil32(ceil32(mem[_1689 + mem[_1689]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1689 + ceil32(return_data.size) + ceil32(ceil32(mem[_1689 + mem[_1689]])) + 1
                            mem[_1689 + ceil32(return_data.size)] = _1741
                            require _1709 + _1741 + 32 <= return_data.size
                            s = 0
                            while s < _1741:
                                mem[_1689 + ceil32(return_data.size) + s + 32] = mem[_1689 + _1709 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1741) > _1741:
                                mem[_1689 + ceil32(return_data.size) + _1741 + 32] = 0
                            mem[_1600 + 160] = _1689 + ceil32(return_data.size)
                        else:
                            if 31 >= stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                                mem[_1611 + 32] = 256 * stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1288
                                mem[_1600 + 160] = _1611
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1711 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1733 = mem[_1711]
                                require mem[_1711] <= test266151307()
                                require _1711 + mem[_1711] + 31 < _1711 + return_data.size
                                _1758 = mem[_1711 + mem[_1711]]
                                if mem[_1711 + mem[_1711]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1711 + ceil32(return_data.size) + ceil32(ceil32(mem[_1711 + mem[_1711]])) + 1 > test266151307() or ceil32(ceil32(mem[_1711 + mem[_1711]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1711 + ceil32(return_data.size) + ceil32(ceil32(mem[_1711 + mem[_1711]])) + 1
                                mem[_1711 + ceil32(return_data.size)] = _1758
                                require _1733 + _1758 + 32 <= return_data.size
                                s = 0
                                while s < _1758:
                                    mem[_1711 + ceil32(return_data.size) + s + 32] = mem[_1711 + _1733 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1758) > _1758:
                                    mem[_1711 + ceil32(return_data.size) + _1758 + 32] = 0
                                mem[_1600 + 160] = _1711 + ceil32(return_data.size)
                            else:
                                mem[0] = (6 * stor[('name', 'sub_61cf4863', 4) + arg1 + idx]) + sha3(3) + 5
                                mem[_1611 + 32] = stor[sha3((6 * stor[('name', 'stor4', 4) + arg1 + idx]) + ('name', 'stor3', 3) + 5)].field_0
                                s = _1611 + 32
                                t = sha3(mem[0])
                                while _1611 + stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1600 + 160] = _1611
                                _1897 = mem[_1600 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1897
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1897
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1957 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1967 = mem[_1957]
                                require mem[_1957] <= test266151307()
                                require _1957 + mem[_1957] + 31 < _1957 + return_data.size
                                _1976 = mem[_1957 + mem[_1957]]
                                if mem[_1957 + mem[_1957]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1957 + ceil32(return_data.size) + ceil32(ceil32(mem[_1957 + mem[_1957]])) + 1 > test266151307() or ceil32(ceil32(mem[_1957 + mem[_1957]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1957 + ceil32(return_data.size) + ceil32(ceil32(mem[_1957 + mem[_1957]])) + 1
                                mem[_1957 + ceil32(return_data.size)] = _1976
                                require _1967 + _1976 + 32 <= return_data.size
                                s = 0
                                while s < _1976:
                                    mem[_1957 + ceil32(return_data.size) + s + 32] = mem[_1957 + _1967 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1976) > _1976:
                                    mem[_1957 + ceil32(return_data.size) + _1976 + 32] = 0
                                mem[_1600 + 160] = _1957 + ceil32(return_data.size)
                    else:
                        if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                            revert with 'NH{q', 34
                        if not stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                            mem[_1600 + 160] = _1611
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1698 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1721 = mem[_1698]
                            require mem[_1698] <= test266151307()
                            require _1698 + mem[_1698] + 31 < _1698 + return_data.size
                            _1752 = mem[_1698 + mem[_1698]]
                            if mem[_1698 + mem[_1698]] > test266151307():
                                revert with 'NH{q', 65
                            if _1698 + ceil32(return_data.size) + ceil32(ceil32(mem[_1698 + mem[_1698]])) + 1 > test266151307() or ceil32(ceil32(mem[_1698 + mem[_1698]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1698 + ceil32(return_data.size) + ceil32(ceil32(mem[_1698 + mem[_1698]])) + 1
                            mem[_1698 + ceil32(return_data.size)] = _1752
                            require _1721 + _1752 + 32 <= return_data.size
                            s = 0
                            while s < _1752:
                                mem[_1698 + ceil32(return_data.size) + s + 32] = mem[_1698 + _1721 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1752) > _1752:
                                mem[_1698 + ceil32(return_data.size) + _1752 + 32] = 0
                            mem[_1600 + 160] = _1698 + ceil32(return_data.size)
                        else:
                            if 31 >= stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                                mem[_1611 + 32] = 256 * stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1288
                                mem[_1600 + 160] = _1611
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1723 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1743 = mem[_1723]
                                require mem[_1723] <= test266151307()
                                require _1723 + mem[_1723] + 31 < _1723 + return_data.size
                                _1765 = mem[_1723 + mem[_1723]]
                                if mem[_1723 + mem[_1723]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1723 + ceil32(return_data.size) + ceil32(ceil32(mem[_1723 + mem[_1723]])) + 1 > test266151307() or ceil32(ceil32(mem[_1723 + mem[_1723]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1723 + ceil32(return_data.size) + ceil32(ceil32(mem[_1723 + mem[_1723]])) + 1
                                mem[_1723 + ceil32(return_data.size)] = _1765
                                require _1743 + _1765 + 32 <= return_data.size
                                s = 0
                                while s < _1765:
                                    mem[_1723 + ceil32(return_data.size) + s + 32] = mem[_1723 + _1743 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1765) > _1765:
                                    mem[_1723 + ceil32(return_data.size) + _1765 + 32] = 0
                                mem[_1600 + 160] = _1723 + ceil32(return_data.size)
                            else:
                                mem[0] = (6 * stor[('name', 'sub_61cf4863', 4) + arg1 + idx]) + sha3(3) + 5
                                mem[_1611 + 32] = stor[sha3((6 * stor[('name', 'stor4', 4) + arg1 + idx]) + ('name', 'stor3', 3) + 5)].field_0
                                s = _1611 + 32
                                t = sha3(mem[0])
                                while _1611 + stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1600 + 160] = _1611
                                _1899 = mem[_1600 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1899
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1899
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1958 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1968 = mem[_1958]
                                require mem[_1958] <= test266151307()
                                require _1958 + mem[_1958] + 31 < _1958 + return_data.size
                                _1977 = mem[_1958 + mem[_1958]]
                                if mem[_1958 + mem[_1958]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1958 + ceil32(return_data.size) + ceil32(ceil32(mem[_1958 + mem[_1958]])) + 1 > test266151307() or ceil32(ceil32(mem[_1958 + mem[_1958]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1958 + ceil32(return_data.size) + ceil32(ceil32(mem[_1958 + mem[_1958]])) + 1
                                mem[_1958 + ceil32(return_data.size)] = _1977
                                require _1968 + _1977 + 32 <= return_data.size
                                s = 0
                                while s < _1977:
                                    mem[_1958 + ceil32(return_data.size) + s + 32] = mem[_1958 + _1968 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1977) > _1977:
                                    mem[_1958 + ceil32(return_data.size) + _1977 + 32] = 0
                                mem[_1600 + 160] = _1958 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1600
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1577 = mem[64]
            mem[mem[64]] = 32
            _1579 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _1579:
                mem[u] = t + -_1577 - 64
                _1875 = mem[s]
                mem[t] = bool(mem[mem[s]])
                mem[t + 32] = mem[_1875 + 32]
                mem[t + 64] = mem[_1875 + 64]
                mem[t + 96] = mem[_1875 + 96]
                mem[t + 128] = mem[_1875 + 140 len 20]
                _1993 = mem[_1875 + 160]
                mem[t + 160] = 192
                _1995 = mem[_1993]
                mem[t + 192] = mem[_1993]
                v = 0
                while v < _1995:
                    mem[t + v + 224] = mem[_1993 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1995) > _1995:
                    mem[t + _1995 + 224] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1995) + 224
                u = u + 32
                continue 
    else:
        if sub_61cf4863.length > test266151307():
            revert with 'NH{q', 65
        mem[96] = sub_61cf4863.length
        mem[64] = (32 * sub_61cf4863.length) + 128
        if not sub_61cf4863.length:
            idx = 0
            while idx < sub_61cf4863.length:
                if arg1 > -idx - 1:
                    revert with 'NH{q', 17
                if arg1 + idx >= sub_61cf4863.length:
                    revert with 'NH{q', 50
                if stor[('name', 'sub_61cf4863', 4) + arg1 + idx] >= stor3.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                _583 = mem[64]
                mem[64] = mem[64] + 192
                mem[_583] = bool(stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_0)
                mem[_583 + 32] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_256
                mem[_583 + 64] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                mem[_583 + 96] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_768
                mem[_583 + 128] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1024
                if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280:
                    if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    _593 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281) + 32
                    mem[_593] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281
                    if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280:
                        if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                            revert with 'NH{q', 34
                        if not stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                            mem[_583 + 160] = _593
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _716 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _750 = mem[_716]
                            require mem[_716] <= test266151307()
                            require _716 + mem[_716] + 31 < _716 + return_data.size
                            _803 = mem[_716 + mem[_716]]
                            if mem[_716 + mem[_716]] > test266151307():
                                revert with 'NH{q', 65
                            if _716 + ceil32(return_data.size) + ceil32(ceil32(mem[_716 + mem[_716]])) + 1 > test266151307() or ceil32(ceil32(mem[_716 + mem[_716]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _716 + ceil32(return_data.size) + ceil32(ceil32(mem[_716 + mem[_716]])) + 1
                            mem[_716 + ceil32(return_data.size)] = _803
                            require _750 + _803 + 32 <= return_data.size
                            s = 0
                            while s < _803:
                                mem[_716 + ceil32(return_data.size) + s + 32] = mem[_716 + _750 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_803) > _803:
                                mem[_716 + ceil32(return_data.size) + _803 + 32] = 0
                            mem[_583 + 160] = _716 + ceil32(return_data.size)
                        else:
                            if 31 >= stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                                mem[_593 + 32] = 256 * stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1288
                                mem[_583 + 160] = _593
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _752 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _788 = mem[_752]
                                require mem[_752] <= test266151307()
                                require _752 + mem[_752] + 31 < _752 + return_data.size
                                _838 = mem[_752 + mem[_752]]
                                if mem[_752 + mem[_752]] > test266151307():
                                    revert with 'NH{q', 65
                                if _752 + ceil32(return_data.size) + ceil32(ceil32(mem[_752 + mem[_752]])) + 1 > test266151307() or ceil32(ceil32(mem[_752 + mem[_752]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _752 + ceil32(return_data.size) + ceil32(ceil32(mem[_752 + mem[_752]])) + 1
                                mem[_752 + ceil32(return_data.size)] = _838
                                require _788 + _838 + 32 <= return_data.size
                                s = 0
                                while s < _838:
                                    mem[_752 + ceil32(return_data.size) + s + 32] = mem[_752 + _788 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_838) > _838:
                                    mem[_752 + ceil32(return_data.size) + _838 + 32] = 0
                                mem[_583 + 160] = _752 + ceil32(return_data.size)
                            else:
                                mem[0] = (6 * stor[('name', 'sub_61cf4863', 4) + arg1 + idx]) + sha3(3) + 5
                                mem[_593 + 32] = stor[sha3((6 * stor[('name', 'stor4', 4) + arg1 + idx]) + ('name', 'stor3', 3) + 5)].field_0
                                s = _593 + 32
                                t = sha3(mem[0])
                                while _593 + stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_583 + 160] = _593
                                _1163 = mem[_583 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1163
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1163
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1225 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1235 = mem[_1225]
                                require mem[_1225] <= test266151307()
                                require _1225 + mem[_1225] + 31 < _1225 + return_data.size
                                _1251 = mem[_1225 + mem[_1225]]
                                if mem[_1225 + mem[_1225]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1225 + ceil32(return_data.size) + ceil32(ceil32(mem[_1225 + mem[_1225]])) + 1 > test266151307() or ceil32(ceil32(mem[_1225 + mem[_1225]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1225 + ceil32(return_data.size) + ceil32(ceil32(mem[_1225 + mem[_1225]])) + 1
                                mem[_1225 + ceil32(return_data.size)] = _1251
                                require _1235 + _1251 + 32 <= return_data.size
                                s = 0
                                while s < _1251:
                                    mem[_1225 + ceil32(return_data.size) + s + 32] = mem[_1225 + _1235 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1251) > _1251:
                                    mem[_1225 + ceil32(return_data.size) + _1251 + 32] = 0
                                mem[_583 + 160] = _1225 + ceil32(return_data.size)
                    else:
                        if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                            revert with 'NH{q', 34
                        if not stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                            mem[_583 + 160] = _593
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _733 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _770 = mem[_733]
                            require mem[_733] <= test266151307()
                            require _733 + mem[_733] + 31 < _733 + return_data.size
                            _821 = mem[_733 + mem[_733]]
                            if mem[_733 + mem[_733]] > test266151307():
                                revert with 'NH{q', 65
                            if _733 + ceil32(return_data.size) + ceil32(ceil32(mem[_733 + mem[_733]])) + 1 > test266151307() or ceil32(ceil32(mem[_733 + mem[_733]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _733 + ceil32(return_data.size) + ceil32(ceil32(mem[_733 + mem[_733]])) + 1
                            mem[_733 + ceil32(return_data.size)] = _821
                            require _770 + _821 + 32 <= return_data.size
                            s = 0
                            while s < _821:
                                mem[_733 + ceil32(return_data.size) + s + 32] = mem[_733 + _770 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_821) > _821:
                                mem[_733 + ceil32(return_data.size) + _821 + 32] = 0
                            mem[_583 + 160] = _733 + ceil32(return_data.size)
                        else:
                            if 31 >= stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                                mem[_593 + 32] = 256 * stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1288
                                mem[_583 + 160] = _593
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _772 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _805 = mem[_772]
                                require mem[_772] <= test266151307()
                                require _772 + mem[_772] + 31 < _772 + return_data.size
                                _857 = mem[_772 + mem[_772]]
                                if mem[_772 + mem[_772]] > test266151307():
                                    revert with 'NH{q', 65
                                if _772 + ceil32(return_data.size) + ceil32(ceil32(mem[_772 + mem[_772]])) + 1 > test266151307() or ceil32(ceil32(mem[_772 + mem[_772]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _772 + ceil32(return_data.size) + ceil32(ceil32(mem[_772 + mem[_772]])) + 1
                                mem[_772 + ceil32(return_data.size)] = _857
                                require _805 + _857 + 32 <= return_data.size
                                s = 0
                                while s < _857:
                                    mem[_772 + ceil32(return_data.size) + s + 32] = mem[_772 + _805 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_857) > _857:
                                    mem[_772 + ceil32(return_data.size) + _857 + 32] = 0
                                mem[_583 + 160] = _772 + ceil32(return_data.size)
                            else:
                                mem[0] = (6 * stor[('name', 'sub_61cf4863', 4) + arg1 + idx]) + sha3(3) + 5
                                mem[_593 + 32] = stor[sha3((6 * stor[('name', 'stor4', 4) + arg1 + idx]) + ('name', 'stor3', 3) + 5)].field_0
                                s = _593 + 32
                                t = sha3(mem[0])
                                while _593 + stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_583 + 160] = _593
                                _1165 = mem[_583 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1165
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1165
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1226 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1236 = mem[_1226]
                                require mem[_1226] <= test266151307()
                                require _1226 + mem[_1226] + 31 < _1226 + return_data.size
                                _1252 = mem[_1226 + mem[_1226]]
                                if mem[_1226 + mem[_1226]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1226 + ceil32(return_data.size) + ceil32(ceil32(mem[_1226 + mem[_1226]])) + 1 > test266151307() or ceil32(ceil32(mem[_1226 + mem[_1226]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1226 + ceil32(return_data.size) + ceil32(ceil32(mem[_1226 + mem[_1226]])) + 1
                                mem[_1226 + ceil32(return_data.size)] = _1252
                                require _1236 + _1252 + 32 <= return_data.size
                                s = 0
                                while s < _1252:
                                    mem[_1226 + ceil32(return_data.size) + s + 32] = mem[_1226 + _1236 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1252) > _1252:
                                    mem[_1226 + ceil32(return_data.size) + _1252 + 32] = 0
                                mem[_583 + 160] = _1226 + ceil32(return_data.size)
                else:
                    if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    _598 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281) + 32
                    mem[_598] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281
                    if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280:
                        if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                            revert with 'NH{q', 34
                        if not stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                            mem[_583 + 160] = _598
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _735 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _773 = mem[_735]
                            require mem[_735] <= test266151307()
                            require _735 + mem[_735] + 31 < _735 + return_data.size
                            _822 = mem[_735 + mem[_735]]
                            if mem[_735 + mem[_735]] > test266151307():
                                revert with 'NH{q', 65
                            if _735 + ceil32(return_data.size) + ceil32(ceil32(mem[_735 + mem[_735]])) + 1 > test266151307() or ceil32(ceil32(mem[_735 + mem[_735]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _735 + ceil32(return_data.size) + ceil32(ceil32(mem[_735 + mem[_735]])) + 1
                            mem[_735 + ceil32(return_data.size)] = _822
                            require _773 + _822 + 32 <= return_data.size
                            s = 0
                            while s < _822:
                                mem[_735 + ceil32(return_data.size) + s + 32] = mem[_735 + _773 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_822) > _822:
                                mem[_735 + ceil32(return_data.size) + _822 + 32] = 0
                            mem[_583 + 160] = _735 + ceil32(return_data.size)
                        else:
                            if 31 >= stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                                mem[_598 + 32] = 256 * stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1288
                                mem[_583 + 160] = _598
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _775 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _807 = mem[_775]
                                require mem[_775] <= test266151307()
                                require _775 + mem[_775] + 31 < _775 + return_data.size
                                _858 = mem[_775 + mem[_775]]
                                if mem[_775 + mem[_775]] > test266151307():
                                    revert with 'NH{q', 65
                                if _775 + ceil32(return_data.size) + ceil32(ceil32(mem[_775 + mem[_775]])) + 1 > test266151307() or ceil32(ceil32(mem[_775 + mem[_775]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _775 + ceil32(return_data.size) + ceil32(ceil32(mem[_775 + mem[_775]])) + 1
                                mem[_775 + ceil32(return_data.size)] = _858
                                require _807 + _858 + 32 <= return_data.size
                                s = 0
                                while s < _858:
                                    mem[_775 + ceil32(return_data.size) + s + 32] = mem[_775 + _807 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_858) > _858:
                                    mem[_775 + ceil32(return_data.size) + _858 + 32] = 0
                                mem[_583 + 160] = _775 + ceil32(return_data.size)
                            else:
                                mem[0] = (6 * stor[('name', 'sub_61cf4863', 4) + arg1 + idx]) + sha3(3) + 5
                                mem[_598 + 32] = stor[sha3((6 * stor[('name', 'stor4', 4) + arg1 + idx]) + ('name', 'stor3', 3) + 5)].field_0
                                s = _598 + 32
                                t = sha3(mem[0])
                                while _598 + stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_583 + 160] = _598
                                _1167 = mem[_583 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1167
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1167
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1227 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1237 = mem[_1227]
                                require mem[_1227] <= test266151307()
                                require _1227 + mem[_1227] + 31 < _1227 + return_data.size
                                _1253 = mem[_1227 + mem[_1227]]
                                if mem[_1227 + mem[_1227]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1227 + ceil32(return_data.size) + ceil32(ceil32(mem[_1227 + mem[_1227]])) + 1 > test266151307() or ceil32(ceil32(mem[_1227 + mem[_1227]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1227 + ceil32(return_data.size) + ceil32(ceil32(mem[_1227 + mem[_1227]])) + 1
                                mem[_1227 + ceil32(return_data.size)] = _1253
                                require _1237 + _1253 + 32 <= return_data.size
                                s = 0
                                while s < _1253:
                                    mem[_1227 + ceil32(return_data.size) + s + 32] = mem[_1227 + _1237 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1253) > _1253:
                                    mem[_1227 + ceil32(return_data.size) + _1253 + 32] = 0
                                mem[_583 + 160] = _1227 + ceil32(return_data.size)
                    else:
                        if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                            revert with 'NH{q', 34
                        if not stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                            mem[_583 + 160] = _598
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _753 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _789 = mem[_753]
                            require mem[_753] <= test266151307()
                            require _753 + mem[_753] + 31 < _753 + return_data.size
                            _841 = mem[_753 + mem[_753]]
                            if mem[_753 + mem[_753]] > test266151307():
                                revert with 'NH{q', 65
                            if _753 + ceil32(return_data.size) + ceil32(ceil32(mem[_753 + mem[_753]])) + 1 > test266151307() or ceil32(ceil32(mem[_753 + mem[_753]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _753 + ceil32(return_data.size) + ceil32(ceil32(mem[_753 + mem[_753]])) + 1
                            mem[_753 + ceil32(return_data.size)] = _841
                            require _789 + _841 + 32 <= return_data.size
                            s = 0
                            while s < _841:
                                mem[_753 + ceil32(return_data.size) + s + 32] = mem[_753 + _789 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_841) > _841:
                                mem[_753 + ceil32(return_data.size) + _841 + 32] = 0
                            mem[_583 + 160] = _753 + ceil32(return_data.size)
                        else:
                            if 31 >= stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                                mem[_598 + 32] = 256 * stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1288
                                mem[_583 + 160] = _598
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _791 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _824 = mem[_791]
                                require mem[_791] <= test266151307()
                                require _791 + mem[_791] + 31 < _791 + return_data.size
                                _877 = mem[_791 + mem[_791]]
                                if mem[_791 + mem[_791]] > test266151307():
                                    revert with 'NH{q', 65
                                if _791 + ceil32(return_data.size) + ceil32(ceil32(mem[_791 + mem[_791]])) + 1 > test266151307() or ceil32(ceil32(mem[_791 + mem[_791]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _791 + ceil32(return_data.size) + ceil32(ceil32(mem[_791 + mem[_791]])) + 1
                                mem[_791 + ceil32(return_data.size)] = _877
                                require _824 + _877 + 32 <= return_data.size
                                s = 0
                                while s < _877:
                                    mem[_791 + ceil32(return_data.size) + s + 32] = mem[_791 + _824 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_877) > _877:
                                    mem[_791 + ceil32(return_data.size) + _877 + 32] = 0
                                mem[_583 + 160] = _791 + ceil32(return_data.size)
                            else:
                                mem[0] = (6 * stor[('name', 'sub_61cf4863', 4) + arg1 + idx]) + sha3(3) + 5
                                mem[_598 + 32] = stor[sha3((6 * stor[('name', 'stor4', 4) + arg1 + idx]) + ('name', 'stor3', 3) + 5)].field_0
                                s = _598 + 32
                                t = sha3(mem[0])
                                while _598 + stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_583 + 160] = _598
                                _1169 = mem[_583 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1169
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1169
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1228 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1238 = mem[_1228]
                                require mem[_1228] <= test266151307()
                                require _1228 + mem[_1228] + 31 < _1228 + return_data.size
                                _1254 = mem[_1228 + mem[_1228]]
                                if mem[_1228 + mem[_1228]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1228 + ceil32(return_data.size) + ceil32(ceil32(mem[_1228 + mem[_1228]])) + 1 > test266151307() or ceil32(ceil32(mem[_1228 + mem[_1228]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1228 + ceil32(return_data.size) + ceil32(ceil32(mem[_1228 + mem[_1228]])) + 1
                                mem[_1228 + ceil32(return_data.size)] = _1254
                                require _1238 + _1254 + 32 <= return_data.size
                                s = 0
                                while s < _1254:
                                    mem[_1228 + ceil32(return_data.size) + s + 32] = mem[_1228 + _1238 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1254) > _1254:
                                    mem[_1228 + ceil32(return_data.size) + _1254 + 32] = 0
                                mem[_583 + 160] = _1228 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _583
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _572 = mem[64]
            mem[mem[64]] = 32
            _574 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _574:
                mem[u] = t + -_572 - 64
                _1146 = mem[s]
                mem[t] = bool(mem[mem[s]])
                mem[t + 32] = mem[_1146 + 32]
                mem[t + 64] = mem[_1146 + 64]
                mem[t + 96] = mem[_1146 + 96]
                mem[t + 128] = mem[_1146 + 140 len 20]
                _1298 = mem[_1146 + 160]
                mem[t + 160] = 192
                _1322 = mem[_1298]
                mem[t + 192] = mem[_1298]
                v = 0
                while v < _1322:
                    mem[t + v + 224] = mem[_1298 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1322) > _1322:
                    mem[t + _1322 + 224] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1322) + 224
                u = u + 32
                continue 
        else:
            mem[64] = (32 * sub_61cf4863.length) + 320
            mem[(32 * sub_61cf4863.length) + 128] = 0
            mem[(32 * sub_61cf4863.length) + 160] = 0
            mem[(32 * sub_61cf4863.length) + 192] = 0
            mem[(32 * sub_61cf4863.length) + 224] = 0
            mem[(32 * sub_61cf4863.length) + 256] = 0
            mem[(32 * sub_61cf4863.length) + 288] = 96
            mem[var35001] = (32 * sub_61cf4863.length) + 128
            s = var35001
            idx = var35002
            while idx - 1:
                mem[64] = mem[64] + 192
                mem[(32 * sub_61cf4863.length) + 128] = 0
                mem[(32 * sub_61cf4863.length) + 160] = 0
                mem[(32 * sub_61cf4863.length) + 192] = 0
                mem[(32 * sub_61cf4863.length) + 224] = 0
                mem[(32 * sub_61cf4863.length) + 256] = 0
                mem[(32 * sub_61cf4863.length) + 288] = 96
                mem[s + 32] = (32 * sub_61cf4863.length) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < sub_61cf4863.length:
                if arg1 > -idx - 1:
                    revert with 'NH{q', 17
                if arg1 + idx >= sub_61cf4863.length:
                    revert with 'NH{q', 50
                if stor[('name', 'sub_61cf4863', 4) + arg1 + idx] >= stor3.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                _1602 = mem[64]
                mem[64] = mem[64] + 192
                mem[_1602] = bool(stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_0)
                mem[_1602 + 32] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_256
                mem[_1602 + 64] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                mem[_1602 + 96] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_768
                mem[_1602 + 128] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1024
                if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280:
                    if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    _1610 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281) + 32
                    mem[_1610] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281
                    if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280:
                        if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                            revert with 'NH{q', 34
                        if not stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                            mem[_1602 + 160] = _1610
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1684 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1700 = mem[_1684]
                            require mem[_1684] <= test266151307()
                            require _1684 + mem[_1684] + 31 < _1684 + return_data.size
                            _1734 = mem[_1684 + mem[_1684]]
                            if mem[_1684 + mem[_1684]] > test266151307():
                                revert with 'NH{q', 65
                            if _1684 + ceil32(return_data.size) + ceil32(ceil32(mem[_1684 + mem[_1684]])) + 1 > test266151307() or ceil32(ceil32(mem[_1684 + mem[_1684]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1684 + ceil32(return_data.size) + ceil32(ceil32(mem[_1684 + mem[_1684]])) + 1
                            mem[_1684 + ceil32(return_data.size)] = _1734
                            require _1700 + _1734 + 32 <= return_data.size
                            s = 0
                            while s < _1734:
                                mem[_1684 + ceil32(return_data.size) + s + 32] = mem[_1684 + _1700 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1734) > _1734:
                                mem[_1684 + ceil32(return_data.size) + _1734 + 32] = 0
                            mem[_1602 + 160] = _1684 + ceil32(return_data.size)
                        else:
                            if 31 >= stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                                mem[_1610 + 32] = 256 * stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1288
                                mem[_1602 + 160] = _1610
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1702 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1725 = mem[_1702]
                                require mem[_1702] <= test266151307()
                                require _1702 + mem[_1702] + 31 < _1702 + return_data.size
                                _1753 = mem[_1702 + mem[_1702]]
                                if mem[_1702 + mem[_1702]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1702 + ceil32(return_data.size) + ceil32(ceil32(mem[_1702 + mem[_1702]])) + 1 > test266151307() or ceil32(ceil32(mem[_1702 + mem[_1702]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1702 + ceil32(return_data.size) + ceil32(ceil32(mem[_1702 + mem[_1702]])) + 1
                                mem[_1702 + ceil32(return_data.size)] = _1753
                                require _1725 + _1753 + 32 <= return_data.size
                                s = 0
                                while s < _1753:
                                    mem[_1702 + ceil32(return_data.size) + s + 32] = mem[_1702 + _1725 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1753) > _1753:
                                    mem[_1702 + ceil32(return_data.size) + _1753 + 32] = 0
                                mem[_1602 + 160] = _1702 + ceil32(return_data.size)
                            else:
                                mem[0] = (6 * stor[('name', 'sub_61cf4863', 4) + arg1 + idx]) + sha3(3) + 5
                                mem[_1610 + 32] = stor[sha3((6 * stor[('name', 'stor4', 4) + arg1 + idx]) + ('name', 'stor3', 3) + 5)].field_0
                                s = _1610 + 32
                                t = sha3(mem[0])
                                while _1610 + stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1602 + 160] = _1610
                                _1901 = mem[_1602 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1901
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1901
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1959 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1969 = mem[_1959]
                                require mem[_1959] <= test266151307()
                                require _1959 + mem[_1959] + 31 < _1959 + return_data.size
                                _1979 = mem[_1959 + mem[_1959]]
                                if mem[_1959 + mem[_1959]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1959 + ceil32(return_data.size) + ceil32(ceil32(mem[_1959 + mem[_1959]])) + 1 > test266151307() or ceil32(ceil32(mem[_1959 + mem[_1959]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1959 + ceil32(return_data.size) + ceil32(ceil32(mem[_1959 + mem[_1959]])) + 1
                                mem[_1959 + ceil32(return_data.size)] = _1979
                                require _1969 + _1979 + 32 <= return_data.size
                                s = 0
                                while s < _1979:
                                    mem[_1959 + ceil32(return_data.size) + s + 32] = mem[_1959 + _1969 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1979) > _1979:
                                    mem[_1959 + ceil32(return_data.size) + _1979 + 32] = 0
                                mem[_1602 + 160] = _1959 + ceil32(return_data.size)
                    else:
                        if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                            revert with 'NH{q', 34
                        if not stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                            mem[_1602 + 160] = _1610
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1691 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1713 = mem[_1691]
                            require mem[_1691] <= test266151307()
                            require _1691 + mem[_1691] + 31 < _1691 + return_data.size
                            _1745 = mem[_1691 + mem[_1691]]
                            if mem[_1691 + mem[_1691]] > test266151307():
                                revert with 'NH{q', 65
                            if _1691 + ceil32(return_data.size) + ceil32(ceil32(mem[_1691 + mem[_1691]])) + 1 > test266151307() or ceil32(ceil32(mem[_1691 + mem[_1691]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1691 + ceil32(return_data.size) + ceil32(ceil32(mem[_1691 + mem[_1691]])) + 1
                            mem[_1691 + ceil32(return_data.size)] = _1745
                            require _1713 + _1745 + 32 <= return_data.size
                            s = 0
                            while s < _1745:
                                mem[_1691 + ceil32(return_data.size) + s + 32] = mem[_1691 + _1713 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1745) > _1745:
                                mem[_1691 + ceil32(return_data.size) + _1745 + 32] = 0
                            mem[_1602 + 160] = _1691 + ceil32(return_data.size)
                        else:
                            if 31 >= stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                                mem[_1610 + 32] = 256 * stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1288
                                mem[_1602 + 160] = _1610
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1715 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1736 = mem[_1715]
                                require mem[_1715] <= test266151307()
                                require _1715 + mem[_1715] + 31 < _1715 + return_data.size
                                _1760 = mem[_1715 + mem[_1715]]
                                if mem[_1715 + mem[_1715]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1715 + ceil32(return_data.size) + ceil32(ceil32(mem[_1715 + mem[_1715]])) + 1 > test266151307() or ceil32(ceil32(mem[_1715 + mem[_1715]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1715 + ceil32(return_data.size) + ceil32(ceil32(mem[_1715 + mem[_1715]])) + 1
                                mem[_1715 + ceil32(return_data.size)] = _1760
                                require _1736 + _1760 + 32 <= return_data.size
                                s = 0
                                while s < _1760:
                                    mem[_1715 + ceil32(return_data.size) + s + 32] = mem[_1715 + _1736 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1760) > _1760:
                                    mem[_1715 + ceil32(return_data.size) + _1760 + 32] = 0
                                mem[_1602 + 160] = _1715 + ceil32(return_data.size)
                            else:
                                mem[0] = (6 * stor[('name', 'sub_61cf4863', 4) + arg1 + idx]) + sha3(3) + 5
                                mem[_1610 + 32] = stor[sha3((6 * stor[('name', 'stor4', 4) + arg1 + idx]) + ('name', 'stor3', 3) + 5)].field_0
                                s = _1610 + 32
                                t = sha3(mem[0])
                                while _1610 + stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1602 + 160] = _1610
                                _1903 = mem[_1602 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1903
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1903
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1960 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1970 = mem[_1960]
                                require mem[_1960] <= test266151307()
                                require _1960 + mem[_1960] + 31 < _1960 + return_data.size
                                _1980 = mem[_1960 + mem[_1960]]
                                if mem[_1960 + mem[_1960]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1960 + ceil32(return_data.size) + ceil32(ceil32(mem[_1960 + mem[_1960]])) + 1 > test266151307() or ceil32(ceil32(mem[_1960 + mem[_1960]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1960 + ceil32(return_data.size) + ceil32(ceil32(mem[_1960 + mem[_1960]])) + 1
                                mem[_1960 + ceil32(return_data.size)] = _1980
                                require _1970 + _1980 + 32 <= return_data.size
                                s = 0
                                while s < _1980:
                                    mem[_1960 + ceil32(return_data.size) + s + 32] = mem[_1960 + _1970 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1980) > _1980:
                                    mem[_1960 + ceil32(return_data.size) + _1980 + 32] = 0
                                mem[_1602 + 160] = _1960 + ceil32(return_data.size)
                else:
                    if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                        revert with 'NH{q', 34
                    _1612 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281) + 32
                    mem[_1612] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281
                    if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280:
                        if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                            revert with 'NH{q', 34
                        if not stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                            mem[_1602 + 160] = _1612
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1693 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1716 = mem[_1693]
                            require mem[_1693] <= test266151307()
                            require _1693 + mem[_1693] + 31 < _1693 + return_data.size
                            _1746 = mem[_1693 + mem[_1693]]
                            if mem[_1693 + mem[_1693]] > test266151307():
                                revert with 'NH{q', 65
                            if _1693 + ceil32(return_data.size) + ceil32(ceil32(mem[_1693 + mem[_1693]])) + 1 > test266151307() or ceil32(ceil32(mem[_1693 + mem[_1693]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1693 + ceil32(return_data.size) + ceil32(ceil32(mem[_1693 + mem[_1693]])) + 1
                            mem[_1693 + ceil32(return_data.size)] = _1746
                            require _1716 + _1746 + 32 <= return_data.size
                            s = 0
                            while s < _1746:
                                mem[_1693 + ceil32(return_data.size) + s + 32] = mem[_1693 + _1716 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1746) > _1746:
                                mem[_1693 + ceil32(return_data.size) + _1746 + 32] = 0
                            mem[_1602 + 160] = _1693 + ceil32(return_data.size)
                        else:
                            if 31 >= stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                                mem[_1612 + 32] = 256 * stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1288
                                mem[_1602 + 160] = _1612
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1718 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1738 = mem[_1718]
                                require mem[_1718] <= test266151307()
                                require _1718 + mem[_1718] + 31 < _1718 + return_data.size
                                _1761 = mem[_1718 + mem[_1718]]
                                if mem[_1718 + mem[_1718]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1718 + ceil32(return_data.size) + ceil32(ceil32(mem[_1718 + mem[_1718]])) + 1 > test266151307() or ceil32(ceil32(mem[_1718 + mem[_1718]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1718 + ceil32(return_data.size) + ceil32(ceil32(mem[_1718 + mem[_1718]])) + 1
                                mem[_1718 + ceil32(return_data.size)] = _1761
                                require _1738 + _1761 + 32 <= return_data.size
                                s = 0
                                while s < _1761:
                                    mem[_1718 + ceil32(return_data.size) + s + 32] = mem[_1718 + _1738 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1761) > _1761:
                                    mem[_1718 + ceil32(return_data.size) + _1761 + 32] = 0
                                mem[_1602 + 160] = _1718 + ceil32(return_data.size)
                            else:
                                mem[0] = (6 * stor[('name', 'sub_61cf4863', 4) + arg1 + idx]) + sha3(3) + 5
                                mem[_1612 + 32] = stor[sha3((6 * stor[('name', 'stor4', 4) + arg1 + idx]) + ('name', 'stor3', 3) + 5)].field_0
                                s = _1612 + 32
                                t = sha3(mem[0])
                                while _1612 + stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1602 + 160] = _1612
                                _1905 = mem[_1602 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1905
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1905
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1961 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1971 = mem[_1961]
                                require mem[_1961] <= test266151307()
                                require _1961 + mem[_1961] + 31 < _1961 + return_data.size
                                _1981 = mem[_1961 + mem[_1961]]
                                if mem[_1961 + mem[_1961]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1961 + ceil32(return_data.size) + ceil32(ceil32(mem[_1961 + mem[_1961]])) + 1 > test266151307() or ceil32(ceil32(mem[_1961 + mem[_1961]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1961 + ceil32(return_data.size) + ceil32(ceil32(mem[_1961 + mem[_1961]])) + 1
                                mem[_1961 + ceil32(return_data.size)] = _1981
                                require _1971 + _1981 + 32 <= return_data.size
                                s = 0
                                while s < _1981:
                                    mem[_1961 + ceil32(return_data.size) + s + 32] = mem[_1961 + _1971 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1981) > _1981:
                                    mem[_1961 + ceil32(return_data.size) + _1981 + 32] = 0
                                mem[_1602 + 160] = _1961 + ceil32(return_data.size)
                    else:
                        if stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1280 == stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 < 32:
                            revert with 'NH{q', 34
                        if not stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                            mem[_1602 + 160] = _1612
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1703 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1726 = mem[_1703]
                            require mem[_1703] <= test266151307()
                            require _1703 + mem[_1703] + 31 < _1703 + return_data.size
                            _1756 = mem[_1703 + mem[_1703]]
                            if mem[_1703 + mem[_1703]] > test266151307():
                                revert with 'NH{q', 65
                            if _1703 + ceil32(return_data.size) + ceil32(ceil32(mem[_1703 + mem[_1703]])) + 1 > test266151307() or ceil32(ceil32(mem[_1703 + mem[_1703]])) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1703 + ceil32(return_data.size) + ceil32(ceil32(mem[_1703 + mem[_1703]])) + 1
                            mem[_1703 + ceil32(return_data.size)] = _1756
                            require _1726 + _1756 + 32 <= return_data.size
                            s = 0
                            while s < _1756:
                                mem[_1703 + ceil32(return_data.size) + s + 32] = mem[_1703 + _1726 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1756) > _1756:
                                mem[_1703 + ceil32(return_data.size) + _1756 + 32] = 0
                            mem[_1602 + 160] = _1703 + ceil32(return_data.size)
                        else:
                            if 31 >= stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281:
                                mem[_1612 + 32] = 256 * stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1288
                                mem[_1602 + 160] = _1612
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1728 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1748 = mem[_1728]
                                require mem[_1728] <= test266151307()
                                require _1728 + mem[_1728] + 31 < _1728 + return_data.size
                                _1768 = mem[_1728 + mem[_1728]]
                                if mem[_1728 + mem[_1728]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1728 + ceil32(return_data.size) + ceil32(ceil32(mem[_1728 + mem[_1728]])) + 1 > test266151307() or ceil32(ceil32(mem[_1728 + mem[_1728]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1728 + ceil32(return_data.size) + ceil32(ceil32(mem[_1728 + mem[_1728]])) + 1
                                mem[_1728 + ceil32(return_data.size)] = _1768
                                require _1748 + _1768 + 32 <= return_data.size
                                s = 0
                                while s < _1768:
                                    mem[_1728 + ceil32(return_data.size) + s + 32] = mem[_1728 + _1748 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1768) > _1768:
                                    mem[_1728 + ceil32(return_data.size) + _1768 + 32] = 0
                                mem[_1602 + 160] = _1728 + ceil32(return_data.size)
                            else:
                                mem[0] = (6 * stor[('name', 'sub_61cf4863', 4) + arg1 + idx]) + sha3(3) + 5
                                mem[_1612 + 32] = stor[sha3((6 * stor[('name', 'stor4', 4) + arg1 + idx]) + ('name', 'stor3', 3) + 5)].field_0
                                s = _1612 + 32
                                t = sha3(mem[0])
                                while _1612 + stor3[stor[('name', 'stor4', 4) + arg1 + idx]].field_1281 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1602 + 160] = _1612
                                _1907 = mem[_1602 + 64]
                                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1907
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xc87b56dd with:
                                        gas gas_remaining wei
                                       args _1907
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1962 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1972 = mem[_1962]
                                require mem[_1962] <= test266151307()
                                require _1962 + mem[_1962] + 31 < _1962 + return_data.size
                                _1982 = mem[_1962 + mem[_1962]]
                                if mem[_1962 + mem[_1962]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1962 + ceil32(return_data.size) + ceil32(ceil32(mem[_1962 + mem[_1962]])) + 1 > test266151307() or ceil32(ceil32(mem[_1962 + mem[_1962]])) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1962 + ceil32(return_data.size) + ceil32(ceil32(mem[_1962 + mem[_1962]])) + 1
                                mem[_1962 + ceil32(return_data.size)] = _1982
                                require _1972 + _1982 + 32 <= return_data.size
                                s = 0
                                while s < _1982:
                                    mem[_1962 + ceil32(return_data.size) + s + 32] = mem[_1962 + _1972 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_1982) > _1982:
                                    mem[_1962 + ceil32(return_data.size) + _1982 + 32] = 0
                                mem[_1602 + 160] = _1962 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1602
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1578 = mem[64]
            mem[mem[64]] = 32
            _1580 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _1580:
                mem[u] = t + -_1578 - 64
                _1884 = mem[s]
                mem[t] = bool(mem[mem[s]])
                mem[t + 32] = mem[_1884 + 32]
                mem[t + 64] = mem[_1884 + 64]
                mem[t + 96] = mem[_1884 + 96]
                mem[t + 128] = mem[_1884 + 140 len 20]
                _1994 = mem[_1884 + 160]
                mem[t + 160] = 192
                _1996 = mem[_1994]
                mem[t + 192] = mem[_1994]
                v = 0
                while v < _1996:
                    mem[t + v + 224] = mem[_1994 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1996) > _1996:
                    mem[t + _1996 + 224] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1996) + 224
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
