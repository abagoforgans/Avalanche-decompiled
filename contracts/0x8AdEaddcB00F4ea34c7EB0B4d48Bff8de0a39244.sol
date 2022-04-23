contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const sub_17c01eff(?) = ext_call.return_data[0]

const sub_2f390dc3(?) = ext_call.return_data[0]

const balanceLPinSystem = (2 * ext_call.return_data[0])

const sub_3c858818(?) = (2 * ext_call.return_data[0])

const sub_69d463d5(?) = 0xb18dcb184793be39550c6a055338286de94c755d

const StakingRewards = 0xd49b406a7a29d64e081164f6c3353c599a2eeae9

const sub_874a094c(?) = ext_call.return_data[0]

const sub_9bab65b8(?) = 0x60781c2586d68229fde47564546784ab3faca982

const Factory = 0xefa94de7a4656d787667c749f7e1223d71e9fd88

const sub_c9f801c7(?) = 0xe97a562f03637b067324eef459fef982bfff28d0

const balanceWAVAX = ext_call.return_data[0]

const Router = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106

const sub_f756c10a(?) = 10000

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor6;
uint8 paused; offset 160
uint128 stor7; offset 160
address owner;
array of struct sub_8796fba7;
array of struct sub_4ad47c83;
mapping of uint8 stor10;
uint8 sub_cfa8586d;
address stor11;
address sub_91dcd7a7Address; offset 8

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_4ad47c83(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_4ad47c83.length
    return sub_4ad47c83[arg1].field_0
}

