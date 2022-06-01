contract main {




// =====================  Runtime code  =====================


#
#  - sub_9ed8a317(?)
#
const ledger = 0x5c18ad1e3118654d9149148a5438eb681178fe77


address owner;
array of address stor1;
mapping of uint8 stor2;
uint256 operatorsCount;
mapping of uint256 sub_0eb1b8aa;
mapping of uint8 stor5;
array of address sub_b1fc7008;
uint256 stor7;
uint256 stor8;
uint256 sub_85f87f89;
mapping of uint256 sub_3eeaa9d0;
mapping of uint8 stor11;
array of struct stor12;
mapping of address sub_67a63972;

function sub_0eb1b8aa(?) {
    require calldata.size - 4 >= 32
    return sub_0eb1b8aa[arg1]
}

function sub_3eeaa9d0(?) {
    require calldata.size - 4 >= 32
    return sub_3eeaa9d0[arg1]
}

function operatorsCount() {
    return operatorsCount
}

function sub_67a63972(?) {
    require calldata.size - 4 >= 32
    return sub_67a63972[arg1]
}

function isOperator(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function sub_85f87f89(?) {
    return sub_85f87f89
}

function owner() {
    return owner
}

function sub_b1fc7008(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_b1fc7008.length
    return sub_b1fc7008[arg1]
}

function isRegistered(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function sub_ea2ee072(?) {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function _fallback() payable {
    revert
}

function sub_dde6c857(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    sub_85f87f89 = arg1
}

function sub_0ae1851e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    stor11[address(arg1)] = 0
}

function sub_95b1859a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    stor11[address(arg1)] = 1
}

function sub_9abd89c2(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    stor7 = arg1
    stor8 = arg2
}

function removeOperator(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    stor2[address(arg1)] = 0
    sub_3eeaa9d0[address(arg1)] = 0
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if 0x5c18ad1e3118654d9149148a5438eb681178fe77 != msg.sender:
            revert with 0, 'Neither Owner nor Ledger'
    owner = arg1
}

function sub_54925e7e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if not stor2[address(arg1)]:
        revert with 0, 'Not Operator'
    sub_3eeaa9d0[address(arg1)] = sub_85f87f89
}

function sub_1d9599d3(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if stor5[address(arg1)]:
        revert with 0, 'pair existed'
    sub_0eb1b8aa[address(arg1)] = arg2
    stor5[address(arg1)] = 1
    sub_b1fc7008.length++
    sub_b1fc7008[sub_b1fc7008.length] = arg1
}

function addOperator(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if stor2[address(arg1)]:
        revert with 0, 'Operator Exist!'
    stor1.length++
    stor1[stor1.length] = arg1
    stor2[address(arg1)] = 1
    operatorsCount++
    sub_3eeaa9d0[address(arg1)] = sub_85f87f89
}

function recoverBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if 0x5c18ad1e3118654d9149148a5438eb681178fe77 != msg.sender:
            revert with 0, 'Neither Owner nor Ledger'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3eeed481(?) {
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    idx = 0
    while idx < operatorsCount:
        require idx < stor1.length
        mem[0] = stor1[idx]
        mem[32] = 2
        if stor2[stor1[idx]]:
            require idx < stor1.length
            mem[0] = stor1[idx]
            mem[32] = 10
            sub_3eeaa9d0[stor1[idx]] = sub_85f87f89
        idx = idx + 1
        continue 
}

function recover(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if 0x5c18ad1e3118654d9149148a5438eb681178fe77 != msg.sender:
            revert with 0, 'Neither Owner nor Ledger'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_33abd028(?) {
    if not stor2[address(msg.sender)]:
        revert with 0, 'Not Operator'
    if sub_3eeaa9d0[address(msg.sender)] <= stor8:
        revert with 0, 'Fee Allowance Not Enough'
    if eth.balance(msg.sender) >= stor7:
        revert with 0, 'BNB Enough, No Need For Funding'
    sub_3eeaa9d0[address(msg.sender)] -= stor8
    mem[96] = 0xc7198437980c041c805a1edcba50c1ce5db95118
    mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    stor12.length = 2
    s = 0
    idx = 96
    while 160 > idx:
        stor12[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor12.length > idx:
        stor12[idx].field_0 = 0
        idx = idx + 1
        continue 
    if stor12.length:
        mem[192] = address(stor12.field_0)
        idx = 192
        s = 0
        while (32 * stor12.length) + 160 > idx:
            mem[idx + 32] = stor12[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor12.length) + 192] = 2
    mem[(32 * stor12.length) + 224 len 64] = call.data[calldata.size len 64]
    require 0 < stor12.length
    require 1 < stor12.length
    if mem[204 len 20] == mem[236 len 20]:
        revert with 0, 'IDENTICAL_ADDRESSES'
    if mem[204 len 20] < mem[236 len 20]:
        if not mem[204 len 20]:
            revert with 0, 'ZERO_ADDRESS'
        require ext_code.size(sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118])
        staticcall sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118].getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require 0 < stor12.length
        if mem[204 len 20] == mem[204 len 20]:
            if not ext_call.return_data[18 len 14]:
                if stor8 > Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: subtraction overflow'
                require Mask(112, 0, ext_call.return_data[32]) - stor8
                require Mask(112, 0, ext_call.return_data[32]) - stor8
                if (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8) / Mask(112, 0, ext_call.return_data[32]) - stor8 != 9970:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * stor12.length) + 453 len 31]
                require (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)
                if (0 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)) + 1 < 0 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8):
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * stor12.length) + 224] = (0 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)) + 1
                require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                call 0xc7198437980c041c805a1edcba50c1ce5db95118.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118], (0 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)) + 1
            else:
                require ext_call.return_data[18 len 14]
                if ext_call.return_data[18 len 14] * stor8 / ext_call.return_data[18 len 14] != stor8:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * stor12.length) + 389 len 31]
                if not ext_call.return_data[18 len 14] * stor8:
                    if stor8 > Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require Mask(112, 0, ext_call.return_data[32]) - stor8
                    require Mask(112, 0, ext_call.return_data[32]) - stor8
                    if (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8) / Mask(112, 0, ext_call.return_data[32]) - stor8 != 9970:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * stor12.length) + 453 len 31]
                    require (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)
                    if (0 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)) + 1 < 0 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8):
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * stor12.length) + 224] = (0 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)) + 1
                    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                    call 0xc7198437980c041c805a1edcba50c1ce5db95118.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118], (0 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)) + 1
                else:
                    require ext_call.return_data[18 len 14] * stor8
                    if 10000 * ext_call.return_data[18 len 14] * stor8 / ext_call.return_data[18 len 14] * stor8 != 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * stor12.length) + 389 len 31]
                    if stor8 > Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require Mask(112, 0, ext_call.return_data[32]) - stor8
                    require Mask(112, 0, ext_call.return_data[32]) - stor8
                    if (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8) / Mask(112, 0, ext_call.return_data[32]) - stor8 != 9970:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * stor12.length) + 453 len 31]
                    require (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)
                    if (10000 * Mask(112, 0, ext_call.return_data[0]) * stor8 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * stor8 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8):
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * stor12.length) + 224] = (10000 * Mask(112, 0, ext_call.return_data[0]) * stor8 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)) + 1
                    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                    call 0xc7198437980c041c805a1edcba50c1ce5db95118.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118], (10000 * Mask(112, 0, ext_call.return_data[0]) * stor8 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)) + 1
        else:
            if not ext_call.return_data[50 len 14]:
                if stor8 > Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                require Mask(112, 0, ext_call.return_data[0]) - stor8
                require Mask(112, 0, ext_call.return_data[0]) - stor8
                if (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8) / Mask(112, 0, ext_call.return_data[0]) - stor8 != 9970:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * stor12.length) + 453 len 31]
                require (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)
                if (0 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)) + 1 < 0 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8):
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * stor12.length) + 224] = (0 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)) + 1
                require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                call 0xc7198437980c041c805a1edcba50c1ce5db95118.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118], (0 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)) + 1
            else:
                require ext_call.return_data[50 len 14]
                if ext_call.return_data[50 len 14] * stor8 / ext_call.return_data[50 len 14] != stor8:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * stor12.length) + 389 len 31]
                if not ext_call.return_data[50 len 14] * stor8:
                    if stor8 > Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require Mask(112, 0, ext_call.return_data[0]) - stor8
                    require Mask(112, 0, ext_call.return_data[0]) - stor8
                    if (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8) / Mask(112, 0, ext_call.return_data[0]) - stor8 != 9970:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * stor12.length) + 453 len 31]
                    require (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)
                    if (0 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)) + 1 < 0 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8):
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * stor12.length) + 224] = (0 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)) + 1
                    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                    call 0xc7198437980c041c805a1edcba50c1ce5db95118.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118], (0 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)) + 1
                else:
                    require ext_call.return_data[50 len 14] * stor8
                    if 10000 * ext_call.return_data[50 len 14] * stor8 / ext_call.return_data[50 len 14] * stor8 != 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * stor12.length) + 389 len 31]
                    if stor8 > Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require Mask(112, 0, ext_call.return_data[0]) - stor8
                    require Mask(112, 0, ext_call.return_data[0]) - stor8
                    if (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8) / Mask(112, 0, ext_call.return_data[0]) - stor8 != 9970:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * stor12.length) + 453 len 31]
                    require (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)
                    if (10000 * Mask(112, 0, ext_call.return_data[32]) * stor8 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * stor8 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8):
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * stor12.length) + 224] = (10000 * Mask(112, 0, ext_call.return_data[32]) * stor8 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)) + 1
                    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                    call 0xc7198437980c041c805a1edcba50c1ce5db95118.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118], (10000 * Mask(112, 0, ext_call.return_data[32]) * stor8 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)) + 1
    else:
        if not mem[236 len 20]:
            revert with 0, 'ZERO_ADDRESS'
        require ext_code.size(sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118])
        staticcall sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118].getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require 0 < stor12.length
        if mem[204 len 20] == mem[236 len 20]:
            if not ext_call.return_data[18 len 14]:
                if stor8 > Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: subtraction overflow'
                require Mask(112, 0, ext_call.return_data[32]) - stor8
                require Mask(112, 0, ext_call.return_data[32]) - stor8
                if (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8) / Mask(112, 0, ext_call.return_data[32]) - stor8 != 9970:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * stor12.length) + 453 len 31]
                require (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)
                if (0 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)) + 1 < 0 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8):
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * stor12.length) + 224] = (0 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)) + 1
                require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                call 0xc7198437980c041c805a1edcba50c1ce5db95118.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118], (0 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)) + 1
            else:
                require ext_call.return_data[18 len 14]
                if ext_call.return_data[18 len 14] * stor8 / ext_call.return_data[18 len 14] != stor8:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * stor12.length) + 389 len 31]
                if not ext_call.return_data[18 len 14] * stor8:
                    if stor8 > Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require Mask(112, 0, ext_call.return_data[32]) - stor8
                    require Mask(112, 0, ext_call.return_data[32]) - stor8
                    if (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8) / Mask(112, 0, ext_call.return_data[32]) - stor8 != 9970:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * stor12.length) + 453 len 31]
                    require (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)
                    if (0 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)) + 1 < 0 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8):
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * stor12.length) + 224] = (0 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)) + 1
                    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                    call 0xc7198437980c041c805a1edcba50c1ce5db95118.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118], (0 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)) + 1
                else:
                    require ext_call.return_data[18 len 14] * stor8
                    if 10000 * ext_call.return_data[18 len 14] * stor8 / ext_call.return_data[18 len 14] * stor8 != 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * stor12.length) + 389 len 31]
                    if stor8 > Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require Mask(112, 0, ext_call.return_data[32]) - stor8
                    require Mask(112, 0, ext_call.return_data[32]) - stor8
                    if (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8) / Mask(112, 0, ext_call.return_data[32]) - stor8 != 9970:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * stor12.length) + 453 len 31]
                    require (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)
                    if (10000 * Mask(112, 0, ext_call.return_data[0]) * stor8 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * stor8 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8):
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * stor12.length) + 224] = (10000 * Mask(112, 0, ext_call.return_data[0]) * stor8 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)) + 1
                    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                    call 0xc7198437980c041c805a1edcba50c1ce5db95118.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118], (10000 * Mask(112, 0, ext_call.return_data[0]) * stor8 / (9970 * Mask(112, 0, ext_call.return_data[32])) - (9970 * stor8)) + 1
        else:
            if not ext_call.return_data[50 len 14]:
                if stor8 > Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                require Mask(112, 0, ext_call.return_data[0]) - stor8
                require Mask(112, 0, ext_call.return_data[0]) - stor8
                if (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8) / Mask(112, 0, ext_call.return_data[0]) - stor8 != 9970:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * stor12.length) + 453 len 31]
                require (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)
                if (0 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)) + 1 < 0 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8):
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * stor12.length) + 224] = (0 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)) + 1
                require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                call 0xc7198437980c041c805a1edcba50c1ce5db95118.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118], (0 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)) + 1
            else:
                require ext_call.return_data[50 len 14]
                if ext_call.return_data[50 len 14] * stor8 / ext_call.return_data[50 len 14] != stor8:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * stor12.length) + 389 len 31]
                if not ext_call.return_data[50 len 14] * stor8:
                    if stor8 > Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require Mask(112, 0, ext_call.return_data[0]) - stor8
                    require Mask(112, 0, ext_call.return_data[0]) - stor8
                    if (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8) / Mask(112, 0, ext_call.return_data[0]) - stor8 != 9970:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * stor12.length) + 453 len 31]
                    require (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)
                    if (0 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)) + 1 < 0 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8):
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * stor12.length) + 224] = (0 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)) + 1
                    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                    call 0xc7198437980c041c805a1edcba50c1ce5db95118.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118], (0 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)) + 1
                else:
                    require ext_call.return_data[50 len 14] * stor8
                    if 10000 * ext_call.return_data[50 len 14] * stor8 / ext_call.return_data[50 len 14] * stor8 != 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * stor12.length) + 389 len 31]
                    if stor8 > Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require Mask(112, 0, ext_call.return_data[0]) - stor8
                    require Mask(112, 0, ext_call.return_data[0]) - stor8
                    if (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8) / Mask(112, 0, ext_call.return_data[0]) - stor8 != 9970:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * stor12.length) + 453 len 31]
                    require (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)
                    if (10000 * Mask(112, 0, ext_call.return_data[32]) * stor8 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * stor8 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8):
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * stor12.length) + 224] = (10000 * Mask(112, 0, ext_call.return_data[32]) * stor8 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)) + 1
                    require ext_code.size(0xc7198437980c041c805a1edcba50c1ce5db95118)
                    call 0xc7198437980c041c805a1edcba50c1ce5db95118.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118], (10000 * Mask(112, 0, ext_call.return_data[32]) * stor8 / (9970 * Mask(112, 0, ext_call.return_data[0])) - (9970 * stor8)) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < stor12.length
    require 1 < stor12.length
    if mem[204 len 20] == mem[236 len 20]:
        revert with 0, 'IDENTICAL_ADDRESSES'
    if mem[204 len 20] < mem[236 len 20]:
        if not mem[204 len 20]:
            revert with 0, 'ZERO_ADDRESS'
        require 0 < stor12.length
        require ext_code.size(sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118])
        if mem[204 len 20] == mem[204 len 20]:
            call sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, stor8, address(this.address), 128, 0
        else:
            call sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args stor8, 0, address(this.address), 128, 0
    else:
        if not mem[236 len 20]:
            revert with 0, 'ZERO_ADDRESS'
        require 0 < stor12.length
        require ext_code.size(sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118])
        if mem[204 len 20] == mem[236 len 20]:
            call sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, stor8, address(this.address), 128, 0
        else:
            call sub_67a63972[0xc7198437980c041c805a1edcba50c1ce5db95118].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args stor8, 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args stor8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value stor8 wei
         gas 2300 * is_zero(value) wei
}

