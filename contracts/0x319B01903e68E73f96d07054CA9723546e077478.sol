contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_34aa7217(?)
#  - transfer(address arg1, uint256 arg2)
#
const getToday = uint16(block.timestamp / 24 * 3600)


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 frozen; offset 8
address owner; offset 16
uint256 stor5; offset 8
address feeAccount;
address sub_9ab7f3ccAddress;
array of address admins;
address stor9;
address stor10;
address stor11;
address stor12;
address stor13;
address stor14;
address stor15;
array of uint256 sub_1919c8a9;
array of uint256 sub_4272ee18;
mapping of uint8 stor20;
mapping of uint8 stor21;
mapping of uint32 feeRate;
mapping of uint16 sub_b53e4e02;
mapping of address custodian;
mapping of uint8 stor27;
mapping of uint256 sub_6753c159;
mapping of uint256 sub_249c5e16;
mapping of uint256 reservedBalanceOf;
mapping of uint8 sub_58341313;
uint256 stor32;
uint256 stor33;
mapping of uint256 stor34;
uint256 entitlement;
uint16 stor36;

function reservedBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return reservedBalanceOf[address(arg1)]
}

function frozen() payable {
    return bool(frozen)
}

function name() payable {
    return name[0 len name.length]
}

function admins(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 8
    return admins[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function sub_1919c8a9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 2
    return sub_1919c8a9[arg1]
}

function isSuspended(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor20[address(arg1)])
}

function sub_249c5e16(?) payable {
    require calldata.size - 4 >= 32
    return sub_249c5e16[address(arg1)]
}

function decimals() payable {
    return decimals
}

function sub_4272ee18(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 2
    return sub_4272ee18[arg1]
}

function sub_42c16ed1(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor21[arg1])
}

function sub_58341313(?) payable {
    require calldata.size - 4 >= 32
    require sub_58341313[address(arg1)] <= 3
    return sub_58341313[address(arg1)]
}

function sub_6435d741(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor27[address(arg1)])
}

function feeAccount() payable {
    return feeAccount
}

