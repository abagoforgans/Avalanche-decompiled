contract main {




// =====================  Runtime code  =====================


const CheckBlockTimestamp = block.timestamp


address owner;
address lock_fees_account;
uint256 stor2;
uint256 lockFees;
uint256 lockerNumberOpen;
mapping of struct sub_84a0b485;
mapping of struct sub_3092ed1a;
mapping of address lockerRecord;
mapping of uint256 userLockerCount;
mapping of uint256 sub_c11c09c0;

function LockerRecord(uint256 arg1) {
    require calldata.size - 4 >= 32
    return address(lockerRecord[arg1])
}

function sub_3092ed1a(?) {
    require calldata.size - 4 >= 64
    mem[128] = sub_3092ed1a[arg1][arg2][1].field_0
    idx = 128
    s = 0
    while sub_3092ed1a[arg1][arg2][1].length + 96 > idx:
        mem[idx + 32] = sub_3092ed1a[arg1][arg2][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bool(sub_3092ed1a[arg1][arg2].field_0), 
           bool(sub_3092ed1a[arg1][arg2].field_8),
           Array(len=sub_3092ed1a[arg1][arg2][1].length, data=mem[128 len sub_3092ed1a[arg1][arg2][1].length]),
           sub_3092ed1a[arg1][arg2].field_512,
           sub_3092ed1a[arg1][arg2].field_768,
           sub_3092ed1a[arg1][arg2].field_1024,
           sub_3092ed1a[arg1][arg2].field_1280,
           sub_3092ed1a[arg1][arg2].field_1536,
           sub_3092ed1a[arg1][arg2].field_1792,
           sub_3092ed1a[arg1][arg2].field_2048,
           sub_3092ed1a[arg1][arg2].field_2304,
           sub_3092ed1a[arg1][arg2].field_2560,
           sub_3092ed1a[arg1][arg2].field_2816
}

function lockerNumberOpen() {
    return lockerNumberOpen
}

function sub_84a0b485(?) {
    require calldata.size - 4 >= 64
    mem[128] = sub_84a0b485[arg1][arg2][1].field_0
    idx = 128
    s = 0
    while sub_84a0b485[arg1][arg2][1].length + 96 > idx:
        mem[idx + 32] = sub_84a0b485[arg1][arg2][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bool(sub_84a0b485[arg1][arg2].field_0), 
           bool(sub_84a0b485[arg1][arg2].field_8),
           Array(len=sub_84a0b485[arg1][arg2][1].length, data=mem[128 len sub_84a0b485[arg1][arg2][1].length]),
           sub_84a0b485[arg1][arg2].field_512,
           sub_84a0b485[arg1][arg2].field_768,
           sub_84a0b485[arg1][arg2].field_1024,
           sub_84a0b485[arg1][arg2].field_1280,
           sub_84a0b485[arg1][arg2].field_1536,
           sub_84a0b485[arg1][arg2].field_1792,
           sub_84a0b485[arg1][arg2].field_2048,
           sub_84a0b485[arg1][arg2].field_2304,
           sub_84a0b485[arg1][arg2].field_2560,
           sub_84a0b485[arg1][arg2].field_2816
}

function owner() {
    return owner
}

function lockFees() {
    return lockFees
}

function sub_c11c09c0(?) {
    require calldata.size - 4 >= 32
    return sub_c11c09c0[arg1]
}

function UserLockerCount(address arg1) {
    require calldata.size - 4 >= 32
    return userLockerCount[arg1]
}

function Lock_fees_account() {
    return lock_fees_account
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeLockFeesAcc(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0, 'err: LockDep - address cant be 0'
    lock_fees_account = arg1
}

function tokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function changeFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x646572723a204c6f636b446570202d2066656573206d7573742062652067726561746572207468616e2030,
                    mem[207 len 21]
    lockFees = arg1
}

function changeLogo(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not sub_84a0b485[msg.sender][arg1].field_0:
        revert with 0, 
                    32,
                    35,
                    0x736572723a204c6f636b446570202d206c6f636b657220646f65736e74206578697374,
                    mem[ceil32(arg2.length) + 231 len 29]
    sub_84a0b485[msg.sender][arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function sub_129fa7e8(?) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if msg.value < lockFees:
        revert with 0, 
                    32,
                    51,
                    0x776572723a204c6f636b446570202d20706c6561736520707574206d73672e76616c7565203e3d206c6f636b696e6720666565,
                    mem[ceil32(arg5.length) + 247 len 13]
    call lock_fees_account with:
       value lockFees wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_84a0b485[msg.sender][stor8[msg.sender]].field_0:
        revert with 0, 
                    32,
                    42,
                    0xfe6572723a204c6f636b446570202d207573657220616c7265616479206d6164652061206c6f636b6572,
                    mem[ceil32(arg5.length) + 238 len 22]
    require arg4
    if 100 % arg4:
        revert with 0, 
                    32,
                    66,
                    0x216572723a204c6f636b446570202d2076657374696e672070657263656e74616765206d7573742064697669646520313030207769746820302072656d61696e6465,
                    mem[ceil32(arg5.length) + 262 len 30]
    if arg2 <= block.timestamp:
        revert with 0, 
                    32,
                    49,
                    0x746572723a204c6f636b446570202d204c6f636b2074696d65206d75737420626520686967686572207468616e206e6f77,
                    mem[ceil32(arg5.length) + 245 len 15]
    if arg3 <= 0:
        revert with 0, 
                    32,
                    40,
                    0x726572723a204c6f636b446570202d20746f6b656e20416d6f756e74206d757374206265203e2030,
                    mem[ceil32(arg5.length) + 236 len 24]
    if not arg4:
        revert with 0, 'SafeMath: division by zero'
    if block.timestamp > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor2 / arg4:
        revert with 0, 'SafeMath: division by zero'
    if not arg4:
        revert with 0, 'SafeMath: division by zero'
    if not stor2 / arg4:
        revert with 0, 'SafeMath: division by zero'
    sub_84a0b485[msg.sender][stor8[msg.sender]].field_0 = 1
    sub_84a0b485[msg.sender][stor8[msg.sender]].field_8 = 1
    sub_84a0b485[msg.sender][stor8[msg.sender]].field_16 = 0
    sub_84a0b485[msg.sender][stor8[msg.sender]][1][].field_0 = Array(len=arg5.length, data=arg5[all])
    sub_84a0b485[msg.sender][stor8[msg.sender]].field_512 = arg3
    sub_84a0b485[msg.sender][stor8[msg.sender]].field_768 = arg2
    sub_84a0b485[msg.sender][stor8[msg.sender]].field_1024 = arg4
    sub_84a0b485[msg.sender][stor8[msg.sender]].field_1280 = block.timestamp
    sub_84a0b485[msg.sender][stor8[msg.sender]].field_1536 = block.timestamp
    sub_84a0b485[msg.sender][stor8[msg.sender]].field_1792 = stor2 / arg4
    sub_84a0b485[msg.sender][stor8[msg.sender]].field_2048 = stor2 / arg4
    sub_84a0b485[msg.sender][stor8[msg.sender]].field_2304 = arg2 - block.timestamp / stor2 / arg4
    sub_84a0b485[msg.sender][stor8[msg.sender]].field_2560 = arg3 / stor2 / arg4
    sub_84a0b485[msg.sender][stor8[msg.sender]].field_2816 = arg1
    sub_3092ed1a[address(arg1)][stor9[address(arg1)]].field_0 = 1
    sub_3092ed1a[address(arg1)][stor9[address(arg1)]].field_8 = 1
    sub_3092ed1a[address(arg1)][stor9[address(arg1)]].field_16 = 0
    sub_3092ed1a[address(arg1)][stor9[address(arg1)]][1][].field_0 = Array(len=arg5.length, data=arg5[all])
    sub_3092ed1a[address(arg1)][stor9[address(arg1)]].field_512 = arg3
    sub_3092ed1a[address(arg1)][stor9[address(arg1)]].field_768 = arg2
    sub_3092ed1a[address(arg1)][stor9[address(arg1)]].field_1024 = arg4
    sub_3092ed1a[address(arg1)][stor9[address(arg1)]].field_1280 = block.timestamp
    sub_3092ed1a[address(arg1)][stor9[address(arg1)]].field_1536 = block.timestamp
    sub_3092ed1a[address(arg1)][stor9[address(arg1)]].field_1792 = stor2 / arg4
    sub_3092ed1a[address(arg1)][stor9[address(arg1)]].field_2048 = stor2 / arg4
    sub_3092ed1a[address(arg1)][stor9[address(arg1)]].field_2304 = arg2 - block.timestamp / stor2 / arg4
    sub_3092ed1a[address(arg1)][stor9[address(arg1)]].field_2560 = arg3 / stor2 / arg4
    sub_3092ed1a[address(arg1)][stor9[address(arg1)]].field_2816 = arg1
    uint256(lockerRecord[stor4]) = msg.sender or Mask(96, 160, uint256(lockerRecord[stor4]))
    lockerNumberOpen++
    userLockerCount[msg.sender]++
    sub_c11c09c0[address(arg1)]++
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    48,
                    0x216572723a204c6f636b446570202d20556e61626c6520746f2067657420746f6b656e7320666f72206c6f636b696e67,
                    mem[ceil32(arg5.length) + 1524 len 16]
    emit 0x598cd562: msg.sender, address(arg1), arg3, block.timestamp, arg2
}

function unlockToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not sub_84a0b485[msg.sender][arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x216572723a204c6f636b446570202d207573657220646f65736e7420686176652061206c6f636b6572,
                    mem[205 len 23]
    if not sub_84a0b485[msg.sender][arg1].field_8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x216572723a204c6f636b446570202d2075736572277320746f6b656e7320617265206e6f74206c6f636b6564,
                    mem[208 len 20]
    if sub_84a0b485[msg.sender][arg1].field_1536 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_84a0b485[msg.sender][arg1].field_2304:
        revert with 0, 'SafeMath: division by zero'
    if block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304 < sub_84a0b485[msg.sender][arg1].field_2048:
        if not sub_84a0b485[msg.sender][arg1].field_2560:
            if block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304 <= 0:
                revert with 0, 
                            32,
                            49,
                            0x216572723a204c6f636b446570202d206d75737420686176652061746c656173742031207061796f757420766573746564,
                            mem[341 len 15]
            if not sub_84a0b485[msg.sender][arg1].field_2048:
                revert with 0, 32, 35, 0x216572723a204c6f636b446570202d206e6f206d6f7265207061796f757473206c6566, mem[327 len 29]
            if block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304 > sub_84a0b485[msg.sender][arg1].field_2048:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_84a0b485[msg.sender][arg1].field_2048 -= block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304
            if block.timestamp > sub_84a0b485[msg.sender][arg1].field_768:
                sub_84a0b485[msg.sender][arg1].field_8 = 0
            else:
                if not sub_84a0b485[msg.sender][arg1].field_2048:
                    sub_84a0b485[msg.sender][arg1].field_8 = 0
            if not block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304:
                if sub_84a0b485[msg.sender][arg1].field_1536 < sub_84a0b485[msg.sender][arg1].field_1536:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if sub_84a0b485[msg.sender][arg1].field_2304 * block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304 / block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304 != sub_84a0b485[msg.sender][arg1].field_2304:
                    revert with 0, 32, 33, 0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if (sub_84a0b485[msg.sender][arg1].field_2304 * block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304) + sub_84a0b485[msg.sender][arg1].field_1536 < sub_84a0b485[msg.sender][arg1].field_1536:
                    revert with 0, 'SafeMath: addition overflow'
                sub_84a0b485[msg.sender][arg1].field_1536 += sub_84a0b485[msg.sender][arg1].field_2304 * block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304
            require ext_code.size(sub_84a0b485[msg.sender][arg1].field_2816)
            staticcall sub_84a0b485[msg.sender][arg1].field_2816.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 32, 43, 0x216572723a204c6f636b6572202d206e6f206d6f726520746f6b656e73206c65667420746f20726566756e, mem[399 len 21]
            require ext_code.size(sub_84a0b485[msg.sender][arg1].field_2816)
            call sub_84a0b485[msg.sender][arg1].field_2816.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            45,
                            0x216572723a204c6f636b6572202d20546f6b656e20726566756e6420746f2063726561746f72206661696c6564,
                            mem[401 len 19]
            emit 0x70b37289: msg.sender, sub_84a0b485[msg.sender][arg1].field_2816, 0, block.timestamp
        else:
            if block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304 * sub_84a0b485[msg.sender][arg1].field_2560 / sub_84a0b485[msg.sender][arg1].field_2560 != block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304:
                revert with 0, 32, 33, 0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304 <= 0:
                revert with 0, 
                            32,
                            49,
                            0x216572723a204c6f636b446570202d206d75737420686176652061746c656173742031207061796f757420766573746564,
                            mem[341 len 15]
            if not sub_84a0b485[msg.sender][arg1].field_2048:
                revert with 0, 32, 35, 0x216572723a204c6f636b446570202d206e6f206d6f7265207061796f757473206c6566, mem[327 len 29]
            if block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304 > sub_84a0b485[msg.sender][arg1].field_2048:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_84a0b485[msg.sender][arg1].field_2048 -= block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304
            if block.timestamp > sub_84a0b485[msg.sender][arg1].field_768:
                sub_84a0b485[msg.sender][arg1].field_8 = 0
            else:
                if not sub_84a0b485[msg.sender][arg1].field_2048:
                    sub_84a0b485[msg.sender][arg1].field_8 = 0
            if not block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304:
                if sub_84a0b485[msg.sender][arg1].field_1536 < sub_84a0b485[msg.sender][arg1].field_1536:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if sub_84a0b485[msg.sender][arg1].field_2304 * block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304 / block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304 != sub_84a0b485[msg.sender][arg1].field_2304:
                    revert with 0, 32, 33, 0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if (sub_84a0b485[msg.sender][arg1].field_2304 * block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304) + sub_84a0b485[msg.sender][arg1].field_1536 < sub_84a0b485[msg.sender][arg1].field_1536:
                    revert with 0, 'SafeMath: addition overflow'
                sub_84a0b485[msg.sender][arg1].field_1536 += sub_84a0b485[msg.sender][arg1].field_2304 * block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304
            require ext_code.size(sub_84a0b485[msg.sender][arg1].field_2816)
            staticcall sub_84a0b485[msg.sender][arg1].field_2816.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304 * sub_84a0b485[msg.sender][arg1].field_2560:
                revert with 0, 32, 43, 0x216572723a204c6f636b6572202d206e6f206d6f726520746f6b656e73206c65667420746f20726566756e, mem[399 len 21]
            require ext_code.size(sub_84a0b485[msg.sender][arg1].field_2816)
            call sub_84a0b485[msg.sender][arg1].field_2816.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304 * sub_84a0b485[msg.sender][arg1].field_2560
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            45,
                            0x216572723a204c6f636b6572202d20546f6b656e20726566756e6420746f2063726561746f72206661696c6564,
                            mem[401 len 19]
            emit 0x70b37289: msg.sender, sub_84a0b485[msg.sender][arg1].field_2816, block.timestamp - sub_84a0b485[msg.sender][arg1].field_1536 / sub_84a0b485[msg.sender][arg1].field_2304 * sub_84a0b485[msg.sender][arg1].field_2560, block.timestamp
    else:
        if not sub_84a0b485[msg.sender][arg1].field_2560:
            if sub_84a0b485[msg.sender][arg1].field_2048 <= 0:
                revert with 0, 
                            32,
                            49,
                            0x216572723a204c6f636b446570202d206d75737420686176652061746c656173742031207061796f757420766573746564,
                            mem[341 len 15]
            if not sub_84a0b485[msg.sender][arg1].field_2048:
                revert with 0, 32, 35, 0x216572723a204c6f636b446570202d206e6f206d6f7265207061796f757473206c6566, mem[327 len 29]
            if sub_84a0b485[msg.sender][arg1].field_2048 > sub_84a0b485[msg.sender][arg1].field_2048:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_84a0b485[msg.sender][arg1].field_2048 = 0
            if block.timestamp > sub_84a0b485[msg.sender][arg1].field_768:
                sub_84a0b485[msg.sender][arg1].field_8 = 0
            else:
                if not sub_84a0b485[msg.sender][arg1].field_2048:
                    sub_84a0b485[msg.sender][arg1].field_8 = 0
            if not sub_84a0b485[msg.sender][arg1].field_2048:
                if sub_84a0b485[msg.sender][arg1].field_1536 < sub_84a0b485[msg.sender][arg1].field_1536:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if sub_84a0b485[msg.sender][arg1].field_2304 * sub_84a0b485[msg.sender][arg1].field_2048 / sub_84a0b485[msg.sender][arg1].field_2048 != sub_84a0b485[msg.sender][arg1].field_2304:
                    revert with 0, 32, 33, 0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if (sub_84a0b485[msg.sender][arg1].field_2304 * sub_84a0b485[msg.sender][arg1].field_2048) + sub_84a0b485[msg.sender][arg1].field_1536 < sub_84a0b485[msg.sender][arg1].field_1536:
                    revert with 0, 'SafeMath: addition overflow'
                sub_84a0b485[msg.sender][arg1].field_1536 += sub_84a0b485[msg.sender][arg1].field_2304 * sub_84a0b485[msg.sender][arg1].field_2048
            require ext_code.size(sub_84a0b485[msg.sender][arg1].field_2816)
            staticcall sub_84a0b485[msg.sender][arg1].field_2816.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 32, 43, 0x216572723a204c6f636b6572202d206e6f206d6f726520746f6b656e73206c65667420746f20726566756e, mem[399 len 21]
            require ext_code.size(sub_84a0b485[msg.sender][arg1].field_2816)
            call sub_84a0b485[msg.sender][arg1].field_2816.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            45,
                            0x216572723a204c6f636b6572202d20546f6b656e20726566756e6420746f2063726561746f72206661696c6564,
                            mem[401 len 19]
            emit 0x70b37289: msg.sender, sub_84a0b485[msg.sender][arg1].field_2816, 0, block.timestamp
        else:
            if sub_84a0b485[msg.sender][arg1].field_2048 * sub_84a0b485[msg.sender][arg1].field_2560 / sub_84a0b485[msg.sender][arg1].field_2560 != sub_84a0b485[msg.sender][arg1].field_2048:
                revert with 0, 32, 33, 0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if sub_84a0b485[msg.sender][arg1].field_2048 <= 0:
                revert with 0, 
                            32,
                            49,
                            0x216572723a204c6f636b446570202d206d75737420686176652061746c656173742031207061796f757420766573746564,
                            mem[341 len 15]
            if not sub_84a0b485[msg.sender][arg1].field_2048:
                revert with 0, 32, 35, 0x216572723a204c6f636b446570202d206e6f206d6f7265207061796f757473206c6566, mem[327 len 29]
            if sub_84a0b485[msg.sender][arg1].field_2048 > sub_84a0b485[msg.sender][arg1].field_2048:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_84a0b485[msg.sender][arg1].field_2048 = 0
            if block.timestamp > sub_84a0b485[msg.sender][arg1].field_768:
                sub_84a0b485[msg.sender][arg1].field_8 = 0
            else:
                if not sub_84a0b485[msg.sender][arg1].field_2048:
                    sub_84a0b485[msg.sender][arg1].field_8 = 0
            if not sub_84a0b485[msg.sender][arg1].field_2048:
                if sub_84a0b485[msg.sender][arg1].field_1536 < sub_84a0b485[msg.sender][arg1].field_1536:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if sub_84a0b485[msg.sender][arg1].field_2304 * sub_84a0b485[msg.sender][arg1].field_2048 / sub_84a0b485[msg.sender][arg1].field_2048 != sub_84a0b485[msg.sender][arg1].field_2304:
                    revert with 0, 32, 33, 0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if (sub_84a0b485[msg.sender][arg1].field_2304 * sub_84a0b485[msg.sender][arg1].field_2048) + sub_84a0b485[msg.sender][arg1].field_1536 < sub_84a0b485[msg.sender][arg1].field_1536:
                    revert with 0, 'SafeMath: addition overflow'
                sub_84a0b485[msg.sender][arg1].field_1536 += sub_84a0b485[msg.sender][arg1].field_2304 * sub_84a0b485[msg.sender][arg1].field_2048
            require ext_code.size(sub_84a0b485[msg.sender][arg1].field_2816)
            staticcall sub_84a0b485[msg.sender][arg1].field_2816.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_84a0b485[msg.sender][arg1].field_2048 * sub_84a0b485[msg.sender][arg1].field_2560:
                revert with 0, 32, 43, 0x216572723a204c6f636b6572202d206e6f206d6f726520746f6b656e73206c65667420746f20726566756e, mem[399 len 21]
            require ext_code.size(sub_84a0b485[msg.sender][arg1].field_2816)
            call sub_84a0b485[msg.sender][arg1].field_2816.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_84a0b485[msg.sender][arg1].field_2048 * sub_84a0b485[msg.sender][arg1].field_2560
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            45,
                            0x216572723a204c6f636b6572202d20546f6b656e20726566756e6420746f2063726561746f72206661696c6564,
                            mem[401 len 19]
            emit 0x70b37289: msg.sender, sub_84a0b485[msg.sender][arg1].field_2816, sub_84a0b485[msg.sender][arg1].field_2048 * sub_84a0b485[msg.sender][arg1].field_2560, block.timestamp
}



}