function getAmountsOut(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    if arg2.length:
        mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require 0 < arg2.length
    mem[(32 * arg2.length) + 160] = arg1
    require 0 < arg2.length
    require 1 < arg2.length
    if mem[140 len 20] == mem[172 len 20]:
        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg2.length) + 164] = 32
        mem[(64 * arg2.length) + 196] = 19
        mem[(64 * arg2.length) + 228] = 'IDENTICAL_ADDRESSES'
        revert with memory
          from (64 * arg2.length) + 160
           len (127 * arg2.length) + 100
    if mem[140 len 20] < mem[172 len 20]:
        if not mem[140 len 20]:
            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg2.length) + 164] = 32
            mem[(64 * arg2.length) + 196] = 12
            mem[(64 * arg2.length) + 228] = 'ZERO_ADDRESS'
            revert with memory
              from (64 * arg2.length) + 160
               len (127 * arg2.length) + 100
        require 0 < arg2.length
        if mem[140 len 20] != mem[140 len 20]:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            while idx < sub_b1fc7008.length:
                mem[(64 * arg2.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                       args mem[(64 * arg2.length) + 164 len 127 * arg2.length]
                mem[(64 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                if not arg1:
                    require Mask(112, 0, ext_call.return_data[32])
                    require Mask(112, 0, ext_call.return_data[32])
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        if 0 / 10000 * Mask(112, 0, ext_call.return_data[32]) <= s:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = 10000 * Mask(112, 0, ext_call.return_data[32])
                            s = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                            s = s
                            continue 
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = 10000 * Mask(112, 0, ext_call.return_data[32])
                        s = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        s = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        continue 
                else:
                    require arg1
                    if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                    else:
                        require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[0]):
                            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + 164] = 32
                            mem[(64 * arg2.length) + 196] = 33
                            mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg2.length) + 160
                               len (127 * arg2.length) + 132
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + 164] = 32
                mem[(64 * arg2.length) + 196] = 27
                mem[(64 * arg2.length) + 228] = 'SafeMath: addition overflow'
                revert with memory
                  from (64 * arg2.length) + 160
                   len (127 * arg2.length) + 100
        else:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            while idx < sub_b1fc7008.length:
                mem[(64 * arg2.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                       args mem[(64 * arg2.length) + 164 len 127 * arg2.length]
                mem[(64 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                if not arg1:
                    require Mask(112, 0, ext_call.return_data[0])
                    require Mask(112, 0, ext_call.return_data[0])
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        if 0 / 10000 * Mask(112, 0, ext_call.return_data[0]) <= s:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = 10000 * Mask(112, 0, ext_call.return_data[0])
                            s = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            s = s
                            continue 
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = 10000 * Mask(112, 0, ext_call.return_data[0])
                        s = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        s = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        continue 
                else:
                    require arg1
                    if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                    else:
                        require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[32]):
                            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + 164] = 32
                            mem[(64 * arg2.length) + 196] = 33
                            mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg2.length) + 160
                               len (127 * arg2.length) + 132
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + 164] = 32
                mem[(64 * arg2.length) + 196] = 27
                mem[(64 * arg2.length) + 228] = 'SafeMath: addition overflow'
                revert with memory
                  from (64 * arg2.length) + 160
                   len (127 * arg2.length) + 100
    else:
        if not mem[172 len 20]:
            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg2.length) + 164] = 32
            mem[(64 * arg2.length) + 196] = 12
            mem[(64 * arg2.length) + 228] = 'ZERO_ADDRESS'
            revert with memory
              from (64 * arg2.length) + 160
               len (127 * arg2.length) + 100
        require 0 < arg2.length
        if mem[172 len 20] != mem[140 len 20]:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            while idx < sub_b1fc7008.length:
                mem[(64 * arg2.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                       args mem[(64 * arg2.length) + 164 len 127 * arg2.length]
                mem[(64 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                if not arg1:
                    require Mask(112, 0, ext_call.return_data[32])
                    require Mask(112, 0, ext_call.return_data[32])
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        if 0 / 10000 * Mask(112, 0, ext_call.return_data[32]) <= s:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = 10000 * Mask(112, 0, ext_call.return_data[32])
                            s = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                            s = s
                            continue 
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = 10000 * Mask(112, 0, ext_call.return_data[32])
                        s = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        s = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        continue 
                else:
                    require arg1
                    if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                    else:
                        require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[0]):
                            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + 164] = 32
                            mem[(64 * arg2.length) + 196] = 33
                            mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg2.length) + 160
                               len (127 * arg2.length) + 132
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + 164] = 32
                mem[(64 * arg2.length) + 196] = 27
                mem[(64 * arg2.length) + 228] = 'SafeMath: addition overflow'
                revert with memory
                  from (64 * arg2.length) + 160
                   len (127 * arg2.length) + 100
        else:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            while idx < sub_b1fc7008.length:
                mem[(64 * arg2.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                       args mem[(64 * arg2.length) + 164 len 127 * arg2.length]
                mem[(64 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                if not arg1:
                    require Mask(112, 0, ext_call.return_data[0])
                    require Mask(112, 0, ext_call.return_data[0])
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        if 0 / 10000 * Mask(112, 0, ext_call.return_data[0]) <= s:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = 10000 * Mask(112, 0, ext_call.return_data[0])
                            s = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            s = s
                            continue 
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = 10000 * Mask(112, 0, ext_call.return_data[0])
                        s = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        s = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        continue 
                else:
                    require arg1
                    if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                    else:
                        require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[32]):
                            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + 164] = 32
                            mem[(64 * arg2.length) + 196] = 33
                            mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg2.length) + 160
                               len (127 * arg2.length) + 132
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    continue 
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                continue 
                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + 164] = 32
                mem[(64 * arg2.length) + 196] = 27
                mem[(64 * arg2.length) + 228] = 'SafeMath: addition overflow'
                revert with memory
                  from (64 * arg2.length) + 160
                   len (127 * arg2.length) + 100
    require arg2.length - 1 < mem[(32 * arg2.length) + 128]
    mem[(32 * arg2.length - 1) + (32 * arg2.length) + 160] = s
    mem[(64 * arg2.length) + 160] = 32
    mem[(64 * arg2.length) + 192] = mem[(32 * arg2.length) + 128]
    mem[(64 * arg2.length) + 224 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    return 32, mem[(64 * arg2.length) + 192 len (32 * mem[(32 * arg2.length) + 128]) + 32]
}

function sub_cffce9e8(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    if arg2.length:
        mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require 0 < arg2.length
    mem[(32 * arg2.length) + 160] = arg1
    require 0 < arg2.length
    require 1 < arg2.length
    if mem[140 len 20] == mem[172 len 20]:
        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg2.length) + 164] = 32
        mem[(64 * arg2.length) + 196] = 19
        mem[(64 * arg2.length) + 228] = 'IDENTICAL_ADDRESSES'
        revert with memory
          from (64 * arg2.length) + 160
           len (127 * arg2.length) + 100
    if mem[140 len 20] < mem[172 len 20]:
        if not mem[140 len 20]:
            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg2.length) + 164] = 32
            mem[(64 * arg2.length) + 196] = 12
            mem[(64 * arg2.length) + 228] = 'ZERO_ADDRESS'
            revert with memory
              from (64 * arg2.length) + 160
               len (127 * arg2.length) + 100
        require 0 < arg2.length
        if mem[140 len 20] != mem[140 len 20]:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            t = 0
            while idx < sub_b1fc7008.length:
                mem[(64 * arg2.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                       args mem[(64 * arg2.length) + 164 len 127 * arg2.length]
                mem[(64 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                if not arg1:
                    require Mask(112, 0, ext_call.return_data[32])
                    require Mask(112, 0, ext_call.return_data[32])
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        if 0 / 10000 * Mask(112, 0, ext_call.return_data[32]) <= s:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = 10000 * Mask(112, 0, ext_call.return_data[32])
                            s = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                            s = s
                            t = t
                            continue 
                        require idx < sub_b1fc7008.length
                        mem[0] = 6
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = 10000 * Mask(112, 0, ext_call.return_data[32])
                        s = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        s = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        t = sub_b1fc7008[idx]
                        continue 
                else:
                    require arg1
                    if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    t = t
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                t = sub_b1fc7008[idx]
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    t = t
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                t = sub_b1fc7008[idx]
                                continue 
                    else:
                        require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[0]):
                            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + 164] = 32
                            mem[(64 * arg2.length) + 196] = 33
                            mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg2.length) + 160
                               len (127 * arg2.length) + 132
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    t = t
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                t = sub_b1fc7008[idx]
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    t = t
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                t = sub_b1fc7008[idx]
                                continue 
                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + 164] = 32
                mem[(64 * arg2.length) + 196] = 27
                mem[(64 * arg2.length) + 228] = 'SafeMath: addition overflow'
                revert with memory
                  from (64 * arg2.length) + 160
                   len (127 * arg2.length) + 100
        else:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            t = 0
            while idx < sub_b1fc7008.length:
                mem[(64 * arg2.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                       args mem[(64 * arg2.length) + 164 len 127 * arg2.length]
                mem[(64 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                if not arg1:
                    require Mask(112, 0, ext_call.return_data[0])
                    require Mask(112, 0, ext_call.return_data[0])
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        if 0 / 10000 * Mask(112, 0, ext_call.return_data[0]) <= s:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = 10000 * Mask(112, 0, ext_call.return_data[0])
                            s = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            s = s
                            t = t
                            continue 
                        require idx < sub_b1fc7008.length
                        mem[0] = 6
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = 10000 * Mask(112, 0, ext_call.return_data[0])
                        s = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        s = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        t = sub_b1fc7008[idx]
                        continue 
                else:
                    require arg1
                    if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    t = t
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                t = sub_b1fc7008[idx]
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    t = t
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                t = sub_b1fc7008[idx]
                                continue 
                    else:
                        require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[32]):
                            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + 164] = 32
                            mem[(64 * arg2.length) + 196] = 33
                            mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg2.length) + 160
                               len (127 * arg2.length) + 132
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    t = t
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                t = sub_b1fc7008[idx]
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    t = t
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                t = sub_b1fc7008[idx]
                                continue 
                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + 164] = 32
                mem[(64 * arg2.length) + 196] = 27
                mem[(64 * arg2.length) + 228] = 'SafeMath: addition overflow'
                revert with memory
                  from (64 * arg2.length) + 160
                   len (127 * arg2.length) + 100
    else:
        if not mem[172 len 20]:
            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg2.length) + 164] = 32
            mem[(64 * arg2.length) + 196] = 12
            mem[(64 * arg2.length) + 228] = 'ZERO_ADDRESS'
            revert with memory
              from (64 * arg2.length) + 160
               len (127 * arg2.length) + 100
        require 0 < arg2.length
        if mem[172 len 20] != mem[140 len 20]:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            t = 0
            while idx < sub_b1fc7008.length:
                mem[(64 * arg2.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                       args mem[(64 * arg2.length) + 164 len 127 * arg2.length]
                mem[(64 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                if not arg1:
                    require Mask(112, 0, ext_call.return_data[32])
                    require Mask(112, 0, ext_call.return_data[32])
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        if 0 / 10000 * Mask(112, 0, ext_call.return_data[32]) <= s:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = 10000 * Mask(112, 0, ext_call.return_data[32])
                            s = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                            s = s
                            t = t
                            continue 
                        require idx < sub_b1fc7008.length
                        mem[0] = 6
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = 10000 * Mask(112, 0, ext_call.return_data[32])
                        s = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        s = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        t = sub_b1fc7008[idx]
                        continue 
                else:
                    require arg1
                    if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    t = t
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                t = sub_b1fc7008[idx]
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    t = t
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                t = sub_b1fc7008[idx]
                                continue 
                    else:
                        require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[0]):
                            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + 164] = 32
                            mem[(64 * arg2.length) + 196] = 33
                            mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg2.length) + 160
                               len (127 * arg2.length) + 132
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    t = t
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                t = sub_b1fc7008[idx]
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[32]):
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    t = t
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                t = sub_b1fc7008[idx]
                                continue 
                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + 164] = 32
                mem[(64 * arg2.length) + 196] = 27
                mem[(64 * arg2.length) + 228] = 'SafeMath: addition overflow'
                revert with memory
                  from (64 * arg2.length) + 160
                   len (127 * arg2.length) + 100
        else:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            t = 0
            while idx < sub_b1fc7008.length:
                mem[(64 * arg2.length) + 160] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                       args mem[(64 * arg2.length) + 164 len 127 * arg2.length]
                mem[(64 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                if not arg1:
                    require Mask(112, 0, ext_call.return_data[0])
                    require Mask(112, 0, ext_call.return_data[0])
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                        require 10000 * Mask(112, 0, ext_call.return_data[0])
                        if 0 / 10000 * Mask(112, 0, ext_call.return_data[0]) <= s:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = 10000 * Mask(112, 0, ext_call.return_data[0])
                            s = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            s = s
                            t = t
                            continue 
                        require idx < sub_b1fc7008.length
                        mem[0] = 6
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = 10000 * Mask(112, 0, ext_call.return_data[0])
                        s = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        s = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        t = sub_b1fc7008[idx]
                        continue 
                else:
                    require arg1
                    if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) / arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(64 * arg2.length) + 164] = 32
                        mem[(64 * arg2.length) + 196] = 33
                        mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                        revert with memory
                          from (64 * arg2.length) + 160
                           len (127 * arg2.length) + 132
                    if not (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1):
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    t = t
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                t = sub_b1fc7008[idx]
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    t = t
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                t = sub_b1fc7008[idx]
                                continue 
                    else:
                        require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) != Mask(112, 0, ext_call.return_data[32]):
                            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(64 * arg2.length) + 164] = 32
                            mem[(64 * arg2.length) + 196] = 33
                            mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                            revert with memory
                              from (64 * arg2.length) + 160
                               len (127 * arg2.length) + 132
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 0:
                                require (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    t = t
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                t = sub_b1fc7008[idx]
                                continue 
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(64 * arg2.length) + 164] = 32
                                mem[(64 * arg2.length) + 196] = 33
                                mem[(64 * arg2.length) + 228 len 33] = 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (64 * arg2.length) + 160
                                   len (127 * arg2.length) + 132
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) >= 10000 * Mask(112, 0, ext_call.return_data[0]):
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                if (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1) <= s:
                                    idx = idx + 1
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    s = Mask(112, 0, ext_call.return_data[0])
                                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                    s = s
                                    t = t
                                    continue 
                                require idx < sub_b1fc7008.length
                                mem[0] = 6
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (10000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg1) - (sub_0eb1b8aa[stor6[idx]] * arg1)
                                t = sub_b1fc7008[idx]
                                continue 
                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + 164] = 32
                mem[(64 * arg2.length) + 196] = 27
                mem[(64 * arg2.length) + 228] = 'SafeMath: addition overflow'
                revert with memory
                  from (64 * arg2.length) + 160
                   len (127 * arg2.length) + 100
    require arg2.length - 1 < mem[(32 * arg2.length) + 128]
    mem[(32 * arg2.length - 1) + (32 * arg2.length) + 160] = s
    mem[(64 * arg2.length) + 192] = address(t)
    mem[(64 * arg2.length) + 160] = 64
    mem[(64 * arg2.length) + 224] = mem[(32 * arg2.length) + 128]
    mem[(64 * arg2.length) + 256 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    return memory
      from (64 * arg2.length) + 160
       len (32 * mem[(32 * arg2.length) + 128]) + (127 * arg2.length) + 96
}