function sub_6753c159(?) payable {
    require calldata.size - 4 >= 64
    return sub_6753c159[address(arg1)][address(arg2)]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getEntitlement() payable {
    mem[64] = 96
    idx = 0
    while idx < uint16((block.timestamp / 24 * 3600) - stor36):
        if not stor33:
            _19 = mem[64]
            mem[64] = mem[64] + 64
            mem[_19] = 26
            mem[_19 + 32] = 'SafeMath: division by zero'
            if not entitlement:
                _23 = mem[64]
                mem[64] = mem[64] + 64
                mem[_23] = 26
                mem[_23 + 32] = 'SafeMath: division by zero'
            else:
                require entitlement
                if entitlement * stor32 / entitlement != stor32:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _27 = mem[64]
                mem[64] = mem[64] + 64
                mem[_27] = 26
                mem[_27 + 32] = 'SafeMath: division by zero'
        else:
            require stor33
            if stor33 * entitlement / stor33 != entitlement:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _20 = mem[64]
            mem[64] = mem[64] + 64
            mem[_20] = 26
            mem[_20 + 32] = 'SafeMath: division by zero'
            if not entitlement:
                _26 = mem[64]
                mem[64] = mem[64] + 64
                mem[_26] = 26
                mem[_26 + 32] = 'SafeMath: division by zero'
            else:
                require entitlement
                if entitlement * stor32 / entitlement != stor32:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _28 = mem[64]
                mem[64] = mem[64] + 64
                mem[_28] = 26
                mem[_28 + 32] = 'SafeMath: division by zero'
        idx = idx + 1
        continue 
    return entitlement
}

function getFeeRate(address arg1) payable {
    require calldata.size - 4 >= 32
    return feeRate[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_9ab7f3cc(?) payable {
    return sub_9ab7f3ccAddress
}

function sub_b53e4e02(?) payable {
    require calldata.size - 4 >= 32
    return sub_b53e4e02[address(arg1)]
}

function getCustodian(address arg1) payable {
    require calldata.size - 4 >= 32
    return custodian[address(arg1)]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function shutdown() payable {
    if owner != msg.sender:
        revert with 0, 'Only for owner'
    if not frozen:
        revert with 0, 'Only allowed when frozen'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function thaw() payable {
    if stor10 != msg.sender:
        revert with 0, 'Insufficient permissions'
    if not frozen:
        revert with 0, 'Not frozen'
    stor5 = 0
    emit 0x69d18907 
}

function freeze() payable {
    if stor10 != msg.sender:
        revert with 0, 'Insufficient permissions'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    stor5 = 1
    emit Frozen()
}

function sub_89f402c6(?) payable {
    require calldata.size - 4 >= 32
    if stor34[address(arg1)] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor34[address(arg1)]
    return (balanceOf[address(arg1)] / stor34[address(arg1)])
}

function sub_8dbed26e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only for owner'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    sub_9ab7f3ccAddress = arg1
    emit 0xc3d49135: arg1
}

function sub_c7d50a16(?) payable {
    require calldata.size - 4 >= 32
    if frozen:
        revert with 0, 'Not allowed when frozen'
    sub_6753c159[address(msg.sender)][address(arg1)] = 0
    emit 0x649f0a4c: address(msg.sender), msg.sender, address(arg1), 0
}

function setFeeAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only for owner'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    feeAccount = arg1
    emit FeeAccountChanged(arg1);
}

function unreservedBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if reservedBalanceOf[address(arg1)] > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (balanceOf[address(arg1)] - reservedBalanceOf[address(arg1)])
}

function sub_1bc0750c(?) payable {
    require calldata.size - 4 >= 32
    if stor11 != msg.sender:
        revert with 0, 'Insufficient permissions'
    if not stor20[address(arg1)]:
        revert with 0, 'Account is not suspended'
    stor20[address(arg1)] = 0
    emit 0x47ccd5e4: arg1
}

function sub_28b7cd87(?) payable {
    require calldata.size - 4 >= 32
    if arg1 == feeAccount:
        return 0
    if arg1 == sub_9ab7f3ccAddress:
        return 0
    if sub_b53e4e02[address(arg1)] <= 0:
        return 0
    return uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
}

function sub_a69ee28c(?) payable {
    require calldata.size - 4 >= 32
    if stor11 != msg.sender:
        revert with 0, 'Insufficient permissions'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if not stor27[address(arg1)]:
        revert with 0, 'No change approval to revoke'
    stor27[address(arg1)] = 0
    emit 0xdb45c758: arg1
}

function sub_5690ac00(?) payable {
    require calldata.size - 4 >= 64
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if custodian[address(arg1)] != msg.sender:
        revert with 0, 'Only the assigned custodian'
    sub_6753c159[address(arg1)][address(arg2)] = 0
    emit 0x649f0a4c: address(msg.sender), address(arg1), address(arg2), 0
}

function suspend(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor11 != msg.sender:
        revert with 0, 'Insufficient permissions'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    if stor20[address(arg1)]:
        revert with 0, 'Account is already suspended'
    stor20[address(arg1)] = 1
    emit Suspended(arg1);
}

function sub_b085a949(?) payable {
    require calldata.size - 4 >= 64
    if stor15 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Only for owner or assigner'
    if not arg2:
        revert with 0, 'Cannot be zero address'
    require arg1 <= 7
    require arg1 < 8
    admins[arg1] = arg2
    require arg1 <= 7
    emit 0x1e94cb46: arg1 << 248, arg2
}

function setFeeRate(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor11 != msg.sender:
        revert with 0, 'Insufficient permissions'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if stor36 != uint16(block.timestamp / 24 * 3600):
        revert with 0, 'need to collect fees'
    stor32 = arg1
    stor33 = arg2
    emit 0x173e12b9: stor32, stor33
}

function sub_87f17a9c(?) payable {
    require calldata.size - 4 >= 64
    if stor12 != msg.sender:
        revert with 0, 'Insufficient permissions'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    require sub_58341313[address(arg1)] <= 3
    if sub_58341313[address(arg1)]:
        revert with 0, 'Cannot change restriction'
    require arg2 <= 3
    sub_58341313[address(arg1)] = arg2
    emit 0xce311d67: arg1
}

function sub_5c5b3996(?) payable {
    require calldata.size - 4 >= 32
    if stor11 != msg.sender:
        revert with 0, 'Insufficient permissions'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if not custodian[address(arg1)]:
        revert with 0, 'Account has no custodian'
    if stor27[address(arg1)]:
        revert with 0, 'Change is already approved'
    stor27[address(arg1)] = 1
    emit 0xac93ff64: arg1
}

function sub_bbca49e2(?) payable {
    if not custodian[address(msg.sender)]:
        revert with 0, 'Account has no custodian'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if custodian[address(msg.sender)]:
        if not stor27[address(msg.sender)]:
            revert with 0, 'Custodian change not approved'
    stor27[address(msg.sender)] = 0
    custodian[address(msg.sender)] = 0
    emit 0xcf494b4e: msg.sender
}

function sub_bc13502f(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Cannot be zero address'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if custodian[address(msg.sender)]:
        if not stor27[address(msg.sender)]:
            revert with 0, 'Custodian change not approved'
    stor27[address(msg.sender)] = 0
    custodian[address(msg.sender)] = arg1
    emit 0x5dda51db: msg.sender, arg1
}

function approveTransfer(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if custodian[address(arg1)] != msg.sender:
        revert with 0, 'Only the assigned custodian'
    if not arg3:
        revert with 0, 'Transfer value cannot be zero'
    sub_6753c159[address(arg1)][address(arg2)] = arg3
    emit 0x649f0a4c: address(msg.sender), address(arg1), address(arg2), arg3
}

function release(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if admins.length != msg.sender:
        revert with 0, 'Insufficient permissions'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if stor20[address(arg1)]:
        revert with 0, 'A suspended account was involved'
    if arg2 > reservedBalanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    reservedBalanceOf[address(arg1)] -= arg2
    emit Released(arg2, arg1);
}

function releaseAll(address arg1) payable {
    require calldata.size - 4 >= 32
    if admins.length != msg.sender:
        revert with 0, 'Insufficient permissions'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if stor20[address(arg1)]:
        revert with 0, 'A suspended account was involved'
    if reservedBalanceOf[address(arg1)] > reservedBalanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    reservedBalanceOf[address(arg1)] = 0
    emit Released(reservedBalanceOf[address(arg1)], arg1);
}

function usableBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if reservedBalanceOf[address(arg1)] >= sub_249c5e16[address(arg1)]:
        if reservedBalanceOf[address(arg1)] > balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (balanceOf[address(arg1)] - reservedBalanceOf[address(arg1)])
    if sub_249c5e16[address(arg1)] > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (balanceOf[address(arg1)] - sub_249c5e16[address(arg1)])
}

function sub_0307ad9c(?) payable {
    require calldata.size - 4 >= 64
    if stor13 != msg.sender:
        revert with 0, 'Insufficient permissions'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if block.timestamp - 1800 / 24 * 3600 != block.timestamp + 1800 / 24 * 3600:
        revert with 0, 'Not within 30 mins of 12am UTC'
    require arg1 <= 1
    require arg1 < 2
    sub_1919c8a9[arg1] = arg2
    require arg1 <= 1
    require arg1 < 2
    require arg1 <= 1
    emit 0x5f79f310: block.timestamp / 24 * 3600 << 240, arg1 << 248, sub_1919c8a9[arg1]
}

function sub_6f182236(?) payable {
    require calldata.size - 4 >= 64
    if stor14 != msg.sender:
        revert with 0, 'Insufficient permissions'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if block.timestamp - 1800 / 24 * 3600 != block.timestamp + 1800 / 24 * 3600:
        revert with 0, 'Not within 30 mins of 12am UTC'
    require arg1 <= 1
    require arg1 < 2
    sub_4272ee18[arg1] = arg2
    require arg1 <= 1
    require arg1 < 2
    require arg1 <= 1
    emit 0x25e59c85: block.timestamp / 24 * 3600 << 240, arg1 << 248, sub_4272ee18[arg1]
}

function sub_3344a825(?) payable {
    require calldata.size - 4 >= 64
    if stor12 != msg.sender:
        revert with 0, 'Insufficient permissions'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if stor20[address(arg1)]:
        revert with 0, 'A suspended account was involved'
    if arg2 > sub_249c5e16[address(arg1)]:
        revert with 0, 'Insufficient restricted funds'
    if arg2 >= sub_249c5e16[address(arg1)]:
        sub_249c5e16[address(arg1)] = 0
    else:
        if arg2 > sub_249c5e16[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_249c5e16[address(arg1)] -= arg2
}

function sub_f0359114(?) payable {
    require calldata.size - 4 >= 64
    if stor12 != msg.sender:
        revert with 0, 'Insufficient permissions'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if stor20[address(arg1)]:
        revert with 0, 'A suspended account was involved'
    if sub_249c5e16[address(arg1)] > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 > balanceOf[address(arg1)] - sub_249c5e16[address(arg1)]:
        revert with 0, 'Insufficient unrestricted funds'
    if sub_249c5e16[address(arg1)] + arg2 < sub_249c5e16[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_249c5e16[address(arg1)] += arg2
}

function reserve(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor20[address(msg.sender)]:
        revert with 0, 'A suspended account was involved'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if reservedBalanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg1 > balanceOf[address(msg.sender)] - reservedBalanceOf[address(msg.sender)]:
        revert with 0, 'Invalid amount to reserve'
    if reservedBalanceOf[address(msg.sender)] + arg1 < reservedBalanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    reservedBalanceOf[address(msg.sender)] += arg1
    emit Reserved(arg1, msg.sender);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor20[address(msg.sender)]:
        revert with 0, 'A suspended account was involved'
    if stor20[address(arg1)]:
        revert with 0, 'A suspended account was involved'
    if frozen:
        revert with 0, 'Not allowed when frozen'
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor20[address(msg.sender)]:
        revert with 0, 'A suspended account was involved'
    if stor20[address(arg1)]:
        revert with 0, 'A suspended account was involved'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor20[address(msg.sender)]:
        revert with 0, 'A suspended account was involved'
    if stor20[address(arg1)]:
        revert with 0, 'A suspended account was involved'
    if frozen:
        revert with 0, 'Not allowed when frozen'
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function sub_5274e9d8(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if arg1 == feeAccount:
        if sub_b53e4e02[address(arg1)]:
            if stor34[address(arg1)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor34[address(arg1)]
            if bool(stor21[address(arg1)]) != 1:
                if stor34[address(arg1)] > stor34[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
    else:
        if arg1 == sub_9ab7f3ccAddress:
            if sub_b53e4e02[address(arg1)]:
                if stor34[address(arg1)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor34[address(arg1)]
                if bool(stor21[address(arg1)]) != 1:
                    if stor34[address(arg1)] > stor34[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
        else:
            if sub_b53e4e02[address(arg1)] <= 0:
                if sub_b53e4e02[address(arg1)]:
                    if stor34[address(arg1)] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor34[address(arg1)]
                    if bool(stor21[address(arg1)]) != 1:
                        if stor34[address(arg1)] > stor34[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
            else:
                if sub_b53e4e02[address(arg1)]:
                    idx = 0
                    while idx < uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]):
                        if not stor33:
                            _146 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_146] = 26
                            mem[_146 + 32] = 'SafeMath: division by zero'
                            if not stor34[address(arg1)]:
                                _159 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_159] = 26
                                mem[_159 + 32] = 'SafeMath: division by zero'
                            else:
                                require stor34[address(arg1)]
                                if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _166 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_166] = 26
                                mem[_166 + 32] = 'SafeMath: division by zero'
                        else:
                            require stor33
                            if stor33 * stor34[address(arg1)] / stor33 != stor34[address(arg1)]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _150 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_150] = 26
                            mem[_150 + 32] = 'SafeMath: division by zero'
                            if not stor34[address(arg1)]:
                                _165 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_165] = 26
                                mem[_165 + 32] = 'SafeMath: division by zero'
                            else:
                                require stor34[address(arg1)]
                                if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _172 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_172] = 26
                                mem[_172 + 32] = 'SafeMath: division by zero'
                        idx = idx + 1
                        continue 
                    if stor34[address(arg1)] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor34[address(arg1)]
                    if bool(stor21[address(arg1)]) != 1:
                        if stor34[address(arg1)] > stor34[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
    return 0
}

function sub_7c1fbef0(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if stor34[address(arg1)] + arg2 >= uint16(block.timestamp / 24 * 3600):
        revert with 0, 'Fee date was later than today'
    if stor9 != msg.sender:
        revert with 0, 'Insufficient permissions'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    if stor20[address(arg1)]:
        revert with 0, 'A suspended account was involved'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
        if sub_b53e4e02[address(arg1)]:
            if arg2 <= 0:
                emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
            else:
                idx = 0
                while idx < arg2:
                    if not stor33:
                        _346 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_346] = 26
                        mem[_346 + 32] = 'SafeMath: division by zero'
                        if not stor34[address(arg1)]:
                            _373 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_373] = 26
                            mem[_373 + 32] = 'SafeMath: division by zero'
                        else:
                            require stor34[address(arg1)]
                            if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _390 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_390] = 26
                            mem[_390 + 32] = 'SafeMath: division by zero'
                    else:
                        require stor33
                        if stor33 * stor34[address(arg1)] / stor33 != stor34[address(arg1)]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _352 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_352] = 26
                        mem[_352 + 32] = 'SafeMath: division by zero'
                        if not stor34[address(arg1)]:
                            _389 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_389] = 26
                            mem[_389 + 32] = 'SafeMath: division by zero'
                        else:
                            require stor34[address(arg1)]
                            if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _403 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_403] = 26
                            mem[_403 + 32] = 'SafeMath: division by zero'
                    idx = idx + 1
                    continue 
                if stor34[address(arg1)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor34[address(arg1)]
                if bool(stor21[address(arg1)]) != 1:
                    if stor34[address(arg1)] > stor34[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                sub_b53e4e02[address(arg1)] = uint16(sub_b53e4e02[address(arg1)] + arg2)
                if uint16(sub_b53e4e02[address(arg1)] + arg2) > stor36:
                    entitlement = stor34[address(arg1)]
                    stor36 = uint16(sub_b53e4e02[address(arg1)] + arg2)
                emit 0x8397e68a: sub_b53e4e02[address(arg1)] + arg2 << 240, 0, arg1
        else:
            sub_b53e4e02[address(arg1)] = stor36
            stor34[address(arg1)] = entitlement
            if arg2 <= 0:
                emit 0x8397e68a: stor36, 0, arg1
            else:
                idx = 0
                while idx < arg2:
                    if not stor33:
                        _348 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_348] = 26
                        mem[_348 + 32] = 'SafeMath: division by zero'
                        if not entitlement:
                            _374 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_374] = 26
                            mem[_374 + 32] = 'SafeMath: division by zero'
                        else:
                            require entitlement
                            if entitlement * stor32 / entitlement != stor32:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _392 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_392] = 26
                            mem[_392 + 32] = 'SafeMath: division by zero'
                    else:
                        require stor33
                        if stor33 * entitlement / stor33 != entitlement:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _356 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_356] = 26
                        mem[_356 + 32] = 'SafeMath: division by zero'
                        if not entitlement:
                            _391 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_391] = 26
                            mem[_391 + 32] = 'SafeMath: division by zero'
                        else:
                            require entitlement
                            if entitlement * stor32 / entitlement != stor32:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _408 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_408] = 26
                            mem[_408 + 32] = 'SafeMath: division by zero'
                    idx = idx + 1
                    continue 
                mem[0] = arg1
                mem[32] = 0
                _347 = mem[64]
                mem[64] = mem[64] + 64
                mem[_347] = 26
                mem[_347 + 32] = 'SafeMath: division by zero'
                if entitlement <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require entitlement
                mem[0] = arg1
                mem[32] = 21
                if bool(stor21[address(arg1)]) == 1:
                    stor34[address(arg1)] = entitlement
                    sub_b53e4e02[address(arg1)] = uint16(stor36 + arg2)
                    if uint16(stor36 + arg2) > stor36:
                        stor36 = uint16(stor36 + arg2)
                    emit 0x8397e68a: stor36 + arg2 << 240, 0, arg1
                else:
                    _370 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_370] = 30
                    mem[_370 + 32] = 'SafeMath: subtraction overflow'
                    if entitlement > stor34[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not stor34[address(arg1)] - entitlement:
                        stor34[address(arg1)] = entitlement
                        sub_b53e4e02[address(arg1)] = uint16(stor36 + arg2)
                        if uint16(stor36 + arg2) > stor36:
                            stor36 = uint16(stor36 + arg2)
                        emit 0x8397e68a: stor36 + arg2 << 240, 0, arg1
                    else:
                        require stor34[address(arg1)] - entitlement
                        if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) / stor34[address(arg1)] - entitlement != balanceOf[address(arg1)] / entitlement:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > 0:
                            mem[0] = arg1
                            mem[32] = 30
                            _444 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_444] = 30
                            mem[_444 + 32] = 'SafeMath: subtraction overflow'
                            if reservedBalanceOf[address(arg1)] > balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if balanceOf[address(arg1)] - reservedBalanceOf[address(arg1)] >= (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement):
                                if not arg1:
                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not feeAccount:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _479 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_479] = 38
                                mem[_479 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_479 + 70 len 26]
                                    mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                    revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                            else:
                                _459 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_459] = 30
                                mem[_459 + 32] = 'SafeMath: subtraction overflow'
                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[0] = arg1
                                mem[32] = 30
                                reservedBalanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                if not arg1:
                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not feeAccount:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _527 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_527] = 38
                                mem[_527 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_527 + 70 len 26]
                                    mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                    revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                            ('le', ('add', ('mul', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor34', 34))), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35)))), ('mul', -1, ('stor', ('name', 'entitlement', 35)), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))))
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                            if balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) < balanceOf[stor6]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor6] = balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                            emit Transfer(((stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)), arg1, feeAccount);
                            if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) >= sub_249c5e16[address(arg1)]:
                                sub_249c5e16[address(arg1)] = 0
                            else:
                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > sub_249c5e16[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_249c5e16[address(arg1)] = sub_249c5e16[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                        stor34[address(arg1)] = entitlement
                        sub_b53e4e02[address(arg1)] = uint16(stor36 + arg2)
                        if uint16(stor36 + arg2) > stor36:
                            stor36 = uint16(stor36 + arg2)
                        emit 0x8397e68a: stor36 + arg2 << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
}

function collectFee(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'Insufficient permissions'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    if stor20[address(arg1)]:
        revert with 0, 'A suspended account was involved'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if sub_b53e4e02[address(arg1)] <= 0:
        if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
            if sub_b53e4e02[address(arg1)]:
                if uint16((block.timestamp / 24 * 3600) - stor36) <= 0:
                    emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                else:
                    idx = 0
                    while idx < uint16((block.timestamp / 24 * 3600) - stor36):
                        if not stor33:
                            _725 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_725] = 26
                            mem[_725 + 32] = 'SafeMath: division by zero'
                            if not stor34[address(arg1)]:
                                _778 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_778] = 26
                                mem[_778 + 32] = 'SafeMath: division by zero'
                            else:
                                require stor34[address(arg1)]
                                if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _813 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_813] = 26
                                mem[_813 + 32] = 'SafeMath: division by zero'
                        else:
                            require stor33
                            if stor33 * stor34[address(arg1)] / stor33 != stor34[address(arg1)]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _739 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_739] = 26
                            mem[_739 + 32] = 'SafeMath: division by zero'
                            if not stor34[address(arg1)]:
                                _812 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_812] = 26
                                mem[_812 + 32] = 'SafeMath: division by zero'
                            else:
                                require stor34[address(arg1)]
                                if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _842 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_842] = 26
                                mem[_842 + 32] = 'SafeMath: division by zero'
                        idx = idx + 1
                        continue 
                    if stor34[address(arg1)] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor34[address(arg1)]
                    if bool(stor21[address(arg1)]) != 1:
                        if stor34[address(arg1)] > stor34[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                    sub_b53e4e02[address(arg1)] = uint16(sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36)
                    if uint16(sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36) > stor36:
                        entitlement = stor34[address(arg1)]
                        stor36 = uint16(sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36)
                    emit 0x8397e68a: sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36 << 240, 0, arg1
            else:
                sub_b53e4e02[address(arg1)] = stor36
                stor34[address(arg1)] = entitlement
                if uint16((block.timestamp / 24 * 3600) - stor36) <= 0:
                    emit 0x8397e68a: stor36, 0, arg1
                else:
                    idx = 0
                    while idx < uint16((block.timestamp / 24 * 3600) - stor36):
                        if not stor33:
                            _727 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_727] = 26
                            mem[_727 + 32] = 'SafeMath: division by zero'
                            if not entitlement:
                                _779 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_779] = 26
                                mem[_779 + 32] = 'SafeMath: division by zero'
                            else:
                                require entitlement
                                if entitlement * stor32 / entitlement != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _815 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_815] = 26
                                mem[_815 + 32] = 'SafeMath: division by zero'
                        else:
                            require stor33
                            if stor33 * entitlement / stor33 != entitlement:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _743 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_743] = 26
                            mem[_743 + 32] = 'SafeMath: division by zero'
                            if not entitlement:
                                _814 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_814] = 26
                                mem[_814 + 32] = 'SafeMath: division by zero'
                            else:
                                require entitlement
                                if entitlement * stor32 / entitlement != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _847 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_847] = 26
                                mem[_847 + 32] = 'SafeMath: division by zero'
                        idx = idx + 1
                        continue 
                    mem[0] = arg1
                    mem[32] = 0
                    _726 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_726] = 26
                    mem[_726 + 32] = 'SafeMath: division by zero'
                    if entitlement <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require entitlement
                    mem[0] = arg1
                    mem[32] = 21
                    if bool(stor21[address(arg1)]) == 1:
                        stor34[address(arg1)] = entitlement
                        sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                        if uint16(block.timestamp / 24 * 3600) > stor36:
                            stor36 = uint16(block.timestamp / 24 * 3600)
                        emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, arg1
                    else:
                        _773 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_773] = 30
                        mem[_773 + 32] = 'SafeMath: subtraction overflow'
                        if entitlement > stor34[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not stor34[address(arg1)] - entitlement:
                            stor34[address(arg1)] = entitlement
                            sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                            if uint16(block.timestamp / 24 * 3600) > stor36:
                                stor36 = uint16(block.timestamp / 24 * 3600)
                            emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, arg1
                        else:
                            require stor34[address(arg1)] - entitlement
                            if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) / stor34[address(arg1)] - entitlement != balanceOf[address(arg1)] / entitlement:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > 0:
                                mem[0] = arg1
                                mem[32] = 30
                                _919 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_919] = 30
                                mem[_919 + 32] = 'SafeMath: subtraction overflow'
                                if reservedBalanceOf[address(arg1)] > balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(arg1)] - reservedBalanceOf[address(arg1)] >= (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement):
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not feeAccount:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _992 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_992] = 38
                                    mem[_992 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_992 + 70 len 26]
                                        mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                else:
                                    _950 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_950] = 30
                                    mem[_950 + 32] = 'SafeMath: subtraction overflow'
                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[0] = arg1
                                    mem[32] = 30
                                    reservedBalanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not feeAccount:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _1086 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1086] = 38
                                    mem[_1086 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1086 + 70 len 26]
                                        mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                ('le', ('add', ('mul', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor34', 34))), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35)))), ('mul', -1, ('stor', ('name', 'entitlement', 35)), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))))
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                if balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) < balanceOf[stor6]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor6] = balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                emit Transfer(((stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)), arg1, feeAccount);
                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) >= sub_249c5e16[address(arg1)]:
                                    sub_249c5e16[address(arg1)] = 0
                                else:
                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > sub_249c5e16[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_249c5e16[address(arg1)] = sub_249c5e16[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                            stor34[address(arg1)] = entitlement
                            sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                            if uint16(block.timestamp / 24 * 3600) > stor36:
                                stor36 = uint16(block.timestamp / 24 * 3600)
                            emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
    else:
        if arg1 == feeAccount:
            if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
                if sub_b53e4e02[address(arg1)]:
                    emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                else:
                    sub_b53e4e02[address(arg1)] = stor36
                    stor34[address(arg1)] = entitlement
                    emit 0x8397e68a: stor36, 0, arg1
        else:
            if arg1 == sub_9ab7f3ccAddress:
                if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
                    if sub_b53e4e02[address(arg1)]:
                        emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                    else:
                        sub_b53e4e02[address(arg1)] = stor36
                        stor34[address(arg1)] = entitlement
                        emit 0x8397e68a: stor36, 0, arg1
            else:
                if sub_b53e4e02[address(arg1)] <= 0:
                    if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
                        if sub_b53e4e02[address(arg1)]:
                            emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                        else:
                            sub_b53e4e02[address(arg1)] = stor36
                            stor34[address(arg1)] = entitlement
                            emit 0x8397e68a: stor36, 0, arg1
                else:
                    if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
                        if sub_b53e4e02[address(arg1)]:
                            if uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) <= 0:
                                emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                            else:
                                idx = 0
                                while idx < uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]):
                                    if not stor33:
                                        _721 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_721] = 26
                                        mem[_721 + 32] = 'SafeMath: division by zero'
                                        if not stor34[address(arg1)]:
                                            _776 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_776] = 26
                                            mem[_776 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require stor34[address(arg1)]
                                            if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _809 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_809] = 26
                                            mem[_809 + 32] = 'SafeMath: division by zero'
                                    else:
                                        require stor33
                                        if stor33 * stor34[address(arg1)] / stor33 != stor34[address(arg1)]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _731 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_731] = 26
                                        mem[_731 + 32] = 'SafeMath: division by zero'
                                        if not stor34[address(arg1)]:
                                            _808 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_808] = 26
                                            mem[_808 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require stor34[address(arg1)]
                                            if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _832 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_832] = 26
                                            mem[_832 + 32] = 'SafeMath: division by zero'
                                    idx = idx + 1
                                    continue 
                                if stor34[address(arg1)] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor34[address(arg1)]
                                if bool(stor21[address(arg1)]) != 1:
                                    if stor34[address(arg1)] > stor34[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                                if uint16(block.timestamp / 24 * 3600) > stor36:
                                    entitlement = stor34[address(arg1)]
                                    stor36 = uint16(block.timestamp / 24 * 3600)
                                emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, arg1
                        else:
                            sub_b53e4e02[address(arg1)] = stor36
                            stor34[address(arg1)] = entitlement
                            if uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) <= 0:
                                emit 0x8397e68a: stor36, 0, arg1
                            else:
                                idx = 0
                                while idx < uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]):
                                    if not stor33:
                                        _723 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_723] = 26
                                        mem[_723 + 32] = 'SafeMath: division by zero'
                                        if not entitlement:
                                            _777 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_777] = 26
                                            mem[_777 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require entitlement
                                            if entitlement * stor32 / entitlement != stor32:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _811 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_811] = 26
                                            mem[_811 + 32] = 'SafeMath: division by zero'
                                    else:
                                        require stor33
                                        if stor33 * entitlement / stor33 != entitlement:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _735 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_735] = 26
                                        mem[_735 + 32] = 'SafeMath: division by zero'
                                        if not entitlement:
                                            _810 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_810] = 26
                                            mem[_810 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require entitlement
                                            if entitlement * stor32 / entitlement != stor32:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _837 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_837] = 26
                                            mem[_837 + 32] = 'SafeMath: division by zero'
                                    idx = idx + 1
                                    continue 
                                mem[0] = arg1
                                mem[32] = 0
                                _722 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_722] = 26
                                mem[_722 + 32] = 'SafeMath: division by zero'
                                if entitlement <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require entitlement
                                mem[0] = arg1
                                mem[32] = 21
                                if bool(stor21[address(arg1)]) == 1:
                                    stor34[address(arg1)] = entitlement
                                    sub_b53e4e02[address(arg1)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                    if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) > stor36:
                                        stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                    emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, 0, arg1
                                else:
                                    _767 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_767] = 30
                                    mem[_767 + 32] = 'SafeMath: subtraction overflow'
                                    if entitlement > stor34[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not stor34[address(arg1)] - entitlement:
                                        stor34[address(arg1)] = entitlement
                                        sub_b53e4e02[address(arg1)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                        if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) > stor36:
                                            stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                        emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, 0, arg1
                                    else:
                                        require stor34[address(arg1)] - entitlement
                                        if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) / stor34[address(arg1)] - entitlement != balanceOf[address(arg1)] / entitlement:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > 0:
                                            mem[0] = arg1
                                            mem[32] = 30
                                            _913 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_913] = 30
                                            mem[_913 + 32] = 'SafeMath: subtraction overflow'
                                            if reservedBalanceOf[address(arg1)] > balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if balanceOf[address(arg1)] - reservedBalanceOf[address(arg1)] >= (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement):
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                                if not feeAccount:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                                _984 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_984] = 38
                                                mem[_984 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_984 + 70 len 26]
                                                    mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                            else:
                                                _946 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_946] = 30
                                                mem[_946 + 32] = 'SafeMath: subtraction overflow'
                                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                mem[0] = arg1
                                                mem[32] = 30
                                                reservedBalanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                                if not feeAccount:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                                _1074 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1074] = 38
                                                mem[_1074 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1074 + 70 len 26]
                                                    mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                            ('le', ('add', ('mul', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor34', 34))), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35)))), ('mul', -1, ('stor', ('name', 'entitlement', 35)), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))))
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                            if balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) < balanceOf[stor6]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor6] = balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                            emit Transfer(((stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)), arg1, feeAccount);
                                            if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) >= sub_249c5e16[address(arg1)]:
                                                sub_249c5e16[address(arg1)] = 0
                                            else:
                                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > sub_249c5e16[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                sub_249c5e16[address(arg1)] = sub_249c5e16[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                        stor34[address(arg1)] = entitlement
                                        sub_b53e4e02[address(arg1)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                        if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) > stor36:
                                            stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                        emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
}

function sub_6f309497(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only for owner'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    if bool(stor21[address(arg1)]) == 1:
        revert with 0, 'Exemption unchanged'
    if stor20[address(arg1)]:
        revert with 0, 'A suspended account was involved'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if sub_b53e4e02[address(arg1)] <= 0:
        if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
            if sub_b53e4e02[address(arg1)]:
                if uint16((block.timestamp / 24 * 3600) - stor36) <= 0:
                    emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                else:
                    idx = 0
                    while idx < uint16((block.timestamp / 24 * 3600) - stor36):
                        if not stor33:
                            _941 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_941] = 26
                            mem[_941 + 32] = 'SafeMath: division by zero'
                            if not stor34[address(arg1)]:
                                _994 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_994] = 26
                                mem[_994 + 32] = 'SafeMath: division by zero'
                            else:
                                require stor34[address(arg1)]
                                if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1029 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1029] = 26
                                mem[_1029 + 32] = 'SafeMath: division by zero'
                        else:
                            require stor33
                            if stor33 * stor34[address(arg1)] / stor33 != stor34[address(arg1)]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _955 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_955] = 26
                            mem[_955 + 32] = 'SafeMath: division by zero'
                            if not stor34[address(arg1)]:
                                _1028 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1028] = 26
                                mem[_1028 + 32] = 'SafeMath: division by zero'
                            else:
                                require stor34[address(arg1)]
                                if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1058 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1058] = 26
                                mem[_1058 + 32] = 'SafeMath: division by zero'
                        idx = idx + 1
                        continue 
                    if stor34[address(arg1)] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor34[address(arg1)]
                    if bool(stor21[address(arg1)]) != 1:
                        if stor34[address(arg1)] > stor34[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                    sub_b53e4e02[address(arg1)] = uint16(sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36)
                    if uint16(sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36) > stor36:
                        entitlement = stor34[address(arg1)]
                        stor36 = uint16(sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36)
                    emit 0x8397e68a: sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36 << 240, 0, arg1
            else:
                sub_b53e4e02[address(arg1)] = stor36
                stor34[address(arg1)] = entitlement
                if uint16((block.timestamp / 24 * 3600) - stor36) <= 0:
                    emit 0x8397e68a: stor36, 0, arg1
                else:
                    idx = 0
                    while idx < uint16((block.timestamp / 24 * 3600) - stor36):
                        if not stor33:
                            _943 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_943] = 26
                            mem[_943 + 32] = 'SafeMath: division by zero'
                            if not entitlement:
                                _995 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_995] = 26
                                mem[_995 + 32] = 'SafeMath: division by zero'
                            else:
                                require entitlement
                                if entitlement * stor32 / entitlement != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1031 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1031] = 26
                                mem[_1031 + 32] = 'SafeMath: division by zero'
                        else:
                            require stor33
                            if stor33 * entitlement / stor33 != entitlement:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _959 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_959] = 26
                            mem[_959 + 32] = 'SafeMath: division by zero'
                            if not entitlement:
                                _1030 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1030] = 26
                                mem[_1030 + 32] = 'SafeMath: division by zero'
                            else:
                                require entitlement
                                if entitlement * stor32 / entitlement != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1063 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1063] = 26
                                mem[_1063 + 32] = 'SafeMath: division by zero'
                        idx = idx + 1
                        continue 
                    mem[0] = arg1
                    mem[32] = 0
                    _942 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_942] = 26
                    mem[_942 + 32] = 'SafeMath: division by zero'
                    if entitlement <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require entitlement
                    mem[0] = arg1
                    mem[32] = 21
                    if bool(stor21[address(arg1)]) == 1:
                        stor34[address(arg1)] = entitlement
                        sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                        if uint16(block.timestamp / 24 * 3600) > stor36:
                            stor36 = uint16(block.timestamp / 24 * 3600)
                        emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, arg1
                    else:
                        _989 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_989] = 30
                        mem[_989 + 32] = 'SafeMath: subtraction overflow'
                        if entitlement > stor34[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not stor34[address(arg1)] - entitlement:
                            stor34[address(arg1)] = entitlement
                            sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                            if uint16(block.timestamp / 24 * 3600) > stor36:
                                stor36 = uint16(block.timestamp / 24 * 3600)
                            emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, arg1
                        else:
                            require stor34[address(arg1)] - entitlement
                            if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) / stor34[address(arg1)] - entitlement != balanceOf[address(arg1)] / entitlement:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > 0:
                                mem[0] = arg1
                                mem[32] = 30
                                _1162 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1162] = 30
                                mem[_1162 + 32] = 'SafeMath: subtraction overflow'
                                if reservedBalanceOf[address(arg1)] > balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(arg1)] - reservedBalanceOf[address(arg1)] >= (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement):
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not feeAccount:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _1280 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1280] = 38
                                    mem[_1280 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1280 + 70 len 26]
                                        mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                else:
                                    _1238 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1238] = 30
                                    mem[_1238 + 32] = 'SafeMath: subtraction overflow'
                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[0] = arg1
                                    mem[32] = 30
                                    reservedBalanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not feeAccount:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _1374 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1374] = 38
                                    mem[_1374 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1374 + 70 len 26]
                                        mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                ('le', ('add', ('mul', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor34', 34))), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35)))), ('mul', -1, ('stor', ('name', 'entitlement', 35)), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))))
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                if balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) < balanceOf[stor6]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor6] = balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                emit Transfer(((stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)), arg1, feeAccount);
                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) >= sub_249c5e16[address(arg1)]:
                                    sub_249c5e16[address(arg1)] = 0
                                else:
                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > sub_249c5e16[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_249c5e16[address(arg1)] = sub_249c5e16[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                            stor34[address(arg1)] = entitlement
                            sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                            if uint16(block.timestamp / 24 * 3600) > stor36:
                                stor36 = uint16(block.timestamp / 24 * 3600)
                            emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
    else:
        if arg1 == feeAccount:
            if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
                if sub_b53e4e02[address(arg1)]:
                    emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                else:
                    sub_b53e4e02[address(arg1)] = stor36
                    stor34[address(arg1)] = entitlement
                    emit 0x8397e68a: stor36, 0, arg1
        else:
            if arg1 == sub_9ab7f3ccAddress:
                if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
                    if sub_b53e4e02[address(arg1)]:
                        emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                    else:
                        sub_b53e4e02[address(arg1)] = stor36
                        stor34[address(arg1)] = entitlement
                        emit 0x8397e68a: stor36, 0, arg1
            else:
                if sub_b53e4e02[address(arg1)] <= 0:
                    if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
                        if sub_b53e4e02[address(arg1)]:
                            emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                        else:
                            sub_b53e4e02[address(arg1)] = stor36
                            stor34[address(arg1)] = entitlement
                            emit 0x8397e68a: stor36, 0, arg1
                else:
                    if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
                        if sub_b53e4e02[address(arg1)]:
                            if uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) <= 0:
                                emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                            else:
                                idx = 0
                                while idx < uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]):
                                    if not stor33:
                                        _937 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_937] = 26
                                        mem[_937 + 32] = 'SafeMath: division by zero'
                                        if not stor34[address(arg1)]:
                                            _992 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_992] = 26
                                            mem[_992 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require stor34[address(arg1)]
                                            if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1025 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1025] = 26
                                            mem[_1025 + 32] = 'SafeMath: division by zero'
                                    else:
                                        require stor33
                                        if stor33 * stor34[address(arg1)] / stor33 != stor34[address(arg1)]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _947 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_947] = 26
                                        mem[_947 + 32] = 'SafeMath: division by zero'
                                        if not stor34[address(arg1)]:
                                            _1024 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1024] = 26
                                            mem[_1024 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require stor34[address(arg1)]
                                            if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1048 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1048] = 26
                                            mem[_1048 + 32] = 'SafeMath: division by zero'
                                    idx = idx + 1
                                    continue 
                                if stor34[address(arg1)] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor34[address(arg1)]
                                if bool(stor21[address(arg1)]) != 1:
                                    if stor34[address(arg1)] > stor34[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                                if uint16(block.timestamp / 24 * 3600) > stor36:
                                    entitlement = stor34[address(arg1)]
                                    stor36 = uint16(block.timestamp / 24 * 3600)
                                emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, arg1
                        else:
                            sub_b53e4e02[address(arg1)] = stor36
                            stor34[address(arg1)] = entitlement
                            if uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) <= 0:
                                emit 0x8397e68a: stor36, 0, arg1
                            else:
                                idx = 0
                                while idx < uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]):
                                    if not stor33:
                                        _939 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_939] = 26
                                        mem[_939 + 32] = 'SafeMath: division by zero'
                                        if not entitlement:
                                            _993 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_993] = 26
                                            mem[_993 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require entitlement
                                            if entitlement * stor32 / entitlement != stor32:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1027 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1027] = 26
                                            mem[_1027 + 32] = 'SafeMath: division by zero'
                                    else:
                                        require stor33
                                        if stor33 * entitlement / stor33 != entitlement:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _951 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_951] = 26
                                        mem[_951 + 32] = 'SafeMath: division by zero'
                                        if not entitlement:
                                            _1026 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1026] = 26
                                            mem[_1026 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require entitlement
                                            if entitlement * stor32 / entitlement != stor32:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1053 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1053] = 26
                                            mem[_1053 + 32] = 'SafeMath: division by zero'
                                    idx = idx + 1
                                    continue 
                                mem[0] = arg1
                                mem[32] = 0
                                _938 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_938] = 26
                                mem[_938 + 32] = 'SafeMath: division by zero'
                                if entitlement <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require entitlement
                                mem[0] = arg1
                                mem[32] = 21
                                if bool(stor21[address(arg1)]) == 1:
                                    stor34[address(arg1)] = entitlement
                                    sub_b53e4e02[address(arg1)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                    if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) > stor36:
                                        stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                    emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, 0, arg1
                                else:
                                    _983 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_983] = 30
                                    mem[_983 + 32] = 'SafeMath: subtraction overflow'
                                    if entitlement > stor34[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not stor34[address(arg1)] - entitlement:
                                        stor34[address(arg1)] = entitlement
                                        sub_b53e4e02[address(arg1)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                        if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) > stor36:
                                            stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                        emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, 0, arg1
                                    else:
                                        require stor34[address(arg1)] - entitlement
                                        if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) / stor34[address(arg1)] - entitlement != balanceOf[address(arg1)] / entitlement:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > 0:
                                            mem[0] = arg1
                                            mem[32] = 30
                                            _1154 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1154] = 30
                                            mem[_1154 + 32] = 'SafeMath: subtraction overflow'
                                            if reservedBalanceOf[address(arg1)] > balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if balanceOf[address(arg1)] - reservedBalanceOf[address(arg1)] >= (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement):
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                                if not feeAccount:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                                _1272 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1272] = 38
                                                mem[_1272 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1272 + 70 len 26]
                                                    mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                            else:
                                                _1234 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1234] = 30
                                                mem[_1234 + 32] = 'SafeMath: subtraction overflow'
                                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                mem[0] = arg1
                                                mem[32] = 30
                                                reservedBalanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                                if not feeAccount:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                                _1362 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1362] = 38
                                                mem[_1362 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1362 + 70 len 26]
                                                    mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                            ('le', ('add', ('mul', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor34', 34))), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35)))), ('mul', -1, ('stor', ('name', 'entitlement', 35)), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))))
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                            if balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) < balanceOf[stor6]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor6] = balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                            emit Transfer(((stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)), arg1, feeAccount);
                                            if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) >= sub_249c5e16[address(arg1)]:
                                                sub_249c5e16[address(arg1)] = 0
                                            else:
                                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > sub_249c5e16[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                sub_249c5e16[address(arg1)] = sub_249c5e16[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                        stor34[address(arg1)] = entitlement
                                        sub_b53e4e02[address(arg1)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                        if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) > stor36:
                                            stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                        emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
    stor21[address(arg1)] = 1
    emit 0x1a86b0a9: arg1
}

function sub_4bfcd2a1(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only for owner'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    if not stor21[address(arg1)]:
        revert with 0, 'Exemption unchanged'
    if stor20[address(arg1)]:
        revert with 0, 'A suspended account was involved'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if sub_b53e4e02[address(arg1)] <= 0:
        if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
            if sub_b53e4e02[address(arg1)]:
                if uint16((block.timestamp / 24 * 3600) - stor36) <= 0:
                    emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                else:
                    idx = 0
                    while idx < uint16((block.timestamp / 24 * 3600) - stor36):
                        if not stor33:
                            _1012 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1012] = 26
                            mem[_1012 + 32] = 'SafeMath: division by zero'
                            if not stor34[address(arg1)]:
                                _1065 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1065] = 26
                                mem[_1065 + 32] = 'SafeMath: division by zero'
                            else:
                                require stor34[address(arg1)]
                                if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1100 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1100] = 26
                                mem[_1100 + 32] = 'SafeMath: division by zero'
                        else:
                            require stor33
                            if stor33 * stor34[address(arg1)] / stor33 != stor34[address(arg1)]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1026 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1026] = 26
                            mem[_1026 + 32] = 'SafeMath: division by zero'
                            if not stor34[address(arg1)]:
                                _1099 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1099] = 26
                                mem[_1099 + 32] = 'SafeMath: division by zero'
                            else:
                                require stor34[address(arg1)]
                                if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1129 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1129] = 26
                                mem[_1129 + 32] = 'SafeMath: division by zero'
                        idx = idx + 1
                        continue 
                    if stor34[address(arg1)] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor34[address(arg1)]
                    if bool(stor21[address(arg1)]) != 1:
                        if stor34[address(arg1)] > stor34[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                    sub_b53e4e02[address(arg1)] = uint16(sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36)
                    if uint16(sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36) > stor36:
                        entitlement = stor34[address(arg1)]
                        stor36 = uint16(sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36)
                    emit 0x8397e68a: sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36 << 240, 0, arg1
            else:
                sub_b53e4e02[address(arg1)] = stor36
                stor34[address(arg1)] = entitlement
                if uint16((block.timestamp / 24 * 3600) - stor36) <= 0:
                    emit 0x8397e68a: stor36, 0, arg1
                else:
                    idx = 0
                    while idx < uint16((block.timestamp / 24 * 3600) - stor36):
                        if not stor33:
                            _1014 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1014] = 26
                            mem[_1014 + 32] = 'SafeMath: division by zero'
                            if not entitlement:
                                _1066 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1066] = 26
                                mem[_1066 + 32] = 'SafeMath: division by zero'
                            else:
                                require entitlement
                                if entitlement * stor32 / entitlement != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1102 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1102] = 26
                                mem[_1102 + 32] = 'SafeMath: division by zero'
                        else:
                            require stor33
                            if stor33 * entitlement / stor33 != entitlement:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1030 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1030] = 26
                            mem[_1030 + 32] = 'SafeMath: division by zero'
                            if not entitlement:
                                _1101 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1101] = 26
                                mem[_1101 + 32] = 'SafeMath: division by zero'
                            else:
                                require entitlement
                                if entitlement * stor32 / entitlement != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1134 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1134] = 26
                                mem[_1134 + 32] = 'SafeMath: division by zero'
                        idx = idx + 1
                        continue 
                    mem[0] = arg1
                    mem[32] = 0
                    _1013 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1013] = 26
                    mem[_1013 + 32] = 'SafeMath: division by zero'
                    if entitlement <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require entitlement
                    mem[0] = arg1
                    mem[32] = 21
                    if bool(stor21[address(arg1)]) == 1:
                        stor34[address(arg1)] = entitlement
                        sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                        if uint16(block.timestamp / 24 * 3600) > stor36:
                            stor36 = uint16(block.timestamp / 24 * 3600)
                        emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, arg1
                    else:
                        _1060 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1060] = 30
                        mem[_1060 + 32] = 'SafeMath: subtraction overflow'
                        if entitlement > stor34[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not stor34[address(arg1)] - entitlement:
                            stor34[address(arg1)] = entitlement
                            sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                            if uint16(block.timestamp / 24 * 3600) > stor36:
                                stor36 = uint16(block.timestamp / 24 * 3600)
                            emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, arg1
                        else:
                            require stor34[address(arg1)] - entitlement
                            if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) / stor34[address(arg1)] - entitlement != balanceOf[address(arg1)] / entitlement:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > 0:
                                mem[0] = arg1
                                mem[32] = 30
                                _1241 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1241] = 30
                                mem[_1241 + 32] = 'SafeMath: subtraction overflow'
                                if reservedBalanceOf[address(arg1)] > balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(arg1)] - reservedBalanceOf[address(arg1)] >= (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement):
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not feeAccount:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _1375 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1375] = 38
                                    mem[_1375 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1375 + 70 len 26]
                                        mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                else:
                                    _1333 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1333] = 30
                                    mem[_1333 + 32] = 'SafeMath: subtraction overflow'
                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[0] = arg1
                                    mem[32] = 30
                                    reservedBalanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not feeAccount:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _1469 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1469] = 38
                                    mem[_1469 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1469 + 70 len 26]
                                        mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                ('le', ('add', ('mul', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor34', 34))), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35)))), ('mul', -1, ('stor', ('name', 'entitlement', 35)), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))))
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                if balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) < balanceOf[stor6]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor6] = balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                emit Transfer(((stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)), arg1, feeAccount);
                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) >= sub_249c5e16[address(arg1)]:
                                    sub_249c5e16[address(arg1)] = 0
                                else:
                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > sub_249c5e16[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_249c5e16[address(arg1)] = sub_249c5e16[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                            stor34[address(arg1)] = entitlement
                            sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                            if uint16(block.timestamp / 24 * 3600) > stor36:
                                stor36 = uint16(block.timestamp / 24 * 3600)
                            emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
    else:
        if arg1 == feeAccount:
            if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
                if sub_b53e4e02[address(arg1)]:
                    emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                else:
                    sub_b53e4e02[address(arg1)] = stor36
                    stor34[address(arg1)] = entitlement
                    emit 0x8397e68a: stor36, 0, arg1
        else:
            if arg1 == sub_9ab7f3ccAddress:
                if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
                    if sub_b53e4e02[address(arg1)]:
                        emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                    else:
                        sub_b53e4e02[address(arg1)] = stor36
                        stor34[address(arg1)] = entitlement
                        emit 0x8397e68a: stor36, 0, arg1
            else:
                if sub_b53e4e02[address(arg1)] <= 0:
                    if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
                        if sub_b53e4e02[address(arg1)]:
                            emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                        else:
                            sub_b53e4e02[address(arg1)] = stor36
                            stor34[address(arg1)] = entitlement
                            emit 0x8397e68a: stor36, 0, arg1
                else:
                    if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
                        if sub_b53e4e02[address(arg1)]:
                            if uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) <= 0:
                                emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                            else:
                                idx = 0
                                while idx < uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]):
                                    if not stor33:
                                        _1008 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1008] = 26
                                        mem[_1008 + 32] = 'SafeMath: division by zero'
                                        if not stor34[address(arg1)]:
                                            _1063 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1063] = 26
                                            mem[_1063 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require stor34[address(arg1)]
                                            if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1096 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1096] = 26
                                            mem[_1096 + 32] = 'SafeMath: division by zero'
                                    else:
                                        require stor33
                                        if stor33 * stor34[address(arg1)] / stor33 != stor34[address(arg1)]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1018 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1018] = 26
                                        mem[_1018 + 32] = 'SafeMath: division by zero'
                                        if not stor34[address(arg1)]:
                                            _1095 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1095] = 26
                                            mem[_1095 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require stor34[address(arg1)]
                                            if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1119 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1119] = 26
                                            mem[_1119 + 32] = 'SafeMath: division by zero'
                                    idx = idx + 1
                                    continue 
                                if stor34[address(arg1)] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor34[address(arg1)]
                                if bool(stor21[address(arg1)]) != 1:
                                    if stor34[address(arg1)] > stor34[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                                if uint16(block.timestamp / 24 * 3600) > stor36:
                                    entitlement = stor34[address(arg1)]
                                    stor36 = uint16(block.timestamp / 24 * 3600)
                                emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, arg1
                        else:
                            sub_b53e4e02[address(arg1)] = stor36
                            stor34[address(arg1)] = entitlement
                            if uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) <= 0:
                                emit 0x8397e68a: stor36, 0, arg1
                            else:
                                idx = 0
                                while idx < uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]):
                                    if not stor33:
                                        _1010 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1010] = 26
                                        mem[_1010 + 32] = 'SafeMath: division by zero'
                                        if not entitlement:
                                            _1064 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1064] = 26
                                            mem[_1064 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require entitlement
                                            if entitlement * stor32 / entitlement != stor32:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1098 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1098] = 26
                                            mem[_1098 + 32] = 'SafeMath: division by zero'
                                    else:
                                        require stor33
                                        if stor33 * entitlement / stor33 != entitlement:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1022 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1022] = 26
                                        mem[_1022 + 32] = 'SafeMath: division by zero'
                                        if not entitlement:
                                            _1097 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1097] = 26
                                            mem[_1097 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require entitlement
                                            if entitlement * stor32 / entitlement != stor32:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1124 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1124] = 26
                                            mem[_1124 + 32] = 'SafeMath: division by zero'
                                    idx = idx + 1
                                    continue 
                                mem[0] = arg1
                                mem[32] = 0
                                _1009 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1009] = 26
                                mem[_1009 + 32] = 'SafeMath: division by zero'
                                if entitlement <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require entitlement
                                mem[0] = arg1
                                mem[32] = 21
                                if bool(stor21[address(arg1)]) == 1:
                                    stor34[address(arg1)] = entitlement
                                    sub_b53e4e02[address(arg1)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                    if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) > stor36:
                                        stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                    emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, 0, arg1
                                else:
                                    _1054 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1054] = 30
                                    mem[_1054 + 32] = 'SafeMath: subtraction overflow'
                                    if entitlement > stor34[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not stor34[address(arg1)] - entitlement:
                                        stor34[address(arg1)] = entitlement
                                        sub_b53e4e02[address(arg1)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                        if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) > stor36:
                                            stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                        emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, 0, arg1
                                    else:
                                        require stor34[address(arg1)] - entitlement
                                        if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) / stor34[address(arg1)] - entitlement != balanceOf[address(arg1)] / entitlement:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > 0:
                                            mem[0] = arg1
                                            mem[32] = 30
                                            _1233 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1233] = 30
                                            mem[_1233 + 32] = 'SafeMath: subtraction overflow'
                                            if reservedBalanceOf[address(arg1)] > balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if balanceOf[address(arg1)] - reservedBalanceOf[address(arg1)] >= (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement):
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                                if not feeAccount:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                                _1367 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1367] = 38
                                                mem[_1367 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1367 + 70 len 26]
                                                    mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                            else:
                                                _1329 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1329] = 30
                                                mem[_1329 + 32] = 'SafeMath: subtraction overflow'
                                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                mem[0] = arg1
                                                mem[32] = 30
                                                reservedBalanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                                if not feeAccount:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                                _1457 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1457] = 38
                                                mem[_1457 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1457 + 70 len 26]
                                                    mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                            ('le', ('add', ('mul', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor34', 34))), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35)))), ('mul', -1, ('stor', ('name', 'entitlement', 35)), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))))
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                            if balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) < balanceOf[stor6]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor6] = balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                            emit Transfer(((stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)), arg1, feeAccount);
                                            if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) >= sub_249c5e16[address(arg1)]:
                                                sub_249c5e16[address(arg1)] = 0
                                            else:
                                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > sub_249c5e16[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                sub_249c5e16[address(arg1)] = sub_249c5e16[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                        stor34[address(arg1)] = entitlement
                                        sub_b53e4e02[address(arg1)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                        if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) > stor36:
                                            stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                        emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
    stor21[address(arg1)] = 0
    stor21[address(arg1)] = 0
    emit 0x6001c131: arg1
}

function sub_b85e5683(?) payable {
    mem[64] = 96
    if stor20[address(msg.sender)]:
        revert with 0, 'A suspended account was involved'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if sub_b53e4e02[address(msg.sender)] <= 0:
        if sub_b53e4e02[address(msg.sender)] != uint16(block.timestamp / 24 * 3600):
            if sub_b53e4e02[address(msg.sender)]:
                if uint16((block.timestamp / 24 * 3600) - stor36) <= 0:
                    emit 0x8397e68a: sub_b53e4e02[address(msg.sender)], 0, msg.sender
                else:
                    idx = 0
                    while idx < uint16((block.timestamp / 24 * 3600) - stor36):
                        if not stor33:
                            _721 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_721] = 26
                            mem[_721 + 32] = 'SafeMath: division by zero'
                            if not stor34[address(msg.sender)]:
                                _774 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_774] = 26
                                mem[_774 + 32] = 'SafeMath: division by zero'
                            else:
                                require stor34[address(msg.sender)]
                                if stor34[address(msg.sender)] * stor32 / stor34[address(msg.sender)] != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _809 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_809] = 26
                                mem[_809 + 32] = 'SafeMath: division by zero'
                        else:
                            require stor33
                            if stor33 * stor34[address(msg.sender)] / stor33 != stor34[address(msg.sender)]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _735 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_735] = 26
                            mem[_735 + 32] = 'SafeMath: division by zero'
                            if not stor34[address(msg.sender)]:
                                _808 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_808] = 26
                                mem[_808 + 32] = 'SafeMath: division by zero'
                            else:
                                require stor34[address(msg.sender)]
                                if stor34[address(msg.sender)] * stor32 / stor34[address(msg.sender)] != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _838 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_838] = 26
                                mem[_838 + 32] = 'SafeMath: division by zero'
                        idx = idx + 1
                        continue 
                    if stor34[address(msg.sender)] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor34[address(msg.sender)]
                    if bool(stor21[address(msg.sender)]) != 1:
                        if stor34[address(msg.sender)] > stor34[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                    sub_b53e4e02[address(msg.sender)] = uint16(sub_b53e4e02[address(msg.sender)] + (block.timestamp / 24 * 3600) - stor36)
                    if uint16(sub_b53e4e02[address(msg.sender)] + (block.timestamp / 24 * 3600) - stor36) > stor36:
                        entitlement = stor34[address(msg.sender)]
                        stor36 = uint16(sub_b53e4e02[address(msg.sender)] + (block.timestamp / 24 * 3600) - stor36)
                    emit 0x8397e68a: sub_b53e4e02[address(msg.sender)] + (block.timestamp / 24 * 3600) - stor36 << 240, 0, msg.sender
            else:
                sub_b53e4e02[address(msg.sender)] = stor36
                stor34[address(msg.sender)] = entitlement
                if uint16((block.timestamp / 24 * 3600) - stor36) <= 0:
                    emit 0x8397e68a: stor36, 0, msg.sender
                else:
                    idx = 0
                    while idx < uint16((block.timestamp / 24 * 3600) - stor36):
                        if not stor33:
                            _723 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_723] = 26
                            mem[_723 + 32] = 'SafeMath: division by zero'
                            if not entitlement:
                                _775 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_775] = 26
                                mem[_775 + 32] = 'SafeMath: division by zero'
                            else:
                                require entitlement
                                if entitlement * stor32 / entitlement != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _811 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_811] = 26
                                mem[_811 + 32] = 'SafeMath: division by zero'
                        else:
                            require stor33
                            if stor33 * entitlement / stor33 != entitlement:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _739 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_739] = 26
                            mem[_739 + 32] = 'SafeMath: division by zero'
                            if not entitlement:
                                _810 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_810] = 26
                                mem[_810 + 32] = 'SafeMath: division by zero'
                            else:
                                require entitlement
                                if entitlement * stor32 / entitlement != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _843 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_843] = 26
                                mem[_843 + 32] = 'SafeMath: division by zero'
                        idx = idx + 1
                        continue 
                    mem[0] = msg.sender
                    mem[32] = 0
                    _722 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_722] = 26
                    mem[_722 + 32] = 'SafeMath: division by zero'
                    if entitlement <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require entitlement
                    mem[0] = msg.sender
                    mem[32] = 21
                    if bool(stor21[address(msg.sender)]) == 1:
                        stor34[address(msg.sender)] = entitlement
                        sub_b53e4e02[address(msg.sender)] = uint16(block.timestamp / 24 * 3600)
                        if uint16(block.timestamp / 24 * 3600) > stor36:
                            stor36 = uint16(block.timestamp / 24 * 3600)
                        emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, msg.sender
                    else:
                        _769 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_769] = 30
                        mem[_769 + 32] = 'SafeMath: subtraction overflow'
                        if entitlement > stor34[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not stor34[address(msg.sender)] - entitlement:
                            stor34[address(msg.sender)] = entitlement
                            sub_b53e4e02[address(msg.sender)] = uint16(block.timestamp / 24 * 3600)
                            if uint16(block.timestamp / 24 * 3600) > stor36:
                                stor36 = uint16(block.timestamp / 24 * 3600)
                            emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, msg.sender
                        else:
                            require stor34[address(msg.sender)] - entitlement
                            if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) / stor34[address(msg.sender)] - entitlement != balanceOf[address(msg.sender)] / entitlement:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) > 0:
                                mem[0] = msg.sender
                                mem[32] = 30
                                _915 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_915] = 30
                                mem[_915 + 32] = 'SafeMath: subtraction overflow'
                                if reservedBalanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(msg.sender)] - reservedBalanceOf[address(msg.sender)] >= (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement):
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not feeAccount:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _988 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_988] = 38
                                    mem[_988 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) > balanceOf[address(msg.sender)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_988 + 70 len 26]
                                        mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                else:
                                    _946 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_946] = 30
                                    mem[_946 + 32] = 'SafeMath: subtraction overflow'
                                    if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 30
                                    reservedBalanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) + (entitlement * balanceOf[address(msg.sender)] / entitlement)
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not feeAccount:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _1082 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1082] = 38
                                    mem[_1082 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) > balanceOf[address(msg.sender)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1082 + 70 len 26]
                                        mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                ('le', ('add', ('mul', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor34', 34))), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35)))), ('mul', -1, ('stor', ('name', 'entitlement', 35)), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35))))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) + (entitlement * balanceOf[address(msg.sender)] / entitlement)
                                if balanceOf[stor6] + (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) < balanceOf[stor6]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor6] = balanceOf[stor6] + (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement)
                                emit Transfer(((stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement)), msg.sender, feeAccount);
                                if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) >= sub_249c5e16[address(msg.sender)]:
                                    sub_249c5e16[address(msg.sender)] = 0
                                else:
                                    if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) > sub_249c5e16[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_249c5e16[address(msg.sender)] = sub_249c5e16[address(msg.sender)] - (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) + (entitlement * balanceOf[address(msg.sender)] / entitlement)
                            stor34[address(msg.sender)] = entitlement
                            sub_b53e4e02[address(msg.sender)] = uint16(block.timestamp / 24 * 3600)
                            if uint16(block.timestamp / 24 * 3600) > stor36:
                                stor36 = uint16(block.timestamp / 24 * 3600)
                            emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement), msg.sender
    else:
        if msg.sender == feeAccount:
            if sub_b53e4e02[address(msg.sender)] != uint16(block.timestamp / 24 * 3600):
                if sub_b53e4e02[address(msg.sender)]:
                    emit 0x8397e68a: sub_b53e4e02[address(msg.sender)], 0, msg.sender
                else:
                    sub_b53e4e02[address(msg.sender)] = stor36
                    stor34[address(msg.sender)] = entitlement
                    emit 0x8397e68a: stor36, 0, msg.sender
        else:
            if msg.sender == sub_9ab7f3ccAddress:
                if sub_b53e4e02[address(msg.sender)] != uint16(block.timestamp / 24 * 3600):
                    if sub_b53e4e02[address(msg.sender)]:
                        emit 0x8397e68a: sub_b53e4e02[address(msg.sender)], 0, msg.sender
                    else:
                        sub_b53e4e02[address(msg.sender)] = stor36
                        stor34[address(msg.sender)] = entitlement
                        emit 0x8397e68a: stor36, 0, msg.sender
            else:
                if sub_b53e4e02[address(msg.sender)] <= 0:
                    if sub_b53e4e02[address(msg.sender)] != uint16(block.timestamp / 24 * 3600):
                        if sub_b53e4e02[address(msg.sender)]:
                            emit 0x8397e68a: sub_b53e4e02[address(msg.sender)], 0, msg.sender
                        else:
                            sub_b53e4e02[address(msg.sender)] = stor36
                            stor34[address(msg.sender)] = entitlement
                            emit 0x8397e68a: stor36, 0, msg.sender
                else:
                    if sub_b53e4e02[address(msg.sender)] != uint16(block.timestamp / 24 * 3600):
                        if sub_b53e4e02[address(msg.sender)]:
                            if uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)]) <= 0:
                                emit 0x8397e68a: sub_b53e4e02[address(msg.sender)], 0, msg.sender
                            else:
                                idx = 0
                                while idx < uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)]):
                                    if not stor33:
                                        _717 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_717] = 26
                                        mem[_717 + 32] = 'SafeMath: division by zero'
                                        if not stor34[address(msg.sender)]:
                                            _772 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_772] = 26
                                            mem[_772 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require stor34[address(msg.sender)]
                                            if stor34[address(msg.sender)] * stor32 / stor34[address(msg.sender)] != stor32:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _805 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_805] = 26
                                            mem[_805 + 32] = 'SafeMath: division by zero'
                                    else:
                                        require stor33
                                        if stor33 * stor34[address(msg.sender)] / stor33 != stor34[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _727 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_727] = 26
                                        mem[_727 + 32] = 'SafeMath: division by zero'
                                        if not stor34[address(msg.sender)]:
                                            _804 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_804] = 26
                                            mem[_804 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require stor34[address(msg.sender)]
                                            if stor34[address(msg.sender)] * stor32 / stor34[address(msg.sender)] != stor32:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _828 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_828] = 26
                                            mem[_828 + 32] = 'SafeMath: division by zero'
                                    idx = idx + 1
                                    continue 
                                if stor34[address(msg.sender)] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor34[address(msg.sender)]
                                if bool(stor21[address(msg.sender)]) != 1:
                                    if stor34[address(msg.sender)] > stor34[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                sub_b53e4e02[address(msg.sender)] = uint16(block.timestamp / 24 * 3600)
                                if uint16(block.timestamp / 24 * 3600) > stor36:
                                    entitlement = stor34[address(msg.sender)]
                                    stor36 = uint16(block.timestamp / 24 * 3600)
                                emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, msg.sender
                        else:
                            sub_b53e4e02[address(msg.sender)] = stor36
                            stor34[address(msg.sender)] = entitlement
                            if uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)]) <= 0:
                                emit 0x8397e68a: stor36, 0, msg.sender
                            else:
                                idx = 0
                                while idx < uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)]):
                                    if not stor33:
                                        _719 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_719] = 26
                                        mem[_719 + 32] = 'SafeMath: division by zero'
                                        if not entitlement:
                                            _773 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_773] = 26
                                            mem[_773 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require entitlement
                                            if entitlement * stor32 / entitlement != stor32:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _807 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_807] = 26
                                            mem[_807 + 32] = 'SafeMath: division by zero'
                                    else:
                                        require stor33
                                        if stor33 * entitlement / stor33 != entitlement:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _731 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_731] = 26
                                        mem[_731 + 32] = 'SafeMath: division by zero'
                                        if not entitlement:
                                            _806 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_806] = 26
                                            mem[_806 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require entitlement
                                            if entitlement * stor32 / entitlement != stor32:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _833 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_833] = 26
                                            mem[_833 + 32] = 'SafeMath: division by zero'
                                    idx = idx + 1
                                    continue 
                                mem[0] = msg.sender
                                mem[32] = 0
                                _718 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_718] = 26
                                mem[_718 + 32] = 'SafeMath: division by zero'
                                if entitlement <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require entitlement
                                mem[0] = msg.sender
                                mem[32] = 21
                                if bool(stor21[address(msg.sender)]) == 1:
                                    stor34[address(msg.sender)] = entitlement
                                    sub_b53e4e02[address(msg.sender)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)])
                                    if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)]) > stor36:
                                        stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)])
                                    emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)] << 240, 0, msg.sender
                                else:
                                    _763 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_763] = 30
                                    mem[_763 + 32] = 'SafeMath: subtraction overflow'
                                    if entitlement > stor34[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not stor34[address(msg.sender)] - entitlement:
                                        stor34[address(msg.sender)] = entitlement
                                        sub_b53e4e02[address(msg.sender)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)])
                                        if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)]) > stor36:
                                            stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)])
                                        emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)] << 240, 0, msg.sender
                                    else:
                                        require stor34[address(msg.sender)] - entitlement
                                        if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) / stor34[address(msg.sender)] - entitlement != balanceOf[address(msg.sender)] / entitlement:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) > 0:
                                            mem[0] = msg.sender
                                            mem[32] = 30
                                            _909 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_909] = 30
                                            mem[_909 + 32] = 'SafeMath: subtraction overflow'
                                            if reservedBalanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if balanceOf[address(msg.sender)] - reservedBalanceOf[address(msg.sender)] >= (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement):
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                                if not feeAccount:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                                _980 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_980] = 38
                                                mem[_980 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) > balanceOf[address(msg.sender)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_980 + 70 len 26]
                                                    mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                            else:
                                                _942 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_942] = 30
                                                mem[_942 + 32] = 'SafeMath: subtraction overflow'
                                                if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                mem[0] = msg.sender
                                                mem[32] = 30
                                                reservedBalanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) + (entitlement * balanceOf[address(msg.sender)] / entitlement)
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                                if not feeAccount:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                                _1070 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1070] = 38
                                                mem[_1070 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) > balanceOf[address(msg.sender)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_1070 + 70 len 26]
                                                    mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                            ('le', ('add', ('mul', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor34', 34))), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35)))), ('mul', -1, ('stor', ('name', 'entitlement', 35)), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35))))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) + (entitlement * balanceOf[address(msg.sender)] / entitlement)
                                            if balanceOf[stor6] + (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) < balanceOf[stor6]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor6] = balanceOf[stor6] + (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement)
                                            emit Transfer(((stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement)), msg.sender, feeAccount);
                                            if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) >= sub_249c5e16[address(msg.sender)]:
                                                sub_249c5e16[address(msg.sender)] = 0
                                            else:
                                                if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) > sub_249c5e16[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                sub_249c5e16[address(msg.sender)] = sub_249c5e16[address(msg.sender)] - (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) + (entitlement * balanceOf[address(msg.sender)] / entitlement)
                                        stor34[address(msg.sender)] = entitlement
                                        sub_b53e4e02[address(msg.sender)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)])
                                        if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)]) > stor36:
                                            stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)])
                                        emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)] << 240, (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement), msg.sender
}