function paused() {
    return bool(paused)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_8796fba7(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_8796fba7.length
    return sub_8796fba7[arg1].field_0
}

function owner() {
    return owner
}

function sub_91dcd7a7(?) {
    return sub_91dcd7a7Address
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_cfa8586d(?) {
    return bool(sub_cfa8586d)
}

function sub_d5b9221b(?) {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_0228b724(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = uint8(arg2)
    emit 0x8371bfb7: address(arg1), arg2
}

function sub_a88f7133(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_91dcd7a7Address)
    staticcall sub_91dcd7a7Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_8acdc34b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_cfa8586d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x6f4379636c655661756c74504e473a205265776172647320616464726573732068617320616c7265616479206265656e207365,
                    mem[215 len 13]
    sub_91dcd7a7Address = arg1
    sub_cfa8586d = 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x4145524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_7f068c0f(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
    staticcall 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if paused:
        revert with 0, 'Pausable: paused'
    stor7 = 1
    emit Paused(msg.sender);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_04e7e171(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(6951336972347933225, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
    staticcall address(sha3(0, 17269419903419772280, sha3(6951336972347933225, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if arg1 <= 0:
        revert with 0, 'AMMLibrary: INSUFFICIENT_AMOUNT'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 32, 34, 0x65414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 32, 34, 0x65414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
    if not arg1:
        if ext_call.return_data[18 len 14]:
            return (0 / ext_call.return_data[18 len 14])
    else:
        if arg1:
            if arg1 * ext_call.return_data[50 len 14] / arg1 != ext_call.return_data[50 len 14]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
            if ext_call.return_data[18 len 14]:
                return (arg1 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    revert
}

function getAVAXquoteForLPamount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(6951336972347933225, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
    staticcall address(sha3(0, 17269419903419772280, sha3(6951336972347933225, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if arg1 <= 0:
        revert with 0, 'AMMLibrary: INSUFFICIENT_AMOUNT'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 32, 34, 0x65414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 32, 34, 0x65414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
    if not arg1:
        if ext_call.return_data[18 len 14]:
            return (0 / ext_call.return_data[18 len 14])
    else:
        if arg1:
            if arg1 * ext_call.return_data[50 len 14] / arg1 != ext_call.return_data[50 len 14]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
            if ext_call.return_data[18 len 14]:
                return (arg1 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
    revert
}

function sub_74a4e489(?) {
    require calldata.size - 4 >= 32
    if not totalSupply:
        return 10^18
    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
    staticcall 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
    staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not uint255(ext_call.return_data[0]):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return (0 / totalSupply)
    else:
        if 2 * ext_call.return_data[0]:
            if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / 2 * ext_call.return_data[0] != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                return ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply)
    revert
}

function sub_de5d36e2(?) {
    require calldata.size - 4 >= 32
    if not totalSupply:
        return 10^18
    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
    staticcall 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
    staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not uint255(ext_call.return_data[0]):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return (0 / totalSupply)
    else:
        if 2 * ext_call.return_data[0]:
            if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / 2 * ext_call.return_data[0] != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                return ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply)
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7745524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_1d1c5222(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(6951336972347933225, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
    staticcall address(sha3(0, 17269419903419772280, sha3(6951336972347933225, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if arg1 <= 0:
        revert with 0, 32, 37, 0x65414d4d4c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[390 len 27]
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 32, 34, 0x65414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 32, 34, 0x65414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
    if not arg1:
        if ext_call.return_data[18 len 14]:
            if ext_call.return_data[18 len 14]:
                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                if 1000 * ext_call.return_data[18 len 14]:
                    return (0 / 1000 * ext_call.return_data[18 len 14])
    else:
        if arg1:
            if 997 * arg1 / arg1 != 997:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
            if not 997 * arg1:
                if not ext_call.return_data[18 len 14]:
                    if 997 * arg1 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 997 * arg1:
                        return (0 / 997 * arg1)
                else:
                    if ext_call.return_data[18 len 14]:
                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg1):
                            return (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1))
            else:
                if 997 * arg1:
                    if 997 * arg1 * ext_call.return_data[50 len 14] / 997 * arg1 != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not ext_call.return_data[18 len 14]:
                        if 997 * arg1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 997 * arg1:
                            return (997 * arg1 * ext_call.return_data[50 len 14] / 997 * arg1)
                    else:
                        if ext_call.return_data[18 len 14]:
                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg1):
                                return (997 * arg1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1))
    revert
}

function sub_492c5001(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(6951336972347933225, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
    staticcall address(sha3(0, 17269419903419772280, sha3(6951336972347933225, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if arg1 <= 0:
        revert with 0, 32, 37, 0x65414d4d4c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[390 len 27]
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 32, 34, 0x65414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 32, 34, 0x65414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
    if not arg1:
        if ext_call.return_data[18 len 14]:
            if ext_call.return_data[18 len 14]:
                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                if 1000 * ext_call.return_data[18 len 14]:
                    return (0 / 1000 * ext_call.return_data[18 len 14])
    else:
        if arg1:
            if 997 * arg1 / arg1 != 997:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
            if not 997 * arg1:
                if not ext_call.return_data[18 len 14]:
                    if 997 * arg1 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 997 * arg1:
                        return (0 / 997 * arg1)
                else:
                    if ext_call.return_data[18 len 14]:
                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg1):
                            return (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1))
            else:
                if 997 * arg1:
                    if 997 * arg1 * ext_call.return_data[50 len 14] / 997 * arg1 != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not ext_call.return_data[18 len 14]:
                        if 997 * arg1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 997 * arg1:
                            return (997 * arg1 * ext_call.return_data[50 len 14] / 997 * arg1)
                    else:
                        if ext_call.return_data[18 len 14]:
                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg1) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg1):
                                return (997 * arg1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1))
    revert
}

function sub_16d55004(?) {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if msg.sender != tx.origin:
        if not stor10[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        55,
                        0x734379636c655661756c74504e473a2043616c6c6572206973206e6f7420454f41206f7220617574686f72697a656420636f6e74726163,
                        mem[219 len 9]
    if arg1 <= 0:
        revert with 0, 'CycleVaultPNG: 0 PNG deposit'
    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
    staticcall 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
    staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(0x60781c2586d68229fde47564546784ab3faca982) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call 0x60781c2586d68229fde47564546784ab3faca982 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if not totalSupply:
            if not this.address:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply + arg1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(this.address)] += arg1
            emit Transfer(arg1, 0, this.address);
            if not this.address:
                revert with 0, 
                            32,
                            36,
                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[396 len 20],
                            0,
                            mem[420 len 4]
            if not sub_91dcd7a7Address:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[394 len 22], 0, mem[420 len 4]
            allowance[address(this.address)][stor11] = arg1
            emit Approval(arg1, this.address, sub_91dcd7a7Address);
            require ext_code.size(sub_91dcd7a7Address)
            call sub_91dcd7a7Address.0x5beeee0d with:
                 gas gas_remaining wei
                args arg1, msg.sender
        else:
            if not arg1:
                if 2 * ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * ext_call.return_data[0]
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + (0 / 2 * ext_call.return_data[0]) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / 2 * ext_call.return_data[0]
                if balanceOf[address(this.address)] + (0 / 2 * ext_call.return_data[0]) < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] += 0 / 2 * ext_call.return_data[0]
                emit Transfer((0 / 2 * ext_call.return_data[0]), 0, this.address);
                if not this.address:
                    revert with 0, 
                                32,
                                36,
                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[396 len 20],
                                0,
                                mem[420 len 4]
                if not sub_91dcd7a7Address:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[394 len 22], 0, mem[420 len 4]
                allowance[address(this.address)][stor11] = 0 / 2 * ext_call.return_data[0]
                emit Approval((0 / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.0x5beeee0d with:
                     gas gas_remaining wei
                    args 0 / 2 * ext_call.return_data[0], msg.sender
            else:
                require arg1
                if arg1 * totalSupply / arg1 != totalSupply:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if 2 * ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * ext_call.return_data[0]
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + (arg1 * totalSupply / 2 * ext_call.return_data[0]) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1 * totalSupply / 2 * ext_call.return_data[0]
                if balanceOf[address(this.address)] + (arg1 * totalSupply / 2 * ext_call.return_data[0]) < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] += arg1 * totalSupply / 2 * ext_call.return_data[0]
                emit Transfer((arg1 * totalSupply / 2 * ext_call.return_data[0]), 0, this.address);
                if not this.address:
                    revert with 0, 
                                32,
                                36,
                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[396 len 20],
                                0,
                                mem[420 len 4]
                if not sub_91dcd7a7Address:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[394 len 22], 0, mem[420 len 4]
                allowance[address(this.address)][stor11] = arg1 * totalSupply / 2 * ext_call.return_data[0]
                emit Approval((arg1 * totalSupply / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.0x5beeee0d with:
                     gas gas_remaining wei
                    args arg1 * totalSupply / 2 * ext_call.return_data[0], msg.sender
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if not totalSupply:
            if not this.address:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply + arg1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(this.address)] += arg1
            emit Transfer(arg1, 0, this.address);
            if not this.address:
                revert with 0, 
                            32,
                            36,
                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(return_data.size) + 397 len 28]
            if not sub_91dcd7a7Address:
                revert with 0, 
                            32,
                            34,
                            0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[ceil32(return_data.size) + 395 len 30]
            allowance[address(this.address)][stor11] = arg1
            emit Approval(arg1, this.address, sub_91dcd7a7Address);
            require ext_code.size(sub_91dcd7a7Address)
            call sub_91dcd7a7Address.0x5beeee0d with:
                 gas gas_remaining wei
                args arg1, msg.sender
        else:
            if not arg1:
                if 2 * ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * ext_call.return_data[0]
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + (0 / 2 * ext_call.return_data[0]) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / 2 * ext_call.return_data[0]
                if balanceOf[address(this.address)] + (0 / 2 * ext_call.return_data[0]) < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] += 0 / 2 * ext_call.return_data[0]
                emit Transfer((0 / 2 * ext_call.return_data[0]), 0, this.address);
                if not this.address:
                    revert with 0, 
                                32,
                                36,
                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[ceil32(return_data.size) + 397 len 28]
                if not sub_91dcd7a7Address:
                    revert with 0, 
                                32,
                                34,
                                0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                mem[ceil32(return_data.size) + 395 len 30]
                allowance[address(this.address)][stor11] = 0 / 2 * ext_call.return_data[0]
                emit Approval((0 / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.0x5beeee0d with:
                     gas gas_remaining wei
                    args 0 / 2 * ext_call.return_data[0], msg.sender
            else:
                require arg1
                if arg1 * totalSupply / arg1 != totalSupply:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if 2 * ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * ext_call.return_data[0]
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + (arg1 * totalSupply / 2 * ext_call.return_data[0]) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1 * totalSupply / 2 * ext_call.return_data[0]
                if balanceOf[address(this.address)] + (arg1 * totalSupply / 2 * ext_call.return_data[0]) < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] += arg1 * totalSupply / 2 * ext_call.return_data[0]
                emit Transfer((arg1 * totalSupply / 2 * ext_call.return_data[0]), 0, this.address);
                if not this.address:
                    revert with 0, 
                                32,
                                36,
                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[ceil32(return_data.size) + 397 len 28]
                if not sub_91dcd7a7Address:
                    revert with 0, 
                                32,
                                34,
                                0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                mem[ceil32(return_data.size) + 395 len 30]
                allowance[address(this.address)][stor11] = arg1 * totalSupply / 2 * ext_call.return_data[0]
                emit Approval((arg1 * totalSupply / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.0x5beeee0d with:
                     gas gas_remaining wei
                    args arg1 * totalSupply / 2 * ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x616bcd15: arg1, msg.sender
    stor6 = 1
}

function depositLP(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if msg.sender != tx.origin:
        if not stor10[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        55,
                        0x734379636c655661756c74504e473a2043616c6c6572206973206e6f7420454f41206f7220617574686f72697a656420636f6e74726163,
                        mem[219 len 9]
    if arg1 <= 0:
        revert with 0, 'CycleVaultPNG: 0 PNG deposit'
    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
    staticcall 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
    staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(0x60781c2586d68229fde47564546784ab3faca982) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call 0x60781c2586d68229fde47564546784ab3faca982 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if not totalSupply:
            if not this.address:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply + arg1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(this.address)] += arg1
            emit Transfer(arg1, 0, this.address);
            if not this.address:
                revert with 0, 
                            32,
                            36,
                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[396 len 20],
                            0,
                            mem[420 len 4]
            if not sub_91dcd7a7Address:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[394 len 22], 0, mem[420 len 4]
            allowance[address(this.address)][stor11] = arg1
            emit Approval(arg1, this.address, sub_91dcd7a7Address);
            require ext_code.size(sub_91dcd7a7Address)
            call sub_91dcd7a7Address.0x5beeee0d with:
                 gas gas_remaining wei
                args arg1, msg.sender
        else:
            if not arg1:
                if 2 * ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * ext_call.return_data[0]
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + (0 / 2 * ext_call.return_data[0]) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / 2 * ext_call.return_data[0]
                if balanceOf[address(this.address)] + (0 / 2 * ext_call.return_data[0]) < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] += 0 / 2 * ext_call.return_data[0]
                emit Transfer((0 / 2 * ext_call.return_data[0]), 0, this.address);
                if not this.address:
                    revert with 0, 
                                32,
                                36,
                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[396 len 20],
                                0,
                                mem[420 len 4]
                if not sub_91dcd7a7Address:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[394 len 22], 0, mem[420 len 4]
                allowance[address(this.address)][stor11] = 0 / 2 * ext_call.return_data[0]
                emit Approval((0 / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.0x5beeee0d with:
                     gas gas_remaining wei
                    args 0 / 2 * ext_call.return_data[0], msg.sender
            else:
                require arg1
                if arg1 * totalSupply / arg1 != totalSupply:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if 2 * ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * ext_call.return_data[0]
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + (arg1 * totalSupply / 2 * ext_call.return_data[0]) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1 * totalSupply / 2 * ext_call.return_data[0]
                if balanceOf[address(this.address)] + (arg1 * totalSupply / 2 * ext_call.return_data[0]) < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] += arg1 * totalSupply / 2 * ext_call.return_data[0]
                emit Transfer((arg1 * totalSupply / 2 * ext_call.return_data[0]), 0, this.address);
                if not this.address:
                    revert with 0, 
                                32,
                                36,
                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[396 len 20],
                                0,
                                mem[420 len 4]
                if not sub_91dcd7a7Address:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[394 len 22], 0, mem[420 len 4]
                allowance[address(this.address)][stor11] = arg1 * totalSupply / 2 * ext_call.return_data[0]
                emit Approval((arg1 * totalSupply / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.0x5beeee0d with:
                     gas gas_remaining wei
                    args arg1 * totalSupply / 2 * ext_call.return_data[0], msg.sender
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if not totalSupply:
            if not this.address:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply + arg1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(this.address)] += arg1
            emit Transfer(arg1, 0, this.address);
            if not this.address:
                revert with 0, 
                            32,
                            36,
                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(return_data.size) + 397 len 28]
            if not sub_91dcd7a7Address:
                revert with 0, 
                            32,
                            34,
                            0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[ceil32(return_data.size) + 395 len 30]
            allowance[address(this.address)][stor11] = arg1
            emit Approval(arg1, this.address, sub_91dcd7a7Address);
            require ext_code.size(sub_91dcd7a7Address)
            call sub_91dcd7a7Address.0x5beeee0d with:
                 gas gas_remaining wei
                args arg1, msg.sender
        else:
            if not arg1:
                if 2 * ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * ext_call.return_data[0]
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + (0 / 2 * ext_call.return_data[0]) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / 2 * ext_call.return_data[0]
                if balanceOf[address(this.address)] + (0 / 2 * ext_call.return_data[0]) < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] += 0 / 2 * ext_call.return_data[0]
                emit Transfer((0 / 2 * ext_call.return_data[0]), 0, this.address);
                if not this.address:
                    revert with 0, 
                                32,
                                36,
                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[ceil32(return_data.size) + 397 len 28]
                if not sub_91dcd7a7Address:
                    revert with 0, 
                                32,
                                34,
                                0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                mem[ceil32(return_data.size) + 395 len 30]
                allowance[address(this.address)][stor11] = 0 / 2 * ext_call.return_data[0]
                emit Approval((0 / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.0x5beeee0d with:
                     gas gas_remaining wei
                    args 0 / 2 * ext_call.return_data[0], msg.sender
            else:
                require arg1
                if arg1 * totalSupply / arg1 != totalSupply:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if 2 * ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * ext_call.return_data[0]
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + (arg1 * totalSupply / 2 * ext_call.return_data[0]) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1 * totalSupply / 2 * ext_call.return_data[0]
                if balanceOf[address(this.address)] + (arg1 * totalSupply / 2 * ext_call.return_data[0]) < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] += arg1 * totalSupply / 2 * ext_call.return_data[0]
                emit Transfer((arg1 * totalSupply / 2 * ext_call.return_data[0]), 0, this.address);
                if not this.address:
                    revert with 0, 
                                32,
                                36,
                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[ceil32(return_data.size) + 397 len 28]
                if not sub_91dcd7a7Address:
                    revert with 0, 
                                32,
                                34,
                                0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                mem[ceil32(return_data.size) + 395 len 30]
                allowance[address(this.address)][stor11] = arg1 * totalSupply / 2 * ext_call.return_data[0]
                emit Approval((arg1 * totalSupply / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.0x5beeee0d with:
                     gas gas_remaining wei
                    args arg1 * totalSupply / 2 * ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x616bcd15: arg1, msg.sender
    stor6 = 1
}

function sub_e91df3f8(?) {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if tx.origin == msg.sender:
        require ext_code.size(sub_91dcd7a7Address)
        staticcall sub_91dcd7a7Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 > ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x734379636c655661756c74504e473a20496e73756666696369656e742073686172652062616c616e636520666f722077697468647261,
                        mem[218 len 10]
        if not totalSupply:
            require ext_code.size(sub_91dcd7a7Address)
            call sub_91dcd7a7Address.withdrawToVault(uint256 rg1, address rg2) with:
                 gas gas_remaining wei
                args arg1, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > balanceOf[address(this.address)]:
                revert with 0, 'XERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
            balanceOf[address(this.address)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, this.address, 0);
            require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
            staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 10^18:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if ext_code.size(0x60781c2586d68229fde47564546784ab3faca982) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, 232830643
                call 0x60781c2586d68229fde47564546784ab3faca982 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0xde0b6b30000000000000000000000000000000000000000000000000000000000000000, mem[420 len 4]
            else:
                if ext_call.return_data[0] > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (-ext_call.return_data[0] + 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if ext_code.size(0x60781c2586d68229fde47564546784ab3faca982) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, 232830643
                mem[420 len 0] = 0
                call 0x60781c2586d68229fde47564546784ab3faca982 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 232830643) << 256, mem[420 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x5845524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            else:
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[388]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 467 len 22]
            emit 0x94f8b89c: 10^18, msg.sender
        else:
            require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
            staticcall 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
            staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not uint255(ext_call.return_data[0]):
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.withdrawToVault(uint256 rg1, address rg2) with:
                     gas gas_remaining wei
                    args arg1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > balanceOf[address(this.address)]:
                    revert with 0, 'XERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
                balanceOf[address(this.address)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, this.address, 0);
                require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
                staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0 / totalSupply:
                    if ext_call.return_data[0] > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((0 / totalSupply) - ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if ext_code.size(0x60781c2586d68229fde47564546784ab3faca982) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                mem[420 len 0] = 0
                call 0x60781c2586d68229fde47564546784ab3faca982 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalSupply) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x5845524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                emit 0x94f8b89c: (0 / totalSupply), msg.sender
            else:
                require 2 * ext_call.return_data[0]
                if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / 2 * ext_call.return_data[0] != arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.withdrawToVault(uint256 rg1, address rg2) with:
                     gas gas_remaining wei
                    args arg1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > balanceOf[address(this.address)]:
                    revert with 0, 'XERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
                balanceOf[address(this.address)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, this.address, 0);
                require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
                staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                    if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args (((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if ext_code.size(0x60781c2586d68229fde47564546784ab3faca982) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                mem[420 len 0] = 0
                call 0x60781c2586d68229fde47564546784ab3faca982 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x5845524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                emit 0x94f8b89c: ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply), msg.sender
    else:
        if not stor10[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        55,
                        0x734379636c655661756c74504e473a2043616c6c6572206973206e6f7420454f41206f7220617574686f72697a656420636f6e74726163,
                        mem[219 len 9]
        require ext_code.size(sub_91dcd7a7Address)
        staticcall sub_91dcd7a7Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 > ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x734379636c655661756c74504e473a20496e73756666696369656e742073686172652062616c616e636520666f722077697468647261,
                        mem[218 len 10]
        if not totalSupply:
            require ext_code.size(sub_91dcd7a7Address)
            call sub_91dcd7a7Address.withdrawToVault(uint256 rg1, address rg2) with:
                 gas gas_remaining wei
                args arg1, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > balanceOf[address(this.address)]:
                revert with 0, 'XERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
            balanceOf[address(this.address)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, this.address, 0);
            require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
            staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^18:
                if ext_call.return_data[0] > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (-ext_call.return_data[0] + 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
            if ext_code.size(0x60781c2586d68229fde47564546784ab3faca982) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, 232830643
            mem[420 len 0] = 0
            call 0x60781c2586d68229fde47564546784ab3faca982 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 232830643) << 256, mem[420 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x5845524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            else:
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[388]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 467 len 22]
            emit 0x94f8b89c: 10^18, msg.sender
        else:
            require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
            staticcall 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
            staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not uint255(ext_call.return_data[0]):
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.withdrawToVault(uint256 rg1, address rg2) with:
                     gas gas_remaining wei
                    args arg1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > balanceOf[address(this.address)]:
                    revert with 0, 'XERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
                balanceOf[address(this.address)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, this.address, 0);
                require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
                staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0 / totalSupply:
                    if ext_call.return_data[0] > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((0 / totalSupply) - ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if ext_code.size(0x60781c2586d68229fde47564546784ab3faca982) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                mem[420 len 0] = 0
                call 0x60781c2586d68229fde47564546784ab3faca982 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalSupply) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x5845524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                emit 0x94f8b89c: (0 / totalSupply), msg.sender
            else:
                require 2 * ext_call.return_data[0]
                if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / 2 * ext_call.return_data[0] != arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.withdrawToVault(uint256 rg1, address rg2) with:
                     gas gas_remaining wei
                    args arg1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > balanceOf[address(this.address)]:
                    revert with 0, 'XERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
                balanceOf[address(this.address)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, this.address, 0);
                require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
                staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                    if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args (((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if ext_code.size(0x60781c2586d68229fde47564546784ab3faca982) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                mem[420 len 0] = 0
                call 0x60781c2586d68229fde47564546784ab3faca982 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x5845524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                emit 0x94f8b89c: ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply), msg.sender
    stor6 = 1
}

function withdrawLP(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if tx.origin == msg.sender:
        require ext_code.size(sub_91dcd7a7Address)
        staticcall sub_91dcd7a7Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 > ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x734379636c655661756c74504e473a20496e73756666696369656e742073686172652062616c616e636520666f722077697468647261,
                        mem[218 len 10]
        if not totalSupply:
            require ext_code.size(sub_91dcd7a7Address)
            call sub_91dcd7a7Address.withdrawToVault(uint256 rg1, address rg2) with:
                 gas gas_remaining wei
                args arg1, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > balanceOf[address(this.address)]:
                revert with 0, 'XERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
            balanceOf[address(this.address)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, this.address, 0);
            require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
            staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 10^18:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if ext_code.size(0x60781c2586d68229fde47564546784ab3faca982) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, 232830643
                call 0x60781c2586d68229fde47564546784ab3faca982 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0xde0b6b30000000000000000000000000000000000000000000000000000000000000000, mem[420 len 4]
            else:
                if ext_call.return_data[0] > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (-ext_call.return_data[0] + 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if ext_code.size(0x60781c2586d68229fde47564546784ab3faca982) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, 232830643
                mem[420 len 0] = 0
                call 0x60781c2586d68229fde47564546784ab3faca982 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 232830643) << 256, mem[420 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x5845524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            else:
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[388]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 467 len 22]
            emit 0x94f8b89c: 10^18, msg.sender
        else:
            require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
            staticcall 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
            staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not uint255(ext_call.return_data[0]):
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.withdrawToVault(uint256 rg1, address rg2) with:
                     gas gas_remaining wei
                    args arg1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > balanceOf[address(this.address)]:
                    revert with 0, 'XERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
                balanceOf[address(this.address)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, this.address, 0);
                require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
                staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0 / totalSupply:
                    if ext_call.return_data[0] > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((0 / totalSupply) - ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if ext_code.size(0x60781c2586d68229fde47564546784ab3faca982) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                mem[420 len 0] = 0
                call 0x60781c2586d68229fde47564546784ab3faca982 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalSupply) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x5845524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                emit 0x94f8b89c: (0 / totalSupply), msg.sender
            else:
                require 2 * ext_call.return_data[0]
                if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / 2 * ext_call.return_data[0] != arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.withdrawToVault(uint256 rg1, address rg2) with:
                     gas gas_remaining wei
                    args arg1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > balanceOf[address(this.address)]:
                    revert with 0, 'XERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
                balanceOf[address(this.address)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, this.address, 0);
                require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
                staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                    if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args (((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if ext_code.size(0x60781c2586d68229fde47564546784ab3faca982) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                mem[420 len 0] = 0
                call 0x60781c2586d68229fde47564546784ab3faca982 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x5845524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                emit 0x94f8b89c: ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply), msg.sender
    else:
        if not stor10[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        55,
                        0x734379636c655661756c74504e473a2043616c6c6572206973206e6f7420454f41206f7220617574686f72697a656420636f6e74726163,
                        mem[219 len 9]
        require ext_code.size(sub_91dcd7a7Address)
        staticcall sub_91dcd7a7Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 > ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x734379636c655661756c74504e473a20496e73756666696369656e742073686172652062616c616e636520666f722077697468647261,
                        mem[218 len 10]
        if not totalSupply:
            require ext_code.size(sub_91dcd7a7Address)
            call sub_91dcd7a7Address.withdrawToVault(uint256 rg1, address rg2) with:
                 gas gas_remaining wei
                args arg1, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > balanceOf[address(this.address)]:
                revert with 0, 'XERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
            balanceOf[address(this.address)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, this.address, 0);
            require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
            staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^18:
                if ext_call.return_data[0] > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (-ext_call.return_data[0] + 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
            if ext_code.size(0x60781c2586d68229fde47564546784ab3faca982) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, 232830643
            mem[420 len 0] = 0
            call 0x60781c2586d68229fde47564546784ab3faca982 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 232830643) << 256, mem[420 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x5845524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            else:
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[388]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 467 len 22]
            emit 0x94f8b89c: 10^18, msg.sender
        else:
            require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
            staticcall 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
            staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not uint255(ext_call.return_data[0]):
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.withdrawToVault(uint256 rg1, address rg2) with:
                     gas gas_remaining wei
                    args arg1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > balanceOf[address(this.address)]:
                    revert with 0, 'XERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
                balanceOf[address(this.address)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, this.address, 0);
                require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
                staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0 / totalSupply:
                    if ext_call.return_data[0] > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((0 / totalSupply) - ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if ext_code.size(0x60781c2586d68229fde47564546784ab3faca982) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                mem[420 len 0] = 0
                call 0x60781c2586d68229fde47564546784ab3faca982 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalSupply) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x5845524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                emit 0x94f8b89c: (0 / totalSupply), msg.sender
            else:
                require 2 * ext_call.return_data[0]
                if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / 2 * ext_call.return_data[0] != arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.withdrawToVault(uint256 rg1, address rg2) with:
                     gas gas_remaining wei
                    args arg1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > balanceOf[address(this.address)]:
                    revert with 0, 'XERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
                balanceOf[address(this.address)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, this.address, 0);
                require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
                staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                    if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args (((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if ext_code.size(0x60781c2586d68229fde47564546784ab3faca982) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                mem[420 len 0] = 0
                call 0x60781c2586d68229fde47564546784ab3faca982 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x5845524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                emit 0x94f8b89c: ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply), msg.sender
    stor6 = 1
}

function sub_a0d065c3(?) payable {
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if tx.origin == msg.sender:
        if msg.value <= 0:
            revert with 0, 'CycleVaultPNG: 0 AVAX deposit'
        require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
        staticcall 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
        staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = msg.value
        mem[132] = 0
        mem[196] = this.address
        mem[228] = block.timestamp
        mem[164] = 160
        mem[260] = sub_8796fba7.length
        if not sub_8796fba7.length:
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, uint32(msg.value), 0, 160, address(this.address), block.timestamp, sub_8796fba7.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _43 = mem[96 len 4], Mask(224, 32, msg.value) >> 32
            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]
            _49 = mem[_43 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_43 + 96])] = mem[_43 + 128 len floor32(mem[_43 + 96])]
            require 1 < mem[ceil32(return_data.size) + 96]
            _218 = mem[ceil32(return_data.size) + 160]
            if not totalSupply:
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + mem[ceil32(return_data.size) + 160] < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += mem[ceil32(return_data.size) + 160]
                if balanceOf[address(this.address)] + mem[ceil32(return_data.size) + 160] < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] += mem[ceil32(return_data.size) + 160]
                mem[(32 * _49) + ceil32(return_data.size) + 128] = mem[ceil32(return_data.size) + 160]
                emit Transfer(mem[(32 * _49) + ceil32(return_data.size) + 128], 0, this.address);
                if not this.address:
                    revert with 0, 
                                32,
                                36,
                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[(32 * _49) + ceil32(return_data.size) + 232 len 28]
                if not sub_91dcd7a7Address:
                    revert with 0, 
                                32,
                                34,
                                0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                mem[(32 * _49) + ceil32(return_data.size) + 230 len 30]
                allowance[address(this.address)][stor11] = _218
                emit Approval(_218, this.address, sub_91dcd7a7Address);
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.0x5beeee0d with:
                     gas gas_remaining wei
                    args _218, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                     gas gas_remaining wei
                    args _218
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x730e6ca7: msg.value, _218, msg.sender
            else:
                if not mem[ceil32(return_data.size) + 160]:
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * ext_call.return_data[0]
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply + (0 / 2 * ext_call.return_data[0]) < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / 2 * ext_call.return_data[0]
                    if balanceOf[address(this.address)] + (0 / 2 * ext_call.return_data[0]) < balanceOf[address(this.address)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] += 0 / 2 * ext_call.return_data[0]
                    emit Transfer((0 / 2 * ext_call.return_data[0]), 0, this.address);
                    if not this.address:
                        revert with 0, 
                                    32,
                                    36,
                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                    mem[(32 * _49) + ceil32(return_data.size) + 232 len 28]
                    if not sub_91dcd7a7Address:
                        revert with 0, 
                                    32,
                                    34,
                                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                    mem[(32 * _49) + ceil32(return_data.size) + 230 len 30]
                    allowance[address(this.address)][stor11] = 0 / 2 * ext_call.return_data[0]
                    emit Approval((0 / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                    require ext_code.size(sub_91dcd7a7Address)
                    call sub_91dcd7a7Address.0x5beeee0d with:
                         gas gas_remaining wei
                        args 0 / 2 * ext_call.return_data[0], msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[ceil32(return_data.size) + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x730e6ca7: msg.value, mem[ceil32(return_data.size) + 160], msg.sender
                else:
                    require mem[ceil32(return_data.size) + 160]
                    if mem[ceil32(return_data.size) + 160] * totalSupply / mem[ceil32(return_data.size) + 160] != totalSupply:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _49) + ceil32(return_data.size) + 229 len 31]
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * ext_call.return_data[0]
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply + (mem[ceil32(return_data.size) + 160] * totalSupply / 2 * ext_call.return_data[0]) < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += mem[ceil32(return_data.size) + 160] * totalSupply / 2 * ext_call.return_data[0]
                    if balanceOf[address(this.address)] + (mem[ceil32(return_data.size) + 160] * totalSupply / 2 * ext_call.return_data[0]) < balanceOf[address(this.address)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] += mem[ceil32(return_data.size) + 160] * totalSupply / 2 * ext_call.return_data[0]
                    mem[(32 * _49) + ceil32(return_data.size) + 128] = mem[ceil32(return_data.size) + 160] * totalSupply / 2 * ext_call.return_data[0]
                    emit Transfer(mem[(32 * _49) + ceil32(return_data.size) + 128], 0, this.address);
                    if not this.address:
                        revert with 0, 
                                    32,
                                    36,
                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                    mem[(32 * _49) + ceil32(return_data.size) + 232 len 28]
                    if not sub_91dcd7a7Address:
                        revert with 0, 
                                    32,
                                    34,
                                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                    mem[(32 * _49) + ceil32(return_data.size) + 230 len 30]
                    allowance[address(this.address)][stor11] = _218 * totalSupply / 2 * ext_call.return_data[0]
                    emit Approval((_218 * totalSupply / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                    require ext_code.size(sub_91dcd7a7Address)
                    call sub_91dcd7a7Address.0x5beeee0d with:
                         gas gas_remaining wei
                        args _218 * totalSupply / 2 * ext_call.return_data[0], msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args _218
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x730e6ca7: msg.value, _218, msg.sender
        else:
            mem[0] = 8
            mem[292] = address(sub_8796fba7.field_0)
            idx = 292
            s = 0
            while (32 * sub_8796fba7.length) + 292 > idx + 32:
                mem[idx + 32] = sub_8796fba7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, uint32(msg.value), 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[292 len 32 * sub_8796fba7.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _380 = mem[96 len 4], Mask(224, 32, msg.value) >> 32
            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]
            _386 = mem[_380 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_380 + 96])] = mem[_380 + 128 len floor32(mem[_380 + 96])]
            require 1 < mem[ceil32(return_data.size) + 96]
            _554 = mem[ceil32(return_data.size) + 160]
            if not totalSupply:
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + mem[ceil32(return_data.size) + 160] < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += mem[ceil32(return_data.size) + 160]
                if balanceOf[address(this.address)] + mem[ceil32(return_data.size) + 160] < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] += mem[ceil32(return_data.size) + 160]
                mem[(32 * _386) + ceil32(return_data.size) + 128] = mem[ceil32(return_data.size) + 160]
                emit Transfer(mem[(32 * _386) + ceil32(return_data.size) + 128], 0, this.address);
                if not this.address:
                    revert with 0, 
                                32,
                                36,
                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[(32 * _386) + ceil32(return_data.size) + 232 len 28]
                if not sub_91dcd7a7Address:
                    revert with 0, 
                                32,
                                34,
                                0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                mem[(32 * _386) + ceil32(return_data.size) + 230 len 30]
                allowance[address(this.address)][stor11] = _554
                emit Approval(_554, this.address, sub_91dcd7a7Address);
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.0x5beeee0d with:
                     gas gas_remaining wei
                    args _554, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                     gas gas_remaining wei
                    args _554
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x730e6ca7: msg.value, _554, msg.sender
            else:
                if not mem[ceil32(return_data.size) + 160]:
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * ext_call.return_data[0]
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply + (0 / 2 * ext_call.return_data[0]) < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / 2 * ext_call.return_data[0]
                    if balanceOf[address(this.address)] + (0 / 2 * ext_call.return_data[0]) < balanceOf[address(this.address)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] += 0 / 2 * ext_call.return_data[0]
                    emit Transfer((0 / 2 * ext_call.return_data[0]), 0, this.address);
                    if not this.address:
                        revert with 0, 
                                    32,
                                    36,
                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                    mem[(32 * _386) + ceil32(return_data.size) + 232 len 28]
                    if not sub_91dcd7a7Address:
                        revert with 0, 
                                    32,
                                    34,
                                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                    mem[(32 * _386) + ceil32(return_data.size) + 230 len 30]
                    allowance[address(this.address)][stor11] = 0 / 2 * ext_call.return_data[0]
                    emit Approval((0 / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                    require ext_code.size(sub_91dcd7a7Address)
                    call sub_91dcd7a7Address.0x5beeee0d with:
                         gas gas_remaining wei
                        args 0 / 2 * ext_call.return_data[0], msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[ceil32(return_data.size) + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x730e6ca7: msg.value, mem[ceil32(return_data.size) + 160], msg.sender
                else:
                    require mem[ceil32(return_data.size) + 160]
                    if mem[ceil32(return_data.size) + 160] * totalSupply / mem[ceil32(return_data.size) + 160] != totalSupply:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _386) + ceil32(return_data.size) + 229 len 31]
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * ext_call.return_data[0]
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply + (mem[ceil32(return_data.size) + 160] * totalSupply / 2 * ext_call.return_data[0]) < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += mem[ceil32(return_data.size) + 160] * totalSupply / 2 * ext_call.return_data[0]
                    if balanceOf[address(this.address)] + (mem[ceil32(return_data.size) + 160] * totalSupply / 2 * ext_call.return_data[0]) < balanceOf[address(this.address)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] += mem[ceil32(return_data.size) + 160] * totalSupply / 2 * ext_call.return_data[0]
                    mem[(32 * _386) + ceil32(return_data.size) + 128] = mem[ceil32(return_data.size) + 160] * totalSupply / 2 * ext_call.return_data[0]
                    emit Transfer(mem[(32 * _386) + ceil32(return_data.size) + 128], 0, this.address);
                    if not this.address:
                        revert with 0, 
                                    32,
                                    36,
                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                    mem[(32 * _386) + ceil32(return_data.size) + 232 len 28]
                    if not sub_91dcd7a7Address:
                        revert with 0, 
                                    32,
                                    34,
                                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                    mem[(32 * _386) + ceil32(return_data.size) + 230 len 30]
                    allowance[address(this.address)][stor11] = _554 * totalSupply / 2 * ext_call.return_data[0]
                    emit Approval((_554 * totalSupply / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                    require ext_code.size(sub_91dcd7a7Address)
                    call sub_91dcd7a7Address.0x5beeee0d with:
                         gas gas_remaining wei
                        args _554 * totalSupply / 2 * ext_call.return_data[0], msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args _554
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x730e6ca7: msg.value, _554, msg.sender
    else:
        if not stor10[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        55,
                        0x734379636c655661756c74504e473a2043616c6c6572206973206e6f7420454f41206f7220617574686f72697a656420636f6e74726163,
                        mem[219 len 9]
        if msg.value <= 0:
            revert with 0, 'CycleVaultPNG: 0 AVAX deposit'
        require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
        staticcall 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
        staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = msg.value
        mem[132] = 0
        mem[196] = this.address
        mem[228] = block.timestamp
        mem[164] = 160
        mem[260] = sub_8796fba7.length
        if not sub_8796fba7.length:
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, uint32(msg.value), 0, 160, address(this.address), block.timestamp, sub_8796fba7.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _46 = mem[96 len 4], Mask(224, 32, msg.value) >> 32
            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]
            _51 = mem[_46 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_46 + 96])] = mem[_46 + 128 len floor32(mem[_46 + 96])]
            require 1 < mem[ceil32(return_data.size) + 96]
            _219 = mem[ceil32(return_data.size) + 160]
            if not totalSupply:
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + mem[ceil32(return_data.size) + 160] < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += mem[ceil32(return_data.size) + 160]
                if balanceOf[address(this.address)] + mem[ceil32(return_data.size) + 160] < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] += mem[ceil32(return_data.size) + 160]
                mem[(32 * _51) + ceil32(return_data.size) + 128] = mem[ceil32(return_data.size) + 160]
                emit Transfer(mem[(32 * _51) + ceil32(return_data.size) + 128], 0, this.address);
                if not this.address:
                    revert with 0, 
                                32,
                                36,
                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[(32 * _51) + ceil32(return_data.size) + 232 len 28]
                if not sub_91dcd7a7Address:
                    revert with 0, 
                                32,
                                34,
                                0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                mem[(32 * _51) + ceil32(return_data.size) + 230 len 30]
                allowance[address(this.address)][stor11] = _219
                emit Approval(_219, this.address, sub_91dcd7a7Address);
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.0x5beeee0d with:
                     gas gas_remaining wei
                    args _219, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                     gas gas_remaining wei
                    args _219
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x730e6ca7: msg.value, _219, msg.sender
            else:
                if not mem[ceil32(return_data.size) + 160]:
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * ext_call.return_data[0]
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply + (0 / 2 * ext_call.return_data[0]) < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / 2 * ext_call.return_data[0]
                    if balanceOf[address(this.address)] + (0 / 2 * ext_call.return_data[0]) < balanceOf[address(this.address)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] += 0 / 2 * ext_call.return_data[0]
                    emit Transfer((0 / 2 * ext_call.return_data[0]), 0, this.address);
                    if not this.address:
                        revert with 0, 
                                    32,
                                    36,
                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                    mem[(32 * _51) + ceil32(return_data.size) + 232 len 28]
                    if not sub_91dcd7a7Address:
                        revert with 0, 
                                    32,
                                    34,
                                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                    mem[(32 * _51) + ceil32(return_data.size) + 230 len 30]
                    allowance[address(this.address)][stor11] = 0 / 2 * ext_call.return_data[0]
                    emit Approval((0 / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                    require ext_code.size(sub_91dcd7a7Address)
                    call sub_91dcd7a7Address.0x5beeee0d with:
                         gas gas_remaining wei
                        args 0 / 2 * ext_call.return_data[0], msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[ceil32(return_data.size) + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x730e6ca7: msg.value, mem[ceil32(return_data.size) + 160], msg.sender
                else:
                    require mem[ceil32(return_data.size) + 160]
                    if mem[ceil32(return_data.size) + 160] * totalSupply / mem[ceil32(return_data.size) + 160] != totalSupply:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _51) + ceil32(return_data.size) + 229 len 31]
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * ext_call.return_data[0]
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply + (mem[ceil32(return_data.size) + 160] * totalSupply / 2 * ext_call.return_data[0]) < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += mem[ceil32(return_data.size) + 160] * totalSupply / 2 * ext_call.return_data[0]
                    if balanceOf[address(this.address)] + (mem[ceil32(return_data.size) + 160] * totalSupply / 2 * ext_call.return_data[0]) < balanceOf[address(this.address)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] += mem[ceil32(return_data.size) + 160] * totalSupply / 2 * ext_call.return_data[0]
                    mem[(32 * _51) + ceil32(return_data.size) + 128] = mem[ceil32(return_data.size) + 160] * totalSupply / 2 * ext_call.return_data[0]
                    emit Transfer(mem[(32 * _51) + ceil32(return_data.size) + 128], 0, this.address);
                    if not this.address:
                        revert with 0, 
                                    32,
                                    36,
                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                    mem[(32 * _51) + ceil32(return_data.size) + 232 len 28]
                    if not sub_91dcd7a7Address:
                        revert with 0, 
                                    32,
                                    34,
                                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                    mem[(32 * _51) + ceil32(return_data.size) + 230 len 30]
                    allowance[address(this.address)][stor11] = _219 * totalSupply / 2 * ext_call.return_data[0]
                    emit Approval((_219 * totalSupply / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                    require ext_code.size(sub_91dcd7a7Address)
                    call sub_91dcd7a7Address.0x5beeee0d with:
                         gas gas_remaining wei
                        args _219 * totalSupply / 2 * ext_call.return_data[0], msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args _219
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x730e6ca7: msg.value, _219, msg.sender
        else:
            mem[0] = 8
            mem[292] = address(sub_8796fba7.field_0)
            idx = 292
            s = 0
            while (32 * sub_8796fba7.length) + 292 > idx + 32:
                mem[idx + 32] = sub_8796fba7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, uint32(msg.value), 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[292 len 32 * sub_8796fba7.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _382 = mem[96 len 4], Mask(224, 32, msg.value) >> 32
            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]
            _387 = mem[_382 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_382 + 96])] = mem[_382 + 128 len floor32(mem[_382 + 96])]
            require 1 < mem[ceil32(return_data.size) + 96]
            _555 = mem[ceil32(return_data.size) + 160]
            if not totalSupply:
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + mem[ceil32(return_data.size) + 160] < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += mem[ceil32(return_data.size) + 160]
                if balanceOf[address(this.address)] + mem[ceil32(return_data.size) + 160] < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] += mem[ceil32(return_data.size) + 160]
                mem[(32 * _387) + ceil32(return_data.size) + 128] = mem[ceil32(return_data.size) + 160]
                emit Transfer(mem[(32 * _387) + ceil32(return_data.size) + 128], 0, this.address);
                if not this.address:
                    revert with 0, 
                                32,
                                36,
                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[(32 * _387) + ceil32(return_data.size) + 232 len 28]
                if not sub_91dcd7a7Address:
                    revert with 0, 
                                32,
                                34,
                                0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                mem[(32 * _387) + ceil32(return_data.size) + 230 len 30]
                allowance[address(this.address)][stor11] = _555
                emit Approval(_555, this.address, sub_91dcd7a7Address);
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.0x5beeee0d with:
                     gas gas_remaining wei
                    args _555, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                     gas gas_remaining wei
                    args _555
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x730e6ca7: msg.value, _555, msg.sender
            else:
                if not mem[ceil32(return_data.size) + 160]:
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * ext_call.return_data[0]
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply + (0 / 2 * ext_call.return_data[0]) < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / 2 * ext_call.return_data[0]
                    if balanceOf[address(this.address)] + (0 / 2 * ext_call.return_data[0]) < balanceOf[address(this.address)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] += 0 / 2 * ext_call.return_data[0]
                    emit Transfer((0 / 2 * ext_call.return_data[0]), 0, this.address);
                    if not this.address:
                        revert with 0, 
                                    32,
                                    36,
                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                    mem[(32 * _387) + ceil32(return_data.size) + 232 len 28]
                    if not sub_91dcd7a7Address:
                        revert with 0, 
                                    32,
                                    34,
                                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                    mem[(32 * _387) + ceil32(return_data.size) + 230 len 30]
                    allowance[address(this.address)][stor11] = 0 / 2 * ext_call.return_data[0]
                    emit Approval((0 / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                    require ext_code.size(sub_91dcd7a7Address)
                    call sub_91dcd7a7Address.0x5beeee0d with:
                         gas gas_remaining wei
                        args 0 / 2 * ext_call.return_data[0], msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[ceil32(return_data.size) + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x730e6ca7: msg.value, mem[ceil32(return_data.size) + 160], msg.sender
                else:
                    require mem[ceil32(return_data.size) + 160]
                    if mem[ceil32(return_data.size) + 160] * totalSupply / mem[ceil32(return_data.size) + 160] != totalSupply:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _387) + ceil32(return_data.size) + 229 len 31]
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * ext_call.return_data[0]
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply + (mem[ceil32(return_data.size) + 160] * totalSupply / 2 * ext_call.return_data[0]) < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += mem[ceil32(return_data.size) + 160] * totalSupply / 2 * ext_call.return_data[0]
                    if balanceOf[address(this.address)] + (mem[ceil32(return_data.size) + 160] * totalSupply / 2 * ext_call.return_data[0]) < balanceOf[address(this.address)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] += mem[ceil32(return_data.size) + 160] * totalSupply / 2 * ext_call.return_data[0]
                    mem[(32 * _387) + ceil32(return_data.size) + 128] = mem[ceil32(return_data.size) + 160] * totalSupply / 2 * ext_call.return_data[0]
                    emit Transfer(mem[(32 * _387) + ceil32(return_data.size) + 128], 0, this.address);
                    if not this.address:
                        revert with 0, 
                                    32,
                                    36,
                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                    mem[(32 * _387) + ceil32(return_data.size) + 232 len 28]
                    if not sub_91dcd7a7Address:
                        revert with 0, 
                                    32,
                                    34,
                                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                    mem[(32 * _387) + ceil32(return_data.size) + 230 len 30]
                    allowance[address(this.address)][stor11] = _555 * totalSupply / 2 * ext_call.return_data[0]
                    emit Approval((_555 * totalSupply / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                    require ext_code.size(sub_91dcd7a7Address)
                    call sub_91dcd7a7Address.0x5beeee0d with:
                         gas gas_remaining wei
                        args _555 * totalSupply / 2 * ext_call.return_data[0], msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args _555
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x730e6ca7: msg.value, _555, msg.sender
    stor6 = 1
}

function withdrawAVAX(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if tx.origin == msg.sender:
        require ext_code.size(sub_91dcd7a7Address)
        staticcall sub_91dcd7a7Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 > ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x734379636c655661756c74504e473a20496e73756666696369656e742073686172652062616c616e636520666f722077697468647261,
                        mem[218 len 10]
        if not totalSupply:
            mem[132] = msg.sender
            require ext_code.size(sub_91dcd7a7Address)
            call sub_91dcd7a7Address.withdrawToVault(uint256 rg1, address rg2) with:
                 gas gas_remaining wei
                args arg1, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > balanceOf[address(this.address)]:
                revert with 0, 'XERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
            balanceOf[address(this.address)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, this.address, 0);
            require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
            staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 10^18:
                mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[196] = 10^18
                mem[228] = 0
                mem[292] = this.address
                mem[324] = block.timestamp
                mem[260] = 160
                mem[356] = sub_4ad47c83.length
                if not sub_4ad47c83.length:
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 10^18, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _107 = mem[192 len 4], 232830643
                    require mem[192 len 4], 232830643 <= 4294967296
                    require mem[192 len 4], 232830643 + 32 <= return_data.size
                    require mem[mem[192 len 4], 232830643 + 192] <= 4294967296 and mem[192 len 4], 232830643 + (32 * mem[mem[192 len 4], 232830643 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830643 + 192]
                    _120 = mem[_107 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_107 + 192])] = mem[_107 + 224 len floor32(mem[_107 + 192])]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        38,
                                        0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                        mem[(32 * _120) + ceil32(return_data.size) + 330 len 26]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        38,
                                        0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                        mem[(32 * _120) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
                else:
                    mem[0] = 9
                    mem[388] = address(sub_4ad47c83.field_0)
                    idx = 388
                    s = 0
                    while (32 * sub_4ad47c83.length) + 388 > idx + 32:
                        mem[idx + 32] = sub_4ad47c83[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 10^18, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length, mem[388 len 32 * sub_4ad47c83.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _782 = mem[192 len 4], 232830643
                    require mem[192 len 4], 232830643 <= 4294967296
                    require mem[192 len 4], 232830643 + 32 <= return_data.size
                    require mem[mem[192 len 4], 232830643 + 192] <= 4294967296 and mem[192 len 4], 232830643 + (32 * mem[mem[192 len 4], 232830643 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830643 + 192]
                    _818 = mem[_782 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_782 + 192])] = mem[_782 + 224 len floor32(mem[_782 + 192])]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        38,
                                        0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                        mem[(32 * _818) + ceil32(return_data.size) + 330 len 26]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        38,
                                        0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                        mem[(32 * _818) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
            else:
                if ext_call.return_data[0] > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (-ext_call.return_data[0] + 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[196] = 10^18
                mem[228] = 0
                mem[292] = this.address
                mem[324] = block.timestamp
                mem[260] = 160
                mem[356] = sub_4ad47c83.length
                if not sub_4ad47c83.length:
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 10^18, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _138 = mem[192 len 4], 232830643
                    require mem[192 len 4], 232830643 <= 4294967296
                    require mem[192 len 4], 232830643 + 32 <= return_data.size
                    require mem[mem[192 len 4], 232830643 + 192] <= 4294967296 and mem[192 len 4], 232830643 + (32 * mem[mem[192 len 4], 232830643 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830643 + 192]
                    _159 = mem[_138 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_138 + 192])] = mem[_138 + 224 len floor32(mem[_138 + 192])]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        38,
                                        0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                        mem[(32 * _159) + ceil32(return_data.size) + 330 len 26]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        38,
                                        0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                        mem[(32 * _159) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
                else:
                    mem[0] = 9
                    mem[388] = address(sub_4ad47c83.field_0)
                    idx = 388
                    s = 0
                    while (32 * sub_4ad47c83.length) + 388 > idx + 32:
                        mem[idx + 32] = sub_4ad47c83[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 10^18, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length, mem[388 len 32 * sub_4ad47c83.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _784 = mem[192 len 4], 232830643
                    require mem[192 len 4], 232830643 <= 4294967296
                    require mem[192 len 4], 232830643 + 32 <= return_data.size
                    require mem[mem[192 len 4], 232830643 + 192] <= 4294967296 and mem[192 len 4], 232830643 + (32 * mem[mem[192 len 4], 232830643 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830643 + 192]
                    _819 = mem[_784 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_784 + 192])] = mem[_784 + 224 len floor32(mem[_784 + 192])]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        38,
                                        0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                        mem[(32 * _819) + ceil32(return_data.size) + 330 len 26]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        38,
                                        0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                        mem[(32 * _819) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
            ('bool', 'ext_call.success')
            emit 0xb6876fe4: ext_call.return_data[0], 10^18, msg.sender
        else:
            require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
            staticcall 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
            staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not uint255(ext_call.return_data[0]):
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                mem[132] = msg.sender
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.withdrawToVault(uint256 rg1, address rg2) with:
                     gas gas_remaining wei
                    args arg1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > balanceOf[address(this.address)]:
                    revert with 0, 'XERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
                balanceOf[address(this.address)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, this.address, 0);
                require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
                staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 0 / totalSupply:
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = 0 / totalSupply
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = sub_4ad47c83.length
                    if not sub_4ad47c83.length:
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0 / totalSupply, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _317 = mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32
                        require mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192]
                        _334 = mem[_317 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_317 + 192])] = mem[_317 + 224 len floor32(mem[_317 + 192])]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _334) + ceil32(return_data.size) + 330 len 26]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _334) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
                    else:
                        mem[0] = 9
                        mem[388] = address(sub_4ad47c83.field_0)
                        idx = 388
                        s = 0
                        while (32 * sub_4ad47c83.length) + 388 > idx + 32:
                            mem[idx + 32] = sub_4ad47c83[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0 / totalSupply, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length, mem[388 len 32 * sub_4ad47c83.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _790 = mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32
                        require mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192]
                        _822 = mem[_790 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_790 + 192])] = mem[_790 + 224 len floor32(mem[_790 + 192])]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _822) + ceil32(return_data.size) + 330 len 26]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _822) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
                else:
                    if ext_call.return_data[0] > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((0 / totalSupply) - ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = 0 / totalSupply
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = sub_4ad47c83.length
                    if not sub_4ad47c83.length:
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0 / totalSupply, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _355 = mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32
                        require mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192]
                        _377 = mem[_355 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_355 + 192])] = mem[_355 + 224 len floor32(mem[_355 + 192])]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _377) + ceil32(return_data.size) + 330 len 26]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _377) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
                    else:
                        mem[0] = 9
                        mem[388] = address(sub_4ad47c83.field_0)
                        idx = 388
                        s = 0
                        while (32 * sub_4ad47c83.length) + 388 > idx + 32:
                            mem[idx + 32] = sub_4ad47c83[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0 / totalSupply, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length, mem[388 len 32 * sub_4ad47c83.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _792 = mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32
                        require mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192]
                        _823 = mem[_792 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_792 + 192])] = mem[_792 + 224 len floor32(mem[_792 + 192])]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _823) + ceil32(return_data.size) + 330 len 26]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _823) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
                ('bool', 'ext_call.success')
                emit 0xb6876fe4: ext_call.return_data[0], 0 / totalSupply, msg.sender
            else:
                require 2 * ext_call.return_data[0]
                if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / 2 * ext_call.return_data[0] != arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                mem[132] = msg.sender
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.withdrawToVault(uint256 rg1, address rg2) with:
                     gas gas_remaining wei
                    args arg1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > balanceOf[address(this.address)]:
                    revert with 0, 'XERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
                balanceOf[address(this.address)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, this.address, 0);
                require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
                staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = sub_4ad47c83.length
                    if not sub_4ad47c83.length:
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _329 = mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                        require mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192]
                        _346 = mem[_329 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_329 + 192])] = mem[_329 + 224 len floor32(mem[_329 + 192])]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _346) + ceil32(return_data.size) + 330 len 26]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _346) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
                    else:
                        mem[0] = 9
                        mem[388] = address(sub_4ad47c83.field_0)
                        idx = 388
                        s = 0
                        while (32 * sub_4ad47c83.length) + 388 > idx + 32:
                            mem[idx + 32] = sub_4ad47c83[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length, mem[388 len 32 * sub_4ad47c83.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _786 = mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                        require mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192]
                        _820 = mem[_786 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_786 + 192])] = mem[_786 + 224 len floor32(mem[_786 + 192])]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _820) + ceil32(return_data.size) + 330 len 26]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _820) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
                else:
                    if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args (((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = sub_4ad47c83.length
                    if not sub_4ad47c83.length:
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _370 = mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                        require mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192]
                        _391 = mem[_370 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_370 + 192])] = mem[_370 + 224 len floor32(mem[_370 + 192])]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _391) + ceil32(return_data.size) + 330 len 26]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _391) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
                    else:
                        mem[0] = 9
                        mem[388] = address(sub_4ad47c83.field_0)
                        idx = 388
                        s = 0
                        while (32 * sub_4ad47c83.length) + 388 > idx + 32:
                            mem[idx + 32] = sub_4ad47c83[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length, mem[388 len 32 * sub_4ad47c83.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _788 = mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                        require mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192]
                        _821 = mem[_788 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_788 + 192])] = mem[_788 + 224 len floor32(mem[_788 + 192])]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _821) + ceil32(return_data.size) + 330 len 26]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _821) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
                ('bool', 'ext_call.success')
                emit 0xb6876fe4: ext_call.return_data[0], (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, msg.sender
    else:
        if not stor10[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        55,
                        0x734379636c655661756c74504e473a2043616c6c6572206973206e6f7420454f41206f7220617574686f72697a656420636f6e74726163,
                        mem[219 len 9]
        require ext_code.size(sub_91dcd7a7Address)
        staticcall sub_91dcd7a7Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 > ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x734379636c655661756c74504e473a20496e73756666696369656e742073686172652062616c616e636520666f722077697468647261,
                        mem[218 len 10]
        if not totalSupply:
            mem[132] = msg.sender
            require ext_code.size(sub_91dcd7a7Address)
            call sub_91dcd7a7Address.withdrawToVault(uint256 rg1, address rg2) with:
                 gas gas_remaining wei
                args arg1, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > balanceOf[address(this.address)]:
                revert with 0, 'XERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
            balanceOf[address(this.address)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, this.address, 0);
            require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
            staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 10^18:
                mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[196] = 10^18
                mem[228] = 0
                mem[292] = this.address
                mem[324] = block.timestamp
                mem[260] = 160
                mem[356] = sub_4ad47c83.length
                if not sub_4ad47c83.length:
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 10^18, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _114 = mem[192 len 4], 232830643
                    require mem[192 len 4], 232830643 <= 4294967296
                    require mem[192 len 4], 232830643 + 32 <= return_data.size
                    require mem[mem[192 len 4], 232830643 + 192] <= 4294967296 and mem[192 len 4], 232830643 + (32 * mem[mem[192 len 4], 232830643 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830643 + 192]
                    _127 = mem[_114 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_114 + 192])] = mem[_114 + 224 len floor32(mem[_114 + 192])]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        38,
                                        0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                        mem[(32 * _127) + ceil32(return_data.size) + 330 len 26]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        38,
                                        0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                        mem[(32 * _127) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
                else:
                    mem[0] = 9
                    mem[388] = address(sub_4ad47c83.field_0)
                    idx = 388
                    s = 0
                    while (32 * sub_4ad47c83.length) + 388 > idx + 32:
                        mem[idx + 32] = sub_4ad47c83[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 10^18, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length, mem[388 len 32 * sub_4ad47c83.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _794 = mem[192 len 4], 232830643
                    require mem[192 len 4], 232830643 <= 4294967296
                    require mem[192 len 4], 232830643 + 32 <= return_data.size
                    require mem[mem[192 len 4], 232830643 + 192] <= 4294967296 and mem[192 len 4], 232830643 + (32 * mem[mem[192 len 4], 232830643 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830643 + 192]
                    _824 = mem[_794 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_794 + 192])] = mem[_794 + 224 len floor32(mem[_794 + 192])]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        38,
                                        0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                        mem[(32 * _824) + ceil32(return_data.size) + 330 len 26]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        38,
                                        0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                        mem[(32 * _824) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
            else:
                if ext_call.return_data[0] > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (-ext_call.return_data[0] + 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[196] = 10^18
                mem[228] = 0
                mem[292] = this.address
                mem[324] = block.timestamp
                mem[260] = 160
                mem[356] = sub_4ad47c83.length
                if not sub_4ad47c83.length:
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 10^18, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _150 = mem[192 len 4], 232830643
                    require mem[192 len 4], 232830643 <= 4294967296
                    require mem[192 len 4], 232830643 + 32 <= return_data.size
                    require mem[mem[192 len 4], 232830643 + 192] <= 4294967296 and mem[192 len 4], 232830643 + (32 * mem[mem[192 len 4], 232830643 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830643 + 192]
                    _171 = mem[_150 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_150 + 192])] = mem[_150 + 224 len floor32(mem[_150 + 192])]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        38,
                                        0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                        mem[(32 * _171) + ceil32(return_data.size) + 330 len 26]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        38,
                                        0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                        mem[(32 * _171) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
                else:
                    mem[0] = 9
                    mem[388] = address(sub_4ad47c83.field_0)
                    idx = 388
                    s = 0
                    while (32 * sub_4ad47c83.length) + 388 > idx + 32:
                        mem[idx + 32] = sub_4ad47c83[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args 10^18, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length, mem[388 len 32 * sub_4ad47c83.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _796 = mem[192 len 4], 232830643
                    require mem[192 len 4], 232830643 <= 4294967296
                    require mem[192 len 4], 232830643 + 32 <= return_data.size
                    require mem[mem[192 len 4], 232830643 + 192] <= 4294967296 and mem[192 len 4], 232830643 + (32 * mem[mem[192 len 4], 232830643 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830643 + 192]
                    _825 = mem[_796 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_796 + 192])] = mem[_796 + 224 len floor32(mem[_796 + 192])]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        38,
                                        0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                        mem[(32 * _825) + ceil32(return_data.size) + 330 len 26]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        38,
                                        0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                        mem[(32 * _825) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
            ('bool', 'ext_call.success')
            emit 0xb6876fe4: ext_call.return_data[0], 10^18, msg.sender
        else:
            require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
            staticcall 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
            staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not uint255(ext_call.return_data[0]):
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                mem[132] = msg.sender
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.withdrawToVault(uint256 rg1, address rg2) with:
                     gas gas_remaining wei
                    args arg1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > balanceOf[address(this.address)]:
                    revert with 0, 'XERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
                balanceOf[address(this.address)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, this.address, 0);
                require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
                staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 0 / totalSupply:
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = 0 / totalSupply
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = sub_4ad47c83.length
                    if not sub_4ad47c83.length:
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0 / totalSupply, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _327 = mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32
                        require mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192]
                        _343 = mem[_327 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_327 + 192])] = mem[_327 + 224 len floor32(mem[_327 + 192])]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _343) + ceil32(return_data.size) + 330 len 26]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _343) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
                    else:
                        mem[0] = 9
                        mem[388] = address(sub_4ad47c83.field_0)
                        idx = 388
                        s = 0
                        while (32 * sub_4ad47c83.length) + 388 > idx + 32:
                            mem[idx + 32] = sub_4ad47c83[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0 / totalSupply, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length, mem[388 len 32 * sub_4ad47c83.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _802 = mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32
                        require mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192]
                        _828 = mem[_802 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_802 + 192])] = mem[_802 + 224 len floor32(mem[_802 + 192])]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _828) + ceil32(return_data.size) + 330 len 26]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _828) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
                else:
                    if ext_call.return_data[0] > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((0 / totalSupply) - ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = 0 / totalSupply
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = sub_4ad47c83.length
                    if not sub_4ad47c83.length:
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0 / totalSupply, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _366 = mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32
                        require mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192]
                        _389 = mem[_366 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_366 + 192])] = mem[_366 + 224 len floor32(mem[_366 + 192])]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _389) + ceil32(return_data.size) + 330 len 26]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _389) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
                    else:
                        mem[0] = 9
                        mem[388] = address(sub_4ad47c83.field_0)
                        idx = 388
                        s = 0
                        while (32 * sub_4ad47c83.length) + 388 > idx + 32:
                            mem[idx + 32] = sub_4ad47c83[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args 0 / totalSupply, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length, mem[388 len 32 * sub_4ad47c83.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _804 = mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32
                        require mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 0 / totalSupply) >> 32 + 192]
                        _829 = mem[_804 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_804 + 192])] = mem[_804 + 224 len floor32(mem[_804 + 192])]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _829) + ceil32(return_data.size) + 330 len 26]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _829) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
                ('bool', 'ext_call.success')
                emit 0xb6876fe4: ext_call.return_data[0], 0 / totalSupply, msg.sender
            else:
                require 2 * ext_call.return_data[0]
                if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / 2 * ext_call.return_data[0] != arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                mem[132] = msg.sender
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.withdrawToVault(uint256 rg1, address rg2) with:
                     gas gas_remaining wei
                    args arg1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > balanceOf[address(this.address)]:
                    revert with 0, 'XERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
                balanceOf[address(this.address)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, this.address, 0);
                require ext_code.size(0x60781c2586d68229fde47564546784ab3faca982)
                staticcall 0x60781c2586d68229fde47564546784ab3faca982.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = sub_4ad47c83.length
                    if not sub_4ad47c83.length:
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _337 = mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                        require mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192]
                        _357 = mem[_337 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_337 + 192])] = mem[_337 + 224 len floor32(mem[_337 + 192])]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _357) + ceil32(return_data.size) + 330 len 26]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _357) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
                    else:
                        mem[0] = 9
                        mem[388] = address(sub_4ad47c83.field_0)
                        idx = 388
                        s = 0
                        while (32 * sub_4ad47c83.length) + 388 > idx + 32:
                            mem[idx + 32] = sub_4ad47c83[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length, mem[388 len 32 * sub_4ad47c83.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _798 = mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                        require mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192]
                        _826 = mem[_798 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_798 + 192])] = mem[_798 + 224 len floor32(mem[_798 + 192])]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _826) + ceil32(return_data.size) + 330 len 26]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _826) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
                else:
                    if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args (((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 160
                    mem[356] = sub_4ad47c83.length
                    if not sub_4ad47c83.length:
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _380 = mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                        require mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192]
                        _404 = mem[_380 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_380 + 192])] = mem[_380 + 224 len floor32(mem[_380 + 192])]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _404) + ceil32(return_data.size) + 330 len 26]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _404) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
                    else:
                        mem[0] = 9
                        mem[388] = address(sub_4ad47c83.field_0)
                        idx = 388
                        s = 0
                        while (32 * sub_4ad47c83.length) + 388 > idx + 32:
                            mem[idx + 32] = sub_4ad47c83[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0, 160, address(this.address), block.timestamp, sub_4ad47c83.length, mem[388 len 32 * sub_4ad47c83.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _800 = mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                        require mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32 + 192]
                        _827 = mem[_800 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_800 + 192])] = mem[_800 + 224 len floor32(mem[_800 + 192])]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _827) + ceil32(return_data.size) + 330 len 26]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            38,
                                            0x734379636c655661756c74504e473a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _827) + ceil32(return_data.size) + ceil32(return_data.size) + 331 len 26]
                ('bool', 'ext_call.success')
                emit 0xb6876fe4: ext_call.return_data[0], (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, msg.sender
    stor6 = 1
}