function getAmountsIn(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    mem[64] = (64 * arg2.length) + 160
    if not arg2.length:
        require arg2.length - 1 < arg2.length
        mem[(32 * arg2.length - 1) + (32 * arg2.length) + 160] = arg1
        require 0 < arg2.length
        require 1 < arg2.length
        if mem[140 len 20] == mem[172 len 20]:
            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg2.length) + 164] = 32
            mem[(64 * arg2.length) + 196] = 19
            mem[(64 * arg2.length) + 228] = 'IDENTICAL_ADDRESSES'
            revert with memory
              from (64 * arg2.length) + 160
               len (127 * arg2.length) + 100
        if mem[140 len 20] < mem[172 len 20]:
            if not mem[140 len 20]:
                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + 164] = 32
                mem[(64 * arg2.length) + 196] = 12
                mem[(64 * arg2.length) + 228] = 'ZERO_ADDRESS'
                revert with memory
                  from (64 * arg2.length) + 160
                   len (127 * arg2.length) + 100
            require 0 < arg2.length
            if mem[140 len 20] != mem[140 len 20]:
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = -1
                while idx < sub_b1fc7008.length:
                    require ext_code.size(sub_b1fc7008[idx])
                    staticcall sub_b1fc7008[idx].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if not Mask(112, 0, ext_call.return_data[32]):
                        require idx < sub_b1fc7008.length
                        mem[0] = sub_b1fc7008[idx]
                        mem[32] = 4
                        _646 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_646] = 30
                        mem[_646 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 <= Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0]) - arg1
                            require Mask(112, 0, ext_call.return_data[0]) - arg1
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                            if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                            continue 
                        _685 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_685 + idx + 68] = mem[_646 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_685 + 68] = mem[_685 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _685 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[32])
                    if Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) != arg1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not Mask(112, 0, ext_call.return_data[32]) * arg1:
                        require idx < sub_b1fc7008.length
                        mem[0] = sub_b1fc7008[idx]
                        mem[32] = 4
                        _684 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_684] = 30
                        mem[_684 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 <= Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0]) - arg1
                            require Mask(112, 0, ext_call.return_data[0]) - arg1
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                            if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                                idx = idx + 1
                                s = Mask(112, 0, ext_call.return_data[0])
                                s = Mask(112, 0, ext_call.return_data[32])
                                s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                            continue 
                        _733 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_733 + idx + 68] = mem[_684 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_733 + 68] = mem[_733 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _733 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[32]) * arg1
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) * arg1 != 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _732 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_732] = 30
                    mem[_732 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 <= Mask(112, 0, ext_call.return_data[0]):
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                            revert with 0, 'SafeMath: addition overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                            s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        continue 
                    _788 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_788 + idx + 68] = mem[_732 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_788 + 68] = mem[_788 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _788 + -mem[64] + 100
                require 0 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + 160] = s
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
                _542 = mem[(32 * arg2.length) + 128]
                mem[mem[64] + 64 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
                return 32, mem[mem[64] + 32 len (32 * _542) + 32]
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = -1
            while idx < sub_b1fc7008.length:
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not Mask(112, 0, ext_call.return_data[0]):
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _649 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_649] = 30
                    mem[_649 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 <= Mask(112, 0, ext_call.return_data[32]):
                        require Mask(112, 0, ext_call.return_data[32]) - arg1
                        require Mask(112, 0, ext_call.return_data[32]) - arg1
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        continue 
                    _689 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_689 + idx + 68] = mem[_649 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_689 + 68] = mem[_689 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _689 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[0])
                if Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) != arg1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(112, 0, ext_call.return_data[0]) * arg1:
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _688 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_688] = 30
                    mem[_688 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 <= Mask(112, 0, ext_call.return_data[32]):
                        require Mask(112, 0, ext_call.return_data[32]) - arg1
                        require Mask(112, 0, ext_call.return_data[32]) - arg1
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        continue 
                    _738 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_738 + idx + 68] = mem[_688 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_738 + 68] = mem[_738 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _738 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[0]) * arg1
                if 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) * arg1 != 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _737 = mem[64]
                mem[64] = mem[64] + 64
                mem[_737] = 30
                mem[_737 + 32] = 'SafeMath: subtraction overflow'
                if arg1 <= Mask(112, 0, ext_call.return_data[32]):
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    continue 
                _793 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_793 + idx + 68] = mem[_737 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_793 + 68] = mem[_793 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _793 + -mem[64] + 100
            require 0 < mem[(32 * arg2.length) + 128]
            mem[(32 * arg2.length) + 160] = s
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
            _546 = mem[(32 * arg2.length) + 128]
            mem[mem[64] + 64 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            return 32, mem[mem[64] + 32 len (32 * _546) + 32]
        if not mem[172 len 20]:
            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg2.length) + 164] = 32
            mem[(64 * arg2.length) + 196] = 12
            mem[(64 * arg2.length) + 228] = 'ZERO_ADDRESS'
            revert with memory
              from (64 * arg2.length) + 160
               len (127 * arg2.length) + 100
        require 0 < arg2.length
        if mem[172 len 20] != mem[140 len 20]:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = -1
            while idx < sub_b1fc7008.length:
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not Mask(112, 0, ext_call.return_data[32]):
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _652 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_652] = 30
                    mem[_652 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 <= Mask(112, 0, ext_call.return_data[0]):
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        continue 
                    _693 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_693 + idx + 68] = mem[_652 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_693 + 68] = mem[_693 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _693 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32])
                if Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) != arg1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(112, 0, ext_call.return_data[32]) * arg1:
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _692 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_692] = 30
                    mem[_692 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 <= Mask(112, 0, ext_call.return_data[0]):
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        continue 
                    _743 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_743 + idx + 68] = mem[_692 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_743 + 68] = mem[_743 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _743 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) * arg1
                if 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) * arg1 != 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _742 = mem[64]
                mem[64] = mem[64] + 64
                mem[_742] = 30
                mem[_742 + 32] = 'SafeMath: subtraction overflow'
                if arg1 <= Mask(112, 0, ext_call.return_data[0]):
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    continue 
                _798 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_798 + idx + 68] = mem[_742 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_798 + 68] = mem[_798 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _798 + -mem[64] + 100
            require 0 < mem[(32 * arg2.length) + 128]
            mem[(32 * arg2.length) + 160] = s
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
            _550 = mem[(32 * arg2.length) + 128]
            mem[mem[64] + 64 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            return 32, mem[mem[64] + 32 len (32 * _550) + 32]
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = -1
        while idx < sub_b1fc7008.length:
            require ext_code.size(sub_b1fc7008[idx])
            staticcall sub_b1fc7008[idx].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not Mask(112, 0, ext_call.return_data[0]):
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _655 = mem[64]
                mem[64] = mem[64] + 64
                mem[_655] = 30
                mem[_655 + 32] = 'SafeMath: subtraction overflow'
                if arg1 <= Mask(112, 0, ext_call.return_data[32]):
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    continue 
                _697 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_697 + idx + 68] = mem[_655 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_697 + 68] = mem[_697 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _697 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) != arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(112, 0, ext_call.return_data[0]) * arg1:
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _696 = mem[64]
                mem[64] = mem[64] + 64
                mem[_696] = 30
                mem[_696 + 32] = 'SafeMath: subtraction overflow'
                if arg1 <= Mask(112, 0, ext_call.return_data[32]):
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    continue 
                _748 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_748 + idx + 68] = mem[_696 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_748 + 68] = mem[_748 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _748 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[0]) * arg1
            if 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) * arg1 != 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _747 = mem[64]
            mem[64] = mem[64] + 64
            mem[_747] = 30
            mem[_747 + 32] = 'SafeMath: subtraction overflow'
            if arg1 <= Mask(112, 0, ext_call.return_data[32]):
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = s
                    continue 
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                continue 
            _803 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_803 + idx + 68] = mem[_747 + idx + 32]
                idx = idx + 32
                continue 
            mem[_803 + 68] = mem[_803 + 70 len 30]
            revert with memory
              from mem[64]
               len _803 + -mem[64] + 100
        require 0 < mem[(32 * arg2.length) + 128]
        mem[(32 * arg2.length) + 160] = s
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
        _554 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 64 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _554) + 32]
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require arg2.length - 1 < arg2.length
    mem[(32 * arg2.length - 1) + (32 * arg2.length) + 160] = arg1
    require 0 < arg2.length
    require 1 < arg2.length
    if mem[140 len 20] == mem[172 len 20]:
        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg2.length) + 164] = 32
        mem[(64 * arg2.length) + 196] = 19
        mem[(64 * arg2.length) + 228] = 'IDENTICAL_ADDRESSES'
        revert with memory
          from (64 * arg2.length) + 160
           len (127 * arg2.length) + 100
    if mem[140 len 20] < mem[172 len 20]:
        if not mem[140 len 20]:
            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg2.length) + 164] = 32
            mem[(64 * arg2.length) + 196] = 12
            mem[(64 * arg2.length) + 228] = 'ZERO_ADDRESS'
            revert with memory
              from (64 * arg2.length) + 160
               len (127 * arg2.length) + 100
        require 0 < arg2.length
        if mem[140 len 20] != mem[140 len 20]:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = -1
            while idx < sub_b1fc7008.length:
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not Mask(112, 0, ext_call.return_data[32]):
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _658 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_658] = 30
                    mem[_658 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 <= Mask(112, 0, ext_call.return_data[0]):
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        continue 
                    _701 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_701 + idx + 68] = mem[_658 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_701 + 68] = mem[_701 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _701 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32])
                if Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) != arg1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(112, 0, ext_call.return_data[32]) * arg1:
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _700 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_700] = 30
                    mem[_700 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 <= Mask(112, 0, ext_call.return_data[0]):
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        continue 
                    _753 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_753 + idx + 68] = mem[_700 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_753 + 68] = mem[_753 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _753 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) * arg1
                if 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) * arg1 != 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _752 = mem[64]
                mem[64] = mem[64] + 64
                mem[_752] = 30
                mem[_752 + 32] = 'SafeMath: subtraction overflow'
                if arg1 <= Mask(112, 0, ext_call.return_data[0]):
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    continue 
                _808 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_808 + idx + 68] = mem[_752 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_808 + 68] = mem[_808 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _808 + -mem[64] + 100
            require 0 < mem[(32 * arg2.length) + 128]
            mem[(32 * arg2.length) + 160] = s
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
            _558 = mem[(32 * arg2.length) + 128]
            mem[mem[64] + 64 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            return 32, mem[mem[64] + 32 len (32 * _558) + 32]
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = -1
        while idx < sub_b1fc7008.length:
            require ext_code.size(sub_b1fc7008[idx])
            staticcall sub_b1fc7008[idx].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not Mask(112, 0, ext_call.return_data[0]):
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _661 = mem[64]
                mem[64] = mem[64] + 64
                mem[_661] = 30
                mem[_661 + 32] = 'SafeMath: subtraction overflow'
                if arg1 <= Mask(112, 0, ext_call.return_data[32]):
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    continue 
                _705 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_705 + idx + 68] = mem[_661 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_705 + 68] = mem[_705 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _705 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) != arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(112, 0, ext_call.return_data[0]) * arg1:
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _704 = mem[64]
                mem[64] = mem[64] + 64
                mem[_704] = 30
                mem[_704 + 32] = 'SafeMath: subtraction overflow'
                if arg1 <= Mask(112, 0, ext_call.return_data[32]):
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    continue 
                _758 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_758 + idx + 68] = mem[_704 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_758 + 68] = mem[_758 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _758 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[0]) * arg1
            if 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) * arg1 != 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _757 = mem[64]
            mem[64] = mem[64] + 64
            mem[_757] = 30
            mem[_757 + 32] = 'SafeMath: subtraction overflow'
            if arg1 <= Mask(112, 0, ext_call.return_data[32]):
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = s
                    continue 
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                continue 
            _813 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_813 + idx + 68] = mem[_757 + idx + 32]
                idx = idx + 32
                continue 
            mem[_813 + 68] = mem[_813 + 70 len 30]
            revert with memory
              from mem[64]
               len _813 + -mem[64] + 100
        require 0 < mem[(32 * arg2.length) + 128]
        mem[(32 * arg2.length) + 160] = s
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
        _562 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 64 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _562) + 32]
    if not mem[172 len 20]:
        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg2.length) + 164] = 32
        mem[(64 * arg2.length) + 196] = 12
        mem[(64 * arg2.length) + 228] = 'ZERO_ADDRESS'
        revert with memory
          from (64 * arg2.length) + 160
           len (127 * arg2.length) + 100
    require 0 < arg2.length
    if mem[172 len 20] != mem[140 len 20]:
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = -1
        while idx < sub_b1fc7008.length:
            require ext_code.size(sub_b1fc7008[idx])
            staticcall sub_b1fc7008[idx].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not Mask(112, 0, ext_call.return_data[32]):
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _664 = mem[64]
                mem[64] = mem[64] + 64
                mem[_664] = 30
                mem[_664 + 32] = 'SafeMath: subtraction overflow'
                if arg1 <= Mask(112, 0, ext_call.return_data[0]):
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    continue 
                _709 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_709 + idx + 68] = mem[_664 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_709 + 68] = mem[_709 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _709 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[32])
            if Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) != arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(112, 0, ext_call.return_data[32]) * arg1:
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _708 = mem[64]
                mem[64] = mem[64] + 64
                mem[_708] = 30
                mem[_708 + 32] = 'SafeMath: subtraction overflow'
                if arg1 <= Mask(112, 0, ext_call.return_data[0]):
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    continue 
                _763 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_763 + idx + 68] = mem[_708 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_763 + 68] = mem[_763 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _763 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[32]) * arg1
            if 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) * arg1 != 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _762 = mem[64]
            mem[64] = mem[64] + 64
            mem[_762] = 30
            mem[_762 + 32] = 'SafeMath: subtraction overflow'
            if arg1 <= Mask(112, 0, ext_call.return_data[0]):
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = s
                    continue 
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                s = Mask(112, 0, ext_call.return_data[32])
                s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                continue 
            _818 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_818 + idx + 68] = mem[_762 + idx + 32]
                idx = idx + 32
                continue 
            mem[_818 + 68] = mem[_818 + 70 len 30]
            revert with memory
              from mem[64]
               len _818 + -mem[64] + 100
        require 0 < mem[(32 * arg2.length) + 128]
        mem[(32 * arg2.length) + 160] = s
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
        _566 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 64 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _566) + 32]
    idx = 0
    s = 0
    s = 0
    s = 0
    s = 0
    s = -1
    while idx < sub_b1fc7008.length:
        require ext_code.size(sub_b1fc7008[idx])
        staticcall sub_b1fc7008[idx].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not Mask(112, 0, ext_call.return_data[0]):
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _667 = mem[64]
            mem[64] = mem[64] + 64
            mem[_667] = 30
            mem[_667 + 32] = 'SafeMath: subtraction overflow'
            if arg1 <= Mask(112, 0, ext_call.return_data[32]):
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = s
                    continue 
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                continue 
            _713 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_713 + idx + 68] = mem[_667 + idx + 32]
                idx = idx + 32
                continue 
            mem[_713 + 68] = mem[_713 + 70 len 30]
            revert with memory
              from mem[64]
               len _713 + -mem[64] + 100
        require Mask(112, 0, ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) != arg1:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not Mask(112, 0, ext_call.return_data[0]) * arg1:
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _712 = mem[64]
            mem[64] = mem[64] + 64
            mem[_712] = 30
            mem[_712 + 32] = 'SafeMath: subtraction overflow'
            if arg1 <= Mask(112, 0, ext_call.return_data[32]):
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = s
                    continue 
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                continue 
            _768 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_768 + idx + 68] = mem[_712 + idx + 32]
                idx = idx + 32
                continue 
            mem[_768 + 68] = mem[_768 + 70 len 30]
            revert with memory
              from mem[64]
               len _768 + -mem[64] + 100
        require Mask(112, 0, ext_call.return_data[0]) * arg1
        if 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) * arg1 != 10000:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        require idx < sub_b1fc7008.length
        mem[0] = sub_b1fc7008[idx]
        mem[32] = 4
        _767 = mem[64]
        mem[64] = mem[64] + 64
        mem[_767] = 30
        mem[_767 + 32] = 'SafeMath: subtraction overflow'
        if arg1 <= Mask(112, 0, ext_call.return_data[32]):
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                revert with 0, 'SafeMath: addition overflow'
            if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                s = s
                continue 
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            s = Mask(112, 0, ext_call.return_data[0])
            s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            continue 
        _823 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_823 + idx + 68] = mem[_767 + idx + 32]
            idx = idx + 32
            continue 
        mem[_823 + 68] = mem[_823 + 70 len 30]
        revert with memory
          from mem[64]
           len _823 + -mem[64] + 100
    require 0 < mem[(32 * arg2.length) + 128]
    mem[(32 * arg2.length) + 160] = s
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
    _570 = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 64 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    return 32, mem[mem[64] + 32 len (32 * _570) + 32]
}