function sub_916ca9e6(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor20[address(msg.sender)]:
        revert with 0, 'A suspended account was involved'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if sub_b53e4e02[address(msg.sender)] <= 0:
        if sub_b53e4e02[address(msg.sender)] != uint16(block.timestamp / 24 * 3600):
            if sub_b53e4e02[address(msg.sender)]:
                if uint16((block.timestamp / 24 * 3600) - stor36) <= 0:
                    emit 0x8397e68a: sub_b53e4e02[address(msg.sender)], 0, msg.sender
                else:
                    idx = 0
                    while idx < uint16((block.timestamp / 24 * 3600) - stor36):
                        if not stor33:
                            _2414 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2414] = 26
                            mem[_2414 + 32] = 'SafeMath: division by zero'
                            if not stor34[address(msg.sender)]:
                                _2467 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2467] = 26
                                mem[_2467 + 32] = 'SafeMath: division by zero'
                            else:
                                require stor34[address(msg.sender)]
                                if stor34[address(msg.sender)] * stor32 / stor34[address(msg.sender)] != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _2502 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2502] = 26
                                mem[_2502 + 32] = 'SafeMath: division by zero'
                        else:
                            require stor33
                            if stor33 * stor34[address(msg.sender)] / stor33 != stor34[address(msg.sender)]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _2428 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2428] = 26
                            mem[_2428 + 32] = 'SafeMath: division by zero'
                            if not stor34[address(msg.sender)]:
                                _2501 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2501] = 26
                                mem[_2501 + 32] = 'SafeMath: division by zero'
                            else:
                                require stor34[address(msg.sender)]
                                if stor34[address(msg.sender)] * stor32 / stor34[address(msg.sender)] != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _2531 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2531] = 26
                                mem[_2531 + 32] = 'SafeMath: division by zero'
                        idx = idx + 1
                        continue 
                    if stor34[address(msg.sender)] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor34[address(msg.sender)]
                    if bool(stor21[address(msg.sender)]) != 1:
                        if stor34[address(msg.sender)] > stor34[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                    sub_b53e4e02[address(msg.sender)] = uint16(sub_b53e4e02[address(msg.sender)] + (block.timestamp / 24 * 3600) - stor36)
                    if uint16(sub_b53e4e02[address(msg.sender)] + (block.timestamp / 24 * 3600) - stor36) > stor36:
                        entitlement = stor34[address(msg.sender)]
                        stor36 = uint16(sub_b53e4e02[address(msg.sender)] + (block.timestamp / 24 * 3600) - stor36)
                    emit 0x8397e68a: sub_b53e4e02[address(msg.sender)] + (block.timestamp / 24 * 3600) - stor36 << 240, 0, msg.sender
            else:
                sub_b53e4e02[address(msg.sender)] = stor36
                stor34[address(msg.sender)] = entitlement
                if uint16((block.timestamp / 24 * 3600) - stor36) <= 0:
                    emit 0x8397e68a: stor36, 0, msg.sender
                else:
                    idx = 0
                    while idx < uint16((block.timestamp / 24 * 3600) - stor36):
                        if not stor33:
                            _2416 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2416] = 26
                            mem[_2416 + 32] = 'SafeMath: division by zero'
                            if not entitlement:
                                _2468 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2468] = 26
                                mem[_2468 + 32] = 'SafeMath: division by zero'
                            else:
                                require entitlement
                                if entitlement * stor32 / entitlement != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _2504 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2504] = 26
                                mem[_2504 + 32] = 'SafeMath: division by zero'
                        else:
                            require stor33
                            if stor33 * entitlement / stor33 != entitlement:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _2432 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2432] = 26
                            mem[_2432 + 32] = 'SafeMath: division by zero'
                            if not entitlement:
                                _2503 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2503] = 26
                                mem[_2503 + 32] = 'SafeMath: division by zero'
                            else:
                                require entitlement
                                if entitlement * stor32 / entitlement != stor32:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _2536 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2536] = 26
                                mem[_2536 + 32] = 'SafeMath: division by zero'
                        idx = idx + 1
                        continue 
                    mem[0] = msg.sender
                    mem[32] = 0
                    _2415 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2415] = 26
                    mem[_2415 + 32] = 'SafeMath: division by zero'
                    if entitlement <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require entitlement
                    mem[0] = msg.sender
                    mem[32] = 21
                    if bool(stor21[address(msg.sender)]) == 1:
                        stor34[address(msg.sender)] = entitlement
                        sub_b53e4e02[address(msg.sender)] = uint16(block.timestamp / 24 * 3600)
                        if uint16(block.timestamp / 24 * 3600) > stor36:
                            stor36 = uint16(block.timestamp / 24 * 3600)
                        emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, msg.sender
                    else:
                        _2462 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2462] = 30
                        mem[_2462 + 32] = 'SafeMath: subtraction overflow'
                        if entitlement > stor34[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not stor34[address(msg.sender)] - entitlement:
                            stor34[address(msg.sender)] = entitlement
                            sub_b53e4e02[address(msg.sender)] = uint16(block.timestamp / 24 * 3600)
                            if uint16(block.timestamp / 24 * 3600) > stor36:
                                stor36 = uint16(block.timestamp / 24 * 3600)
                            emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, msg.sender
                        else:
                            require stor34[address(msg.sender)] - entitlement
                            if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) / stor34[address(msg.sender)] - entitlement != balanceOf[address(msg.sender)] / entitlement:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) > 0:
                                mem[0] = msg.sender
                                mem[32] = 30
                                _2638 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2638] = 30
                                mem[_2638 + 32] = 'SafeMath: subtraction overflow'
                                if reservedBalanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(msg.sender)] - reservedBalanceOf[address(msg.sender)] >= (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement):
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not feeAccount:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _2816 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_2816] = 38
                                    mem[_2816 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) > balanceOf[address(msg.sender)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2816 + 70 len 26]
                                        mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                else:
                                    _2708 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2708] = 30
                                    mem[_2708 + 32] = 'SafeMath: subtraction overflow'
                                    if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 30
                                    reservedBalanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) + (entitlement * balanceOf[address(msg.sender)] / entitlement)
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not feeAccount:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _3021 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3021] = 38
                                    mem[_3021 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) > balanceOf[address(msg.sender)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3021 + 70 len 26]
                                        mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                        revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                ('le', ('add', ('mul', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor34', 34))), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35)))), ('mul', -1, ('stor', ('name', 'entitlement', 35)), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35))))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) + (entitlement * balanceOf[address(msg.sender)] / entitlement)
                                if balanceOf[stor6] + (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) < balanceOf[stor6]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor6] = balanceOf[stor6] + (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement)
                                emit Transfer(((stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement)), msg.sender, feeAccount);
                                if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) >= sub_249c5e16[address(msg.sender)]:
                                    sub_249c5e16[address(msg.sender)] = 0
                                else:
                                    if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) > sub_249c5e16[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_249c5e16[address(msg.sender)] = sub_249c5e16[address(msg.sender)] - (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) + (entitlement * balanceOf[address(msg.sender)] / entitlement)
                            stor34[address(msg.sender)] = entitlement
                            sub_b53e4e02[address(msg.sender)] = uint16(block.timestamp / 24 * 3600)
                            if uint16(block.timestamp / 24 * 3600) > stor36:
                                stor36 = uint16(block.timestamp / 24 * 3600)
                            emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement), msg.sender
    else:
        if msg.sender == feeAccount:
            if sub_b53e4e02[address(msg.sender)] != uint16(block.timestamp / 24 * 3600):
                if sub_b53e4e02[address(msg.sender)]:
                    emit 0x8397e68a: sub_b53e4e02[address(msg.sender)], 0, msg.sender
                else:
                    sub_b53e4e02[address(msg.sender)] = stor36
                    stor34[address(msg.sender)] = entitlement
                    emit 0x8397e68a: stor36, 0, msg.sender
        else:
            if msg.sender == sub_9ab7f3ccAddress:
                if sub_b53e4e02[address(msg.sender)] != uint16(block.timestamp / 24 * 3600):
                    if sub_b53e4e02[address(msg.sender)]:
                        emit 0x8397e68a: sub_b53e4e02[address(msg.sender)], 0, msg.sender
                    else:
                        sub_b53e4e02[address(msg.sender)] = stor36
                        stor34[address(msg.sender)] = entitlement
                        emit 0x8397e68a: stor36, 0, msg.sender
            else:
                if sub_b53e4e02[address(msg.sender)] <= 0:
                    if sub_b53e4e02[address(msg.sender)] != uint16(block.timestamp / 24 * 3600):
                        if sub_b53e4e02[address(msg.sender)]:
                            emit 0x8397e68a: sub_b53e4e02[address(msg.sender)], 0, msg.sender
                        else:
                            sub_b53e4e02[address(msg.sender)] = stor36
                            stor34[address(msg.sender)] = entitlement
                            emit 0x8397e68a: stor36, 0, msg.sender
                else:
                    if sub_b53e4e02[address(msg.sender)] != uint16(block.timestamp / 24 * 3600):
                        if sub_b53e4e02[address(msg.sender)]:
                            if uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)]) <= 0:
                                emit 0x8397e68a: sub_b53e4e02[address(msg.sender)], 0, msg.sender
                            else:
                                idx = 0
                                while idx < uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)]):
                                    if not stor33:
                                        _2410 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2410] = 26
                                        mem[_2410 + 32] = 'SafeMath: division by zero'
                                        if not stor34[address(msg.sender)]:
                                            _2465 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2465] = 26
                                            mem[_2465 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require stor34[address(msg.sender)]
                                            if stor34[address(msg.sender)] * stor32 / stor34[address(msg.sender)] != stor32:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2498 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2498] = 26
                                            mem[_2498 + 32] = 'SafeMath: division by zero'
                                    else:
                                        require stor33
                                        if stor33 * stor34[address(msg.sender)] / stor33 != stor34[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2420 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2420] = 26
                                        mem[_2420 + 32] = 'SafeMath: division by zero'
                                        if not stor34[address(msg.sender)]:
                                            _2497 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2497] = 26
                                            mem[_2497 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require stor34[address(msg.sender)]
                                            if stor34[address(msg.sender)] * stor32 / stor34[address(msg.sender)] != stor32:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2521 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2521] = 26
                                            mem[_2521 + 32] = 'SafeMath: division by zero'
                                    idx = idx + 1
                                    continue 
                                if stor34[address(msg.sender)] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor34[address(msg.sender)]
                                if bool(stor21[address(msg.sender)]) != 1:
                                    if stor34[address(msg.sender)] > stor34[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                sub_b53e4e02[address(msg.sender)] = uint16(block.timestamp / 24 * 3600)
                                if uint16(block.timestamp / 24 * 3600) > stor36:
                                    entitlement = stor34[address(msg.sender)]
                                    stor36 = uint16(block.timestamp / 24 * 3600)
                                emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, msg.sender
                        else:
                            sub_b53e4e02[address(msg.sender)] = stor36
                            stor34[address(msg.sender)] = entitlement
                            if uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)]) <= 0:
                                emit 0x8397e68a: stor36, 0, msg.sender
                            else:
                                idx = 0
                                while idx < uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)]):
                                    if not stor33:
                                        _2412 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2412] = 26
                                        mem[_2412 + 32] = 'SafeMath: division by zero'
                                        if not entitlement:
                                            _2466 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2466] = 26
                                            mem[_2466 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require entitlement
                                            if entitlement * stor32 / entitlement != stor32:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2500 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2500] = 26
                                            mem[_2500 + 32] = 'SafeMath: division by zero'
                                    else:
                                        require stor33
                                        if stor33 * entitlement / stor33 != entitlement:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2424 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2424] = 26
                                        mem[_2424 + 32] = 'SafeMath: division by zero'
                                        if not entitlement:
                                            _2499 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2499] = 26
                                            mem[_2499 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require entitlement
                                            if entitlement * stor32 / entitlement != stor32:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2526 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2526] = 26
                                            mem[_2526 + 32] = 'SafeMath: division by zero'
                                    idx = idx + 1
                                    continue 
                                mem[0] = msg.sender
                                mem[32] = 0
                                _2411 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2411] = 26
                                mem[_2411 + 32] = 'SafeMath: division by zero'
                                if entitlement <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require entitlement
                                mem[0] = msg.sender
                                mem[32] = 21
                                if bool(stor21[address(msg.sender)]) == 1:
                                    stor34[address(msg.sender)] = entitlement
                                    sub_b53e4e02[address(msg.sender)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)])
                                    if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)]) > stor36:
                                        stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)])
                                    emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)] << 240, 0, msg.sender
                                else:
                                    _2456 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2456] = 30
                                    mem[_2456 + 32] = 'SafeMath: subtraction overflow'
                                    if entitlement > stor34[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not stor34[address(msg.sender)] - entitlement:
                                        stor34[address(msg.sender)] = entitlement
                                        sub_b53e4e02[address(msg.sender)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)])
                                        if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)]) > stor36:
                                            stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)])
                                        emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)] << 240, 0, msg.sender
                                    else:
                                        require stor34[address(msg.sender)] - entitlement
                                        if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) / stor34[address(msg.sender)] - entitlement != balanceOf[address(msg.sender)] / entitlement:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) > 0:
                                            mem[0] = msg.sender
                                            mem[32] = 30
                                            _2628 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2628] = 30
                                            mem[_2628 + 32] = 'SafeMath: subtraction overflow'
                                            if reservedBalanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if balanceOf[address(msg.sender)] - reservedBalanceOf[address(msg.sender)] >= (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement):
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                                if not feeAccount:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                                _2798 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2798] = 38
                                                mem[_2798 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) > balanceOf[address(msg.sender)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2798 + 70 len 26]
                                                    mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                            else:
                                                _2696 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2696] = 30
                                                mem[_2696 + 32] = 'SafeMath: subtraction overflow'
                                                if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                mem[0] = msg.sender
                                                mem[32] = 30
                                                reservedBalanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) + (entitlement * balanceOf[address(msg.sender)] / entitlement)
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                                if not feeAccount:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                                _3003 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_3003] = 38
                                                mem[_3003 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) > balanceOf[address(msg.sender)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 38
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_3003 + 70 len 26]
                                                    mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                            ('le', ('add', ('mul', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor34', 34))), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35)))), ('mul', -1, ('stor', ('name', 'entitlement', 35)), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35))))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) + (entitlement * balanceOf[address(msg.sender)] / entitlement)
                                            if balanceOf[stor6] + (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) < balanceOf[stor6]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[stor6] = balanceOf[stor6] + (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement)
                                            emit Transfer(((stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement)), msg.sender, feeAccount);
                                            if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) >= sub_249c5e16[address(msg.sender)]:
                                                sub_249c5e16[address(msg.sender)] = 0
                                            else:
                                                if (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement) > sub_249c5e16[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                sub_249c5e16[address(msg.sender)] = sub_249c5e16[address(msg.sender)] - (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) + (entitlement * balanceOf[address(msg.sender)] / entitlement)
                                        stor34[address(msg.sender)] = entitlement
                                        sub_b53e4e02[address(msg.sender)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)])
                                        if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)]) > stor36:
                                            stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)])
                                        emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(msg.sender)] << 240, (stor34[address(msg.sender)] * balanceOf[address(msg.sender)] / entitlement) - (entitlement * balanceOf[address(msg.sender)] / entitlement), msg.sender
    if stor20[address(msg.sender)]:
        revert with 0, 'A suspended account was involved'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if reservedBalanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg1 > balanceOf[address(msg.sender)] - reservedBalanceOf[address(msg.sender)]:
        revert with 0, 'Invalid amount to reserve'
    if reservedBalanceOf[address(msg.sender)] + arg1 < reservedBalanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    reservedBalanceOf[address(msg.sender)] += arg1
    emit Reserved(arg1, msg.sender);
}