function reinvest() {
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if ext_code.size(msg.sender) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x594379636c655661756c74504e473a2043616c6c6572206973206e6f7420616e20454f,
                    mem[199 len 29]
    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.getReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb18dcb184793be39550c6a055338286de94c755d)
    call 0xb18dcb184793be39550c6a055338286de94c755d.0x9297c530 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb18dcb184793be39550c6a055338286de94c755d)
    call 0xb18dcb184793be39550c6a055338286de94c755d.0xecc6f5b6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 2 * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * ext_call.return_data[0]
        if 0 / 2 * ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0xe97a562f03637b067324eef459fef982bfff28d0)
        call 0xe97a562f03637b067324eef459fef982bfff28d0.HarvestProcessor() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[132] = ext_call.return_data[12 len 20]
        mem[164] = 0 / 2 * ext_call.return_data[0]
        mem[96] = 68
        mem[128 len 4] = unknown_0xa9059cbb(?????)
        mem[196] = 32
        mem[228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, 0 / 2 * ext_call.return_data[0]) >> 32
        mem[352 len 4] = 0
        mem[324 len 0] = 0
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.mem[160 len 4] with:
             gas gas_remaining wei
            args Mask(224, 32, 0 / 2 * ext_call.return_data[0]) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, ext_call.return_data[12 len 20], 0 / 2 * ext_call.return_data[0]
            if not 0, mem[132 len 28]:
                revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            mem[296] = msg.sender
            mem[328] = -0 / 2 * ext_call.return_data[0]
            mem[260] = 68
            mem[292 len 4] = unknown_0xa9059cbb(?????)
            mem[360] = 32
            mem[392] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = 0, msg.sender, Mask(224, 32, -0 / 2 * ext_call.return_data[0]) >> 32
            mem[516 len 4] = 0
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args -0 / 2 * ext_call.return_data[0], 0, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, ext_call.return_data[12 len 20], 0 / 2 * ext_call.return_data[0]
                if not 0, mem[132 len 28]:
                    revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[424] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[428] = ext_call.return_data[0]
                mem[460] = 0
                mem[524] = this.address
                mem[556] = block.timestamp
                mem[492] = 160
                mem[588] = sub_8796fba7.length
                if not sub_8796fba7.length:
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 424
                    require return_data.size >= 32
                    _4066 = mem[424 len 4], ext_call.return_data[0 len 28]
                    require mem[424 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[424 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424] <= 4294967296 and mem[424 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 424] = mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424]
                    mem[ceil32(return_data.size) + 456 len floor32(mem[_4066 + 424])] = mem[_4066 + 456 len floor32(mem[_4066 + 424])]
                else:
                    mem[0] = 8
                    mem[620] = address(sub_8796fba7.field_0)
                    idx = 620
                    s = 0
                    while (32 * sub_8796fba7.length) + 620 > idx + 32:
                        mem[idx + 32] = sub_8796fba7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[620 len 32 * sub_8796fba7.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 424
                    require return_data.size >= 32
                    _5069 = mem[424 len 4], ext_call.return_data[0 len 28]
                    require mem[424 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[424 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424] <= 4294967296 and mem[424 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 424] = mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424]
                    mem[ceil32(return_data.size) + 456 len floor32(mem[_5069 + 424])] = mem[_5069 + 456 len floor32(mem[_5069 + 424])]
                require 1 < mem[ceil32(return_data.size) + 424]
                require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 488]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Reinvest(mem[ceil32(return_data.size) + 488], msg.sender);
            else:
                mem[424] = return_data.size
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 461] = 0
                    mem[ceil32(return_data.size) + 525] = this.address
                    mem[ceil32(return_data.size) + 557] = block.timestamp
                    mem[ceil32(return_data.size) + 493] = 160
                    mem[ceil32(return_data.size) + 589] = sub_8796fba7.length
                    if not sub_8796fba7.length:
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                        require return_data.size >= 32
                        _3943 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_3943 + ceil32(return_data.size) + 425])] = mem[_3943 + ceil32(return_data.size) + 457 len floor32(mem[_3943 + ceil32(return_data.size) + 425])]
                    else:
                        mem[0] = 8
                        mem[ceil32(return_data.size) + 621] = address(sub_8796fba7.field_0)
                        idx = ceil32(return_data.size) + 621
                        s = 0
                        while ceil32(return_data.size) + (32 * sub_8796fba7.length) + 621 > idx + 32:
                            mem[idx + 32] = sub_8796fba7[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[ceil32(return_data.size) + 621 len 32 * sub_8796fba7.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                        require return_data.size >= 32
                        _5071 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_5071 + ceil32(return_data.size) + 425])] = mem[_5071 + ceil32(return_data.size) + 457 len floor32(mem[_5071 + ceil32(return_data.size) + 425])]
                else:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 461] = 0
                    mem[ceil32(return_data.size) + 525] = this.address
                    mem[ceil32(return_data.size) + 557] = block.timestamp
                    mem[ceil32(return_data.size) + 493] = 160
                    mem[ceil32(return_data.size) + 589] = sub_8796fba7.length
                    if not sub_8796fba7.length:
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                        require return_data.size >= 32
                        _4069 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_4069 + ceil32(return_data.size) + 425])] = mem[_4069 + ceil32(return_data.size) + 457 len floor32(mem[_4069 + ceil32(return_data.size) + 425])]
                    else:
                        mem[0] = 8
                        mem[ceil32(return_data.size) + 621] = address(sub_8796fba7.field_0)
                        idx = ceil32(return_data.size) + 621
                        s = 0
                        while ceil32(return_data.size) + (32 * sub_8796fba7.length) + 621 > idx + 32:
                            mem[idx + 32] = sub_8796fba7[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[ceil32(return_data.size) + 621 len 32 * sub_8796fba7.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                        require return_data.size >= 32
                        _5073 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_5073 + ceil32(return_data.size) + 425])] = mem[_5073 + ceil32(return_data.size) + 457 len floor32(mem[_5073 + ceil32(return_data.size) + 425])]
                require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 425]
                require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + ceil32(return_data.size) + 489]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Reinvest(mem[ceil32(return_data.size) + ceil32(return_data.size) + 489], msg.sender);
        else:
            mem[260] = return_data.size
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                mem[ceil32(return_data.size) + 297] = msg.sender
                mem[ceil32(return_data.size) + 329] = -0 / 2 * ext_call.return_data[0]
                mem[ceil32(return_data.size) + 261] = 68
                mem[ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 361] = 32
                mem[ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, Mask(224, 32, -0 / 2 * ext_call.return_data[0]) >> 32
                mem[ceil32(return_data.size) + 517 len 4] = 0
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args -0 / 2 * ext_call.return_data[0], 0, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, ext_call.return_data[12 len 20], 0 / 2 * ext_call.return_data[0]
                    if not 0, mem[132 len 28]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 461] = 0
                    mem[ceil32(return_data.size) + 525] = this.address
                    mem[ceil32(return_data.size) + 557] = block.timestamp
                    mem[ceil32(return_data.size) + 493] = 160
                    mem[ceil32(return_data.size) + 589] = sub_8796fba7.length
                    if not sub_8796fba7.length:
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                        require return_data.size >= 32
                        _4072 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_4072 + ceil32(return_data.size) + 425])] = mem[_4072 + ceil32(return_data.size) + 457 len floor32(mem[_4072 + ceil32(return_data.size) + 425])]
                    else:
                        mem[0] = 8
                        mem[ceil32(return_data.size) + 621] = address(sub_8796fba7.field_0)
                        idx = ceil32(return_data.size) + 621
                        s = 0
                        while ceil32(return_data.size) + (32 * sub_8796fba7.length) + 621 > idx + 32:
                            mem[idx + 32] = sub_8796fba7[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[ceil32(return_data.size) + 621 len 32 * sub_8796fba7.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                        require return_data.size >= 32
                        _5077 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_5077 + ceil32(return_data.size) + 425])] = mem[_5077 + ceil32(return_data.size) + 457 len floor32(mem[_5077 + ceil32(return_data.size) + 425])]
                    require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 425]
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[ceil32(return_data.size) + ceil32(return_data.size) + 489]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Reinvest(mem[ceil32(return_data.size) + ceil32(return_data.size) + 489], msg.sender);
                else:
                    mem[ceil32(return_data.size) + 425] = return_data.size
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size <= 0:
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 462] = 0
                        mem[(2 * ceil32(return_data.size)) + 526] = this.address
                        mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp
                        mem[(2 * ceil32(return_data.size)) + 494] = 160
                        mem[(2 * ceil32(return_data.size)) + 590] = sub_8796fba7.length
                        if not sub_8796fba7.length:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 426
                            require return_data.size >= 32
                            _3951 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                            mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_3951 + (2 * ceil32(return_data.size)) + 426])] = mem[_3951 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_3951 + (2 * ceil32(return_data.size)) + 426])]
                        else:
                            mem[0] = 8
                            mem[(2 * ceil32(return_data.size)) + 622] = address(sub_8796fba7.field_0)
                            idx = (2 * ceil32(return_data.size)) + 622
                            s = 0
                            while (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) + 622 > idx + 32:
                                mem[idx + 32] = sub_8796fba7[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 426
                            require return_data.size >= 32
                            _5079 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                            mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_5079 + (2 * ceil32(return_data.size)) + 426])] = mem[_5079 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_5079 + (2 * ceil32(return_data.size)) + 426])]
                    else:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 462] = 0
                        mem[(2 * ceil32(return_data.size)) + 526] = this.address
                        mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp
                        mem[(2 * ceil32(return_data.size)) + 494] = 160
                        mem[(2 * ceil32(return_data.size)) + 590] = sub_8796fba7.length
                        if not sub_8796fba7.length:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 426
                            require return_data.size >= 32
                            _4075 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                            mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_4075 + (2 * ceil32(return_data.size)) + 426])] = mem[_4075 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_4075 + (2 * ceil32(return_data.size)) + 426])]
                        else:
                            mem[0] = 8
                            mem[(2 * ceil32(return_data.size)) + 622] = address(sub_8796fba7.field_0)
                            idx = (2 * ceil32(return_data.size)) + 622
                            s = 0
                            while (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) + 622 > idx + 32:
                                mem[idx + 32] = sub_8796fba7[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 426
                            require return_data.size >= 32
                            _5081 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                            mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_5081 + (2 * ceil32(return_data.size)) + 426])] = mem[_5081 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_5081 + (2 * ceil32(return_data.size)) + 426])]
                    require 1 < mem[(4 * ceil32(return_data.size)) + 426]
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 490]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Reinvest(mem[(4 * ceil32(return_data.size)) + 490], msg.sender);
            else:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
                mem[ceil32(return_data.size) + 297] = msg.sender
                mem[ceil32(return_data.size) + 329] = -0 / 2 * ext_call.return_data[0]
                mem[ceil32(return_data.size) + 261] = 68
                mem[ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 361] = 32
                mem[ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, Mask(224, 32, -0 / 2 * ext_call.return_data[0]) >> 32
                mem[ceil32(return_data.size) + 517 len 4] = 0
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args -0 / 2 * ext_call.return_data[0], 0, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, ext_call.return_data[12 len 20], 0 / 2 * ext_call.return_data[0]
                    if not 0, mem[132 len 28]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 461] = 0
                    mem[ceil32(return_data.size) + 525] = this.address
                    mem[ceil32(return_data.size) + 557] = block.timestamp
                    mem[ceil32(return_data.size) + 493] = 160
                    mem[ceil32(return_data.size) + 589] = sub_8796fba7.length
                    if not sub_8796fba7.length:
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                        require return_data.size >= 32
                        _4078 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_4078 + ceil32(return_data.size) + 425])] = mem[_4078 + ceil32(return_data.size) + 457 len floor32(mem[_4078 + ceil32(return_data.size) + 425])]
                    else:
                        mem[0] = 8
                        mem[ceil32(return_data.size) + 621] = address(sub_8796fba7.field_0)
                        idx = ceil32(return_data.size) + 621
                        s = 0
                        while ceil32(return_data.size) + (32 * sub_8796fba7.length) + 621 > idx + 32:
                            mem[idx + 32] = sub_8796fba7[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[ceil32(return_data.size) + 621 len 32 * sub_8796fba7.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                        require return_data.size >= 32
                        _5085 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_5085 + ceil32(return_data.size) + 425])] = mem[_5085 + ceil32(return_data.size) + 457 len floor32(mem[_5085 + ceil32(return_data.size) + 425])]
                    require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 425]
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[ceil32(return_data.size) + ceil32(return_data.size) + 489]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Reinvest(mem[ceil32(return_data.size) + ceil32(return_data.size) + 489], msg.sender);
                else:
                    mem[ceil32(return_data.size) + 425] = return_data.size
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size <= 0:
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 462] = 0
                        mem[(2 * ceil32(return_data.size)) + 526] = this.address
                        mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp
                        mem[(2 * ceil32(return_data.size)) + 494] = 160
                        mem[(2 * ceil32(return_data.size)) + 590] = sub_8796fba7.length
                        if not sub_8796fba7.length:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 426
                            require return_data.size >= 32
                            _3959 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                            mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_3959 + (2 * ceil32(return_data.size)) + 426])] = mem[_3959 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_3959 + (2 * ceil32(return_data.size)) + 426])]
                        else:
                            mem[0] = 8
                            mem[(2 * ceil32(return_data.size)) + 622] = address(sub_8796fba7.field_0)
                            idx = (2 * ceil32(return_data.size)) + 622
                            s = 0
                            while (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) + 622 > idx + 32:
                                mem[idx + 32] = sub_8796fba7[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 426
                            require return_data.size >= 32
                            _5087 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                            mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_5087 + (2 * ceil32(return_data.size)) + 426])] = mem[_5087 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_5087 + (2 * ceil32(return_data.size)) + 426])]
                    else:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 462] = 0
                        mem[(2 * ceil32(return_data.size)) + 526] = this.address
                        mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp
                        mem[(2 * ceil32(return_data.size)) + 494] = 160
                        mem[(2 * ceil32(return_data.size)) + 590] = sub_8796fba7.length
                        if not sub_8796fba7.length:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 426
                            require return_data.size >= 32
                            _4081 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                            mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_4081 + (2 * ceil32(return_data.size)) + 426])] = mem[_4081 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_4081 + (2 * ceil32(return_data.size)) + 426])]
                        else:
                            mem[0] = 8
                            mem[(2 * ceil32(return_data.size)) + 622] = address(sub_8796fba7.field_0)
                            idx = (2 * ceil32(return_data.size)) + 622
                            s = 0
                            while (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) + 622 > idx + 32:
                                mem[idx + 32] = sub_8796fba7[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 426
                            require return_data.size >= 32
                            _5089 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                            mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_5089 + (2 * ceil32(return_data.size)) + 426])] = mem[_5089 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_5089 + (2 * ceil32(return_data.size)) + 426])]
                    require 1 < mem[(4 * ceil32(return_data.size)) + 426]
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 490]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Reinvest(mem[(4 * ceil32(return_data.size)) + 490], msg.sender);
    else:
        require ext_call.return_data[0]
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2 * ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000:
            if 2 * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2 * ext_call.return_data[0]
            if 0 / 2 * ext_call.return_data[0] > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(0xe97a562f03637b067324eef459fef982bfff28d0)
            call 0xe97a562f03637b067324eef459fef982bfff28d0.HarvestProcessor() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[132] = ext_call.return_data[12 len 20]
            mem[164] = 0 / 2 * ext_call.return_data[0]
            mem[96] = 68
            mem[128 len 4] = unknown_0xa9059cbb(?????)
            mem[196] = 32
            mem[228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, 0 / 2 * ext_call.return_data[0]) >> 32
            mem[352 len 4] = 0
            mem[324 len 0] = 0
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.mem[160 len 4] with:
                 gas gas_remaining wei
                args Mask(224, 32, 0 / 2 * ext_call.return_data[0]) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, ext_call.return_data[12 len 20], 0 / 2 * ext_call.return_data[0]
                if not 0, mem[132 len 28]:
                    revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                mem[296] = msg.sender
                mem[328] = ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - (0 / 2 * ext_call.return_data[0])
                mem[260] = 68
                mem[292 len 4] = unknown_0xa9059cbb(?????)
                mem[360] = 32
                mem[392] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = 0, msg.sender, Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - (0 / 2 * ext_call.return_data[0])) >> 32
                mem[516 len 4] = 0
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - (0 / 2 * ext_call.return_data[0]), 0, mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, ext_call.return_data[12 len 20], 0 / 2 * ext_call.return_data[0]
                    if not 0, mem[132 len 28]:
                        revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[424] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[428] = ext_call.return_data[0]
                    mem[460] = 0
                    mem[524] = this.address
                    mem[556] = block.timestamp
                    mem[492] = 160
                    mem[588] = sub_8796fba7.length
                    if not sub_8796fba7.length:
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 424
                        require return_data.size >= 32
                        _4042 = mem[424 len 4], ext_call.return_data[0 len 28]
                        require mem[424 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[424 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424] <= 4294967296 and mem[424 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 424] = mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424]
                        mem[ceil32(return_data.size) + 456 len floor32(mem[_4042 + 424])] = mem[_4042 + 456 len floor32(mem[_4042 + 424])]
                    else:
                        mem[0] = 8
                        mem[620] = address(sub_8796fba7.field_0)
                        idx = 620
                        s = 0
                        while (32 * sub_8796fba7.length) + 620 > idx + 32:
                            mem[idx + 32] = sub_8796fba7[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[620 len 32 * sub_8796fba7.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 424
                        require return_data.size >= 32
                        _5037 = mem[424 len 4], ext_call.return_data[0 len 28]
                        require mem[424 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[424 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424] <= 4294967296 and mem[424 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 424] = mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424]
                        mem[ceil32(return_data.size) + 456 len floor32(mem[_5037 + 424])] = mem[_5037 + 456 len floor32(mem[_5037 + 424])]
                    require 1 < mem[ceil32(return_data.size) + 424]
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[ceil32(return_data.size) + 488]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Reinvest(mem[ceil32(return_data.size) + 488], msg.sender);
                else:
                    mem[424] = return_data.size
                    mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 461] = 0
                        mem[ceil32(return_data.size) + 525] = this.address
                        mem[ceil32(return_data.size) + 557] = block.timestamp
                        mem[ceil32(return_data.size) + 493] = 160
                        mem[ceil32(return_data.size) + 589] = sub_8796fba7.length
                        if not sub_8796fba7.length:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                            require return_data.size >= 32
                            _3911 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_3911 + ceil32(return_data.size) + 425])] = mem[_3911 + ceil32(return_data.size) + 457 len floor32(mem[_3911 + ceil32(return_data.size) + 425])]
                        else:
                            mem[0] = 8
                            mem[ceil32(return_data.size) + 621] = address(sub_8796fba7.field_0)
                            idx = ceil32(return_data.size) + 621
                            s = 0
                            while ceil32(return_data.size) + (32 * sub_8796fba7.length) + 621 > idx + 32:
                                mem[idx + 32] = sub_8796fba7[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[ceil32(return_data.size) + 621 len 32 * sub_8796fba7.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                            require return_data.size >= 32
                            _5039 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_5039 + ceil32(return_data.size) + 425])] = mem[_5039 + ceil32(return_data.size) + 457 len floor32(mem[_5039 + ceil32(return_data.size) + 425])]
                    else:
                        require return_data.size >= 32
                        if not mem[456]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 461] = 0
                        mem[ceil32(return_data.size) + 525] = this.address
                        mem[ceil32(return_data.size) + 557] = block.timestamp
                        mem[ceil32(return_data.size) + 493] = 160
                        mem[ceil32(return_data.size) + 589] = sub_8796fba7.length
                        if not sub_8796fba7.length:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                            require return_data.size >= 32
                            _4045 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_4045 + ceil32(return_data.size) + 425])] = mem[_4045 + ceil32(return_data.size) + 457 len floor32(mem[_4045 + ceil32(return_data.size) + 425])]
                        else:
                            mem[0] = 8
                            mem[ceil32(return_data.size) + 621] = address(sub_8796fba7.field_0)
                            idx = ceil32(return_data.size) + 621
                            s = 0
                            while ceil32(return_data.size) + (32 * sub_8796fba7.length) + 621 > idx + 32:
                                mem[idx + 32] = sub_8796fba7[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[ceil32(return_data.size) + 621 len 32 * sub_8796fba7.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                            require return_data.size >= 32
                            _5041 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_5041 + ceil32(return_data.size) + 425])] = mem[_5041 + ceil32(return_data.size) + 457 len floor32(mem[_5041 + ceil32(return_data.size) + 425])]
                    require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 425]
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[ceil32(return_data.size) + ceil32(return_data.size) + 489]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Reinvest(mem[ceil32(return_data.size) + ceil32(return_data.size) + 489], msg.sender);
            else:
                mem[260] = return_data.size
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    mem[ceil32(return_data.size) + 297] = msg.sender
                    mem[ceil32(return_data.size) + 329] = ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - (0 / 2 * ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 261] = 68
                    mem[ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 361] = 32
                    mem[ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 531 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - (0 / 2 * ext_call.return_data[0])) >> 32
                    mem[ceil32(return_data.size) + 517 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - (0 / 2 * ext_call.return_data[0]), 0, mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, ext_call.return_data[12 len 20], 0 / 2 * ext_call.return_data[0]
                        if not 0, mem[132 len 28]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 461] = 0
                        mem[ceil32(return_data.size) + 525] = this.address
                        mem[ceil32(return_data.size) + 557] = block.timestamp
                        mem[ceil32(return_data.size) + 493] = 160
                        mem[ceil32(return_data.size) + 589] = sub_8796fba7.length
                        if not sub_8796fba7.length:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                            require return_data.size >= 32
                            _4048 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_4048 + ceil32(return_data.size) + 425])] = mem[_4048 + ceil32(return_data.size) + 457 len floor32(mem[_4048 + ceil32(return_data.size) + 425])]
                        else:
                            mem[0] = 8
                            mem[ceil32(return_data.size) + 621] = address(sub_8796fba7.field_0)
                            idx = ceil32(return_data.size) + 621
                            s = 0
                            while ceil32(return_data.size) + (32 * sub_8796fba7.length) + 621 > idx + 32:
                                mem[idx + 32] = sub_8796fba7[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[ceil32(return_data.size) + 621 len 32 * sub_8796fba7.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                            require return_data.size >= 32
                            _5045 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_5045 + ceil32(return_data.size) + 425])] = mem[_5045 + ceil32(return_data.size) + 457 len floor32(mem[_5045 + ceil32(return_data.size) + 425])]
                        require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 425]
                        require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                        call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[ceil32(return_data.size) + ceil32(return_data.size) + 489]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Reinvest(mem[ceil32(return_data.size) + ceil32(return_data.size) + 489], msg.sender);
                    else:
                        mem[ceil32(return_data.size) + 425] = return_data.size
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size <= 0:
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 462] = 0
                            mem[(2 * ceil32(return_data.size)) + 526] = this.address
                            mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 494] = 160
                            mem[(2 * ceil32(return_data.size)) + 590] = sub_8796fba7.length
                            if not sub_8796fba7.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 426
                                require return_data.size >= 32
                                _3919 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                                mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_3919 + (2 * ceil32(return_data.size)) + 426])] = mem[_3919 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_3919 + (2 * ceil32(return_data.size)) + 426])]
                            else:
                                mem[0] = 8
                                mem[(2 * ceil32(return_data.size)) + 622] = address(sub_8796fba7.field_0)
                                idx = (2 * ceil32(return_data.size)) + 622
                                s = 0
                                while (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) + 622 > idx + 32:
                                    mem[idx + 32] = sub_8796fba7[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 426
                                require return_data.size >= 32
                                _5047 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                                mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_5047 + (2 * ceil32(return_data.size)) + 426])] = mem[_5047 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_5047 + (2 * ceil32(return_data.size)) + 426])]
                        else:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 462] = 0
                            mem[(2 * ceil32(return_data.size)) + 526] = this.address
                            mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 494] = 160
                            mem[(2 * ceil32(return_data.size)) + 590] = sub_8796fba7.length
                            if not sub_8796fba7.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 426
                                require return_data.size >= 32
                                _4051 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                                mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_4051 + (2 * ceil32(return_data.size)) + 426])] = mem[_4051 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_4051 + (2 * ceil32(return_data.size)) + 426])]
                            else:
                                mem[0] = 8
                                mem[(2 * ceil32(return_data.size)) + 622] = address(sub_8796fba7.field_0)
                                idx = (2 * ceil32(return_data.size)) + 622
                                s = 0
                                while (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) + 622 > idx + 32:
                                    mem[idx + 32] = sub_8796fba7[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 426
                                require return_data.size >= 32
                                _5049 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                                mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_5049 + (2 * ceil32(return_data.size)) + 426])] = mem[_5049 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_5049 + (2 * ceil32(return_data.size)) + 426])]
                        require 1 < mem[(4 * ceil32(return_data.size)) + 426]
                        require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                        call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 490]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Reinvest(mem[(4 * ceil32(return_data.size)) + 490], msg.sender);
                else:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                    mem[ceil32(return_data.size) + 297] = msg.sender
                    mem[ceil32(return_data.size) + 329] = ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - (0 / 2 * ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 261] = 68
                    mem[ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 361] = 32
                    mem[ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 531 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - (0 / 2 * ext_call.return_data[0])) >> 32
                    mem[ceil32(return_data.size) + 517 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - (0 / 2 * ext_call.return_data[0]), 0, mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, ext_call.return_data[12 len 20], 0 / 2 * ext_call.return_data[0]
                        if not 0, mem[132 len 28]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 461] = 0
                        mem[ceil32(return_data.size) + 525] = this.address
                        mem[ceil32(return_data.size) + 557] = block.timestamp
                        mem[ceil32(return_data.size) + 493] = 160
                        mem[ceil32(return_data.size) + 589] = sub_8796fba7.length
                        if not sub_8796fba7.length:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                            require return_data.size >= 32
                            _4054 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_4054 + ceil32(return_data.size) + 425])] = mem[_4054 + ceil32(return_data.size) + 457 len floor32(mem[_4054 + ceil32(return_data.size) + 425])]
                        else:
                            mem[0] = 8
                            mem[ceil32(return_data.size) + 621] = address(sub_8796fba7.field_0)
                            idx = ceil32(return_data.size) + 621
                            s = 0
                            while ceil32(return_data.size) + (32 * sub_8796fba7.length) + 621 > idx + 32:
                                mem[idx + 32] = sub_8796fba7[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[ceil32(return_data.size) + 621 len 32 * sub_8796fba7.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                            require return_data.size >= 32
                            _5053 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_5053 + ceil32(return_data.size) + 425])] = mem[_5053 + ceil32(return_data.size) + 457 len floor32(mem[_5053 + ceil32(return_data.size) + 425])]
                        require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 425]
                        require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                        call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[ceil32(return_data.size) + ceil32(return_data.size) + 489]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Reinvest(mem[ceil32(return_data.size) + ceil32(return_data.size) + 489], msg.sender);
                    else:
                        mem[ceil32(return_data.size) + 425] = return_data.size
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size <= 0:
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 462] = 0
                            mem[(2 * ceil32(return_data.size)) + 526] = this.address
                            mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 494] = 160
                            mem[(2 * ceil32(return_data.size)) + 590] = sub_8796fba7.length
                            if not sub_8796fba7.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 426
                                require return_data.size >= 32
                                _3927 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                                mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_3927 + (2 * ceil32(return_data.size)) + 426])] = mem[_3927 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_3927 + (2 * ceil32(return_data.size)) + 426])]
                            else:
                                mem[0] = 8
                                mem[(2 * ceil32(return_data.size)) + 622] = address(sub_8796fba7.field_0)
                                idx = (2 * ceil32(return_data.size)) + 622
                                s = 0
                                while (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) + 622 > idx + 32:
                                    mem[idx + 32] = sub_8796fba7[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 426
                                require return_data.size >= 32
                                _5055 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                                mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_5055 + (2 * ceil32(return_data.size)) + 426])] = mem[_5055 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_5055 + (2 * ceil32(return_data.size)) + 426])]
                        else:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 462] = 0
                            mem[(2 * ceil32(return_data.size)) + 526] = this.address
                            mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 494] = 160
                            mem[(2 * ceil32(return_data.size)) + 590] = sub_8796fba7.length
                            if not sub_8796fba7.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 426
                                require return_data.size >= 32
                                _4057 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                                mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_4057 + (2 * ceil32(return_data.size)) + 426])] = mem[_4057 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_4057 + (2 * ceil32(return_data.size)) + 426])]
                            else:
                                mem[0] = 8
                                mem[(2 * ceil32(return_data.size)) + 622] = address(sub_8796fba7.field_0)
                                idx = (2 * ceil32(return_data.size)) + 622
                                s = 0
                                while (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) + 622 > idx + 32:
                                    mem[idx + 32] = sub_8796fba7[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 426
                                require return_data.size >= 32
                                _5057 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                                mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_5057 + (2 * ceil32(return_data.size)) + 426])] = mem[_5057 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_5057 + (2 * ceil32(return_data.size)) + 426])]
                        require 1 < mem[(4 * ceil32(return_data.size)) + 426]
                        require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                        call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 490]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Reinvest(mem[(4 * ceil32(return_data.size)) + 490], msg.sender);
        else:
            require (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000
            if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 2 * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2 * ext_call.return_data[0]
            if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0] > (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(0xe97a562f03637b067324eef459fef982bfff28d0)
            call 0xe97a562f03637b067324eef459fef982bfff28d0.HarvestProcessor() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[132] = ext_call.return_data[12 len 20]
            mem[164] = (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0]
            mem[96] = 68
            mem[128 len 4] = unknown_0xa9059cbb(?????)
            mem[196] = 32
            mem[228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) >> 32
            mem[352 len 4] = 0
            mem[324 len 0] = 0
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.mem[160 len 4] with:
                 gas gas_remaining wei
                args Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0]) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                ext_call.return_data[12 len 20],
                                (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0]
                if not 0, mem[132 len 28]:
                    revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                mem[296] = msg.sender
                mem[328] = ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                mem[260] = 68
                mem[292 len 4] = unknown_0xa9059cbb(?????)
                mem[360] = 32
                mem[392] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = 0, msg.sender, Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0])) >> 32
                mem[516 len 4] = 0
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0]), 0, mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    ext_call.return_data[12 len 20],
                                    (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0]
                    if not 0, mem[132 len 28]:
                        revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[424] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[428] = ext_call.return_data[0]
                    mem[460] = 0
                    mem[524] = this.address
                    mem[556] = block.timestamp
                    mem[492] = 160
                    mem[588] = sub_8796fba7.length
                    if not sub_8796fba7.length:
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 424
                        require return_data.size >= 32
                        _4018 = mem[424 len 4], ext_call.return_data[0 len 28]
                        require mem[424 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[424 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424] <= 4294967296 and mem[424 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 424] = mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424]
                        mem[ceil32(return_data.size) + 456 len floor32(mem[_4018 + 424])] = mem[_4018 + 456 len floor32(mem[_4018 + 424])]
                    else:
                        mem[0] = 8
                        mem[620] = address(sub_8796fba7.field_0)
                        idx = 620
                        s = 0
                        while (32 * sub_8796fba7.length) + 620 > idx + 32:
                            mem[idx + 32] = sub_8796fba7[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[620 len 32 * sub_8796fba7.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 424
                        require return_data.size >= 32
                        _5005 = mem[424 len 4], ext_call.return_data[0 len 28]
                        require mem[424 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[424 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424] <= 4294967296 and mem[424 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 424] = mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424]
                        mem[ceil32(return_data.size) + 456 len floor32(mem[_5005 + 424])] = mem[_5005 + 456 len floor32(mem[_5005 + 424])]
                    require 1 < mem[ceil32(return_data.size) + 424]
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[ceil32(return_data.size) + 488]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Reinvest(mem[ceil32(return_data.size) + 488], msg.sender);
                else:
                    mem[424] = return_data.size
                    mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 461] = 0
                        mem[ceil32(return_data.size) + 525] = this.address
                        mem[ceil32(return_data.size) + 557] = block.timestamp
                        mem[ceil32(return_data.size) + 493] = 160
                        mem[ceil32(return_data.size) + 589] = sub_8796fba7.length
                        if not sub_8796fba7.length:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                            require return_data.size >= 32
                            _3879 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_3879 + ceil32(return_data.size) + 425])] = mem[_3879 + ceil32(return_data.size) + 457 len floor32(mem[_3879 + ceil32(return_data.size) + 425])]
                        else:
                            mem[0] = 8
                            mem[ceil32(return_data.size) + 621] = address(sub_8796fba7.field_0)
                            idx = ceil32(return_data.size) + 621
                            s = 0
                            while ceil32(return_data.size) + (32 * sub_8796fba7.length) + 621 > idx + 32:
                                mem[idx + 32] = sub_8796fba7[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[ceil32(return_data.size) + 621 len 32 * sub_8796fba7.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                            require return_data.size >= 32
                            _5007 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_5007 + ceil32(return_data.size) + 425])] = mem[_5007 + ceil32(return_data.size) + 457 len floor32(mem[_5007 + ceil32(return_data.size) + 425])]
                    else:
                        require return_data.size >= 32
                        if not mem[456]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 461] = 0
                        mem[ceil32(return_data.size) + 525] = this.address
                        mem[ceil32(return_data.size) + 557] = block.timestamp
                        mem[ceil32(return_data.size) + 493] = 160
                        mem[ceil32(return_data.size) + 589] = sub_8796fba7.length
                        if not sub_8796fba7.length:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                            require return_data.size >= 32
                            _4021 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_4021 + ceil32(return_data.size) + 425])] = mem[_4021 + ceil32(return_data.size) + 457 len floor32(mem[_4021 + ceil32(return_data.size) + 425])]
                        else:
                            mem[0] = 8
                            mem[ceil32(return_data.size) + 621] = address(sub_8796fba7.field_0)
                            idx = ceil32(return_data.size) + 621
                            s = 0
                            while ceil32(return_data.size) + (32 * sub_8796fba7.length) + 621 > idx + 32:
                                mem[idx + 32] = sub_8796fba7[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[ceil32(return_data.size) + 621 len 32 * sub_8796fba7.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                            require return_data.size >= 32
                            _5009 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_5009 + ceil32(return_data.size) + 425])] = mem[_5009 + ceil32(return_data.size) + 457 len floor32(mem[_5009 + ceil32(return_data.size) + 425])]
                    require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 425]
                    require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                    call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[ceil32(return_data.size) + ceil32(return_data.size) + 489]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Reinvest(mem[ceil32(return_data.size) + ceil32(return_data.size) + 489], msg.sender);
            else:
                mem[260] = return_data.size
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    mem[ceil32(return_data.size) + 297] = msg.sender
                    mem[ceil32(return_data.size) + 329] = ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 261] = 68
                    mem[ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 361] = 32
                    mem[ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 531 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0])) >> 32
                    mem[ceil32(return_data.size) + 517 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0]), 0, mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        ext_call.return_data[12 len 20],
                                        (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0]
                        if not 0, mem[132 len 28]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 461] = 0
                        mem[ceil32(return_data.size) + 525] = this.address
                        mem[ceil32(return_data.size) + 557] = block.timestamp
                        mem[ceil32(return_data.size) + 493] = 160
                        mem[ceil32(return_data.size) + 589] = sub_8796fba7.length
                        if not sub_8796fba7.length:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                            require return_data.size >= 32
                            _4024 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_4024 + ceil32(return_data.size) + 425])] = mem[_4024 + ceil32(return_data.size) + 457 len floor32(mem[_4024 + ceil32(return_data.size) + 425])]
                        else:
                            mem[0] = 8
                            mem[ceil32(return_data.size) + 621] = address(sub_8796fba7.field_0)
                            idx = ceil32(return_data.size) + 621
                            s = 0
                            while ceil32(return_data.size) + (32 * sub_8796fba7.length) + 621 > idx + 32:
                                mem[idx + 32] = sub_8796fba7[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[ceil32(return_data.size) + 621 len 32 * sub_8796fba7.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                            require return_data.size >= 32
                            _5013 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_5013 + ceil32(return_data.size) + 425])] = mem[_5013 + ceil32(return_data.size) + 457 len floor32(mem[_5013 + ceil32(return_data.size) + 425])]
                        require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 425]
                        require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                        call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[ceil32(return_data.size) + ceil32(return_data.size) + 489]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Reinvest(mem[ceil32(return_data.size) + ceil32(return_data.size) + 489], msg.sender);
                    else:
                        mem[ceil32(return_data.size) + 425] = return_data.size
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size <= 0:
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 462] = 0
                            mem[(2 * ceil32(return_data.size)) + 526] = this.address
                            mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 494] = 160
                            mem[(2 * ceil32(return_data.size)) + 590] = sub_8796fba7.length
                            if not sub_8796fba7.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 426
                                require return_data.size >= 32
                                _3887 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                                mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_3887 + (2 * ceil32(return_data.size)) + 426])] = mem[_3887 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_3887 + (2 * ceil32(return_data.size)) + 426])]
                            else:
                                mem[0] = 8
                                mem[(2 * ceil32(return_data.size)) + 622] = address(sub_8796fba7.field_0)
                                idx = (2 * ceil32(return_data.size)) + 622
                                s = 0
                                while (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) + 622 > idx + 32:
                                    mem[idx + 32] = sub_8796fba7[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 426
                                require return_data.size >= 32
                                _5015 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                                mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_5015 + (2 * ceil32(return_data.size)) + 426])] = mem[_5015 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_5015 + (2 * ceil32(return_data.size)) + 426])]
                        else:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 462] = 0
                            mem[(2 * ceil32(return_data.size)) + 526] = this.address
                            mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 494] = 160
                            mem[(2 * ceil32(return_data.size)) + 590] = sub_8796fba7.length
                            if not sub_8796fba7.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 426
                                require return_data.size >= 32
                                _4027 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                                mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_4027 + (2 * ceil32(return_data.size)) + 426])] = mem[_4027 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_4027 + (2 * ceil32(return_data.size)) + 426])]
                            else:
                                mem[0] = 8
                                mem[(2 * ceil32(return_data.size)) + 622] = address(sub_8796fba7.field_0)
                                idx = (2 * ceil32(return_data.size)) + 622
                                s = 0
                                while (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) + 622 > idx + 32:
                                    mem[idx + 32] = sub_8796fba7[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 426
                                require return_data.size >= 32
                                _5017 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                                mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_5017 + (2 * ceil32(return_data.size)) + 426])] = mem[_5017 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_5017 + (2 * ceil32(return_data.size)) + 426])]
                        require 1 < mem[(4 * ceil32(return_data.size)) + 426]
                        require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                        call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 490]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Reinvest(mem[(4 * ceil32(return_data.size)) + 490], msg.sender);
                else:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                    mem[ceil32(return_data.size) + 297] = msg.sender
                    mem[ceil32(return_data.size) + 329] = ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 261] = 68
                    mem[ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 361] = 32
                    mem[ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 531 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0])) >> 32
                    mem[ceil32(return_data.size) + 517 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0]), 0, mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        ext_call.return_data[12 len 20],
                                        (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0]
                        if not 0, mem[132 len 28]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 461] = 0
                        mem[ceil32(return_data.size) + 525] = this.address
                        mem[ceil32(return_data.size) + 557] = block.timestamp
                        mem[ceil32(return_data.size) + 493] = 160
                        mem[ceil32(return_data.size) + 589] = sub_8796fba7.length
                        if not sub_8796fba7.length:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                            require return_data.size >= 32
                            _4030 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_4030 + ceil32(return_data.size) + 425])] = mem[_4030 + ceil32(return_data.size) + 457 len floor32(mem[_4030 + ceil32(return_data.size) + 425])]
                        else:
                            mem[0] = 8
                            mem[ceil32(return_data.size) + 621] = address(sub_8796fba7.field_0)
                            idx = ceil32(return_data.size) + 621
                            s = 0
                            while ceil32(return_data.size) + (32 * sub_8796fba7.length) + 621 > idx + 32:
                                mem[idx + 32] = sub_8796fba7[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[ceil32(return_data.size) + 621 len 32 * sub_8796fba7.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                            require return_data.size >= 32
                            _5021 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 425]
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[_5021 + ceil32(return_data.size) + 425])] = mem[_5021 + ceil32(return_data.size) + 457 len floor32(mem[_5021 + ceil32(return_data.size) + 425])]
                        require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 425]
                        require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                        call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[ceil32(return_data.size) + ceil32(return_data.size) + 489]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Reinvest(mem[ceil32(return_data.size) + ceil32(return_data.size) + 489], msg.sender);
                    else:
                        mem[ceil32(return_data.size) + 425] = return_data.size
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size <= 0:
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 462] = 0
                            mem[(2 * ceil32(return_data.size)) + 526] = this.address
                            mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 494] = 160
                            mem[(2 * ceil32(return_data.size)) + 590] = sub_8796fba7.length
                            if not sub_8796fba7.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 426
                                require return_data.size >= 32
                                _3895 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                                mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_3895 + (2 * ceil32(return_data.size)) + 426])] = mem[_3895 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_3895 + (2 * ceil32(return_data.size)) + 426])]
                            else:
                                mem[0] = 8
                                mem[(2 * ceil32(return_data.size)) + 622] = address(sub_8796fba7.field_0)
                                idx = (2 * ceil32(return_data.size)) + 622
                                s = 0
                                while (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) + 622 > idx + 32:
                                    mem[idx + 32] = sub_8796fba7[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 426
                                require return_data.size >= 32
                                _5023 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                                mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_5023 + (2 * ceil32(return_data.size)) + 426])] = mem[_5023 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_5023 + (2 * ceil32(return_data.size)) + 426])]
                        else:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 462] = 0
                            mem[(2 * ceil32(return_data.size)) + 526] = this.address
                            mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 494] = 160
                            mem[(2 * ceil32(return_data.size)) + 590] = sub_8796fba7.length
                            if not sub_8796fba7.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 426
                                require return_data.size >= 32
                                _4033 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                                mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_4033 + (2 * ceil32(return_data.size)) + 426])] = mem[_4033 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_4033 + (2 * ceil32(return_data.size)) + 426])]
                            else:
                                mem[0] = 8
                                mem[(2 * ceil32(return_data.size)) + 622] = address(sub_8796fba7.field_0)
                                idx = (2 * ceil32(return_data.size)) + 622
                                s = 0
                                while (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) + 622 > idx + 32:
                                    mem[idx + 32] = sub_8796fba7[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_8796fba7.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) + (32 * sub_8796fba7.length) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 426
                                require return_data.size >= 32
                                _5025 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 426] = mem[mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 426]
                                mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[_5025 + (2 * ceil32(return_data.size)) + 426])] = mem[_5025 + (2 * ceil32(return_data.size)) + 458 len floor32(mem[_5025 + (2 * ceil32(return_data.size)) + 426])]
                        require 1 < mem[(4 * ceil32(return_data.size)) + 426]
                        require ext_code.size(0xd49b406a7a29d64e081164f6c3353c599a2eeae9)
                        call 0xd49b406a7a29d64e081164f6c3353c599a2eeae9.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 490]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Reinvest(mem[(4 * ceil32(return_data.size)) + 490], msg.sender);
    stor6 = 1
}



}