function sub_1690d685(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    mem[64] = (64 * arg2.length) + 160
    if not arg2.length:
        require arg2.length - 1 < arg2.length
        mem[(32 * arg2.length - 1) + (32 * arg2.length) + 160] = arg1
        require 0 < arg2.length
        require 1 < arg2.length
        if mem[140 len 20] == mem[172 len 20]:
            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg2.length) + 164] = 32
            mem[(64 * arg2.length) + 196] = 19
            mem[(64 * arg2.length) + 228] = 'IDENTICAL_ADDRESSES'
            revert with memory
              from (64 * arg2.length) + 160
               len (127 * arg2.length) + 100
        if mem[140 len 20] < mem[172 len 20]:
            if not mem[140 len 20]:
                mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg2.length) + 164] = 32
                mem[(64 * arg2.length) + 196] = 12
                mem[(64 * arg2.length) + 228] = 'ZERO_ADDRESS'
                revert with memory
                  from (64 * arg2.length) + 160
                   len (127 * arg2.length) + 100
            require 0 < arg2.length
            if mem[140 len 20] != mem[140 len 20]:
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = -1
                t = 0
                while idx < sub_b1fc7008.length:
                    require ext_code.size(sub_b1fc7008[idx])
                    staticcall sub_b1fc7008[idx].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if not Mask(112, 0, ext_call.return_data[32]):
                        require idx < sub_b1fc7008.length
                        mem[0] = sub_b1fc7008[idx]
                        mem[32] = 4
                        _670 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_670] = 30
                        mem[_670 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 > Mask(112, 0, ext_call.return_data[0]):
                            _709 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_709 + idx + 68] = mem[_670 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_709 + 68] = mem[_709 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _709 + -mem[64] + 100
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                            s = s
                            t = t
                            continue 
                        require idx < sub_b1fc7008.length
                        mem[0] = 6
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        t = sub_b1fc7008[idx]
                        continue 
                    require Mask(112, 0, ext_call.return_data[32])
                    if Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) != arg1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not Mask(112, 0, ext_call.return_data[32]) * arg1:
                        require idx < sub_b1fc7008.length
                        mem[0] = sub_b1fc7008[idx]
                        mem[32] = 4
                        _708 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_708] = 30
                        mem[_708 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 > Mask(112, 0, ext_call.return_data[0]):
                            _757 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_757 + idx + 68] = mem[_708 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_757 + 68] = mem[_757 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _757 + -mem[64] + 100
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        require Mask(112, 0, ext_call.return_data[0]) - arg1
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                            s = s
                            t = t
                            continue 
                        require idx < sub_b1fc7008.length
                        mem[0] = 6
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        t = sub_b1fc7008[idx]
                        continue 
                    require Mask(112, 0, ext_call.return_data[32]) * arg1
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) * arg1 != 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _756 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_756] = 30
                    mem[_756 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[0]):
                        _812 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_812 + idx + 68] = mem[_756 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_812 + 68] = mem[_812 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _812 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = s
                        t = t
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    t = sub_b1fc7008[idx]
                    continue 
                require 0 < mem[(32 * arg2.length) + 128]
                mem[(32 * arg2.length) + 160] = s
                mem[mem[64] + 32] = address(t)
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[(32 * arg2.length) + 128]
                _566 = mem[(32 * arg2.length) + 128]
                mem[mem[64] + 96 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
                return 64, address(t), mem[mem[64] + 64 len (32 * _566) + 32]
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = -1
            t = 0
            while idx < sub_b1fc7008.length:
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not Mask(112, 0, ext_call.return_data[0]):
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _673 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_673] = 30
                    mem[_673 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[32]):
                        _713 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_713 + idx + 68] = mem[_673 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_713 + 68] = mem[_713 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _713 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = s
                        t = t
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    t = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[0])
                if Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) != arg1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(112, 0, ext_call.return_data[0]) * arg1:
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _712 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_712] = 30
                    mem[_712 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[32]):
                        _762 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_762 + idx + 68] = mem[_712 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_762 + 68] = mem[_762 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _762 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    require Mask(112, 0, ext_call.return_data[32]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = s
                        t = t
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    t = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[0]) * arg1
                if 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) * arg1 != 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _761 = mem[64]
                mem[64] = mem[64] + 64
                mem[_761] = 30
                mem[_761 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[32]):
                    _817 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_817 + idx + 68] = mem[_761 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_817 + 68] = mem[_817 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _817 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = s
                    t = t
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                t = sub_b1fc7008[idx]
                continue 
            require 0 < mem[(32 * arg2.length) + 128]
            mem[(32 * arg2.length) + 160] = s
            mem[mem[64] + 32] = address(t)
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[(32 * arg2.length) + 128]
            _570 = mem[(32 * arg2.length) + 128]
            mem[mem[64] + 96 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            return 64, address(t), mem[mem[64] + 64 len (32 * _570) + 32]
        if not mem[172 len 20]:
            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg2.length) + 164] = 32
            mem[(64 * arg2.length) + 196] = 12
            mem[(64 * arg2.length) + 228] = 'ZERO_ADDRESS'
            revert with memory
              from (64 * arg2.length) + 160
               len (127 * arg2.length) + 100
        require 0 < arg2.length
        if mem[172 len 20] != mem[140 len 20]:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = -1
            t = 0
            while idx < sub_b1fc7008.length:
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not Mask(112, 0, ext_call.return_data[32]):
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _676 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_676] = 30
                    mem[_676 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[0]):
                        _717 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_717 + idx + 68] = mem[_676 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_717 + 68] = mem[_717 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _717 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = s
                        t = t
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    t = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[32])
                if Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) != arg1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(112, 0, ext_call.return_data[32]) * arg1:
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _716 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_716] = 30
                    mem[_716 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[0]):
                        _767 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_767 + idx + 68] = mem[_716 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_767 + 68] = mem[_767 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _767 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = s
                        t = t
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    t = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[32]) * arg1
                if 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) * arg1 != 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _766 = mem[64]
                mem[64] = mem[64] + 64
                mem[_766] = 30
                mem[_766 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[0]):
                    _822 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_822 + idx + 68] = mem[_766 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_822 + 68] = mem[_822 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _822 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = s
                    t = t
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                s = Mask(112, 0, ext_call.return_data[32])
                s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                t = sub_b1fc7008[idx]
                continue 
            require 0 < mem[(32 * arg2.length) + 128]
            mem[(32 * arg2.length) + 160] = s
            mem[mem[64] + 32] = address(t)
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[(32 * arg2.length) + 128]
            _574 = mem[(32 * arg2.length) + 128]
            mem[mem[64] + 96 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            return 64, address(t), mem[mem[64] + 64 len (32 * _574) + 32]
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = -1
        t = 0
        while idx < sub_b1fc7008.length:
            require ext_code.size(sub_b1fc7008[idx])
            staticcall sub_b1fc7008[idx].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not Mask(112, 0, ext_call.return_data[0]):
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _679 = mem[64]
                mem[64] = mem[64] + 64
                mem[_679] = 30
                mem[_679 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[32]):
                    _721 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_721 + idx + 68] = mem[_679 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_721 + 68] = mem[_721 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _721 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = s
                    t = t
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                t = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) != arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(112, 0, ext_call.return_data[0]) * arg1:
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _720 = mem[64]
                mem[64] = mem[64] + 64
                mem[_720] = 30
                mem[_720 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[32]):
                    _772 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_772 + idx + 68] = mem[_720 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_772 + 68] = mem[_772 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _772 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = s
                    t = t
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                t = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[0]) * arg1
            if 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) * arg1 != 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _771 = mem[64]
            mem[64] = mem[64] + 64
            mem[_771] = 30
            mem[_771 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > Mask(112, 0, ext_call.return_data[32]):
                _827 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_827 + idx + 68] = mem[_771 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_827 + 68] = mem[_827 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _827 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                revert with 0, 'SafeMath: addition overflow'
            if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                s = s
                t = t
                continue 
            require idx < sub_b1fc7008.length
            mem[0] = 6
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            s = Mask(112, 0, ext_call.return_data[0])
            s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            t = sub_b1fc7008[idx]
            continue 
        require 0 < mem[(32 * arg2.length) + 128]
        mem[(32 * arg2.length) + 160] = s
        mem[mem[64] + 32] = address(t)
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(32 * arg2.length) + 128]
        _578 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 96 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        return 64, address(t), mem[mem[64] + 64 len (32 * _578) + 32]
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require arg2.length - 1 < arg2.length
    mem[(32 * arg2.length - 1) + (32 * arg2.length) + 160] = arg1
    require 0 < arg2.length
    require 1 < arg2.length
    if mem[140 len 20] == mem[172 len 20]:
        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg2.length) + 164] = 32
        mem[(64 * arg2.length) + 196] = 19
        mem[(64 * arg2.length) + 228] = 'IDENTICAL_ADDRESSES'
        revert with memory
          from (64 * arg2.length) + 160
           len (127 * arg2.length) + 100
    if mem[140 len 20] < mem[172 len 20]:
        if not mem[140 len 20]:
            mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg2.length) + 164] = 32
            mem[(64 * arg2.length) + 196] = 12
            mem[(64 * arg2.length) + 228] = 'ZERO_ADDRESS'
            revert with memory
              from (64 * arg2.length) + 160
               len (127 * arg2.length) + 100
        require 0 < arg2.length
        if mem[140 len 20] != mem[140 len 20]:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = -1
            t = 0
            while idx < sub_b1fc7008.length:
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not Mask(112, 0, ext_call.return_data[32]):
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _682 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_682] = 30
                    mem[_682 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[0]):
                        _725 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_725 + idx + 68] = mem[_682 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_725 + 68] = mem[_725 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _725 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = s
                        t = t
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    t = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[32])
                if Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) != arg1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(112, 0, ext_call.return_data[32]) * arg1:
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _724 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_724] = 30
                    mem[_724 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > Mask(112, 0, ext_call.return_data[0]):
                        _777 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_777 + idx + 68] = mem[_724 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_777 + 68] = mem[_777 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _777 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    require Mask(112, 0, ext_call.return_data[0]) - arg1
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                        s = s
                        t = t
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    t = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[32]) * arg1
                if 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) * arg1 != 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _776 = mem[64]
                mem[64] = mem[64] + 64
                mem[_776] = 30
                mem[_776 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[0]):
                    _832 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_832 + idx + 68] = mem[_776 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_832 + 68] = mem[_832 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _832 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = s
                    t = t
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                s = Mask(112, 0, ext_call.return_data[32])
                s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                t = sub_b1fc7008[idx]
                continue 
            require 0 < mem[(32 * arg2.length) + 128]
            mem[(32 * arg2.length) + 160] = s
            mem[mem[64] + 32] = address(t)
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[(32 * arg2.length) + 128]
            _582 = mem[(32 * arg2.length) + 128]
            mem[mem[64] + 96 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            return 64, address(t), mem[mem[64] + 64 len (32 * _582) + 32]
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = -1
        t = 0
        while idx < sub_b1fc7008.length:
            require ext_code.size(sub_b1fc7008[idx])
            staticcall sub_b1fc7008[idx].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not Mask(112, 0, ext_call.return_data[0]):
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _685 = mem[64]
                mem[64] = mem[64] + 64
                mem[_685] = 30
                mem[_685 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[32]):
                    _729 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_729 + idx + 68] = mem[_685 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_729 + 68] = mem[_729 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _729 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = s
                    t = t
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                t = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) != arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(112, 0, ext_call.return_data[0]) * arg1:
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _728 = mem[64]
                mem[64] = mem[64] + 64
                mem[_728] = 30
                mem[_728 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[32]):
                    _782 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_782 + idx + 68] = mem[_728 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_782 + 68] = mem[_782 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _782 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                require Mask(112, 0, ext_call.return_data[32]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = s
                    t = t
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                t = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[0]) * arg1
            if 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) * arg1 != 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _781 = mem[64]
            mem[64] = mem[64] + 64
            mem[_781] = 30
            mem[_781 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > Mask(112, 0, ext_call.return_data[32]):
                _837 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_837 + idx + 68] = mem[_781 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_837 + 68] = mem[_837 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _837 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                revert with 0, 'SafeMath: addition overflow'
            if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                s = s
                t = t
                continue 
            require idx < sub_b1fc7008.length
            mem[0] = 6
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            s = Mask(112, 0, ext_call.return_data[0])
            s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            t = sub_b1fc7008[idx]
            continue 
        require 0 < mem[(32 * arg2.length) + 128]
        mem[(32 * arg2.length) + 160] = s
        mem[mem[64] + 32] = address(t)
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(32 * arg2.length) + 128]
        _586 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 96 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        return 64, address(t), mem[mem[64] + 64 len (32 * _586) + 32]
    if not mem[172 len 20]:
        mem[(64 * arg2.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg2.length) + 164] = 32
        mem[(64 * arg2.length) + 196] = 12
        mem[(64 * arg2.length) + 228] = 'ZERO_ADDRESS'
        revert with memory
          from (64 * arg2.length) + 160
           len (127 * arg2.length) + 100
    require 0 < arg2.length
    if mem[172 len 20] != mem[140 len 20]:
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = -1
        t = 0
        while idx < sub_b1fc7008.length:
            require ext_code.size(sub_b1fc7008[idx])
            staticcall sub_b1fc7008[idx].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not Mask(112, 0, ext_call.return_data[32]):
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _688 = mem[64]
                mem[64] = mem[64] + 64
                mem[_688] = 30
                mem[_688 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[0]):
                    _733 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_733 + idx + 68] = mem[_688 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_733 + 68] = mem[_733 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _733 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = s
                    t = t
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                s = Mask(112, 0, ext_call.return_data[32])
                s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                t = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[32])
            if Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) != arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(112, 0, ext_call.return_data[32]) * arg1:
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _732 = mem[64]
                mem[64] = mem[64] + 64
                mem[_732] = 30
                mem[_732 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > Mask(112, 0, ext_call.return_data[0]):
                    _787 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_787 + idx + 68] = mem[_732 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_787 + 68] = mem[_787 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _787 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                require Mask(112, 0, ext_call.return_data[0]) - arg1
                if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                    s = s
                    t = t
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                s = Mask(112, 0, ext_call.return_data[32])
                s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                t = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[32]) * arg1
            if 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / Mask(112, 0, ext_call.return_data[32]) * arg1 != 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _786 = mem[64]
            mem[64] = mem[64] + 64
            mem[_786] = 30
            mem[_786 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > Mask(112, 0, ext_call.return_data[0]):
                _842 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_842 + idx + 68] = mem[_786 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_842 + 68] = mem[_842 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _842 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[0]) - arg1
            require Mask(112, 0, ext_call.return_data[0]) - arg1
            if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                revert with 0, 'SafeMath: addition overflow'
            if (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                s = Mask(112, 0, ext_call.return_data[32])
                s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                s = s
                t = t
                continue 
            require idx < sub_b1fc7008.length
            mem[0] = 6
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[0])
            s = Mask(112, 0, ext_call.return_data[32])
            s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            s = (10000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            t = sub_b1fc7008[idx]
            continue 
        require 0 < mem[(32 * arg2.length) + 128]
        mem[(32 * arg2.length) + 160] = s
        mem[mem[64] + 32] = address(t)
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(32 * arg2.length) + 128]
        _590 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 96 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        return 64, address(t), mem[mem[64] + 64 len (32 * _590) + 32]
    idx = 0
    s = 0
    s = 0
    s = 0
    s = 0
    s = -1
    t = 0
    while idx < sub_b1fc7008.length:
        require ext_code.size(sub_b1fc7008[idx])
        staticcall sub_b1fc7008[idx].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not Mask(112, 0, ext_call.return_data[0]):
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _691 = mem[64]
            mem[64] = mem[64] + 64
            mem[_691] = 30
            mem[_691 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > Mask(112, 0, ext_call.return_data[32]):
                _737 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_737 + idx + 68] = mem[_691 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_737 + 68] = mem[_737 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _737 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                revert with 0, 'SafeMath: addition overflow'
            if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                s = s
                t = t
                continue 
            require idx < sub_b1fc7008.length
            mem[0] = 6
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            s = Mask(112, 0, ext_call.return_data[0])
            s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            t = sub_b1fc7008[idx]
            continue 
        require Mask(112, 0, ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) != arg1:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not Mask(112, 0, ext_call.return_data[0]) * arg1:
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _736 = mem[64]
            mem[64] = mem[64] + 64
            mem[_736] = 30
            mem[_736 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > Mask(112, 0, ext_call.return_data[32]):
                _792 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_792 + idx + 68] = mem[_736 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_792 + 68] = mem[_792 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _792 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            require Mask(112, 0, ext_call.return_data[32]) - arg1
            if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
                revert with 0, 'SafeMath: addition overflow'
            if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
                s = s
                t = t
                continue 
            require idx < sub_b1fc7008.length
            mem[0] = 6
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            s = Mask(112, 0, ext_call.return_data[0])
            s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            t = sub_b1fc7008[idx]
            continue 
        require Mask(112, 0, ext_call.return_data[0]) * arg1
        if 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) * arg1 != 10000:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        require idx < sub_b1fc7008.length
        mem[0] = sub_b1fc7008[idx]
        mem[32] = 4
        _791 = mem[64]
        mem[64] = mem[64] + 64
        mem[_791] = 30
        mem[_791 + 32] = 'SafeMath: subtraction overflow'
        if arg1 > Mask(112, 0, ext_call.return_data[32]):
            _847 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_847 + idx + 68] = mem[_791 + idx + 32]
                idx = idx + 32
                continue 
            mem[_847 + 68] = mem[_847 + 70 len 30]
            revert with memory
              from mem[64]
               len _847 + -mem[64] + 100
        require Mask(112, 0, ext_call.return_data[32]) - arg1
        require Mask(112, 0, ext_call.return_data[32]) - arg1
        if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1) / Mask(112, 0, ext_call.return_data[32]) - arg1 != -sub_0eb1b8aa[stor6[idx]] + 10000:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
        if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1):
            revert with 0, 'SafeMath: addition overflow'
        if (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1 >= s:
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            s = Mask(112, 0, ext_call.return_data[0])
            s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
            s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
            s = s
            t = t
            continue 
        require idx < sub_b1fc7008.length
        mem[0] = 6
        idx = idx + 1
        s = Mask(112, 0, ext_call.return_data[32])
        s = Mask(112, 0, ext_call.return_data[0])
        s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)
        s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
        s = (10000 * Mask(112, 0, ext_call.return_data[0]) * arg1 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg1) + (sub_0eb1b8aa[stor6[idx]] * arg1)) + 1
        t = sub_b1fc7008[idx]
        continue 
    require 0 < mem[(32 * arg2.length) + 128]
    mem[(32 * arg2.length) + 160] = s
    mem[mem[64] + 32] = address(t)
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[(32 * arg2.length) + 128]
    _594 = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 96 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    return 64, address(t), mem[mem[64] + 64 len (32 * _594) + 32]
}