function mint(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if admins.length != msg.sender:
        revert with 0, 'Insufficient permissions'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if arg1 != sub_9ab7f3ccAddress:
        require sub_58341313[address(arg1)] <= 3
        if sub_58341313[address(arg1)] <= 0:
            revert with 0, 'Restriction must be set'
        if stor20[address(arg1)]:
            revert with 0, 'A suspended account was involved'
        if frozen:
            revert with 0, 'Not allowed when frozen'
        if sub_b53e4e02[address(arg1)] <= 0:
            if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
                if sub_b53e4e02[address(arg1)]:
                    if uint16((block.timestamp / 24 * 3600) - stor36) <= 0:
                        emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                    else:
                        idx = 0
                        while idx < uint16((block.timestamp / 24 * 3600) - stor36):
                            if not stor33:
                                _1732 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1732] = 26
                                mem[_1732 + 32] = 'SafeMath: division by zero'
                                if not stor34[address(arg1)]:
                                    _1785 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1785] = 26
                                    mem[_1785 + 32] = 'SafeMath: division by zero'
                                else:
                                    require stor34[address(arg1)]
                                    if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1820 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1820] = 26
                                    mem[_1820 + 32] = 'SafeMath: division by zero'
                            else:
                                require stor33
                                if stor33 * stor34[address(arg1)] / stor33 != stor34[address(arg1)]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1746 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1746] = 26
                                mem[_1746 + 32] = 'SafeMath: division by zero'
                                if not stor34[address(arg1)]:
                                    _1819 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1819] = 26
                                    mem[_1819 + 32] = 'SafeMath: division by zero'
                                else:
                                    require stor34[address(arg1)]
                                    if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1849 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1849] = 26
                                    mem[_1849 + 32] = 'SafeMath: division by zero'
                            idx = idx + 1
                            continue 
                        if stor34[address(arg1)] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor34[address(arg1)]
                        if bool(stor21[address(arg1)]) != 1:
                            if stor34[address(arg1)] > stor34[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                        sub_b53e4e02[address(arg1)] = uint16(sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36)
                        if uint16(sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36) > stor36:
                            entitlement = stor34[address(arg1)]
                            stor36 = uint16(sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36)
                        emit 0x8397e68a: sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36 << 240, 0, arg1
                else:
                    sub_b53e4e02[address(arg1)] = stor36
                    stor34[address(arg1)] = entitlement
                    if uint16((block.timestamp / 24 * 3600) - stor36) <= 0:
                        emit 0x8397e68a: stor36, 0, arg1
                    else:
                        idx = 0
                        while idx < uint16((block.timestamp / 24 * 3600) - stor36):
                            if not stor33:
                                _1734 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1734] = 26
                                mem[_1734 + 32] = 'SafeMath: division by zero'
                                if not entitlement:
                                    _1786 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1786] = 26
                                    mem[_1786 + 32] = 'SafeMath: division by zero'
                                else:
                                    require entitlement
                                    if entitlement * stor32 / entitlement != stor32:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1822 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1822] = 26
                                    mem[_1822 + 32] = 'SafeMath: division by zero'
                            else:
                                require stor33
                                if stor33 * entitlement / stor33 != entitlement:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1750 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1750] = 26
                                mem[_1750 + 32] = 'SafeMath: division by zero'
                                if not entitlement:
                                    _1821 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1821] = 26
                                    mem[_1821 + 32] = 'SafeMath: division by zero'
                                else:
                                    require entitlement
                                    if entitlement * stor32 / entitlement != stor32:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1854 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1854] = 26
                                    mem[_1854 + 32] = 'SafeMath: division by zero'
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 0
                        _1733 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1733] = 26
                        mem[_1733 + 32] = 'SafeMath: division by zero'
                        if entitlement <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require entitlement
                        mem[0] = arg1
                        mem[32] = 21
                        if bool(stor21[address(arg1)]) == 1:
                            stor34[address(arg1)] = entitlement
                            sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                            if uint16(block.timestamp / 24 * 3600) > stor36:
                                stor36 = uint16(block.timestamp / 24 * 3600)
                            emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, arg1
                        else:
                            _1780 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1780] = 30
                            mem[_1780 + 32] = 'SafeMath: subtraction overflow'
                            if entitlement > stor34[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not stor34[address(arg1)] - entitlement:
                                stor34[address(arg1)] = entitlement
                                sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                                if uint16(block.timestamp / 24 * 3600) > stor36:
                                    stor36 = uint16(block.timestamp / 24 * 3600)
                                emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, arg1
                            else:
                                require stor34[address(arg1)] - entitlement
                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) / stor34[address(arg1)] - entitlement != balanceOf[address(arg1)] / entitlement:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > 0:
                                    mem[0] = arg1
                                    mem[32] = 30
                                    _1972 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1972] = 30
                                    mem[_1972 + 32] = 'SafeMath: subtraction overflow'
                                    if reservedBalanceOf[address(arg1)] > balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if balanceOf[address(arg1)] - reservedBalanceOf[address(arg1)] >= (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement):
                                        if not arg1:
                                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not feeAccount:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _2199 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_2199] = 38
                                        mem[_2199 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2199 + 70 len 26]
                                            mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                            revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                    else:
                                        _2082 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2082] = 30
                                        mem[_2082 + 32] = 'SafeMath: subtraction overflow'
                                        if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        mem[0] = arg1
                                        mem[32] = 30
                                        reservedBalanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                        if not arg1:
                                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not feeAccount:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _2372 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_2372] = 38
                                        mem[_2372 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2372 + 70 len 26]
                                            mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                            revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                    ('le', ('add', ('mul', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor34', 34))), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35)))), ('mul', -1, ('stor', ('name', 'entitlement', 35)), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))))
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                    if balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) < balanceOf[stor6]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor6] = balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                    emit Transfer(((stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)), arg1, feeAccount);
                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) >= sub_249c5e16[address(arg1)]:
                                        sub_249c5e16[address(arg1)] = 0
                                    else:
                                        if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > sub_249c5e16[address(arg1)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        sub_249c5e16[address(arg1)] = sub_249c5e16[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                stor34[address(arg1)] = entitlement
                                sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                                if uint16(block.timestamp / 24 * 3600) > stor36:
                                    stor36 = uint16(block.timestamp / 24 * 3600)
                                emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
        else:
            if arg1 == feeAccount:
                if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
                    if sub_b53e4e02[address(arg1)]:
                        emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                    else:
                        sub_b53e4e02[address(arg1)] = stor36
                        stor34[address(arg1)] = entitlement
                        emit 0x8397e68a: stor36, 0, arg1
            else:
                if arg1 == sub_9ab7f3ccAddress:
                    if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
                        if sub_b53e4e02[address(arg1)]:
                            emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                        else:
                            sub_b53e4e02[address(arg1)] = stor36
                            stor34[address(arg1)] = entitlement
                            emit 0x8397e68a: stor36, 0, arg1
                else:
                    if sub_b53e4e02[address(arg1)] <= 0:
                        if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
                            if sub_b53e4e02[address(arg1)]:
                                emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                            else:
                                sub_b53e4e02[address(arg1)] = stor36
                                stor34[address(arg1)] = entitlement
                                emit 0x8397e68a: stor36, 0, arg1
                    else:
                        if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
                            if sub_b53e4e02[address(arg1)]:
                                if uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) <= 0:
                                    emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                                else:
                                    idx = 0
                                    while idx < uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]):
                                        if not stor33:
                                            _1728 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1728] = 26
                                            mem[_1728 + 32] = 'SafeMath: division by zero'
                                            if not stor34[address(arg1)]:
                                                _1783 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1783] = 26
                                                mem[_1783 + 32] = 'SafeMath: division by zero'
                                            else:
                                                require stor34[address(arg1)]
                                                if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1816 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1816] = 26
                                                mem[_1816 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require stor33
                                            if stor33 * stor34[address(arg1)] / stor33 != stor34[address(arg1)]:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1738 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1738] = 26
                                            mem[_1738 + 32] = 'SafeMath: division by zero'
                                            if not stor34[address(arg1)]:
                                                _1815 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1815] = 26
                                                mem[_1815 + 32] = 'SafeMath: division by zero'
                                            else:
                                                require stor34[address(arg1)]
                                                if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1839 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1839] = 26
                                                mem[_1839 + 32] = 'SafeMath: division by zero'
                                        idx = idx + 1
                                        continue 
                                    if stor34[address(arg1)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor34[address(arg1)]
                                    if bool(stor21[address(arg1)]) != 1:
                                        if stor34[address(arg1)] > stor34[address(arg1)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                                    if uint16(block.timestamp / 24 * 3600) > stor36:
                                        entitlement = stor34[address(arg1)]
                                        stor36 = uint16(block.timestamp / 24 * 3600)
                                    emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, arg1
                            else:
                                sub_b53e4e02[address(arg1)] = stor36
                                stor34[address(arg1)] = entitlement
                                if uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) <= 0:
                                    emit 0x8397e68a: stor36, 0, arg1
                                else:
                                    idx = 0
                                    while idx < uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]):
                                        if not stor33:
                                            _1730 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1730] = 26
                                            mem[_1730 + 32] = 'SafeMath: division by zero'
                                            if not entitlement:
                                                _1784 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1784] = 26
                                                mem[_1784 + 32] = 'SafeMath: division by zero'
                                            else:
                                                require entitlement
                                                if entitlement * stor32 / entitlement != stor32:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1818 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1818] = 26
                                                mem[_1818 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require stor33
                                            if stor33 * entitlement / stor33 != entitlement:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _1742 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_1742] = 26
                                            mem[_1742 + 32] = 'SafeMath: division by zero'
                                            if not entitlement:
                                                _1817 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1817] = 26
                                                mem[_1817 + 32] = 'SafeMath: division by zero'
                                            else:
                                                require entitlement
                                                if entitlement * stor32 / entitlement != stor32:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _1844 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1844] = 26
                                                mem[_1844 + 32] = 'SafeMath: division by zero'
                                        idx = idx + 1
                                        continue 
                                    mem[0] = arg1
                                    mem[32] = 0
                                    _1729 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1729] = 26
                                    mem[_1729 + 32] = 'SafeMath: division by zero'
                                    if entitlement <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require entitlement
                                    mem[0] = arg1
                                    mem[32] = 21
                                    if bool(stor21[address(arg1)]) == 1:
                                        stor34[address(arg1)] = entitlement
                                        sub_b53e4e02[address(arg1)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                        if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) > stor36:
                                            stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                        emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, 0, arg1
                                    else:
                                        _1774 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1774] = 30
                                        mem[_1774 + 32] = 'SafeMath: subtraction overflow'
                                        if entitlement > stor34[address(arg1)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not stor34[address(arg1)] - entitlement:
                                            stor34[address(arg1)] = entitlement
                                            sub_b53e4e02[address(arg1)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                            if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) > stor36:
                                                stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                            emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, 0, arg1
                                        else:
                                            require stor34[address(arg1)] - entitlement
                                            if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) / stor34[address(arg1)] - entitlement != balanceOf[address(arg1)] / entitlement:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > 0:
                                                mem[0] = arg1
                                                mem[32] = 30
                                                _1962 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_1962] = 30
                                                mem[_1962 + 32] = 'SafeMath: subtraction overflow'
                                                if reservedBalanceOf[address(arg1)] > balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if balanceOf[address(arg1)] - reservedBalanceOf[address(arg1)] >= (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement):
                                                    if not arg1:
                                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                                    if not feeAccount:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                                    _2187 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2187] = 38
                                                    mem[_2187 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2187 + 70 len 26]
                                                        mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                                else:
                                                    _2068 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_2068] = 30
                                                    mem[_2068 + 32] = 'SafeMath: subtraction overflow'
                                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    mem[0] = arg1
                                                    mem[32] = 30
                                                    reservedBalanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                                    if not arg1:
                                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                                    if not feeAccount:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                                    _2348 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2348] = 38
                                                    mem[_2348 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_2348 + 70 len 26]
                                                        mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                                ('le', ('add', ('mul', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor34', 34))), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35)))), ('mul', -1, ('stor', ('name', 'entitlement', 35)), ('div', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))), ('stor', ('name', 'entitlement', 35))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))))
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                                if balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) < balanceOf[stor6]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[stor6] = balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                emit Transfer(((stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)), arg1, feeAccount);
                                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) >= sub_249c5e16[address(arg1)]:
                                                    sub_249c5e16[address(arg1)] = 0
                                                else:
                                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > sub_249c5e16[address(arg1)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    sub_249c5e16[address(arg1)] = sub_249c5e16[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                            stor34[address(arg1)] = entitlement
                                            sub_b53e4e02[address(arg1)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                            if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) > stor36:
                                                stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                            emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
        if sub_249c5e16[address(arg1)] + arg2 < sub_249c5e16[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_249c5e16[address(arg1)] += arg2
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function burn(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if admins.length != msg.sender:
        revert with 0, 'Insufficient permissions'
    if frozen:
        revert with 0, 'Not allowed when frozen'
    if arg1 == sub_9ab7f3ccAddress:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if arg2 > balanceOf[address(arg1)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    else:
        if stor20[address(arg1)]:
            revert with 0, 'A suspended account was involved'
        if frozen:
            revert with 0, 'Not allowed when frozen'
        if sub_b53e4e02[address(arg1)] <= 0:
            if sub_b53e4e02[address(arg1)] == uint16(block.timestamp / 24 * 3600):
                if arg2 > reservedBalanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                reservedBalanceOf[address(arg1)] -= arg2
                if arg2 >= sub_249c5e16[address(arg1)]:
                    sub_249c5e16[address(arg1)] = 0
                    if not arg1:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                    if arg2 > balanceOf[address(arg1)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                else:
                    if arg2 > sub_249c5e16[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_249c5e16[address(arg1)] -= arg2
                    if not arg1:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                    if arg2 > balanceOf[address(arg1)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
            else:
                if sub_b53e4e02[address(arg1)]:
                    if uint16((block.timestamp / 24 * 3600) - stor36) <= 0:
                        emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                        if arg2 > reservedBalanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        reservedBalanceOf[address(arg1)] -= arg2
                        if arg2 >= sub_249c5e16[address(arg1)]:
                            sub_249c5e16[address(arg1)] = 0
                            if not arg1:
                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                            if arg2 > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                        else:
                            if arg2 > sub_249c5e16[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_249c5e16[address(arg1)] -= arg2
                            if not arg1:
                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                            if arg2 > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                    else:
                        idx = 0
                        while idx < uint16((block.timestamp / 24 * 3600) - stor36):
                            if not stor33:
                                _6087 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6087] = 26
                                mem[_6087 + 32] = 'SafeMath: division by zero'
                                if not stor34[address(arg1)]:
                                    _6140 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6140] = 26
                                    mem[_6140 + 32] = 'SafeMath: division by zero'
                                else:
                                    require stor34[address(arg1)]
                                    if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _6175 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6175] = 26
                                    mem[_6175 + 32] = 'SafeMath: division by zero'
                            else:
                                require stor33
                                if stor33 * stor34[address(arg1)] / stor33 != stor34[address(arg1)]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _6101 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6101] = 26
                                mem[_6101 + 32] = 'SafeMath: division by zero'
                                if not stor34[address(arg1)]:
                                    _6174 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6174] = 26
                                    mem[_6174 + 32] = 'SafeMath: division by zero'
                                else:
                                    require stor34[address(arg1)]
                                    if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _6204 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6204] = 26
                                    mem[_6204 + 32] = 'SafeMath: division by zero'
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 0
                        _6086 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6086] = 26
                        mem[_6086 + 32] = 'SafeMath: division by zero'
                        if stor34[address(arg1)] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor34[address(arg1)]
                        mem[0] = arg1
                        mem[32] = 21
                        if bool(stor21[address(arg1)]) == 1:
                            sub_b53e4e02[address(arg1)] = uint16(sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36)
                            if uint16(sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36) <= stor36:
                                mem[mem[64] + 32] = 0
                                emit 0x8397e68a: sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36 << 240, 0, arg1
                                mem[0] = arg1
                                mem[32] = 30
                                _6232 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6232] = 30
                                mem[_6232 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 > reservedBalanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                reservedBalanceOf[address(arg1)] -= arg2
                                mem[0] = arg1
                                mem[32] = 29
                                if arg2 >= sub_249c5e16[address(arg1)]:
                                    sub_249c5e16[address(arg1)] = 0
                                    if not arg1:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                    _6674 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_6674] = 34
                                    mem[_6674 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(arg1)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 34
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_6674 + 66 len 30]
                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                else:
                                    _6446 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6446] = 30
                                    mem[_6446 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 > sub_249c5e16[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[0] = arg1
                                    mem[32] = 29
                                    sub_249c5e16[address(arg1)] -= arg2
                                    if not arg1:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                    _7016 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_7016] = 34
                                    mem[_7016 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(arg1)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 34
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7016 + 66 len 30]
                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                            else:
                                entitlement = stor34[address(arg1)]
                                stor36 = uint16(sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36)
                                mem[mem[64] + 32] = 0
                                emit 0x8397e68a: sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36 << 240, 0, arg1
                                mem[0] = arg1
                                mem[32] = 30
                                _6242 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6242] = 30
                                mem[_6242 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 > reservedBalanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                reservedBalanceOf[address(arg1)] -= arg2
                                mem[0] = arg1
                                mem[32] = 29
                                if arg2 >= sub_249c5e16[address(arg1)]:
                                    sub_249c5e16[address(arg1)] = 0
                                    if not arg1:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                    _6728 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_6728] = 34
                                    mem[_6728 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(arg1)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 34
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_6728 + 66 len 30]
                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                else:
                                    _6474 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6474] = 30
                                    mem[_6474 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 > sub_249c5e16[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[0] = arg1
                                    mem[32] = 29
                                    sub_249c5e16[address(arg1)] -= arg2
                                    if not arg1:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                    _7077 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_7077] = 34
                                    mem[_7077 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(arg1)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 34
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7077 + 66 len 30]
                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                        else:
                            _6132 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6132] = 30
                            mem[_6132 + 32] = 'SafeMath: subtraction overflow'
                            if stor34[address(arg1)] > stor34[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b53e4e02[address(arg1)] = uint16(sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36)
                            if uint16(sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36) <= stor36:
                                mem[mem[64] + 32] = 0
                                emit 0x8397e68a: sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36 << 240, 0, arg1
                                mem[0] = arg1
                                mem[32] = 30
                                _6403 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6403] = 30
                                mem[_6403 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 > reservedBalanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                reservedBalanceOf[address(arg1)] -= arg2
                                mem[0] = arg1
                                mem[32] = 29
                                if arg2 >= sub_249c5e16[address(arg1)]:
                                    sub_249c5e16[address(arg1)] = 0
                                    if not arg1:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                    _7148 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_7148] = 34
                                    mem[_7148 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(arg1)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 34
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7148 + 66 len 30]
                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                else:
                                    _6853 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6853] = 30
                                    mem[_6853 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 > sub_249c5e16[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[0] = arg1
                                    mem[32] = 29
                                    sub_249c5e16[address(arg1)] -= arg2
                                    if not arg1:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                    _7649 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_7649] = 34
                                    mem[_7649 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(arg1)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 34
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7649 + 66 len 30]
                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                            else:
                                entitlement = stor34[address(arg1)]
                                stor36 = uint16(sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36)
                                mem[mem[64] + 32] = 0
                                emit 0x8397e68a: sub_b53e4e02[address(arg1)] + (block.timestamp / 24 * 3600) - stor36 << 240, 0, arg1
                                mem[0] = arg1
                                mem[32] = 30
                                _6420 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6420] = 30
                                mem[_6420 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 > reservedBalanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                reservedBalanceOf[address(arg1)] -= arg2
                                mem[0] = arg1
                                mem[32] = 29
                                if arg2 >= sub_249c5e16[address(arg1)]:
                                    sub_249c5e16[address(arg1)] = 0
                                    if not arg1:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                    _7224 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_7224] = 34
                                    mem[_7224 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(arg1)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 34
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7224 + 66 len 30]
                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                else:
                                    _6895 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6895] = 30
                                    mem[_6895 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 > sub_249c5e16[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[0] = arg1
                                    mem[32] = 29
                                    sub_249c5e16[address(arg1)] -= arg2
                                    if not arg1:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                    _7734 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_7734] = 34
                                    mem[_7734 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(arg1)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 34
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7734 + 66 len 30]
                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                else:
                    sub_b53e4e02[address(arg1)] = stor36
                    stor34[address(arg1)] = entitlement
                    if uint16((block.timestamp / 24 * 3600) - stor36) <= 0:
                        emit 0x8397e68a: stor36, 0, arg1
                        if arg2 > reservedBalanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        reservedBalanceOf[address(arg1)] -= arg2
                        if arg2 >= sub_249c5e16[address(arg1)]:
                            sub_249c5e16[address(arg1)] = 0
                            if not arg1:
                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                            if arg2 > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                        else:
                            if arg2 > sub_249c5e16[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_249c5e16[address(arg1)] -= arg2
                            if not arg1:
                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                            if arg2 > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                    else:
                        idx = 0
                        while idx < uint16((block.timestamp / 24 * 3600) - stor36):
                            if not stor33:
                                _6089 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6089] = 26
                                mem[_6089 + 32] = 'SafeMath: division by zero'
                                if not entitlement:
                                    _6141 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6141] = 26
                                    mem[_6141 + 32] = 'SafeMath: division by zero'
                                else:
                                    require entitlement
                                    if entitlement * stor32 / entitlement != stor32:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _6177 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6177] = 26
                                    mem[_6177 + 32] = 'SafeMath: division by zero'
                            else:
                                require stor33
                                if stor33 * entitlement / stor33 != entitlement:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _6105 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6105] = 26
                                mem[_6105 + 32] = 'SafeMath: division by zero'
                                if not entitlement:
                                    _6176 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6176] = 26
                                    mem[_6176 + 32] = 'SafeMath: division by zero'
                                else:
                                    require entitlement
                                    if entitlement * stor32 / entitlement != stor32:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _6209 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6209] = 26
                                    mem[_6209 + 32] = 'SafeMath: division by zero'
                            idx = idx + 1
                            continue 
                        mem[0] = arg1
                        mem[32] = 0
                        _6088 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6088] = 26
                        mem[_6088 + 32] = 'SafeMath: division by zero'
                        if entitlement <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require entitlement
                        mem[0] = arg1
                        mem[32] = 21
                        if bool(stor21[address(arg1)]) == 1:
                            stor34[address(arg1)] = entitlement
                            sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                            if uint16(block.timestamp / 24 * 3600) <= stor36:
                                mem[mem[64] + 32] = 0
                                emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, arg1
                                mem[0] = arg1
                                mem[32] = 30
                                _6233 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6233] = 30
                                mem[_6233 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 > reservedBalanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                reservedBalanceOf[address(arg1)] -= arg2
                                mem[0] = arg1
                                mem[32] = 29
                                if arg2 >= sub_249c5e16[address(arg1)]:
                                    sub_249c5e16[address(arg1)] = 0
                                    if not arg1:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                    _6690 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_6690] = 34
                                    mem[_6690 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(arg1)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 34
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_6690 + 66 len 30]
                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                else:
                                    _6453 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6453] = 30
                                    mem[_6453 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 > sub_249c5e16[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[0] = arg1
                                    mem[32] = 29
                                    sub_249c5e16[address(arg1)] -= arg2
                                    if not arg1:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                    _7028 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_7028] = 34
                                    mem[_7028 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(arg1)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 34
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7028 + 66 len 30]
                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                            else:
                                stor36 = uint16(block.timestamp / 24 * 3600)
                                mem[mem[64] + 32] = 0
                                emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, arg1
                                mem[0] = arg1
                                mem[32] = 30
                                _6245 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6245] = 30
                                mem[_6245 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 > reservedBalanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                reservedBalanceOf[address(arg1)] -= arg2
                                mem[0] = arg1
                                mem[32] = 29
                                if arg2 >= sub_249c5e16[address(arg1)]:
                                    sub_249c5e16[address(arg1)] = 0
                                    if not arg1:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                    _6740 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_6740] = 34
                                    mem[_6740 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(arg1)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 34
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_6740 + 66 len 30]
                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                else:
                                    _6481 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6481] = 30
                                    mem[_6481 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 > sub_249c5e16[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[0] = arg1
                                    mem[32] = 29
                                    sub_249c5e16[address(arg1)] -= arg2
                                    if not arg1:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                    _7092 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_7092] = 34
                                    mem[_7092 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(arg1)]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 34
                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7092 + 66 len 30]
                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                        else:
                            _6135 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6135] = 30
                            mem[_6135 + 32] = 'SafeMath: subtraction overflow'
                            if entitlement > stor34[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not stor34[address(arg1)] - entitlement:
                                stor34[address(arg1)] = entitlement
                                sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                                if uint16(block.timestamp / 24 * 3600) <= stor36:
                                    mem[mem[64] + 32] = 0
                                    emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, arg1
                                    mem[0] = arg1
                                    mem[32] = 30
                                    _6407 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6407] = 30
                                    mem[_6407 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 > reservedBalanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    reservedBalanceOf[address(arg1)] -= arg2
                                    mem[0] = arg1
                                    mem[32] = 29
                                    if arg2 >= sub_249c5e16[address(arg1)]:
                                        sub_249c5e16[address(arg1)] = 0
                                        if not arg1:
                                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                        _7170 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_7170] = 34
                                        mem[_7170 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                        if arg2 > balanceOf[address(arg1)]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 34
                                            mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7170 + 66 len 30]
                                            mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                            revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                    else:
                                        _6862 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6862] = 30
                                        mem[_6862 + 32] = 'SafeMath: subtraction overflow'
                                        if arg2 > sub_249c5e16[address(arg1)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        mem[0] = arg1
                                        mem[32] = 29
                                        sub_249c5e16[address(arg1)] -= arg2
                                        if not arg1:
                                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                        _7671 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_7671] = 34
                                        mem[_7671 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                        if arg2 > balanceOf[address(arg1)]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 34
                                            mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7671 + 66 len 30]
                                            mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                            revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                else:
                                    stor36 = uint16(block.timestamp / 24 * 3600)
                                    mem[mem[64] + 32] = 0
                                    emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, arg1
                                    mem[0] = arg1
                                    mem[32] = 30
                                    _6424 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6424] = 30
                                    mem[_6424 + 32] = 'SafeMath: subtraction overflow'
                                    if arg2 > reservedBalanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    reservedBalanceOf[address(arg1)] -= arg2
                                    mem[0] = arg1
                                    mem[32] = 29
                                    if arg2 >= sub_249c5e16[address(arg1)]:
                                        sub_249c5e16[address(arg1)] = 0
                                        if not arg1:
                                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                        _7241 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_7241] = 34
                                        mem[_7241 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                        if arg2 > balanceOf[address(arg1)]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 34
                                            mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7241 + 66 len 30]
                                            mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                            revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                    else:
                                        _6907 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6907] = 30
                                        mem[_6907 + 32] = 'SafeMath: subtraction overflow'
                                        if arg2 > sub_249c5e16[address(arg1)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        mem[0] = arg1
                                        mem[32] = 29
                                        sub_249c5e16[address(arg1)] -= arg2
                                        if not arg1:
                                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                        _7753 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_7753] = 34
                                        mem[_7753 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                        if arg2 > balanceOf[address(arg1)]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 34
                                            mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7753 + 66 len 30]
                                            mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                            revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                            else:
                                require stor34[address(arg1)] - entitlement
                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) / stor34[address(arg1)] - entitlement != balanceOf[address(arg1)] / entitlement:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) <= 0:
                                    stor34[address(arg1)] = entitlement
                                    sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                                    if uint16(block.timestamp / 24 * 3600) <= stor36:
                                        mem[mem[64] + 32] = (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                        emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
                                        mem[0] = arg1
                                        mem[32] = 30
                                        _6447 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6447] = 30
                                        mem[_6447 + 32] = 'SafeMath: subtraction overflow'
                                        if arg2 > reservedBalanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        reservedBalanceOf[address(arg1)] -= arg2
                                        mem[0] = arg1
                                        mem[32] = 29
                                        if arg2 >= sub_249c5e16[address(arg1)]:
                                            sub_249c5e16[address(arg1)] = 0
                                            if not arg1:
                                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                            _7312 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_7312] = 34
                                            mem[_7312 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(arg1)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 34
                                                mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7312 + 66 len 30]
                                                mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                        else:
                                            _6968 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6968] = 30
                                            mem[_6968 + 32] = 'SafeMath: subtraction overflow'
                                            if arg2 > sub_249c5e16[address(arg1)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            mem[0] = arg1
                                            mem[32] = 29
                                            sub_249c5e16[address(arg1)] -= arg2
                                            if not arg1:
                                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                            _7815 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_7815] = 34
                                            mem[_7815 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(arg1)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 34
                                                mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7815 + 66 len 30]
                                                mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                    else:
                                        stor36 = uint16(block.timestamp / 24 * 3600)
                                        mem[mem[64] + 32] = (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                        emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
                                        mem[0] = arg1
                                        mem[32] = 30
                                        _6475 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6475] = 30
                                        mem[_6475 + 32] = 'SafeMath: subtraction overflow'
                                        if arg2 > reservedBalanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        reservedBalanceOf[address(arg1)] -= arg2
                                        mem[0] = arg1
                                        mem[32] = 29
                                        if arg2 >= sub_249c5e16[address(arg1)]:
                                            sub_249c5e16[address(arg1)] = 0
                                            if not arg1:
                                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                            _7390 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_7390] = 34
                                            mem[_7390 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(arg1)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 34
                                                mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7390 + 66 len 30]
                                                mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                        else:
                                            _7022 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7022] = 30
                                            mem[_7022 + 32] = 'SafeMath: subtraction overflow'
                                            if arg2 > sub_249c5e16[address(arg1)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            mem[0] = arg1
                                            mem[32] = 29
                                            sub_249c5e16[address(arg1)] -= arg2
                                            if not arg1:
                                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                            _7882 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_7882] = 34
                                            mem[_7882 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(arg1)]:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 34
                                                mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7882 + 66 len 30]
                                                mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                else:
                                    mem[0] = arg1
                                    mem[32] = 30
                                    _6357 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6357] = 30
                                    mem[_6357 + 32] = 'SafeMath: subtraction overflow'
                                    if reservedBalanceOf[address(arg1)] > balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if balanceOf[address(arg1)] - reservedBalanceOf[address(arg1)] >= (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement):
                                        if not arg1:
                                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not feeAccount:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _6682 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_6682] = 38
                                        mem[_6682 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_6682 + 70 len 26]
                                            mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                            revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                        mem[0] = feeAccount
                                        if balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) < balanceOf[stor6]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor6] = balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                        emit Transfer(((stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)), arg1, feeAccount);
                                        if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) >= sub_249c5e16[address(arg1)]:
                                            sub_249c5e16[address(arg1)] = 0
                                            stor34[address(arg1)] = entitlement
                                            sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                                            if uint16(block.timestamp / 24 * 3600) <= stor36:
                                                mem[mem[64] + 32] = (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
                                                mem[0] = arg1
                                                mem[32] = 30
                                                _8093 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8093] = 30
                                                mem[_8093 + 32] = 'SafeMath: subtraction overflow'
                                                if arg2 > reservedBalanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                reservedBalanceOf[address(arg1)] -= arg2
                                                mem[0] = arg1
                                                mem[32] = 29
                                                if arg2 >= sub_249c5e16[address(arg1)]:
                                                    sub_249c5e16[address(arg1)] = 0
                                                    if not arg1:
                                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                    _8798 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_8798] = 34
                                                    mem[_8798 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 34
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_8798 + 66 len 30]
                                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                else:
                                                    _8596 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8596] = 30
                                                    mem[_8596 + 32] = 'SafeMath: subtraction overflow'
                                                    if arg2 > sub_249c5e16[address(arg1)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    mem[0] = arg1
                                                    mem[32] = 29
                                                    sub_249c5e16[address(arg1)] -= arg2
                                                    if not arg1:
                                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                    _9186 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_9186] = 34
                                                    mem[_9186 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 34
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9186 + 66 len 30]
                                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                            else:
                                                stor36 = uint16(block.timestamp / 24 * 3600)
                                                mem[mem[64] + 32] = (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
                                                mem[0] = arg1
                                                mem[32] = 30
                                                _8158 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8158] = 30
                                                mem[_8158 + 32] = 'SafeMath: subtraction overflow'
                                                if arg2 > reservedBalanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                reservedBalanceOf[address(arg1)] -= arg2
                                                mem[0] = arg1
                                                mem[32] = 29
                                                if arg2 >= sub_249c5e16[address(arg1)]:
                                                    sub_249c5e16[address(arg1)] = 0
                                                    if not arg1:
                                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                    _8837 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_8837] = 34
                                                    mem[_8837 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 34
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_8837 + 66 len 30]
                                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                else:
                                                    _8636 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8636] = 30
                                                    mem[_8636 + 32] = 'SafeMath: subtraction overflow'
                                                    if arg2 > sub_249c5e16[address(arg1)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    mem[0] = arg1
                                                    mem[32] = 29
                                                    sub_249c5e16[address(arg1)] -= arg2
                                                    if not arg1:
                                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                    _9251 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_9251] = 34
                                                    mem[_9251 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 34
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9251 + 66 len 30]
                                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                        else:
                                            mem[0] = arg1
                                            mem[32] = 29
                                            _7520 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7520] = 30
                                            mem[_7520 + 32] = 'SafeMath: subtraction overflow'
                                            if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > sub_249c5e16[address(arg1)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            sub_249c5e16[address(arg1)] = sub_249c5e16[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                            stor34[address(arg1)] = entitlement
                                            sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                                            if uint16(block.timestamp / 24 * 3600) <= stor36:
                                                mem[mem[64] + 32] = (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
                                                mem[0] = arg1
                                                mem[32] = 30
                                                _8463 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8463] = 30
                                                mem[_8463 + 32] = 'SafeMath: subtraction overflow'
                                                if arg2 > reservedBalanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                reservedBalanceOf[address(arg1)] -= arg2
                                                mem[0] = arg1
                                                mem[32] = 29
                                                if arg2 >= sub_249c5e16[address(arg1)]:
                                                    sub_249c5e16[address(arg1)] = 0
                                                    if not arg1:
                                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                    _9182 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_9182] = 34
                                                    mem[_9182 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 34
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9182 + 66 len 30]
                                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                else:
                                                    _8872 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8872] = 30
                                                    mem[_8872 + 32] = 'SafeMath: subtraction overflow'
                                                    if arg2 > sub_249c5e16[address(arg1)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    mem[0] = arg1
                                                    mem[32] = 29
                                                    sub_249c5e16[address(arg1)] -= arg2
                                                    if not arg1:
                                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                    _9733 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_9733] = 34
                                                    mem[_9733 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 34
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9733 + 66 len 30]
                                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                            else:
                                                stor36 = uint16(block.timestamp / 24 * 3600)
                                                mem[mem[64] + 32] = (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
                                                mem[0] = arg1
                                                mem[32] = 30
                                                _8498 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8498] = 30
                                                mem[_8498 + 32] = 'SafeMath: subtraction overflow'
                                                if arg2 > reservedBalanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                reservedBalanceOf[address(arg1)] -= arg2
                                                mem[0] = arg1
                                                mem[32] = 29
                                                if arg2 >= sub_249c5e16[address(arg1)]:
                                                    sub_249c5e16[address(arg1)] = 0
                                                    if not arg1:
                                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                    _9246 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_9246] = 34
                                                    mem[_9246 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 34
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9246 + 66 len 30]
                                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                else:
                                                    _8918 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8918] = 30
                                                    mem[_8918 + 32] = 'SafeMath: subtraction overflow'
                                                    if arg2 > sub_249c5e16[address(arg1)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    mem[0] = arg1
                                                    mem[32] = 29
                                                    sub_249c5e16[address(arg1)] -= arg2
                                                    if not arg1:
                                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                    _9817 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_9817] = 34
                                                    mem[_9817 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 34
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9817 + 66 len 30]
                                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                    else:
                                        _6476 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6476] = 30
                                        mem[_6476 + 32] = 'SafeMath: subtraction overflow'
                                        if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        mem[0] = arg1
                                        mem[32] = 30
                                        reservedBalanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                        if not arg1:
                                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not feeAccount:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _6973 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_6973] = 38
                                        mem[_6973 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_6973 + 70 len 26]
                                            mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                            revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                        mem[0] = feeAccount
                                        if balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) < balanceOf[stor6]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[stor6] = balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                        emit Transfer(((stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)), arg1, feeAccount);
                                        if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) >= sub_249c5e16[address(arg1)]:
                                            sub_249c5e16[address(arg1)] = 0
                                            stor34[address(arg1)] = entitlement
                                            sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                                            if uint16(block.timestamp / 24 * 3600) <= stor36:
                                                mem[mem[64] + 32] = (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
                                                mem[0] = arg1
                                                mem[32] = 30
                                                _8432 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8432] = 30
                                                mem[_8432 + 32] = 'SafeMath: subtraction overflow'
                                                if arg2 > reservedBalanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                reservedBalanceOf[address(arg1)] -= arg2
                                                mem[0] = arg1
                                                mem[32] = 29
                                                if arg2 >= sub_249c5e16[address(arg1)]:
                                                    sub_249c5e16[address(arg1)] = 0
                                                    if not arg1:
                                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                    _9122 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_9122] = 34
                                                    mem[_9122 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 34
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9122 + 66 len 30]
                                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                else:
                                                    _8841 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8841] = 30
                                                    mem[_8841 + 32] = 'SafeMath: subtraction overflow'
                                                    if arg2 > sub_249c5e16[address(arg1)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    mem[0] = arg1
                                                    mem[32] = 29
                                                    sub_249c5e16[address(arg1)] -= arg2
                                                    if not arg1:
                                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                    _9664 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_9664] = 34
                                                    mem[_9664 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 34
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9664 + 66 len 30]
                                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                            else:
                                                stor36 = uint16(block.timestamp / 24 * 3600)
                                                mem[mem[64] + 32] = (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
                                                mem[0] = arg1
                                                mem[32] = 30
                                                _8468 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8468] = 30
                                                mem[_8468 + 32] = 'SafeMath: subtraction overflow'
                                                if arg2 > reservedBalanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                reservedBalanceOf[address(arg1)] -= arg2
                                                mem[0] = arg1
                                                mem[32] = 29
                                                if arg2 >= sub_249c5e16[address(arg1)]:
                                                    sub_249c5e16[address(arg1)] = 0
                                                    if not arg1:
                                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                    _9196 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_9196] = 34
                                                    mem[_9196 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 34
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9196 + 66 len 30]
                                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                else:
                                                    _8881 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8881] = 30
                                                    mem[_8881 + 32] = 'SafeMath: subtraction overflow'
                                                    if arg2 > sub_249c5e16[address(arg1)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    mem[0] = arg1
                                                    mem[32] = 29
                                                    sub_249c5e16[address(arg1)] -= arg2
                                                    if not arg1:
                                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                    _9752 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_9752] = 34
                                                    mem[_9752 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 34
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9752 + 66 len 30]
                                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                        else:
                                            mem[0] = arg1
                                            mem[32] = 29
                                            _7961 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7961] = 30
                                            mem[_7961 + 32] = 'SafeMath: subtraction overflow'
                                            if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > sub_249c5e16[address(arg1)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            sub_249c5e16[address(arg1)] = sub_249c5e16[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                            stor34[address(arg1)] = entitlement
                                            sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                                            if uint16(block.timestamp / 24 * 3600) <= stor36:
                                                mem[mem[64] + 32] = (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
                                                mem[0] = arg1
                                                mem[32] = 30
                                                _8679 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8679] = 30
                                                mem[_8679 + 32] = 'SafeMath: subtraction overflow'
                                                if arg2 > reservedBalanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                reservedBalanceOf[address(arg1)] -= arg2
                                                mem[0] = arg1
                                                mem[32] = 29
                                                if arg2 >= sub_249c5e16[address(arg1)]:
                                                    sub_249c5e16[address(arg1)] = 0
                                                    if not arg1:
                                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                    _9660 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_9660] = 34
                                                    mem[_9660 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 34
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9660 + 66 len 30]
                                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                else:
                                                    _9253 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_9253] = 30
                                                    mem[_9253 + 32] = 'SafeMath: subtraction overflow'
                                                    if arg2 > sub_249c5e16[address(arg1)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    mem[0] = arg1
                                                    mem[32] = 29
                                                    sub_249c5e16[address(arg1)] -= arg2
                                                    if not arg1:
                                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                    _10223 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_10223] = 34
                                                    mem[_10223 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 34
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_10223 + 66 len 30]
                                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                            else:
                                                stor36 = uint16(block.timestamp / 24 * 3600)
                                                mem[mem[64] + 32] = (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
                                                mem[0] = arg1
                                                mem[32] = 30
                                                _8716 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8716] = 30
                                                mem[_8716 + 32] = 'SafeMath: subtraction overflow'
                                                if arg2 > reservedBalanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                reservedBalanceOf[address(arg1)] -= arg2
                                                mem[0] = arg1
                                                mem[32] = 29
                                                if arg2 >= sub_249c5e16[address(arg1)]:
                                                    sub_249c5e16[address(arg1)] = 0
                                                    if not arg1:
                                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                    _9747 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_9747] = 34
                                                    mem[_9747 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 34
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9747 + 66 len 30]
                                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                else:
                                                    _9321 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_9321] = 30
                                                    mem[_9321 + 32] = 'SafeMath: subtraction overflow'
                                                    if arg2 > sub_249c5e16[address(arg1)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    mem[0] = arg1
                                                    mem[32] = 29
                                                    sub_249c5e16[address(arg1)] -= arg2
                                                    if not arg1:
                                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                    _10285 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_10285] = 34
                                                    mem[_10285 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 34
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_10285 + 66 len 30]
                                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
        else:
            if arg1 == feeAccount:
                if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
                    if sub_b53e4e02[address(arg1)]:
                        emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                    else:
                        sub_b53e4e02[address(arg1)] = stor36
                        stor34[address(arg1)] = entitlement
                        emit 0x8397e68a: stor36, 0, arg1
                if arg2 > reservedBalanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                reservedBalanceOf[address(arg1)] -= arg2
                if arg2 >= sub_249c5e16[address(arg1)]:
                    sub_249c5e16[address(arg1)] = 0
                    if not arg1:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                    if arg2 > balanceOf[address(arg1)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                else:
                    if arg2 > sub_249c5e16[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_249c5e16[address(arg1)] -= arg2
                    if not arg1:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                    if arg2 > balanceOf[address(arg1)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
            else:
                if arg1 == sub_9ab7f3ccAddress:
                    if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
                        if sub_b53e4e02[address(arg1)]:
                            emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                        else:
                            sub_b53e4e02[address(arg1)] = stor36
                            stor34[address(arg1)] = entitlement
                            emit 0x8397e68a: stor36, 0, arg1
                    if arg2 > reservedBalanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    reservedBalanceOf[address(arg1)] -= arg2
                    if arg2 >= sub_249c5e16[address(arg1)]:
                        sub_249c5e16[address(arg1)] = 0
                        if not arg1:
                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                        if arg2 > balanceOf[address(arg1)]:
                            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                    else:
                        if arg2 > sub_249c5e16[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_249c5e16[address(arg1)] -= arg2
                        if not arg1:
                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                        if arg2 > balanceOf[address(arg1)]:
                            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                else:
                    if sub_b53e4e02[address(arg1)] <= 0:
                        if sub_b53e4e02[address(arg1)] != uint16(block.timestamp / 24 * 3600):
                            if sub_b53e4e02[address(arg1)]:
                                emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                            else:
                                sub_b53e4e02[address(arg1)] = stor36
                                stor34[address(arg1)] = entitlement
                                emit 0x8397e68a: stor36, 0, arg1
                        if arg2 > reservedBalanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        reservedBalanceOf[address(arg1)] -= arg2
                        if arg2 >= sub_249c5e16[address(arg1)]:
                            sub_249c5e16[address(arg1)] = 0
                            if not arg1:
                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                            if arg2 > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                        else:
                            if arg2 > sub_249c5e16[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_249c5e16[address(arg1)] -= arg2
                            if not arg1:
                                revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                            if arg2 > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                    else:
                        if sub_b53e4e02[address(arg1)] == uint16(block.timestamp / 24 * 3600):
                            if arg2 > reservedBalanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            reservedBalanceOf[address(arg1)] -= arg2
                            if arg2 >= sub_249c5e16[address(arg1)]:
                                sub_249c5e16[address(arg1)] = 0
                                if not arg1:
                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                                if arg2 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                            else:
                                if arg2 > sub_249c5e16[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_249c5e16[address(arg1)] -= arg2
                                if not arg1:
                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                                if arg2 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                        else:
                            if sub_b53e4e02[address(arg1)]:
                                if uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) <= 0:
                                    emit 0x8397e68a: sub_b53e4e02[address(arg1)], 0, arg1
                                    if arg2 > reservedBalanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    reservedBalanceOf[address(arg1)] -= arg2
                                    if arg2 >= sub_249c5e16[address(arg1)]:
                                        sub_249c5e16[address(arg1)] = 0
                                        if not arg1:
                                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                                        if arg2 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                                    else:
                                        if arg2 > sub_249c5e16[address(arg1)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        sub_249c5e16[address(arg1)] -= arg2
                                        if not arg1:
                                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                                        if arg2 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                                else:
                                    idx = 0
                                    while idx < uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]):
                                        if not stor33:
                                            _6083 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6083] = 26
                                            mem[_6083 + 32] = 'SafeMath: division by zero'
                                            if not stor34[address(arg1)]:
                                                _6138 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6138] = 26
                                                mem[_6138 + 32] = 'SafeMath: division by zero'
                                            else:
                                                require stor34[address(arg1)]
                                                if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _6171 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6171] = 26
                                                mem[_6171 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require stor33
                                            if stor33 * stor34[address(arg1)] / stor33 != stor34[address(arg1)]:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _6093 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6093] = 26
                                            mem[_6093 + 32] = 'SafeMath: division by zero'
                                            if not stor34[address(arg1)]:
                                                _6170 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6170] = 26
                                                mem[_6170 + 32] = 'SafeMath: division by zero'
                                            else:
                                                require stor34[address(arg1)]
                                                if stor34[address(arg1)] * stor32 / stor34[address(arg1)] != stor32:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _6194 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6194] = 26
                                                mem[_6194 + 32] = 'SafeMath: division by zero'
                                        idx = idx + 1
                                        continue 
                                    mem[0] = arg1
                                    mem[32] = 0
                                    _6082 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6082] = 26
                                    mem[_6082 + 32] = 'SafeMath: division by zero'
                                    if stor34[address(arg1)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor34[address(arg1)]
                                    mem[0] = arg1
                                    mem[32] = 21
                                    if bool(stor21[address(arg1)]) == 1:
                                        sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                                        if uint16(block.timestamp / 24 * 3600) <= stor36:
                                            mem[mem[64] + 32] = 0
                                            emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, arg1
                                            mem[0] = arg1
                                            mem[32] = 30
                                            _6230 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6230] = 30
                                            mem[_6230 + 32] = 'SafeMath: subtraction overflow'
                                            if arg2 > reservedBalanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            reservedBalanceOf[address(arg1)] -= arg2
                                            mem[0] = arg1
                                            mem[32] = 29
                                            if arg2 >= sub_249c5e16[address(arg1)]:
                                                sub_249c5e16[address(arg1)] = 0
                                                if not arg1:
                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                _6642 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_6642] = 34
                                                mem[_6642 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(arg1)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 34
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_6642 + 66 len 30]
                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                            else:
                                                _6432 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6432] = 30
                                                mem[_6432 + 32] = 'SafeMath: subtraction overflow'
                                                if arg2 > sub_249c5e16[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                mem[0] = arg1
                                                mem[32] = 29
                                                sub_249c5e16[address(arg1)] -= arg2
                                                if not arg1:
                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                _6992 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_6992] = 34
                                                mem[_6992 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(arg1)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 34
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_6992 + 66 len 30]
                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                        else:
                                            entitlement = stor34[address(arg1)]
                                            stor36 = uint16(block.timestamp / 24 * 3600)
                                            mem[mem[64] + 32] = 0
                                            emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, arg1
                                            mem[0] = arg1
                                            mem[32] = 30
                                            _6236 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6236] = 30
                                            mem[_6236 + 32] = 'SafeMath: subtraction overflow'
                                            if arg2 > reservedBalanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            reservedBalanceOf[address(arg1)] -= arg2
                                            mem[0] = arg1
                                            mem[32] = 29
                                            if arg2 >= sub_249c5e16[address(arg1)]:
                                                sub_249c5e16[address(arg1)] = 0
                                                if not arg1:
                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                _6704 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_6704] = 34
                                                mem[_6704 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(arg1)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 34
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_6704 + 66 len 30]
                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                            else:
                                                _6460 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6460] = 30
                                                mem[_6460 + 32] = 'SafeMath: subtraction overflow'
                                                if arg2 > sub_249c5e16[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                mem[0] = arg1
                                                mem[32] = 29
                                                sub_249c5e16[address(arg1)] -= arg2
                                                if not arg1:
                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                _7047 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_7047] = 34
                                                mem[_7047 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(arg1)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 34
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7047 + 66 len 30]
                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                    else:
                                        _6126 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6126] = 30
                                        mem[_6126 + 32] = 'SafeMath: subtraction overflow'
                                        if stor34[address(arg1)] > stor34[address(arg1)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        sub_b53e4e02[address(arg1)] = uint16(block.timestamp / 24 * 3600)
                                        if uint16(block.timestamp / 24 * 3600) <= stor36:
                                            mem[mem[64] + 32] = 0
                                            emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, arg1
                                            mem[0] = arg1
                                            mem[32] = 30
                                            _6395 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6395] = 30
                                            mem[_6395 + 32] = 'SafeMath: subtraction overflow'
                                            if arg2 > reservedBalanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            reservedBalanceOf[address(arg1)] -= arg2
                                            mem[0] = arg1
                                            mem[32] = 29
                                            if arg2 >= sub_249c5e16[address(arg1)]:
                                                sub_249c5e16[address(arg1)] = 0
                                                if not arg1:
                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                _7104 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_7104] = 34
                                                mem[_7104 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(arg1)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 34
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7104 + 66 len 30]
                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                            else:
                                                _6835 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6835] = 30
                                                mem[_6835 + 32] = 'SafeMath: subtraction overflow'
                                                if arg2 > sub_249c5e16[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                mem[0] = arg1
                                                mem[32] = 29
                                                sub_249c5e16[address(arg1)] -= arg2
                                                if not arg1:
                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                _7605 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_7605] = 34
                                                mem[_7605 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(arg1)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 34
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7605 + 66 len 30]
                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                        else:
                                            entitlement = stor34[address(arg1)]
                                            stor36 = uint16(block.timestamp / 24 * 3600)
                                            mem[mem[64] + 32] = 0
                                            emit 0x8397e68a: block.timestamp / 24 * 3600 << 240, 0, arg1
                                            mem[0] = arg1
                                            mem[32] = 30
                                            _6412 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6412] = 30
                                            mem[_6412 + 32] = 'SafeMath: subtraction overflow'
                                            if arg2 > reservedBalanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            reservedBalanceOf[address(arg1)] -= arg2
                                            mem[0] = arg1
                                            mem[32] = 29
                                            if arg2 >= sub_249c5e16[address(arg1)]:
                                                sub_249c5e16[address(arg1)] = 0
                                                if not arg1:
                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                _7190 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_7190] = 34
                                                mem[_7190 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(arg1)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 34
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7190 + 66 len 30]
                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                            else:
                                                _6871 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6871] = 30
                                                mem[_6871 + 32] = 'SafeMath: subtraction overflow'
                                                if arg2 > sub_249c5e16[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                mem[0] = arg1
                                                mem[32] = 29
                                                sub_249c5e16[address(arg1)] -= arg2
                                                if not arg1:
                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                _7696 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_7696] = 34
                                                mem[_7696 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(arg1)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 34
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7696 + 66 len 30]
                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                            else:
                                sub_b53e4e02[address(arg1)] = stor36
                                stor34[address(arg1)] = entitlement
                                if uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) <= 0:
                                    emit 0x8397e68a: stor36, 0, arg1
                                    if arg2 > reservedBalanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    reservedBalanceOf[address(arg1)] -= arg2
                                    if arg2 >= sub_249c5e16[address(arg1)]:
                                        sub_249c5e16[address(arg1)] = 0
                                        if not arg1:
                                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                                        if arg2 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                                    else:
                                        if arg2 > sub_249c5e16[address(arg1)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        sub_249c5e16[address(arg1)] -= arg2
                                        if not arg1:
                                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                                        if arg2 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                                else:
                                    idx = 0
                                    while idx < uint16((block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]):
                                        if not stor33:
                                            _6085 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6085] = 26
                                            mem[_6085 + 32] = 'SafeMath: division by zero'
                                            if not entitlement:
                                                _6139 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6139] = 26
                                                mem[_6139 + 32] = 'SafeMath: division by zero'
                                            else:
                                                require entitlement
                                                if entitlement * stor32 / entitlement != stor32:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _6173 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6173] = 26
                                                mem[_6173 + 32] = 'SafeMath: division by zero'
                                        else:
                                            require stor33
                                            if stor33 * entitlement / stor33 != entitlement:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _6097 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6097] = 26
                                            mem[_6097 + 32] = 'SafeMath: division by zero'
                                            if not entitlement:
                                                _6172 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6172] = 26
                                                mem[_6172 + 32] = 'SafeMath: division by zero'
                                            else:
                                                require entitlement
                                                if entitlement * stor32 / entitlement != stor32:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _6199 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6199] = 26
                                                mem[_6199 + 32] = 'SafeMath: division by zero'
                                        idx = idx + 1
                                        continue 
                                    mem[0] = arg1
                                    mem[32] = 0
                                    _6084 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6084] = 26
                                    mem[_6084 + 32] = 'SafeMath: division by zero'
                                    if entitlement <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require entitlement
                                    mem[0] = arg1
                                    mem[32] = 21
                                    if bool(stor21[address(arg1)]) == 1:
                                        stor34[address(arg1)] = entitlement
                                        sub_b53e4e02[address(arg1)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                        if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) <= stor36:
                                            mem[mem[64] + 32] = 0
                                            emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, 0, arg1
                                            mem[0] = arg1
                                            mem[32] = 30
                                            _6231 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6231] = 30
                                            mem[_6231 + 32] = 'SafeMath: subtraction overflow'
                                            if arg2 > reservedBalanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            reservedBalanceOf[address(arg1)] -= arg2
                                            mem[0] = arg1
                                            mem[32] = 29
                                            if arg2 >= sub_249c5e16[address(arg1)]:
                                                sub_249c5e16[address(arg1)] = 0
                                                if not arg1:
                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                _6658 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_6658] = 34
                                                mem[_6658 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(arg1)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 34
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_6658 + 66 len 30]
                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                            else:
                                                _6439 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6439] = 30
                                                mem[_6439 + 32] = 'SafeMath: subtraction overflow'
                                                if arg2 > sub_249c5e16[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                mem[0] = arg1
                                                mem[32] = 29
                                                sub_249c5e16[address(arg1)] -= arg2
                                                if not arg1:
                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                _7004 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_7004] = 34
                                                mem[_7004 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(arg1)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 34
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7004 + 66 len 30]
                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                        else:
                                            stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                            mem[mem[64] + 32] = 0
                                            emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, 0, arg1
                                            mem[0] = arg1
                                            mem[32] = 30
                                            _6239 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6239] = 30
                                            mem[_6239 + 32] = 'SafeMath: subtraction overflow'
                                            if arg2 > reservedBalanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            reservedBalanceOf[address(arg1)] -= arg2
                                            mem[0] = arg1
                                            mem[32] = 29
                                            if arg2 >= sub_249c5e16[address(arg1)]:
                                                sub_249c5e16[address(arg1)] = 0
                                                if not arg1:
                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                _6716 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_6716] = 34
                                                mem[_6716 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(arg1)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 34
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_6716 + 66 len 30]
                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                            else:
                                                _6467 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6467] = 30
                                                mem[_6467 + 32] = 'SafeMath: subtraction overflow'
                                                if arg2 > sub_249c5e16[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                mem[0] = arg1
                                                mem[32] = 29
                                                sub_249c5e16[address(arg1)] -= arg2
                                                if not arg1:
                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                _7062 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_7062] = 34
                                                mem[_7062 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(arg1)]:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 34
                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7062 + 66 len 30]
                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                    else:
                                        _6129 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6129] = 30
                                        mem[_6129 + 32] = 'SafeMath: subtraction overflow'
                                        if entitlement > stor34[address(arg1)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not stor34[address(arg1)] - entitlement:
                                            stor34[address(arg1)] = entitlement
                                            sub_b53e4e02[address(arg1)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                            if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) <= stor36:
                                                mem[mem[64] + 32] = 0
                                                emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, 0, arg1
                                                mem[0] = arg1
                                                mem[32] = 30
                                                _6399 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6399] = 30
                                                mem[_6399 + 32] = 'SafeMath: subtraction overflow'
                                                if arg2 > reservedBalanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                reservedBalanceOf[address(arg1)] -= arg2
                                                mem[0] = arg1
                                                mem[32] = 29
                                                if arg2 >= sub_249c5e16[address(arg1)]:
                                                    sub_249c5e16[address(arg1)] = 0
                                                    if not arg1:
                                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                    _7126 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_7126] = 34
                                                    mem[_7126 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 34
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7126 + 66 len 30]
                                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                else:
                                                    _6844 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_6844] = 30
                                                    mem[_6844 + 32] = 'SafeMath: subtraction overflow'
                                                    if arg2 > sub_249c5e16[address(arg1)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    mem[0] = arg1
                                                    mem[32] = 29
                                                    sub_249c5e16[address(arg1)] -= arg2
                                                    if not arg1:
                                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                    _7627 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_7627] = 34
                                                    mem[_7627 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 34
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7627 + 66 len 30]
                                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                            else:
                                                stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                                mem[mem[64] + 32] = 0
                                                emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, 0, arg1
                                                mem[0] = arg1
                                                mem[32] = 30
                                                _6416 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6416] = 30
                                                mem[_6416 + 32] = 'SafeMath: subtraction overflow'
                                                if arg2 > reservedBalanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                reservedBalanceOf[address(arg1)] -= arg2
                                                mem[0] = arg1
                                                mem[32] = 29
                                                if arg2 >= sub_249c5e16[address(arg1)]:
                                                    sub_249c5e16[address(arg1)] = 0
                                                    if not arg1:
                                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                    _7207 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_7207] = 34
                                                    mem[_7207 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 34
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7207 + 66 len 30]
                                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                else:
                                                    _6883 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_6883] = 30
                                                    mem[_6883 + 32] = 'SafeMath: subtraction overflow'
                                                    if arg2 > sub_249c5e16[address(arg1)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    mem[0] = arg1
                                                    mem[32] = 29
                                                    sub_249c5e16[address(arg1)] -= arg2
                                                    if not arg1:
                                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                    _7715 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_7715] = 34
                                                    mem[_7715 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 34
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7715 + 66 len 30]
                                                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                        else:
                                            require stor34[address(arg1)] - entitlement
                                            if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) / stor34[address(arg1)] - entitlement != balanceOf[address(arg1)] / entitlement:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) <= 0:
                                                stor34[address(arg1)] = entitlement
                                                sub_b53e4e02[address(arg1)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                                if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) <= stor36:
                                                    mem[mem[64] + 32] = (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                    emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
                                                    mem[0] = arg1
                                                    mem[32] = 30
                                                    _6433 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_6433] = 30
                                                    mem[_6433 + 32] = 'SafeMath: subtraction overflow'
                                                    if arg2 > reservedBalanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    reservedBalanceOf[address(arg1)] -= arg2
                                                    mem[0] = arg1
                                                    mem[32] = 29
                                                    if arg2 >= sub_249c5e16[address(arg1)]:
                                                        sub_249c5e16[address(arg1)] = 0
                                                        if not arg1:
                                                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                        _7272 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_7272] = 34
                                                        mem[_7272 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                        if arg2 > balanceOf[address(arg1)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 34
                                                            mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7272 + 66 len 30]
                                                            mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                            revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                    else:
                                                        _6932 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_6932] = 30
                                                        mem[_6932 + 32] = 'SafeMath: subtraction overflow'
                                                        if arg2 > sub_249c5e16[address(arg1)]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        mem[0] = arg1
                                                        mem[32] = 29
                                                        sub_249c5e16[address(arg1)] -= arg2
                                                        if not arg1:
                                                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                        _7777 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_7777] = 34
                                                        mem[_7777 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                        if arg2 > balanceOf[address(arg1)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 34
                                                            mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7777 + 66 len 30]
                                                            mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                            revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                else:
                                                    stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                                    mem[mem[64] + 32] = (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                    emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
                                                    mem[0] = arg1
                                                    mem[32] = 30
                                                    _6461 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_6461] = 30
                                                    mem[_6461 + 32] = 'SafeMath: subtraction overflow'
                                                    if arg2 > reservedBalanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    reservedBalanceOf[address(arg1)] -= arg2
                                                    mem[0] = arg1
                                                    mem[32] = 29
                                                    if arg2 >= sub_249c5e16[address(arg1)]:
                                                        sub_249c5e16[address(arg1)] = 0
                                                        if not arg1:
                                                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                        _7352 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_7352] = 34
                                                        mem[_7352 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                        if arg2 > balanceOf[address(arg1)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 34
                                                            mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7352 + 66 len 30]
                                                            mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                            revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                    else:
                                                        _6998 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_6998] = 30
                                                        mem[_6998 + 32] = 'SafeMath: subtraction overflow'
                                                        if arg2 > sub_249c5e16[address(arg1)]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        mem[0] = arg1
                                                        mem[32] = 29
                                                        sub_249c5e16[address(arg1)] -= arg2
                                                        if not arg1:
                                                            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                        _7852 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_7852] = 34
                                                        mem[_7852 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                        if arg2 > balanceOf[address(arg1)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 34
                                                            mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_7852 + 66 len 30]
                                                            mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                            revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                            else:
                                                mem[0] = arg1
                                                mem[32] = 30
                                                _6343 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6343] = 30
                                                mem[_6343 + 32] = 'SafeMath: subtraction overflow'
                                                if reservedBalanceOf[address(arg1)] > balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if balanceOf[address(arg1)] - reservedBalanceOf[address(arg1)] >= (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement):
                                                    if not arg1:
                                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                                    if not feeAccount:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                                    _6650 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_6650] = 38
                                                    mem[_6650 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_6650 + 70 len 26]
                                                        mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                                    mem[0] = feeAccount
                                                    if balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) < balanceOf[stor6]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[stor6] = balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                    emit Transfer(((stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)), arg1, feeAccount);
                                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) >= sub_249c5e16[address(arg1)]:
                                                        sub_249c5e16[address(arg1)] = 0
                                                        stor34[address(arg1)] = entitlement
                                                        sub_b53e4e02[address(arg1)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                                        if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) <= stor36:
                                                            mem[mem[64] + 32] = (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                            emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
                                                            mem[0] = arg1
                                                            mem[32] = 30
                                                            _8057 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_8057] = 30
                                                            mem[_8057 + 32] = 'SafeMath: subtraction overflow'
                                                            if arg2 > reservedBalanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            reservedBalanceOf[address(arg1)] -= arg2
                                                            mem[0] = arg1
                                                            mem[32] = 29
                                                            if arg2 >= sub_249c5e16[address(arg1)]:
                                                                sub_249c5e16[address(arg1)] = 0
                                                                if not arg1:
                                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                                _8774 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_8774] = 34
                                                                mem[_8774 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                                if arg2 > balanceOf[address(arg1)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 34
                                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_8774 + 66 len 30]
                                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                            else:
                                                                _8580 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_8580] = 30
                                                                mem[_8580 + 32] = 'SafeMath: subtraction overflow'
                                                                if arg2 > sub_249c5e16[address(arg1)]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                mem[0] = arg1
                                                                mem[32] = 29
                                                                sub_249c5e16[address(arg1)] -= arg2
                                                                if not arg1:
                                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                                _9150 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_9150] = 34
                                                                mem[_9150 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                                if arg2 > balanceOf[address(arg1)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 34
                                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9150 + 66 len 30]
                                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                        else:
                                                            stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                                            mem[mem[64] + 32] = (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                            emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
                                                            mem[0] = arg1
                                                            mem[32] = 30
                                                            _8128 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_8128] = 30
                                                            mem[_8128 + 32] = 'SafeMath: subtraction overflow'
                                                            if arg2 > reservedBalanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            reservedBalanceOf[address(arg1)] -= arg2
                                                            mem[0] = arg1
                                                            mem[32] = 29
                                                            if arg2 >= sub_249c5e16[address(arg1)]:
                                                                sub_249c5e16[address(arg1)] = 0
                                                                if not arg1:
                                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                                _8819 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_8819] = 34
                                                                mem[_8819 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                                if arg2 > balanceOf[address(arg1)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 34
                                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_8819 + 66 len 30]
                                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                            else:
                                                                _8616 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_8616] = 30
                                                                mem[_8616 + 32] = 'SafeMath: subtraction overflow'
                                                                if arg2 > sub_249c5e16[address(arg1)]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                mem[0] = arg1
                                                                mem[32] = 29
                                                                sub_249c5e16[address(arg1)] -= arg2
                                                                if not arg1:
                                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                                _9221 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_9221] = 34
                                                                mem[_9221 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                                if arg2 > balanceOf[address(arg1)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 34
                                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9221 + 66 len 30]
                                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                    else:
                                                        mem[0] = arg1
                                                        mem[32] = 29
                                                        _7484 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_7484] = 30
                                                        mem[_7484 + 32] = 'SafeMath: subtraction overflow'
                                                        if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > sub_249c5e16[address(arg1)]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        sub_249c5e16[address(arg1)] = sub_249c5e16[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                                        stor34[address(arg1)] = entitlement
                                                        sub_b53e4e02[address(arg1)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                                        if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) <= stor36:
                                                            mem[mem[64] + 32] = (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                            emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
                                                            mem[0] = arg1
                                                            mem[32] = 30
                                                            _8445 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_8445] = 30
                                                            mem[_8445 + 32] = 'SafeMath: subtraction overflow'
                                                            if arg2 > reservedBalanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            reservedBalanceOf[address(arg1)] -= arg2
                                                            mem[0] = arg1
                                                            mem[32] = 29
                                                            if arg2 >= sub_249c5e16[address(arg1)]:
                                                                sub_249c5e16[address(arg1)] = 0
                                                                if not arg1:
                                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                                _9146 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_9146] = 34
                                                                mem[_9146 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                                if arg2 > balanceOf[address(arg1)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 34
                                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9146 + 66 len 30]
                                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                            else:
                                                                _8852 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_8852] = 30
                                                                mem[_8852 + 32] = 'SafeMath: subtraction overflow'
                                                                if arg2 > sub_249c5e16[address(arg1)]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                mem[0] = arg1
                                                                mem[32] = 29
                                                                sub_249c5e16[address(arg1)] -= arg2
                                                                if not arg1:
                                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                                _9691 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_9691] = 34
                                                                mem[_9691 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                                if arg2 > balanceOf[address(arg1)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 34
                                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9691 + 66 len 30]
                                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                        else:
                                                            stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                                            mem[mem[64] + 32] = (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                            emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
                                                            mem[0] = arg1
                                                            mem[32] = 30
                                                            _8480 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_8480] = 30
                                                            mem[_8480 + 32] = 'SafeMath: subtraction overflow'
                                                            if arg2 > reservedBalanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            reservedBalanceOf[address(arg1)] -= arg2
                                                            mem[0] = arg1
                                                            mem[32] = 29
                                                            if arg2 >= sub_249c5e16[address(arg1)]:
                                                                sub_249c5e16[address(arg1)] = 0
                                                                if not arg1:
                                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                                _9216 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_9216] = 34
                                                                mem[_9216 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                                if arg2 > balanceOf[address(arg1)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 34
                                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9216 + 66 len 30]
                                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                            else:
                                                                _8894 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_8894] = 30
                                                                mem[_8894 + 32] = 'SafeMath: subtraction overflow'
                                                                if arg2 > sub_249c5e16[address(arg1)]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                mem[0] = arg1
                                                                mem[32] = 29
                                                                sub_249c5e16[address(arg1)] -= arg2
                                                                if not arg1:
                                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                                _9777 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_9777] = 34
                                                                mem[_9777 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                                if arg2 > balanceOf[address(arg1)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 34
                                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9777 + 66 len 30]
                                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                else:
                                                    _6462 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_6462] = 30
                                                    mem[_6462 + 32] = 'SafeMath: subtraction overflow'
                                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    mem[0] = arg1
                                                    mem[32] = 30
                                                    reservedBalanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                                    if not arg1:
                                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                                    if not feeAccount:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                                    _6937 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_6937] = 38
                                                    mem[_6937 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > balanceOf[address(arg1)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_6937 + 70 len 26]
                                                        mem[mem[64] + 100] = mem[mem[64] + 126 len 6]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 64]
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                                    mem[0] = feeAccount
                                                    if balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) < balanceOf[stor6]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[stor6] = balanceOf[stor6] + (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                    emit Transfer(((stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)), arg1, feeAccount);
                                                    if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) >= sub_249c5e16[address(arg1)]:
                                                        sub_249c5e16[address(arg1)] = 0
                                                        stor34[address(arg1)] = entitlement
                                                        sub_b53e4e02[address(arg1)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                                        if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) <= stor36:
                                                            mem[mem[64] + 32] = (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                            emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
                                                            mem[0] = arg1
                                                            mem[32] = 30
                                                            _8412 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_8412] = 30
                                                            mem[_8412 + 32] = 'SafeMath: subtraction overflow'
                                                            if arg2 > reservedBalanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            reservedBalanceOf[address(arg1)] -= arg2
                                                            mem[0] = arg1
                                                            mem[32] = 29
                                                            if arg2 >= sub_249c5e16[address(arg1)]:
                                                                sub_249c5e16[address(arg1)] = 0
                                                                if not arg1:
                                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                                _9082 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_9082] = 34
                                                                mem[_9082 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                                if arg2 > balanceOf[address(arg1)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 34
                                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9082 + 66 len 30]
                                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                            else:
                                                                _8823 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_8823] = 30
                                                                mem[_8823 + 32] = 'SafeMath: subtraction overflow'
                                                                if arg2 > sub_249c5e16[address(arg1)]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                mem[0] = arg1
                                                                mem[32] = 29
                                                                sub_249c5e16[address(arg1)] -= arg2
                                                                if not arg1:
                                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                                _9610 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_9610] = 34
                                                                mem[_9610 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                                if arg2 > balanceOf[address(arg1)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 34
                                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9610 + 66 len 30]
                                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                        else:
                                                            stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                                            mem[mem[64] + 32] = (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                            emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
                                                            mem[0] = arg1
                                                            mem[32] = 30
                                                            _8450 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_8450] = 30
                                                            mem[_8450 + 32] = 'SafeMath: subtraction overflow'
                                                            if arg2 > reservedBalanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            reservedBalanceOf[address(arg1)] -= arg2
                                                            mem[0] = arg1
                                                            mem[32] = 29
                                                            if arg2 >= sub_249c5e16[address(arg1)]:
                                                                sub_249c5e16[address(arg1)] = 0
                                                                if not arg1:
                                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                                _9160 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_9160] = 34
                                                                mem[_9160 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                                if arg2 > balanceOf[address(arg1)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 34
                                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9160 + 66 len 30]
                                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                            else:
                                                                _8861 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_8861] = 30
                                                                mem[_8861 + 32] = 'SafeMath: subtraction overflow'
                                                                if arg2 > sub_249c5e16[address(arg1)]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                mem[0] = arg1
                                                                mem[32] = 29
                                                                sub_249c5e16[address(arg1)] -= arg2
                                                                if not arg1:
                                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                                _9710 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_9710] = 34
                                                                mem[_9710 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                                if arg2 > balanceOf[address(arg1)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 34
                                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9710 + 66 len 30]
                                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                    else:
                                                        mem[0] = arg1
                                                        mem[32] = 29
                                                        _7923 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_7923] = 30
                                                        mem[_7923 + 32] = 'SafeMath: subtraction overflow'
                                                        if (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement) > sub_249c5e16[address(arg1)]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        sub_249c5e16[address(arg1)] = sub_249c5e16[address(arg1)] - (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) + (entitlement * balanceOf[address(arg1)] / entitlement)
                                                        stor34[address(arg1)] = entitlement
                                                        sub_b53e4e02[address(arg1)] = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                                        if uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)]) <= stor36:
                                                            mem[mem[64] + 32] = (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                            emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
                                                            mem[0] = arg1
                                                            mem[32] = 30
                                                            _8659 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_8659] = 30
                                                            mem[_8659 + 32] = 'SafeMath: subtraction overflow'
                                                            if arg2 > reservedBalanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            reservedBalanceOf[address(arg1)] -= arg2
                                                            mem[0] = arg1
                                                            mem[32] = 29
                                                            if arg2 >= sub_249c5e16[address(arg1)]:
                                                                sub_249c5e16[address(arg1)] = 0
                                                                if not arg1:
                                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                                _9606 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_9606] = 34
                                                                mem[_9606 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                                if arg2 > balanceOf[address(arg1)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 34
                                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9606 + 66 len 30]
                                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                            else:
                                                                _9223 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_9223] = 30
                                                                mem[_9223 + 32] = 'SafeMath: subtraction overflow'
                                                                if arg2 > sub_249c5e16[address(arg1)]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                mem[0] = arg1
                                                                mem[32] = 29
                                                                sub_249c5e16[address(arg1)] -= arg2
                                                                if not arg1:
                                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                                _10185 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_10185] = 34
                                                                mem[_10185 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                                if arg2 > balanceOf[address(arg1)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 34
                                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_10185 + 66 len 30]
                                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                        else:
                                                            stor36 = uint16(stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)])
                                                            mem[mem[64] + 32] = (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement)
                                                            emit 0x8397e68a: stor36 + (block.timestamp / 24 * 3600) - sub_b53e4e02[address(arg1)] << 240, (stor34[address(arg1)] * balanceOf[address(arg1)] / entitlement) - (entitlement * balanceOf[address(arg1)] / entitlement), arg1
                                                            mem[0] = arg1
                                                            mem[32] = 30
                                                            _8698 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_8698] = 30
                                                            mem[_8698 + 32] = 'SafeMath: subtraction overflow'
                                                            if arg2 > reservedBalanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            reservedBalanceOf[address(arg1)] -= arg2
                                                            mem[0] = arg1
                                                            mem[32] = 29
                                                            if arg2 >= sub_249c5e16[address(arg1)]:
                                                                sub_249c5e16[address(arg1)] = 0
                                                                if not arg1:
                                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                                _9705 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_9705] = 34
                                                                mem[_9705 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                                if arg2 > balanceOf[address(arg1)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 34
                                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_9705 + 66 len 30]
                                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                                                            else:
                                                                _9287 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_9287] = 30
                                                                mem[_9287 + 32] = 'SafeMath: subtraction overflow'
                                                                if arg2 > sub_249c5e16[address(arg1)]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                mem[0] = arg1
                                                                mem[32] = 29
                                                                sub_249c5e16[address(arg1)] -= arg2
                                                                if not arg1:
                                                                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                                                                _10257 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_10257] = 34
                                                                mem[_10257 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                                                                if arg2 > balanceOf[address(arg1)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 34
                                                                    mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_10257 + 66 len 30]
                                                                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                                                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
    ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))))
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    if not balanceOf[address(arg1)]:
        sub_b53e4e02[address(arg1)] = 0
}



}