function sub_ccae4f02(?) {
    require calldata.size - 4 >= 96
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[address(msg.sender)]:
        revert with 0, 'Not Operator'
    mem[96] = ('cd', 68).length
    mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    require ('cd', 68).length <= test266151307()
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 68).length
    mem[64] = (64 * ('cd', 68).length) + 160
    if not ('cd', 68).length:
        require ('cd', 68).length - 1 < ('cd', 68).length
        mem[(32 * ('cd', 68).length - 1) + (32 * ('cd', 68).length) + 160] = cd[4]
        require 0 < ('cd', 68).length
        require 1 < ('cd', 68).length
        if mem[140 len 20] == mem[172 len 20]:
            mem[(64 * ('cd', 68).length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * ('cd', 68).length) + 164] = 32
            mem[(64 * ('cd', 68).length) + 196] = 19
            mem[(64 * ('cd', 68).length) + 228] = 'IDENTICAL_ADDRESSES'
            revert with memory
              from (64 * ('cd', 68).length) + 160
               len (127 * ('cd', 68).length) + 100
        if mem[140 len 20] < mem[172 len 20]:
            if not mem[140 len 20]:
                mem[(64 * ('cd', 68).length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * ('cd', 68).length) + 164] = 32
                mem[(64 * ('cd', 68).length) + 196] = 12
                mem[(64 * ('cd', 68).length) + 228] = 'ZERO_ADDRESS'
                revert with memory
                  from (64 * ('cd', 68).length) + 160
                   len (127 * ('cd', 68).length) + 100
            require 0 < ('cd', 68).length
            if mem[140 len 20] != mem[140 len 20]:
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = -1
                t = 0
                while idx < sub_b1fc7008.length:
                    require ext_code.size(sub_b1fc7008[idx])
                    staticcall sub_b1fc7008[idx].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if not Mask(112, 0, ext_call.return_data[32]):
                        require idx < sub_b1fc7008.length
                        mem[0] = sub_b1fc7008[idx]
                        mem[32] = 4
                        _1553 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1553] = 30
                        mem[_1553 + 32] = 'SafeMath: subtraction overflow'
                        if cd[4] > Mask(112, 0, ext_call.return_data[0]):
                            _1608 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1608 + idx + 68] = mem[_1553 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1608 + 68] = mem[_1608 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1608 + -mem[64] + 100
                        require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                        require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[0]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                            s = s
                            t = t
                            continue 
                        require idx < sub_b1fc7008.length
                        mem[0] = 6
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                        t = sub_b1fc7008[idx]
                        continue 
                    require Mask(112, 0, ext_call.return_data[32])
                    if Mask(112, 0, ext_call.return_data[32]) * cd[4] / Mask(112, 0, ext_call.return_data[32]) != cd[4]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not Mask(112, 0, ext_call.return_data[32]) * cd[4]:
                        require idx < sub_b1fc7008.length
                        mem[0] = sub_b1fc7008[idx]
                        mem[32] = 4
                        _1607 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1607] = 30
                        mem[_1607 + 32] = 'SafeMath: subtraction overflow'
                        if cd[4] > Mask(112, 0, ext_call.return_data[0]):
                            _1660 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1660 + idx + 68] = mem[_1607 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1660 + 68] = mem[_1660 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1660 + -mem[64] + 100
                        require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                        require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[0]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[0])
                            s = Mask(112, 0, ext_call.return_data[32])
                            s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                            s = s
                            t = t
                            continue 
                        require idx < sub_b1fc7008.length
                        mem[0] = 6
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                        t = sub_b1fc7008[idx]
                        continue 
                    require Mask(112, 0, ext_call.return_data[32]) * cd[4]
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / Mask(112, 0, ext_call.return_data[32]) * cd[4] != 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _1659 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1659] = 30
                    mem[_1659 + 32] = 'SafeMath: subtraction overflow'
                    if cd[4] > Mask(112, 0, ext_call.return_data[0]):
                        _1761 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1761 + idx + 68] = mem[_1659 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1761 + 68] = mem[_1761 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1761 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                    require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[0]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    if (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                        revert with 0, 'SafeMath: addition overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                        s = (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                        s = s
                        t = t
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    s = (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    t = sub_b1fc7008[idx]
                    continue 
                require 0 < mem[(32 * ('cd', 68).length) + 128]
                mem[(32 * ('cd', 68).length) + 160] = s
                require 0 < mem[(32 * ('cd', 68).length) + 128]
                if s > cd[36]:
                    revert with 0, 32, 36, 0x77536d617274537761704253433a204558434553534956455f494e5055545f414d4f554e, mem[mem[64] + 104 len 28]
                require 0 < ('cd', 68).length
                require 0 < mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + 4] = address(t)
                mem[mem[64] + 36] = s
                require ext_code.size(address(('cd', 68)[0]))
                call address(('cd', 68)[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(t), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1488 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
                mem[_1488] = ('cd', 68).length
                mem[_1488 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[_1488 + (32 * ('cd', 68).length) + 32] = 0
                require 0 < ('cd', 68).length
                require 1 < ('cd', 68).length
                if mem[_1488 + 44 len 20] == mem[_1488 + 76 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[_1488 + 44 len 20] < mem[_1488 + 76 len 20]:
                    if not mem[_1488 + 44 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require 0 < ('cd', 68).length
                    require 1 < mem[(32 * ('cd', 68).length) + 128]
                    if mem[_1488 + 44 len 20] == mem[_1488 + 44 len 20]:
                        _1863 = mem[(32 * ('cd', 68).length) + 192]
                        _1943 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1943 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1943 + 36] = 0
                        mem[_1943 + 68] = _1863
                        mem[_1943 + 100] = this.address
                        mem[_1943 + 132] = 128
                        mem[_1943 + 164] = mem[_1943]
                        mem[_1943 + 196 len ceil32(mem[_1943])] = mem[_1943 + 32 len ceil32(mem[_1943])]
                        if not mem[_1943] % 32:
                            require ext_code.size(address(t))
                            call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1863, address(this.address), 128, mem[_1943 + 164 len mem[_1943] + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1943 + 32] = 32
                            mem[_1943 + 64] = mem[(32 * ('cd', 68).length) + 128]
                            _2857 = mem[(32 * ('cd', 68).length) + 128]
                            mem[_1943 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                            return memory
                              from mem[64]
                               len (32 * _2857) + _1943 + -mem[64] + 96
                        mem[floor32(mem[_1943]) + _1943 + 196] = mem[floor32(mem[_1943]) + _1943 + -(mem[_1943] % 32) + 228 len mem[_1943] % 32]
                        require ext_code.size(address(t))
                        call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1863, address(this.address), 128, mem[_1943], mem[_1943 + 196 len floor32(mem[_1943]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1943 + 32] = 32
                        mem[_1943 + 64] = mem[(32 * ('cd', 68).length) + 128]
                        _2953 = mem[(32 * ('cd', 68).length) + 128]
                        mem[_1943 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                        return memory
                          from mem[64]
                           len (32 * _2953) + _1943 + -mem[64] + 96
                    _1864 = mem[(32 * ('cd', 68).length) + 192]
                    _1944 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1944 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1944 + 36] = _1864
                    mem[_1944 + 68] = 0
                    mem[_1944 + 100] = this.address
                    mem[_1944 + 132] = 128
                    mem[_1944 + 164] = mem[_1944]
                    mem[_1944 + 196 len ceil32(mem[_1944])] = mem[_1944 + 32 len ceil32(mem[_1944])]
                    if not mem[_1944] % 32:
                        require ext_code.size(address(t))
                        call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _1864, 0, address(this.address), 128, mem[_1944 + 164 len mem[_1944] + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1944 + 32] = 32
                        mem[_1944 + 64] = mem[(32 * ('cd', 68).length) + 128]
                        _2860 = mem[(32 * ('cd', 68).length) + 128]
                        mem[_1944 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                        return memory
                          from mem[64]
                           len (32 * _2860) + _1944 + -mem[64] + 96
                    mem[floor32(mem[_1944]) + _1944 + 196] = mem[floor32(mem[_1944]) + _1944 + -(mem[_1944] % 32) + 228 len mem[_1944] % 32]
                    require ext_code.size(address(t))
                    call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _1864, 0, address(this.address), 128, mem[_1944], mem[_1944 + 196 len floor32(mem[_1944]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1944 + 32] = 32
                    mem[_1944 + 64] = mem[(32 * ('cd', 68).length) + 128]
                    _2956 = mem[(32 * ('cd', 68).length) + 128]
                    mem[_1944 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _2956) + _1944 + -mem[64] + 96
                if not mem[_1488 + 76 len 20]:
                    revert with 0, 'ZERO_ADDRESS'
                require 0 < ('cd', 68).length
                require 1 < mem[(32 * ('cd', 68).length) + 128]
                if mem[_1488 + 44 len 20] == mem[_1488 + 76 len 20]:
                    _1865 = mem[(32 * ('cd', 68).length) + 192]
                    _1945 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1945 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1945 + 36] = 0
                    mem[_1945 + 68] = _1865
                    mem[_1945 + 100] = this.address
                    mem[_1945 + 132] = 128
                    mem[_1945 + 164] = mem[_1945]
                    mem[_1945 + 196 len ceil32(mem[_1945])] = mem[_1945 + 32 len ceil32(mem[_1945])]
                    if not mem[_1945] % 32:
                        require ext_code.size(address(t))
                        call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1865, address(this.address), 128, mem[_1945 + 164 len mem[_1945] + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1945 + 32] = 32
                        mem[_1945 + 64] = mem[(32 * ('cd', 68).length) + 128]
                        _2863 = mem[(32 * ('cd', 68).length) + 128]
                        mem[_1945 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                        return memory
                          from mem[64]
                           len (32 * _2863) + _1945 + -mem[64] + 96
                    mem[floor32(mem[_1945]) + _1945 + 196] = mem[floor32(mem[_1945]) + _1945 + -(mem[_1945] % 32) + 228 len mem[_1945] % 32]
                    require ext_code.size(address(t))
                    call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1865, address(this.address), 128, mem[_1945], mem[_1945 + 196 len floor32(mem[_1945]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1945 + 32] = 32
                    mem[_1945 + 64] = mem[(32 * ('cd', 68).length) + 128]
                    _2959 = mem[(32 * ('cd', 68).length) + 128]
                    mem[_1945 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _2959) + _1945 + -mem[64] + 96
                _1866 = mem[(32 * ('cd', 68).length) + 192]
                _1946 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1946 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_1946 + 36] = _1866
                mem[_1946 + 68] = 0
                mem[_1946 + 100] = this.address
                mem[_1946 + 132] = 128
                mem[_1946 + 164] = mem[_1946]
                mem[_1946 + 196 len ceil32(mem[_1946])] = mem[_1946 + 32 len ceil32(mem[_1946])]
                if not mem[_1946] % 32:
                    require ext_code.size(address(t))
                    call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _1866, 0, address(this.address), 128, mem[_1946 + 164 len mem[_1946] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1946 + 32] = 32
                    mem[_1946 + 64] = mem[(32 * ('cd', 68).length) + 128]
                    _2866 = mem[(32 * ('cd', 68).length) + 128]
                    mem[_1946 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _2866) + _1946 + -mem[64] + 96
                mem[floor32(mem[_1946]) + _1946 + 196] = mem[floor32(mem[_1946]) + _1946 + -(mem[_1946] % 32) + 228 len mem[_1946] % 32]
                require ext_code.size(address(t))
                call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _1866, 0, address(this.address), 128, mem[_1946], mem[_1946 + 196 len floor32(mem[_1946]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1946 + 32] = 32
                mem[_1946 + 64] = mem[(32 * ('cd', 68).length) + 128]
                _2962 = mem[(32 * ('cd', 68).length) + 128]
                mem[_1946 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _2962) + _1946 + -mem[64] + 96
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = -1
            t = 0
            while idx < sub_b1fc7008.length:
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not Mask(112, 0, ext_call.return_data[0]):
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _1556 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1556] = 30
                    mem[_1556 + 32] = 'SafeMath: subtraction overflow'
                    if cd[4] > Mask(112, 0, ext_call.return_data[32]):
                        _1612 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1612 + idx + 68] = mem[_1556 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1612 + 68] = mem[_1612 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1612 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[32]) - cd[4]
                    require Mask(112, 0, ext_call.return_data[32]) - cd[4]
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[32]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                        s = s
                        t = t
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    t = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[0])
                if Mask(112, 0, ext_call.return_data[0]) * cd[4] / Mask(112, 0, ext_call.return_data[0]) != cd[4]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(112, 0, ext_call.return_data[0]) * cd[4]:
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _1611 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1611] = 30
                    mem[_1611 + 32] = 'SafeMath: subtraction overflow'
                    if cd[4] > Mask(112, 0, ext_call.return_data[32]):
                        _1669 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1669 + idx + 68] = mem[_1611 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1669 + 68] = mem[_1669 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1669 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[32]) - cd[4]
                    require Mask(112, 0, ext_call.return_data[32]) - cd[4]
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[32]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                        s = s
                        t = t
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    t = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[0]) * cd[4]
                if 10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / Mask(112, 0, ext_call.return_data[0]) * cd[4] != 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _1668 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1668] = 30
                mem[_1668 + 32] = 'SafeMath: subtraction overflow'
                if cd[4] > Mask(112, 0, ext_call.return_data[32]):
                    _1768 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1768 + idx + 68] = mem[_1668 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1768 + 68] = mem[_1768 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1768 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) - cd[4]
                require Mask(112, 0, ext_call.return_data[32]) - cd[4]
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[32]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                if (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                    revert with 0, 'SafeMath: addition overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    s = s
                    t = t
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                s = (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                s = (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                t = sub_b1fc7008[idx]
                continue 
            require 0 < mem[(32 * ('cd', 68).length) + 128]
            mem[(32 * ('cd', 68).length) + 160] = s
            require 0 < mem[(32 * ('cd', 68).length) + 128]
            if s > cd[36]:
                revert with 0, 32, 36, 0x77536d617274537761704253433a204558434553534956455f494e5055545f414d4f554e, mem[mem[64] + 104 len 28]
            require 0 < ('cd', 68).length
            require 0 < mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + 4] = address(t)
            mem[mem[64] + 36] = s
            require ext_code.size(address(('cd', 68)[0]))
            call address(('cd', 68)[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(t), s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1490 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_1490] = ('cd', 68).length
            mem[_1490 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_1490 + (32 * ('cd', 68).length) + 32] = 0
            require 0 < ('cd', 68).length
            require 1 < ('cd', 68).length
            if mem[_1490 + 44 len 20] == mem[_1490 + 76 len 20]:
                revert with 0, 'IDENTICAL_ADDRESSES'
            if mem[_1490 + 44 len 20] < mem[_1490 + 76 len 20]:
                if not mem[_1490 + 44 len 20]:
                    revert with 0, 'ZERO_ADDRESS'
                require 0 < ('cd', 68).length
                require 1 < mem[(32 * ('cd', 68).length) + 128]
                if mem[_1490 + 44 len 20] == mem[_1490 + 44 len 20]:
                    _1871 = mem[(32 * ('cd', 68).length) + 192]
                    _1950 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1950 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1950 + 36] = 0
                    mem[_1950 + 68] = _1871
                    mem[_1950 + 100] = this.address
                    mem[_1950 + 132] = 128
                    mem[_1950 + 164] = mem[_1950]
                    mem[_1950 + 196 len ceil32(mem[_1950])] = mem[_1950 + 32 len ceil32(mem[_1950])]
                    if not mem[_1950] % 32:
                        require ext_code.size(address(t))
                        call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1871, address(this.address), 128, mem[_1950 + 164 len mem[_1950] + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1950 + 32] = 32
                        mem[_1950 + 64] = mem[(32 * ('cd', 68).length) + 128]
                        _2869 = mem[(32 * ('cd', 68).length) + 128]
                        mem[_1950 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                        return memory
                          from mem[64]
                           len (32 * _2869) + _1950 + -mem[64] + 96
                    mem[floor32(mem[_1950]) + _1950 + 196] = mem[floor32(mem[_1950]) + _1950 + -(mem[_1950] % 32) + 228 len mem[_1950] % 32]
                    require ext_code.size(address(t))
                    call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1871, address(this.address), 128, mem[_1950], mem[_1950 + 196 len floor32(mem[_1950]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1950 + 32] = 32
                    mem[_1950 + 64] = mem[(32 * ('cd', 68).length) + 128]
                    _2965 = mem[(32 * ('cd', 68).length) + 128]
                    mem[_1950 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _2965) + _1950 + -mem[64] + 96
                _1872 = mem[(32 * ('cd', 68).length) + 192]
                _1951 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1951 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_1951 + 36] = _1872
                mem[_1951 + 68] = 0
                mem[_1951 + 100] = this.address
                mem[_1951 + 132] = 128
                mem[_1951 + 164] = mem[_1951]
                mem[_1951 + 196 len ceil32(mem[_1951])] = mem[_1951 + 32 len ceil32(mem[_1951])]
                if not mem[_1951] % 32:
                    require ext_code.size(address(t))
                    call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _1872, 0, address(this.address), 128, mem[_1951 + 164 len mem[_1951] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1951 + 32] = 32
                    mem[_1951 + 64] = mem[(32 * ('cd', 68).length) + 128]
                    _2872 = mem[(32 * ('cd', 68).length) + 128]
                    mem[_1951 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _2872) + _1951 + -mem[64] + 96
                mem[floor32(mem[_1951]) + _1951 + 196] = mem[floor32(mem[_1951]) + _1951 + -(mem[_1951] % 32) + 228 len mem[_1951] % 32]
                require ext_code.size(address(t))
                call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _1872, 0, address(this.address), 128, mem[_1951], mem[_1951 + 196 len floor32(mem[_1951]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1951 + 32] = 32
                mem[_1951 + 64] = mem[(32 * ('cd', 68).length) + 128]
                _2968 = mem[(32 * ('cd', 68).length) + 128]
                mem[_1951 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _2968) + _1951 + -mem[64] + 96
            if not mem[_1490 + 76 len 20]:
                revert with 0, 'ZERO_ADDRESS'
            require 0 < ('cd', 68).length
            require 1 < mem[(32 * ('cd', 68).length) + 128]
            if mem[_1490 + 44 len 20] == mem[_1490 + 76 len 20]:
                _1873 = mem[(32 * ('cd', 68).length) + 192]
                _1952 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1952 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_1952 + 36] = 0
                mem[_1952 + 68] = _1873
                mem[_1952 + 100] = this.address
                mem[_1952 + 132] = 128
                mem[_1952 + 164] = mem[_1952]
                mem[_1952 + 196 len ceil32(mem[_1952])] = mem[_1952 + 32 len ceil32(mem[_1952])]
                if not mem[_1952] % 32:
                    require ext_code.size(address(t))
                    call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1873, address(this.address), 128, mem[_1952 + 164 len mem[_1952] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1952 + 32] = 32
                    mem[_1952 + 64] = mem[(32 * ('cd', 68).length) + 128]
                    _2875 = mem[(32 * ('cd', 68).length) + 128]
                    mem[_1952 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _2875) + _1952 + -mem[64] + 96
                mem[floor32(mem[_1952]) + _1952 + 196] = mem[floor32(mem[_1952]) + _1952 + -(mem[_1952] % 32) + 228 len mem[_1952] % 32]
                require ext_code.size(address(t))
                call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _1873, address(this.address), 128, mem[_1952], mem[_1952 + 196 len floor32(mem[_1952]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1952 + 32] = 32
                mem[_1952 + 64] = mem[(32 * ('cd', 68).length) + 128]
                _2971 = mem[(32 * ('cd', 68).length) + 128]
                mem[_1952 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _2971) + _1952 + -mem[64] + 96
            _1874 = mem[(32 * ('cd', 68).length) + 192]
            _1953 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1953 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_1953 + 36] = _1874
            mem[_1953 + 68] = 0
            mem[_1953 + 100] = this.address
            mem[_1953 + 132] = 128
            mem[_1953 + 164] = mem[_1953]
            mem[_1953 + 196 len ceil32(mem[_1953])] = mem[_1953 + 32 len ceil32(mem[_1953])]
            if not mem[_1953] % 32:
                require ext_code.size(address(t))
                call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _1874, 0, address(this.address), 128, mem[_1953 + 164 len mem[_1953] + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1953 + 32] = 32
                mem[_1953 + 64] = mem[(32 * ('cd', 68).length) + 128]
                _2878 = mem[(32 * ('cd', 68).length) + 128]
                mem[_1953 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _2878) + _1953 + -mem[64] + 96
            mem[floor32(mem[_1953]) + _1953 + 196] = mem[floor32(mem[_1953]) + _1953 + -(mem[_1953] % 32) + 228 len mem[_1953] % 32]
            require ext_code.size(address(t))
            call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _1874, 0, address(this.address), 128, mem[_1953], mem[_1953 + 196 len floor32(mem[_1953]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1953 + 32] = 32
            mem[_1953 + 64] = mem[(32 * ('cd', 68).length) + 128]
            _2974 = mem[(32 * ('cd', 68).length) + 128]
            mem[_1953 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
            return memory
              from mem[64]
               len (32 * _2974) + _1953 + -mem[64] + 96
        if not mem[172 len 20]:
            mem[(64 * ('cd', 68).length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * ('cd', 68).length) + 164] = 32
            mem[(64 * ('cd', 68).length) + 196] = 12
            mem[(64 * ('cd', 68).length) + 228] = 'ZERO_ADDRESS'
            revert with memory
              from (64 * ('cd', 68).length) + 160
               len (127 * ('cd', 68).length) + 100
        require 0 < ('cd', 68).length
        if mem[172 len 20] != mem[140 len 20]:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = -1
            t = 0
            while idx < sub_b1fc7008.length:
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not Mask(112, 0, ext_call.return_data[32]):
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _1559 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1559] = 30
                    mem[_1559 + 32] = 'SafeMath: subtraction overflow'
                    if cd[4] > Mask(112, 0, ext_call.return_data[0]):
                        _1616 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1616 + idx + 68] = mem[_1559 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1616 + 68] = mem[_1616 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1616 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                    require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[0]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                        s = s
                        t = t
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    t = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[32])
                if Mask(112, 0, ext_call.return_data[32]) * cd[4] / Mask(112, 0, ext_call.return_data[32]) != cd[4]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(112, 0, ext_call.return_data[32]) * cd[4]:
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _1615 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1615] = 30
                    mem[_1615 + 32] = 'SafeMath: subtraction overflow'
                    if cd[4] > Mask(112, 0, ext_call.return_data[0]):
                        _1678 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1678 + idx + 68] = mem[_1615 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1678 + 68] = mem[_1678 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1678 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                    require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[0]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                        s = s
                        t = t
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    t = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[32]) * cd[4]
                if 10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / Mask(112, 0, ext_call.return_data[32]) * cd[4] != 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _1677 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1677] = 30
                mem[_1677 + 32] = 'SafeMath: subtraction overflow'
                if cd[4] > Mask(112, 0, ext_call.return_data[0]):
                    _1775 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1775 + idx + 68] = mem[_1677 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1775 + 68] = mem[_1775 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1775 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[0]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                if (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                    revert with 0, 'SafeMath: addition overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    s = s
                    t = t
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                s = Mask(112, 0, ext_call.return_data[32])
                s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                s = (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                s = (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                t = sub_b1fc7008[idx]
                continue 
            require 0 < mem[(32 * ('cd', 68).length) + 128]
            mem[(32 * ('cd', 68).length) + 160] = s
            require 0 < mem[(32 * ('cd', 68).length) + 128]
            if s > cd[36]:
                revert with 0, 32, 36, 0x77536d617274537761704253433a204558434553534956455f494e5055545f414d4f554e, mem[mem[64] + 104 len 28]
            require 0 < ('cd', 68).length
            require 0 < mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + 4] = address(t)
            mem[mem[64] + 36] = s
            require ext_code.size(address(('cd', 68)[0]))
            call address(('cd', 68)[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(t), s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1492 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_1492] = ('cd', 68).length
            mem[_1492 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_1492 + (32 * ('cd', 68).length) + 32] = 0
            require 0 < ('cd', 68).length
            require 1 < ('cd', 68).length
            if mem[_1492 + 44 len 20] == mem[_1492 + 76 len 20]:
                revert with 0, 'IDENTICAL_ADDRESSES'
            if mem[_1492 + 44 len 20] < mem[_1492 + 76 len 20]:
                if not mem[_1492 + 44 len 20]:
                    revert with 0, 'ZERO_ADDRESS'
                require 0 < ('cd', 68).length
                require 1 < mem[(32 * ('cd', 68).length) + 128]
                if mem[_1492 + 44 len 20] == mem[_1492 + 44 len 20]:
                    _1879 = mem[(32 * ('cd', 68).length) + 192]
                    _1957 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1957 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1957 + 36] = 0
                    mem[_1957 + 68] = _1879
                    mem[_1957 + 100] = this.address
                    mem[_1957 + 132] = 128
                    mem[_1957 + 164] = mem[_1957]
                    mem[_1957 + 196 len ceil32(mem[_1957])] = mem[_1957 + 32 len ceil32(mem[_1957])]
                    if not mem[_1957] % 32:
                        require ext_code.size(address(t))
                        call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1879, address(this.address), 128, mem[_1957 + 164 len mem[_1957] + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1957 + 32] = 32
                        mem[_1957 + 64] = mem[(32 * ('cd', 68).length) + 128]
                        _2881 = mem[(32 * ('cd', 68).length) + 128]
                        mem[_1957 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                        return memory
                          from mem[64]
                           len (32 * _2881) + _1957 + -mem[64] + 96
                    mem[floor32(mem[_1957]) + _1957 + 196] = mem[floor32(mem[_1957]) + _1957 + -(mem[_1957] % 32) + 228 len mem[_1957] % 32]
                    require ext_code.size(address(t))
                    call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1879, address(this.address), 128, mem[_1957], mem[_1957 + 196 len floor32(mem[_1957]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1957 + 32] = 32
                    mem[_1957 + 64] = mem[(32 * ('cd', 68).length) + 128]
                    _2977 = mem[(32 * ('cd', 68).length) + 128]
                    mem[_1957 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _2977) + _1957 + -mem[64] + 96
                _1880 = mem[(32 * ('cd', 68).length) + 192]
                _1958 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1958 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_1958 + 36] = _1880
                mem[_1958 + 68] = 0
                mem[_1958 + 100] = this.address
                mem[_1958 + 132] = 128
                mem[_1958 + 164] = mem[_1958]
                mem[_1958 + 196 len ceil32(mem[_1958])] = mem[_1958 + 32 len ceil32(mem[_1958])]
                if not mem[_1958] % 32:
                    require ext_code.size(address(t))
                    call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _1880, 0, address(this.address), 128, mem[_1958 + 164 len mem[_1958] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1958 + 32] = 32
                    mem[_1958 + 64] = mem[(32 * ('cd', 68).length) + 128]
                    _2884 = mem[(32 * ('cd', 68).length) + 128]
                    mem[_1958 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _2884) + _1958 + -mem[64] + 96
                mem[floor32(mem[_1958]) + _1958 + 196] = mem[floor32(mem[_1958]) + _1958 + -(mem[_1958] % 32) + 228 len mem[_1958] % 32]
                require ext_code.size(address(t))
                call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _1880, 0, address(this.address), 128, mem[_1958], mem[_1958 + 196 len floor32(mem[_1958]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1958 + 32] = 32
                mem[_1958 + 64] = mem[(32 * ('cd', 68).length) + 128]
                _2980 = mem[(32 * ('cd', 68).length) + 128]
                mem[_1958 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _2980) + _1958 + -mem[64] + 96
            if not mem[_1492 + 76 len 20]:
                revert with 0, 'ZERO_ADDRESS'
            require 0 < ('cd', 68).length
            require 1 < mem[(32 * ('cd', 68).length) + 128]
            if mem[_1492 + 44 len 20] == mem[_1492 + 76 len 20]:
                _1881 = mem[(32 * ('cd', 68).length) + 192]
                _1959 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1959 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_1959 + 36] = 0
                mem[_1959 + 68] = _1881
                mem[_1959 + 100] = this.address
                mem[_1959 + 132] = 128
                mem[_1959 + 164] = mem[_1959]
                mem[_1959 + 196 len ceil32(mem[_1959])] = mem[_1959 + 32 len ceil32(mem[_1959])]
                if not mem[_1959] % 32:
                    require ext_code.size(address(t))
                    call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1881, address(this.address), 128, mem[_1959 + 164 len mem[_1959] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1959 + 32] = 32
                    mem[_1959 + 64] = mem[(32 * ('cd', 68).length) + 128]
                    _2887 = mem[(32 * ('cd', 68).length) + 128]
                    mem[_1959 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _2887) + _1959 + -mem[64] + 96
                mem[floor32(mem[_1959]) + _1959 + 196] = mem[floor32(mem[_1959]) + _1959 + -(mem[_1959] % 32) + 228 len mem[_1959] % 32]
                require ext_code.size(address(t))
                call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _1881, address(this.address), 128, mem[_1959], mem[_1959 + 196 len floor32(mem[_1959]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1959 + 32] = 32
                mem[_1959 + 64] = mem[(32 * ('cd', 68).length) + 128]
                _2983 = mem[(32 * ('cd', 68).length) + 128]
                mem[_1959 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _2983) + _1959 + -mem[64] + 96
            _1882 = mem[(32 * ('cd', 68).length) + 192]
            _1960 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1960 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_1960 + 36] = _1882
            mem[_1960 + 68] = 0
            mem[_1960 + 100] = this.address
            mem[_1960 + 132] = 128
            mem[_1960 + 164] = mem[_1960]
            mem[_1960 + 196 len ceil32(mem[_1960])] = mem[_1960 + 32 len ceil32(mem[_1960])]
            if not mem[_1960] % 32:
                require ext_code.size(address(t))
                call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _1882, 0, address(this.address), 128, mem[_1960 + 164 len mem[_1960] + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1960 + 32] = 32
                mem[_1960 + 64] = mem[(32 * ('cd', 68).length) + 128]
                _2890 = mem[(32 * ('cd', 68).length) + 128]
                mem[_1960 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _2890) + _1960 + -mem[64] + 96
            mem[floor32(mem[_1960]) + _1960 + 196] = mem[floor32(mem[_1960]) + _1960 + -(mem[_1960] % 32) + 228 len mem[_1960] % 32]
            require ext_code.size(address(t))
            call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _1882, 0, address(this.address), 128, mem[_1960], mem[_1960 + 196 len floor32(mem[_1960]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1960 + 32] = 32
            mem[_1960 + 64] = mem[(32 * ('cd', 68).length) + 128]
            _2986 = mem[(32 * ('cd', 68).length) + 128]
            mem[_1960 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
            return memory
              from mem[64]
               len (32 * _2986) + _1960 + -mem[64] + 96
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = -1
        t = 0
        while idx < sub_b1fc7008.length:
            require ext_code.size(sub_b1fc7008[idx])
            staticcall sub_b1fc7008[idx].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not Mask(112, 0, ext_call.return_data[0]):
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _1562 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1562] = 30
                mem[_1562 + 32] = 'SafeMath: subtraction overflow'
                if cd[4] > Mask(112, 0, ext_call.return_data[32]):
                    _1620 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1620 + idx + 68] = mem[_1562 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1620 + 68] = mem[_1620 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1620 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) - cd[4]
                require Mask(112, 0, ext_call.return_data[32]) - cd[4]
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[32]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    s = s
                    t = t
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                t = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[0]) * cd[4] / Mask(112, 0, ext_call.return_data[0]) != cd[4]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(112, 0, ext_call.return_data[0]) * cd[4]:
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _1619 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1619] = 30
                mem[_1619 + 32] = 'SafeMath: subtraction overflow'
                if cd[4] > Mask(112, 0, ext_call.return_data[32]):
                    _1687 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1687 + idx + 68] = mem[_1619 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1687 + 68] = mem[_1687 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1687 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) - cd[4]
                require Mask(112, 0, ext_call.return_data[32]) - cd[4]
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[32]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    s = s
                    t = t
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                t = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[0]) * cd[4]
            if 10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / Mask(112, 0, ext_call.return_data[0]) * cd[4] != 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _1686 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1686] = 30
            mem[_1686 + 32] = 'SafeMath: subtraction overflow'
            if cd[4] > Mask(112, 0, ext_call.return_data[32]):
                _1782 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1782 + idx + 68] = mem[_1686 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1782 + 68] = mem[_1782 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1782 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[32]) - cd[4]
            require Mask(112, 0, ext_call.return_data[32]) - cd[4]
            if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[32]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
            if (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                revert with 0, 'SafeMath: addition overflow'
            if (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                s = (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                s = s
                t = t
                continue 
            require idx < sub_b1fc7008.length
            mem[0] = 6
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            s = Mask(112, 0, ext_call.return_data[0])
            s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
            s = (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
            s = (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
            t = sub_b1fc7008[idx]
            continue 
        require 0 < mem[(32 * ('cd', 68).length) + 128]
        mem[(32 * ('cd', 68).length) + 160] = s
        require 0 < mem[(32 * ('cd', 68).length) + 128]
        if s > cd[36]:
            revert with 0, 32, 36, 0x77536d617274537761704253433a204558434553534956455f494e5055545f414d4f554e, mem[mem[64] + 104 len 28]
        require 0 < ('cd', 68).length
        require 0 < mem[(32 * ('cd', 68).length) + 128]
        mem[mem[64] + 4] = address(t)
        mem[mem[64] + 36] = s
        require ext_code.size(address(('cd', 68)[0]))
        call address(('cd', 68)[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(t), s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _1494 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_1494] = ('cd', 68).length
        mem[_1494 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_1494 + (32 * ('cd', 68).length) + 32] = 0
        require 0 < ('cd', 68).length
        require 1 < ('cd', 68).length
        if mem[_1494 + 44 len 20] == mem[_1494 + 76 len 20]:
            revert with 0, 'IDENTICAL_ADDRESSES'
        if mem[_1494 + 44 len 20] < mem[_1494 + 76 len 20]:
            if not mem[_1494 + 44 len 20]:
                revert with 0, 'ZERO_ADDRESS'
            require 0 < ('cd', 68).length
            require 1 < mem[(32 * ('cd', 68).length) + 128]
            if mem[_1494 + 44 len 20] == mem[_1494 + 44 len 20]:
                _1887 = mem[(32 * ('cd', 68).length) + 192]
                _1964 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1964 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_1964 + 36] = 0
                mem[_1964 + 68] = _1887
                mem[_1964 + 100] = this.address
                mem[_1964 + 132] = 128
                mem[_1964 + 164] = mem[_1964]
                mem[_1964 + 196 len ceil32(mem[_1964])] = mem[_1964 + 32 len ceil32(mem[_1964])]
                if not mem[_1964] % 32:
                    require ext_code.size(address(t))
                    call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1887, address(this.address), 128, mem[_1964 + 164 len mem[_1964] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1964 + 32] = 32
                    mem[_1964 + 64] = mem[(32 * ('cd', 68).length) + 128]
                    _2893 = mem[(32 * ('cd', 68).length) + 128]
                    mem[_1964 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _2893) + _1964 + -mem[64] + 96
                mem[floor32(mem[_1964]) + _1964 + 196] = mem[floor32(mem[_1964]) + _1964 + -(mem[_1964] % 32) + 228 len mem[_1964] % 32]
                require ext_code.size(address(t))
                call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _1887, address(this.address), 128, mem[_1964], mem[_1964 + 196 len floor32(mem[_1964]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1964 + 32] = 32
                mem[_1964 + 64] = mem[(32 * ('cd', 68).length) + 128]
                _2989 = mem[(32 * ('cd', 68).length) + 128]
                mem[_1964 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _2989) + _1964 + -mem[64] + 96
            _1888 = mem[(32 * ('cd', 68).length) + 192]
            _1965 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1965 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_1965 + 36] = _1888
            mem[_1965 + 68] = 0
            mem[_1965 + 100] = this.address
            mem[_1965 + 132] = 128
            mem[_1965 + 164] = mem[_1965]
            mem[_1965 + 196 len ceil32(mem[_1965])] = mem[_1965 + 32 len ceil32(mem[_1965])]
            if not mem[_1965] % 32:
                require ext_code.size(address(t))
                call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _1888, 0, address(this.address), 128, mem[_1965 + 164 len mem[_1965] + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1965 + 32] = 32
                mem[_1965 + 64] = mem[(32 * ('cd', 68).length) + 128]
                _2896 = mem[(32 * ('cd', 68).length) + 128]
                mem[_1965 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _2896) + _1965 + -mem[64] + 96
            mem[floor32(mem[_1965]) + _1965 + 196] = mem[floor32(mem[_1965]) + _1965 + -(mem[_1965] % 32) + 228 len mem[_1965] % 32]
            require ext_code.size(address(t))
            call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _1888, 0, address(this.address), 128, mem[_1965], mem[_1965 + 196 len floor32(mem[_1965]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1965 + 32] = 32
            mem[_1965 + 64] = mem[(32 * ('cd', 68).length) + 128]
            _2992 = mem[(32 * ('cd', 68).length) + 128]
            mem[_1965 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
            return memory
              from mem[64]
               len (32 * _2992) + _1965 + -mem[64] + 96
        if not mem[_1494 + 76 len 20]:
            revert with 0, 'ZERO_ADDRESS'
        require 0 < ('cd', 68).length
        require 1 < mem[(32 * ('cd', 68).length) + 128]
        if mem[_1494 + 44 len 20] == mem[_1494 + 76 len 20]:
            _1889 = mem[(32 * ('cd', 68).length) + 192]
            _1966 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1966 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_1966 + 36] = 0
            mem[_1966 + 68] = _1889
            mem[_1966 + 100] = this.address
            mem[_1966 + 132] = 128
            mem[_1966 + 164] = mem[_1966]
            mem[_1966 + 196 len ceil32(mem[_1966])] = mem[_1966 + 32 len ceil32(mem[_1966])]
            if not mem[_1966] % 32:
                require ext_code.size(address(t))
                call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _1889, address(this.address), 128, mem[_1966 + 164 len mem[_1966] + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1966 + 32] = 32
                mem[_1966 + 64] = mem[(32 * ('cd', 68).length) + 128]
                _2899 = mem[(32 * ('cd', 68).length) + 128]
                mem[_1966 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _2899) + _1966 + -mem[64] + 96
            mem[floor32(mem[_1966]) + _1966 + 196] = mem[floor32(mem[_1966]) + _1966 + -(mem[_1966] % 32) + 228 len mem[_1966] % 32]
            require ext_code.size(address(t))
            call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _1889, address(this.address), 128, mem[_1966], mem[_1966 + 196 len floor32(mem[_1966]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1966 + 32] = 32
            mem[_1966 + 64] = mem[(32 * ('cd', 68).length) + 128]
            _2995 = mem[(32 * ('cd', 68).length) + 128]
            mem[_1966 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
            return memory
              from mem[64]
               len (32 * _2995) + _1966 + -mem[64] + 96
        _1890 = mem[(32 * ('cd', 68).length) + 192]
        _1967 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1967 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_1967 + 36] = _1890
        mem[_1967 + 68] = 0
        mem[_1967 + 100] = this.address
        mem[_1967 + 132] = 128
        mem[_1967 + 164] = mem[_1967]
        mem[_1967 + 196 len ceil32(mem[_1967])] = mem[_1967 + 32 len ceil32(mem[_1967])]
        if not mem[_1967] % 32:
            require ext_code.size(address(t))
            call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _1890, 0, address(this.address), 128, mem[_1967 + 164 len mem[_1967] + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1967 + 32] = 32
            mem[_1967 + 64] = mem[(32 * ('cd', 68).length) + 128]
            _2902 = mem[(32 * ('cd', 68).length) + 128]
            mem[_1967 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
            return memory
              from mem[64]
               len (32 * _2902) + _1967 + -mem[64] + 96
        mem[floor32(mem[_1967]) + _1967 + 196] = mem[floor32(mem[_1967]) + _1967 + -(mem[_1967] % 32) + 228 len mem[_1967] % 32]
        require ext_code.size(address(t))
        call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _1890, 0, address(this.address), 128, mem[_1967], mem[_1967 + 196 len floor32(mem[_1967]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1967 + 32] = 32
        mem[_1967 + 64] = mem[(32 * ('cd', 68).length) + 128]
        _2998 = mem[(32 * ('cd', 68).length) + 128]
        mem[_1967 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
        return memory
          from mem[64]
           len (32 * _2998) + _1967 + -mem[64] + 96
    mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    require ('cd', 68).length - 1 < ('cd', 68).length
    mem[(32 * ('cd', 68).length - 1) + (32 * ('cd', 68).length) + 160] = cd[4]
    require 0 < ('cd', 68).length
    require 1 < ('cd', 68).length
    if mem[140 len 20] == mem[172 len 20]:
        mem[(64 * ('cd', 68).length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * ('cd', 68).length) + 164] = 32
        mem[(64 * ('cd', 68).length) + 196] = 19
        mem[(64 * ('cd', 68).length) + 228] = 'IDENTICAL_ADDRESSES'
        revert with memory
          from (64 * ('cd', 68).length) + 160
           len (127 * ('cd', 68).length) + 100
    if mem[140 len 20] < mem[172 len 20]:
        if not mem[140 len 20]:
            mem[(64 * ('cd', 68).length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * ('cd', 68).length) + 164] = 32
            mem[(64 * ('cd', 68).length) + 196] = 12
            mem[(64 * ('cd', 68).length) + 228] = 'ZERO_ADDRESS'
            revert with memory
              from (64 * ('cd', 68).length) + 160
               len (127 * ('cd', 68).length) + 100
        require 0 < ('cd', 68).length
        if mem[140 len 20] != mem[140 len 20]:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = -1
            t = 0
            while idx < sub_b1fc7008.length:
                require ext_code.size(sub_b1fc7008[idx])
                staticcall sub_b1fc7008[idx].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not Mask(112, 0, ext_call.return_data[32]):
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _1565 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1565] = 30
                    mem[_1565 + 32] = 'SafeMath: subtraction overflow'
                    if cd[4] > Mask(112, 0, ext_call.return_data[0]):
                        _1624 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1624 + idx + 68] = mem[_1565 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1624 + 68] = mem[_1624 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1624 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                    require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[0]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                        s = s
                        t = t
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    t = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[32])
                if Mask(112, 0, ext_call.return_data[32]) * cd[4] / Mask(112, 0, ext_call.return_data[32]) != cd[4]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(112, 0, ext_call.return_data[32]) * cd[4]:
                    require idx < sub_b1fc7008.length
                    mem[0] = sub_b1fc7008[idx]
                    mem[32] = 4
                    _1623 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1623] = 30
                    mem[_1623 + 32] = 'SafeMath: subtraction overflow'
                    if cd[4] > Mask(112, 0, ext_call.return_data[0]):
                        _1696 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1696 + idx + 68] = mem[_1623 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1696 + 68] = mem[_1696 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1696 + -mem[64] + 100
                    require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                    require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[0]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0])
                        s = Mask(112, 0, ext_call.return_data[32])
                        s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                        s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                        s = s
                        t = t
                        continue 
                    require idx < sub_b1fc7008.length
                    mem[0] = 6
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    t = sub_b1fc7008[idx]
                    continue 
                require Mask(112, 0, ext_call.return_data[32]) * cd[4]
                if 10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / Mask(112, 0, ext_call.return_data[32]) * cd[4] != 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _1695 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1695] = 30
                mem[_1695 + 32] = 'SafeMath: subtraction overflow'
                if cd[4] > Mask(112, 0, ext_call.return_data[0]):
                    _1789 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1789 + idx + 68] = mem[_1695 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1789 + 68] = mem[_1789 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1789 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[0]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                if (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                    revert with 0, 'SafeMath: addition overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    s = s
                    t = t
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                s = Mask(112, 0, ext_call.return_data[32])
                s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                s = (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                s = (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                t = sub_b1fc7008[idx]
                continue 
            require 0 < mem[(32 * ('cd', 68).length) + 128]
            mem[(32 * ('cd', 68).length) + 160] = s
            require 0 < mem[(32 * ('cd', 68).length) + 128]
            if s > cd[36]:
                revert with 0, 32, 36, 0x77536d617274537761704253433a204558434553534956455f494e5055545f414d4f554e, mem[mem[64] + 104 len 28]
            require 0 < ('cd', 68).length
            require 0 < mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + 4] = address(t)
            mem[mem[64] + 36] = s
            require ext_code.size(address(('cd', 68)[0]))
            call address(('cd', 68)[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(t), s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1496 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_1496] = ('cd', 68).length
            mem[_1496 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_1496 + (32 * ('cd', 68).length) + 32] = 0
            require 0 < ('cd', 68).length
            require 1 < ('cd', 68).length
            if mem[_1496 + 44 len 20] == mem[_1496 + 76 len 20]:
                revert with 0, 'IDENTICAL_ADDRESSES'
            if mem[_1496 + 44 len 20] < mem[_1496 + 76 len 20]:
                if not mem[_1496 + 44 len 20]:
                    revert with 0, 'ZERO_ADDRESS'
                require 0 < ('cd', 68).length
                require 1 < mem[(32 * ('cd', 68).length) + 128]
                if mem[_1496 + 44 len 20] == mem[_1496 + 44 len 20]:
                    _1895 = mem[(32 * ('cd', 68).length) + 192]
                    _1971 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1971 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1971 + 36] = 0
                    mem[_1971 + 68] = _1895
                    mem[_1971 + 100] = this.address
                    mem[_1971 + 132] = 128
                    mem[_1971 + 164] = mem[_1971]
                    mem[_1971 + 196 len ceil32(mem[_1971])] = mem[_1971 + 32 len ceil32(mem[_1971])]
                    if not mem[_1971] % 32:
                        require ext_code.size(address(t))
                        call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _1895, address(this.address), 128, mem[_1971 + 164 len mem[_1971] + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1971 + 32] = 32
                        mem[_1971 + 64] = mem[(32 * ('cd', 68).length) + 128]
                        _2905 = mem[(32 * ('cd', 68).length) + 128]
                        mem[_1971 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                        return memory
                          from mem[64]
                           len (32 * _2905) + _1971 + -mem[64] + 96
                    mem[floor32(mem[_1971]) + _1971 + 196] = mem[floor32(mem[_1971]) + _1971 + -(mem[_1971] % 32) + 228 len mem[_1971] % 32]
                    require ext_code.size(address(t))
                    call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1895, address(this.address), 128, mem[_1971], mem[_1971 + 196 len floor32(mem[_1971]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1971 + 32] = 32
                    mem[_1971 + 64] = mem[(32 * ('cd', 68).length) + 128]
                    _3001 = mem[(32 * ('cd', 68).length) + 128]
                    mem[_1971 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _3001) + _1971 + -mem[64] + 96
                _1896 = mem[(32 * ('cd', 68).length) + 192]
                _1972 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1972 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_1972 + 36] = _1896
                mem[_1972 + 68] = 0
                mem[_1972 + 100] = this.address
                mem[_1972 + 132] = 128
                mem[_1972 + 164] = mem[_1972]
                mem[_1972 + 196 len ceil32(mem[_1972])] = mem[_1972 + 32 len ceil32(mem[_1972])]
                if not mem[_1972] % 32:
                    require ext_code.size(address(t))
                    call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _1896, 0, address(this.address), 128, mem[_1972 + 164 len mem[_1972] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1972 + 32] = 32
                    mem[_1972 + 64] = mem[(32 * ('cd', 68).length) + 128]
                    _2908 = mem[(32 * ('cd', 68).length) + 128]
                    mem[_1972 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _2908) + _1972 + -mem[64] + 96
                mem[floor32(mem[_1972]) + _1972 + 196] = mem[floor32(mem[_1972]) + _1972 + -(mem[_1972] % 32) + 228 len mem[_1972] % 32]
                require ext_code.size(address(t))
                call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _1896, 0, address(this.address), 128, mem[_1972], mem[_1972 + 196 len floor32(mem[_1972]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1972 + 32] = 32
                mem[_1972 + 64] = mem[(32 * ('cd', 68).length) + 128]
                _3004 = mem[(32 * ('cd', 68).length) + 128]
                mem[_1972 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3004) + _1972 + -mem[64] + 96
            if not mem[_1496 + 76 len 20]:
                revert with 0, 'ZERO_ADDRESS'
            require 0 < ('cd', 68).length
            require 1 < mem[(32 * ('cd', 68).length) + 128]
            if mem[_1496 + 44 len 20] == mem[_1496 + 76 len 20]:
                _1897 = mem[(32 * ('cd', 68).length) + 192]
                _1973 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1973 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_1973 + 36] = 0
                mem[_1973 + 68] = _1897
                mem[_1973 + 100] = this.address
                mem[_1973 + 132] = 128
                mem[_1973 + 164] = mem[_1973]
                mem[_1973 + 196 len ceil32(mem[_1973])] = mem[_1973 + 32 len ceil32(mem[_1973])]
                if not mem[_1973] % 32:
                    require ext_code.size(address(t))
                    call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1897, address(this.address), 128, mem[_1973 + 164 len mem[_1973] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1973 + 32] = 32
                    mem[_1973 + 64] = mem[(32 * ('cd', 68).length) + 128]
                    _2911 = mem[(32 * ('cd', 68).length) + 128]
                    mem[_1973 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _2911) + _1973 + -mem[64] + 96
                mem[floor32(mem[_1973]) + _1973 + 196] = mem[floor32(mem[_1973]) + _1973 + -(mem[_1973] % 32) + 228 len mem[_1973] % 32]
                require ext_code.size(address(t))
                call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _1897, address(this.address), 128, mem[_1973], mem[_1973 + 196 len floor32(mem[_1973]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1973 + 32] = 32
                mem[_1973 + 64] = mem[(32 * ('cd', 68).length) + 128]
                _3007 = mem[(32 * ('cd', 68).length) + 128]
                mem[_1973 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3007) + _1973 + -mem[64] + 96
            _1898 = mem[(32 * ('cd', 68).length) + 192]
            _1974 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1974 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_1974 + 36] = _1898
            mem[_1974 + 68] = 0
            mem[_1974 + 100] = this.address
            mem[_1974 + 132] = 128
            mem[_1974 + 164] = mem[_1974]
            mem[_1974 + 196 len ceil32(mem[_1974])] = mem[_1974 + 32 len ceil32(mem[_1974])]
            if not mem[_1974] % 32:
                require ext_code.size(address(t))
                call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _1898, 0, address(this.address), 128, mem[_1974 + 164 len mem[_1974] + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1974 + 32] = 32
                mem[_1974 + 64] = mem[(32 * ('cd', 68).length) + 128]
                _2914 = mem[(32 * ('cd', 68).length) + 128]
                mem[_1974 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _2914) + _1974 + -mem[64] + 96
            mem[floor32(mem[_1974]) + _1974 + 196] = mem[floor32(mem[_1974]) + _1974 + -(mem[_1974] % 32) + 228 len mem[_1974] % 32]
            require ext_code.size(address(t))
            call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _1898, 0, address(this.address), 128, mem[_1974], mem[_1974 + 196 len floor32(mem[_1974]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1974 + 32] = 32
            mem[_1974 + 64] = mem[(32 * ('cd', 68).length) + 128]
            _3010 = mem[(32 * ('cd', 68).length) + 128]
            mem[_1974 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
            return memory
              from mem[64]
               len (32 * _3010) + _1974 + -mem[64] + 96
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = -1
        t = 0
        while idx < sub_b1fc7008.length:
            require ext_code.size(sub_b1fc7008[idx])
            staticcall sub_b1fc7008[idx].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not Mask(112, 0, ext_call.return_data[0]):
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _1568 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1568] = 30
                mem[_1568 + 32] = 'SafeMath: subtraction overflow'
                if cd[4] > Mask(112, 0, ext_call.return_data[32]):
                    _1628 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1628 + idx + 68] = mem[_1568 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1628 + 68] = mem[_1628 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1628 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) - cd[4]
                require Mask(112, 0, ext_call.return_data[32]) - cd[4]
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[32]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    s = s
                    t = t
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                t = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[0]) * cd[4] / Mask(112, 0, ext_call.return_data[0]) != cd[4]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(112, 0, ext_call.return_data[0]) * cd[4]:
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _1627 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1627] = 30
                mem[_1627 + 32] = 'SafeMath: subtraction overflow'
                if cd[4] > Mask(112, 0, ext_call.return_data[32]):
                    _1705 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1705 + idx + 68] = mem[_1627 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1705 + 68] = mem[_1705 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1705 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[32]) - cd[4]
                require Mask(112, 0, ext_call.return_data[32]) - cd[4]
                if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[32]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    s = s
                    t = t
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                t = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[0]) * cd[4]
            if 10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / Mask(112, 0, ext_call.return_data[0]) * cd[4] != 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _1704 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1704] = 30
            mem[_1704 + 32] = 'SafeMath: subtraction overflow'
            if cd[4] > Mask(112, 0, ext_call.return_data[32]):
                _1796 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1796 + idx + 68] = mem[_1704 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1796 + 68] = mem[_1796 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1796 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[32]) - cd[4]
            require Mask(112, 0, ext_call.return_data[32]) - cd[4]
            if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[32]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
            if (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                revert with 0, 'SafeMath: addition overflow'
            if (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                s = (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                s = s
                t = t
                continue 
            require idx < sub_b1fc7008.length
            mem[0] = 6
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            s = Mask(112, 0, ext_call.return_data[0])
            s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
            s = (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
            s = (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
            t = sub_b1fc7008[idx]
            continue 
        require 0 < mem[(32 * ('cd', 68).length) + 128]
        mem[(32 * ('cd', 68).length) + 160] = s
        require 0 < mem[(32 * ('cd', 68).length) + 128]
        if s > cd[36]:
            revert with 0, 32, 36, 0x77536d617274537761704253433a204558434553534956455f494e5055545f414d4f554e, mem[mem[64] + 104 len 28]
        require 0 < ('cd', 68).length
        require 0 < mem[(32 * ('cd', 68).length) + 128]
        mem[mem[64] + 4] = address(t)
        mem[mem[64] + 36] = s
        require ext_code.size(address(('cd', 68)[0]))
        call address(('cd', 68)[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(t), s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _1498 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_1498] = ('cd', 68).length
        mem[_1498 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_1498 + (32 * ('cd', 68).length) + 32] = 0
        require 0 < ('cd', 68).length
        require 1 < ('cd', 68).length
        if mem[_1498 + 44 len 20] == mem[_1498 + 76 len 20]:
            revert with 0, 'IDENTICAL_ADDRESSES'
        if mem[_1498 + 44 len 20] < mem[_1498 + 76 len 20]:
            if not mem[_1498 + 44 len 20]:
                revert with 0, 'ZERO_ADDRESS'
            require 0 < ('cd', 68).length
            require 1 < mem[(32 * ('cd', 68).length) + 128]
            if mem[_1498 + 44 len 20] == mem[_1498 + 44 len 20]:
                _1903 = mem[(32 * ('cd', 68).length) + 192]
                _1978 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1978 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_1978 + 36] = 0
                mem[_1978 + 68] = _1903
                mem[_1978 + 100] = this.address
                mem[_1978 + 132] = 128
                mem[_1978 + 164] = mem[_1978]
                mem[_1978 + 196 len ceil32(mem[_1978])] = mem[_1978 + 32 len ceil32(mem[_1978])]
                if not mem[_1978] % 32:
                    require ext_code.size(address(t))
                    call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1903, address(this.address), 128, mem[_1978 + 164 len mem[_1978] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1978 + 32] = 32
                    mem[_1978 + 64] = mem[(32 * ('cd', 68).length) + 128]
                    _2917 = mem[(32 * ('cd', 68).length) + 128]
                    mem[_1978 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _2917) + _1978 + -mem[64] + 96
                mem[floor32(mem[_1978]) + _1978 + 196] = mem[floor32(mem[_1978]) + _1978 + -(mem[_1978] % 32) + 228 len mem[_1978] % 32]
                require ext_code.size(address(t))
                call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _1903, address(this.address), 128, mem[_1978], mem[_1978 + 196 len floor32(mem[_1978]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1978 + 32] = 32
                mem[_1978 + 64] = mem[(32 * ('cd', 68).length) + 128]
                _3013 = mem[(32 * ('cd', 68).length) + 128]
                mem[_1978 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3013) + _1978 + -mem[64] + 96
            _1904 = mem[(32 * ('cd', 68).length) + 192]
            _1979 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1979 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_1979 + 36] = _1904
            mem[_1979 + 68] = 0
            mem[_1979 + 100] = this.address
            mem[_1979 + 132] = 128
            mem[_1979 + 164] = mem[_1979]
            mem[_1979 + 196 len ceil32(mem[_1979])] = mem[_1979 + 32 len ceil32(mem[_1979])]
            if not mem[_1979] % 32:
                require ext_code.size(address(t))
                call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _1904, 0, address(this.address), 128, mem[_1979 + 164 len mem[_1979] + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1979 + 32] = 32
                mem[_1979 + 64] = mem[(32 * ('cd', 68).length) + 128]
                _2920 = mem[(32 * ('cd', 68).length) + 128]
                mem[_1979 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _2920) + _1979 + -mem[64] + 96
            mem[floor32(mem[_1979]) + _1979 + 196] = mem[floor32(mem[_1979]) + _1979 + -(mem[_1979] % 32) + 228 len mem[_1979] % 32]
            require ext_code.size(address(t))
            call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _1904, 0, address(this.address), 128, mem[_1979], mem[_1979 + 196 len floor32(mem[_1979]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1979 + 32] = 32
            mem[_1979 + 64] = mem[(32 * ('cd', 68).length) + 128]
            _3016 = mem[(32 * ('cd', 68).length) + 128]
            mem[_1979 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
            return memory
              from mem[64]
               len (32 * _3016) + _1979 + -mem[64] + 96
        if not mem[_1498 + 76 len 20]:
            revert with 0, 'ZERO_ADDRESS'
        require 0 < ('cd', 68).length
        require 1 < mem[(32 * ('cd', 68).length) + 128]
        if mem[_1498 + 44 len 20] == mem[_1498 + 76 len 20]:
            _1905 = mem[(32 * ('cd', 68).length) + 192]
            _1980 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1980 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_1980 + 36] = 0
            mem[_1980 + 68] = _1905
            mem[_1980 + 100] = this.address
            mem[_1980 + 132] = 128
            mem[_1980 + 164] = mem[_1980]
            mem[_1980 + 196 len ceil32(mem[_1980])] = mem[_1980 + 32 len ceil32(mem[_1980])]
            if not mem[_1980] % 32:
                require ext_code.size(address(t))
                call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _1905, address(this.address), 128, mem[_1980 + 164 len mem[_1980] + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1980 + 32] = 32
                mem[_1980 + 64] = mem[(32 * ('cd', 68).length) + 128]
                _2923 = mem[(32 * ('cd', 68).length) + 128]
                mem[_1980 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _2923) + _1980 + -mem[64] + 96
            mem[floor32(mem[_1980]) + _1980 + 196] = mem[floor32(mem[_1980]) + _1980 + -(mem[_1980] % 32) + 228 len mem[_1980] % 32]
            require ext_code.size(address(t))
            call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _1905, address(this.address), 128, mem[_1980], mem[_1980 + 196 len floor32(mem[_1980]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1980 + 32] = 32
            mem[_1980 + 64] = mem[(32 * ('cd', 68).length) + 128]
            _3019 = mem[(32 * ('cd', 68).length) + 128]
            mem[_1980 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
            return memory
              from mem[64]
               len (32 * _3019) + _1980 + -mem[64] + 96
        _1906 = mem[(32 * ('cd', 68).length) + 192]
        _1981 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1981 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_1981 + 36] = _1906
        mem[_1981 + 68] = 0
        mem[_1981 + 100] = this.address
        mem[_1981 + 132] = 128
        mem[_1981 + 164] = mem[_1981]
        mem[_1981 + 196 len ceil32(mem[_1981])] = mem[_1981 + 32 len ceil32(mem[_1981])]
        if not mem[_1981] % 32:
            require ext_code.size(address(t))
            call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _1906, 0, address(this.address), 128, mem[_1981 + 164 len mem[_1981] + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1981 + 32] = 32
            mem[_1981 + 64] = mem[(32 * ('cd', 68).length) + 128]
            _2926 = mem[(32 * ('cd', 68).length) + 128]
            mem[_1981 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
            return memory
              from mem[64]
               len (32 * _2926) + _1981 + -mem[64] + 96
        mem[floor32(mem[_1981]) + _1981 + 196] = mem[floor32(mem[_1981]) + _1981 + -(mem[_1981] % 32) + 228 len mem[_1981] % 32]
        require ext_code.size(address(t))
        call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _1906, 0, address(this.address), 128, mem[_1981], mem[_1981 + 196 len floor32(mem[_1981]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1981 + 32] = 32
        mem[_1981 + 64] = mem[(32 * ('cd', 68).length) + 128]
        _3022 = mem[(32 * ('cd', 68).length) + 128]
        mem[_1981 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
        return memory
          from mem[64]
           len (32 * _3022) + _1981 + -mem[64] + 96
    if not mem[172 len 20]:
        mem[(64 * ('cd', 68).length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * ('cd', 68).length) + 164] = 32
        mem[(64 * ('cd', 68).length) + 196] = 12
        mem[(64 * ('cd', 68).length) + 228] = 'ZERO_ADDRESS'
        revert with memory
          from (64 * ('cd', 68).length) + 160
           len (127 * ('cd', 68).length) + 100
    require 0 < ('cd', 68).length
    if mem[172 len 20] != mem[140 len 20]:
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = -1
        t = 0
        while idx < sub_b1fc7008.length:
            require ext_code.size(sub_b1fc7008[idx])
            staticcall sub_b1fc7008[idx].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not Mask(112, 0, ext_call.return_data[32]):
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _1571 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1571] = 30
                mem[_1571 + 32] = 'SafeMath: subtraction overflow'
                if cd[4] > Mask(112, 0, ext_call.return_data[0]):
                    _1632 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1632 + idx + 68] = mem[_1571 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1632 + 68] = mem[_1632 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1632 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[0]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    s = s
                    t = t
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                s = Mask(112, 0, ext_call.return_data[32])
                s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                t = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[32])
            if Mask(112, 0, ext_call.return_data[32]) * cd[4] / Mask(112, 0, ext_call.return_data[32]) != cd[4]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(112, 0, ext_call.return_data[32]) * cd[4]:
                require idx < sub_b1fc7008.length
                mem[0] = sub_b1fc7008[idx]
                mem[32] = 4
                _1631 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1631] = 30
                mem[_1631 + 32] = 'SafeMath: subtraction overflow'
                if cd[4] > Mask(112, 0, ext_call.return_data[0]):
                    _1714 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1714 + idx + 68] = mem[_1631 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1714 + 68] = mem[_1714 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1714 + -mem[64] + 100
                require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                require Mask(112, 0, ext_call.return_data[0]) - cd[4]
                if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[0]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                    s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                    s = s
                    t = t
                    continue 
                require idx < sub_b1fc7008.length
                mem[0] = 6
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                s = Mask(112, 0, ext_call.return_data[32])
                s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                t = sub_b1fc7008[idx]
                continue 
            require Mask(112, 0, ext_call.return_data[32]) * cd[4]
            if 10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / Mask(112, 0, ext_call.return_data[32]) * cd[4] != 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _1713 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1713] = 30
            mem[_1713 + 32] = 'SafeMath: subtraction overflow'
            if cd[4] > Mask(112, 0, ext_call.return_data[0]):
                _1803 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1803 + idx + 68] = mem[_1713 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1803 + 68] = mem[_1803 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1803 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[0]) - cd[4]
            require Mask(112, 0, ext_call.return_data[0]) - cd[4]
            if (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[0]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
            if (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                revert with 0, 'SafeMath: addition overflow'
            if (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0])
                s = Mask(112, 0, ext_call.return_data[32])
                s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                s = (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                s = s
                t = t
                continue 
            require idx < sub_b1fc7008.length
            mem[0] = 6
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[0])
            s = Mask(112, 0, ext_call.return_data[32])
            s = (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
            s = (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
            s = (10000 * Mask(112, 0, ext_call.return_data[32]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[0])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[0])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
            t = sub_b1fc7008[idx]
            continue 
        require 0 < mem[(32 * ('cd', 68).length) + 128]
        mem[(32 * ('cd', 68).length) + 160] = s
        require 0 < mem[(32 * ('cd', 68).length) + 128]
        if s > cd[36]:
            revert with 0, 32, 36, 0x77536d617274537761704253433a204558434553534956455f494e5055545f414d4f554e, mem[mem[64] + 104 len 28]
        require 0 < ('cd', 68).length
        require 0 < mem[(32 * ('cd', 68).length) + 128]
        mem[mem[64] + 4] = address(t)
        mem[mem[64] + 36] = s
        require ext_code.size(address(('cd', 68)[0]))
        call address(('cd', 68)[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(t), s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _1500 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_1500] = ('cd', 68).length
        mem[_1500 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_1500 + (32 * ('cd', 68).length) + 32] = 0
        require 0 < ('cd', 68).length
        require 1 < ('cd', 68).length
        if mem[_1500 + 44 len 20] == mem[_1500 + 76 len 20]:
            revert with 0, 'IDENTICAL_ADDRESSES'
        if mem[_1500 + 44 len 20] < mem[_1500 + 76 len 20]:
            if not mem[_1500 + 44 len 20]:
                revert with 0, 'ZERO_ADDRESS'
            require 0 < ('cd', 68).length
            require 1 < mem[(32 * ('cd', 68).length) + 128]
            if mem[_1500 + 44 len 20] == mem[_1500 + 44 len 20]:
                _1911 = mem[(32 * ('cd', 68).length) + 192]
                _1985 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1985 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_1985 + 36] = 0
                mem[_1985 + 68] = _1911
                mem[_1985 + 100] = this.address
                mem[_1985 + 132] = 128
                mem[_1985 + 164] = mem[_1985]
                mem[_1985 + 196 len ceil32(mem[_1985])] = mem[_1985 + 32 len ceil32(mem[_1985])]
                if not mem[_1985] % 32:
                    require ext_code.size(address(t))
                    call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1911, address(this.address), 128, mem[_1985 + 164 len mem[_1985] + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1985 + 32] = 32
                    mem[_1985 + 64] = mem[(32 * ('cd', 68).length) + 128]
                    _2929 = mem[(32 * ('cd', 68).length) + 128]
                    mem[_1985 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                    return memory
                      from mem[64]
                       len (32 * _2929) + _1985 + -mem[64] + 96
                mem[floor32(mem[_1985]) + _1985 + 196] = mem[floor32(mem[_1985]) + _1985 + -(mem[_1985] % 32) + 228 len mem[_1985] % 32]
                require ext_code.size(address(t))
                call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _1911, address(this.address), 128, mem[_1985], mem[_1985 + 196 len floor32(mem[_1985]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1985 + 32] = 32
                mem[_1985 + 64] = mem[(32 * ('cd', 68).length) + 128]
                _3025 = mem[(32 * ('cd', 68).length) + 128]
                mem[_1985 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _3025) + _1985 + -mem[64] + 96
            _1912 = mem[(32 * ('cd', 68).length) + 192]
            _1986 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1986 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_1986 + 36] = _1912
            mem[_1986 + 68] = 0
            mem[_1986 + 100] = this.address
            mem[_1986 + 132] = 128
            mem[_1986 + 164] = mem[_1986]
            mem[_1986 + 196 len ceil32(mem[_1986])] = mem[_1986 + 32 len ceil32(mem[_1986])]
            if not mem[_1986] % 32:
                require ext_code.size(address(t))
                call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _1912, 0, address(this.address), 128, mem[_1986 + 164 len mem[_1986] + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1986 + 32] = 32
                mem[_1986 + 64] = mem[(32 * ('cd', 68).length) + 128]
                _2932 = mem[(32 * ('cd', 68).length) + 128]
                mem[_1986 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _2932) + _1986 + -mem[64] + 96
            mem[floor32(mem[_1986]) + _1986 + 196] = mem[floor32(mem[_1986]) + _1986 + -(mem[_1986] % 32) + 228 len mem[_1986] % 32]
            require ext_code.size(address(t))
            call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _1912, 0, address(this.address), 128, mem[_1986], mem[_1986 + 196 len floor32(mem[_1986]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1986 + 32] = 32
            mem[_1986 + 64] = mem[(32 * ('cd', 68).length) + 128]
            _3028 = mem[(32 * ('cd', 68).length) + 128]
            mem[_1986 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
            return memory
              from mem[64]
               len (32 * _3028) + _1986 + -mem[64] + 96
        if not mem[_1500 + 76 len 20]:
            revert with 0, 'ZERO_ADDRESS'
        require 0 < ('cd', 68).length
        require 1 < mem[(32 * ('cd', 68).length) + 128]
        if mem[_1500 + 44 len 20] == mem[_1500 + 76 len 20]:
            _1913 = mem[(32 * ('cd', 68).length) + 192]
            _1987 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1987 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_1987 + 36] = 0
            mem[_1987 + 68] = _1913
            mem[_1987 + 100] = this.address
            mem[_1987 + 132] = 128
            mem[_1987 + 164] = mem[_1987]
            mem[_1987 + 196 len ceil32(mem[_1987])] = mem[_1987 + 32 len ceil32(mem[_1987])]
            if not mem[_1987] % 32:
                require ext_code.size(address(t))
                call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _1913, address(this.address), 128, mem[_1987 + 164 len mem[_1987] + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1987 + 32] = 32
                mem[_1987 + 64] = mem[(32 * ('cd', 68).length) + 128]
                _2935 = mem[(32 * ('cd', 68).length) + 128]
                mem[_1987 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _2935) + _1987 + -mem[64] + 96
            mem[floor32(mem[_1987]) + _1987 + 196] = mem[floor32(mem[_1987]) + _1987 + -(mem[_1987] % 32) + 228 len mem[_1987] % 32]
            require ext_code.size(address(t))
            call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _1913, address(this.address), 128, mem[_1987], mem[_1987 + 196 len floor32(mem[_1987]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1987 + 32] = 32
            mem[_1987 + 64] = mem[(32 * ('cd', 68).length) + 128]
            _3031 = mem[(32 * ('cd', 68).length) + 128]
            mem[_1987 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
            return memory
              from mem[64]
               len (32 * _3031) + _1987 + -mem[64] + 96
        _1914 = mem[(32 * ('cd', 68).length) + 192]
        _1988 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1988 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_1988 + 36] = _1914
        mem[_1988 + 68] = 0
        mem[_1988 + 100] = this.address
        mem[_1988 + 132] = 128
        mem[_1988 + 164] = mem[_1988]
        mem[_1988 + 196 len ceil32(mem[_1988])] = mem[_1988 + 32 len ceil32(mem[_1988])]
        if not mem[_1988] % 32:
            require ext_code.size(address(t))
            call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _1914, 0, address(this.address), 128, mem[_1988 + 164 len mem[_1988] + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1988 + 32] = 32
            mem[_1988 + 64] = mem[(32 * ('cd', 68).length) + 128]
            _2938 = mem[(32 * ('cd', 68).length) + 128]
            mem[_1988 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
            return memory
              from mem[64]
               len (32 * _2938) + _1988 + -mem[64] + 96
        mem[floor32(mem[_1988]) + _1988 + 196] = mem[floor32(mem[_1988]) + _1988 + -(mem[_1988] % 32) + 228 len mem[_1988] % 32]
        require ext_code.size(address(t))
        call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _1914, 0, address(this.address), 128, mem[_1988], mem[_1988 + 196 len floor32(mem[_1988]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1988 + 32] = 32
        mem[_1988 + 64] = mem[(32 * ('cd', 68).length) + 128]
        _3034 = mem[(32 * ('cd', 68).length) + 128]
        mem[_1988 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
        return memory
          from mem[64]
           len (32 * _3034) + _1988 + -mem[64] + 96
    idx = 0
    s = 0
    s = 0
    s = 0
    s = 0
    s = -1
    t = 0
    while idx < sub_b1fc7008.length:
        require ext_code.size(sub_b1fc7008[idx])
        staticcall sub_b1fc7008[idx].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not Mask(112, 0, ext_call.return_data[0]):
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _1574 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1574] = 30
            mem[_1574 + 32] = 'SafeMath: subtraction overflow'
            if cd[4] > Mask(112, 0, ext_call.return_data[32]):
                _1636 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1636 + idx + 68] = mem[_1574 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1636 + 68] = mem[_1636 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1636 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[32]) - cd[4]
            require Mask(112, 0, ext_call.return_data[32]) - cd[4]
            if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[32]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
            if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                revert with 0, 'SafeMath: addition overflow'
            if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                s = s
                t = t
                continue 
            require idx < sub_b1fc7008.length
            mem[0] = 6
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            s = Mask(112, 0, ext_call.return_data[0])
            s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
            t = sub_b1fc7008[idx]
            continue 
        require Mask(112, 0, ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[0]) * cd[4] / Mask(112, 0, ext_call.return_data[0]) != cd[4]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not Mask(112, 0, ext_call.return_data[0]) * cd[4]:
            require idx < sub_b1fc7008.length
            mem[0] = sub_b1fc7008[idx]
            mem[32] = 4
            _1635 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1635] = 30
            mem[_1635 + 32] = 'SafeMath: subtraction overflow'
            if cd[4] > Mask(112, 0, ext_call.return_data[32]):
                _1723 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1723 + idx + 68] = mem[_1635 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1723 + 68] = mem[_1723 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1723 + -mem[64] + 100
            require Mask(112, 0, ext_call.return_data[32]) - cd[4]
            require Mask(112, 0, ext_call.return_data[32]) - cd[4]
            if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[32]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
            if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
                revert with 0, 'SafeMath: addition overflow'
            if (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
                s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
                s = s
                t = t
                continue 
            require idx < sub_b1fc7008.length
            mem[0] = 6
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            s = Mask(112, 0, ext_call.return_data[0])
            s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
            s = (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
            t = sub_b1fc7008[idx]
            continue 
        require Mask(112, 0, ext_call.return_data[0]) * cd[4]
        if 10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / Mask(112, 0, ext_call.return_data[0]) * cd[4] != 10000:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        require idx < sub_b1fc7008.length
        mem[0] = sub_b1fc7008[idx]
        mem[32] = 4
        _1722 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1722] = 30
        mem[_1722 + 32] = 'SafeMath: subtraction overflow'
        if cd[4] > Mask(112, 0, ext_call.return_data[32]):
            _1810 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1810 + idx + 68] = mem[_1722 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1810 + 68] = mem[_1810 + 70 len 30]
            revert with memory
              from mem[64]
               len _1810 + -mem[64] + 100
        require Mask(112, 0, ext_call.return_data[32]) - cd[4]
        require Mask(112, 0, ext_call.return_data[32]) - cd[4]
        if (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]) / Mask(112, 0, ext_call.return_data[32]) - cd[4] != -sub_0eb1b8aa[stor6[idx]] + 10000:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        require (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
        if (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 < 10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4]):
            revert with 0, 'SafeMath: addition overflow'
        if (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1 >= s:
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            s = Mask(112, 0, ext_call.return_data[0])
            s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
            s = (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
            s = s
            t = t
            continue 
        require idx < sub_b1fc7008.length
        mem[0] = 6
        idx = idx + 1
        s = Mask(112, 0, ext_call.return_data[32])
        s = Mask(112, 0, ext_call.return_data[0])
        s = (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])
        s = (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
        s = (10000 * Mask(112, 0, ext_call.return_data[0]) * cd[4] / (10000 * Mask(112, 0, ext_call.return_data[32])) - (sub_0eb1b8aa[stor6[idx]] * Mask(112, 0, ext_call.return_data[32])) - (10000 * cd[4]) + (sub_0eb1b8aa[stor6[idx]] * cd[4])) + 1
        t = sub_b1fc7008[idx]
        continue 
    require 0 < mem[(32 * ('cd', 68).length) + 128]
    mem[(32 * ('cd', 68).length) + 160] = s
    require 0 < mem[(32 * ('cd', 68).length) + 128]
    if s > cd[36]:
        revert with 0, 32, 36, 0x77536d617274537761704253433a204558434553534956455f494e5055545f414d4f554e, mem[mem[64] + 104 len 28]
    require 0 < ('cd', 68).length
    require 0 < mem[(32 * ('cd', 68).length) + 128]
    mem[mem[64] + 4] = address(t)
    mem[mem[64] + 36] = s
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(t), s
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _1502 = mem[64]
    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
    mem[_1502] = ('cd', 68).length
    mem[_1502 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[_1502 + (32 * ('cd', 68).length) + 32] = 0
    require 0 < ('cd', 68).length
    require 1 < ('cd', 68).length
    if mem[_1502 + 44 len 20] == mem[_1502 + 76 len 20]:
        revert with 0, 'IDENTICAL_ADDRESSES'
    if mem[_1502 + 44 len 20] < mem[_1502 + 76 len 20]:
        if not mem[_1502 + 44 len 20]:
            revert with 0, 'ZERO_ADDRESS'
        require 0 < ('cd', 68).length
        require 1 < mem[(32 * ('cd', 68).length) + 128]
        if mem[_1502 + 44 len 20] == mem[_1502 + 44 len 20]:
            _1919 = mem[(32 * ('cd', 68).length) + 192]
            _1992 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1992 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_1992 + 36] = 0
            mem[_1992 + 68] = _1919
            mem[_1992 + 100] = this.address
            mem[_1992 + 132] = 128
            mem[_1992 + 164] = mem[_1992]
            mem[_1992 + 196 len ceil32(mem[_1992])] = mem[_1992 + 32 len ceil32(mem[_1992])]
            if not mem[_1992] % 32:
                require ext_code.size(address(t))
                call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _1919, address(this.address), 128, mem[_1992 + 164 len mem[_1992] + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1992 + 32] = 32
                mem[_1992 + 64] = mem[(32 * ('cd', 68).length) + 128]
                _2941 = mem[(32 * ('cd', 68).length) + 128]
                mem[_1992 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
                return memory
                  from mem[64]
                   len (32 * _2941) + _1992 + -mem[64] + 96
            mem[floor32(mem[_1992]) + _1992 + 196] = mem[floor32(mem[_1992]) + _1992 + -(mem[_1992] % 32) + 228 len mem[_1992] % 32]
            require ext_code.size(address(t))
            call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _1919, address(this.address), 128, mem[_1992], mem[_1992 + 196 len floor32(mem[_1992]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1992 + 32] = 32
            mem[_1992 + 64] = mem[(32 * ('cd', 68).length) + 128]
            _3037 = mem[(32 * ('cd', 68).length) + 128]
            mem[_1992 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
            return memory
              from mem[64]
               len (32 * _3037) + _1992 + -mem[64] + 96
        _1920 = mem[(32 * ('cd', 68).length) + 192]
        _1993 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1993 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_1993 + 36] = _1920
        mem[_1993 + 68] = 0
        mem[_1993 + 100] = this.address
        mem[_1993 + 132] = 128
        mem[_1993 + 164] = mem[_1993]
        mem[_1993 + 196 len ceil32(mem[_1993])] = mem[_1993 + 32 len ceil32(mem[_1993])]
        if not mem[_1993] % 32:
            require ext_code.size(address(t))
            call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _1920, 0, address(this.address), 128, mem[_1993 + 164 len mem[_1993] + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1993 + 32] = 32
            mem[_1993 + 64] = mem[(32 * ('cd', 68).length) + 128]
            _2944 = mem[(32 * ('cd', 68).length) + 128]
            mem[_1993 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
            return memory
              from mem[64]
               len (32 * _2944) + _1993 + -mem[64] + 96
        mem[floor32(mem[_1993]) + _1993 + 196] = mem[floor32(mem[_1993]) + _1993 + -(mem[_1993] % 32) + 228 len mem[_1993] % 32]
        require ext_code.size(address(t))
        call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _1920, 0, address(this.address), 128, mem[_1993], mem[_1993 + 196 len floor32(mem[_1993]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1993 + 32] = 32
        mem[_1993 + 64] = mem[(32 * ('cd', 68).length) + 128]
        _3040 = mem[(32 * ('cd', 68).length) + 128]
        mem[_1993 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
        return memory
          from mem[64]
           len (32 * _3040) + _1993 + -mem[64] + 96
    if not mem[_1502 + 76 len 20]:
        revert with 0, 'ZERO_ADDRESS'
    require 0 < ('cd', 68).length
    require 1 < mem[(32 * ('cd', 68).length) + 128]
    if mem[_1502 + 44 len 20] == mem[_1502 + 76 len 20]:
        _1921 = mem[(32 * ('cd', 68).length) + 192]
        _1994 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1994 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_1994 + 36] = 0
        mem[_1994 + 68] = _1921
        mem[_1994 + 100] = this.address
        mem[_1994 + 132] = 128
        mem[_1994 + 164] = mem[_1994]
        mem[_1994 + 196 len ceil32(mem[_1994])] = mem[_1994 + 32 len ceil32(mem[_1994])]
        if not mem[_1994] % 32:
            require ext_code.size(address(t))
            call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _1921, address(this.address), 128, mem[_1994 + 164 len mem[_1994] + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1994 + 32] = 32
            mem[_1994 + 64] = mem[(32 * ('cd', 68).length) + 128]
            _2947 = mem[(32 * ('cd', 68).length) + 128]
            mem[_1994 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
            return memory
              from mem[64]
               len (32 * _2947) + _1994 + -mem[64] + 96
        mem[floor32(mem[_1994]) + _1994 + 196] = mem[floor32(mem[_1994]) + _1994 + -(mem[_1994] % 32) + 228 len mem[_1994] % 32]
        require ext_code.size(address(t))
        call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, _1921, address(this.address), 128, mem[_1994], mem[_1994 + 196 len floor32(mem[_1994]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1994 + 32] = 32
        mem[_1994 + 64] = mem[(32 * ('cd', 68).length) + 128]
        _3043 = mem[(32 * ('cd', 68).length) + 128]
        mem[_1994 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
        return memory
          from mem[64]
           len (32 * _3043) + _1994 + -mem[64] + 96
    _1922 = mem[(32 * ('cd', 68).length) + 192]
    _1995 = mem[64]
    mem[64] = mem[64] + 32
    mem[_1995 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    mem[_1995 + 36] = _1922
    mem[_1995 + 68] = 0
    mem[_1995 + 100] = this.address
    mem[_1995 + 132] = 128
    mem[_1995 + 164] = mem[_1995]
    mem[_1995 + 196 len ceil32(mem[_1995])] = mem[_1995 + 32 len ceil32(mem[_1995])]
    if not mem[_1995] % 32:
        require ext_code.size(address(t))
        call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _1922, 0, address(this.address), 128, mem[_1995 + 164 len mem[_1995] + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1995 + 32] = 32
        mem[_1995 + 64] = mem[(32 * ('cd', 68).length) + 128]
        _2950 = mem[(32 * ('cd', 68).length) + 128]
        mem[_1995 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
        return memory
          from mem[64]
           len (32 * _2950) + _1995 + -mem[64] + 96
    mem[floor32(mem[_1995]) + _1995 + 196] = mem[floor32(mem[_1995]) + _1995 + -(mem[_1995] % 32) + 228 len mem[_1995] % 32]
    require ext_code.size(address(t))
    call address(t).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args _1922, 0, address(this.address), 128, mem[_1995], mem[_1995 + 196 len floor32(mem[_1995]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_1995 + 32] = 32
    mem[_1995 + 64] = mem[(32 * ('cd', 68).length) + 128]
    _3046 = mem[(32 * ('cd', 68).length) + 128]
    mem[_1995 + 96 len floor32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len floor32(mem[(32 * ('cd', 68).length) + 128])]
    return memory
      from mem[64]
       len (32 * _3046) + _1995 + -mem[64] + 96
}



}
