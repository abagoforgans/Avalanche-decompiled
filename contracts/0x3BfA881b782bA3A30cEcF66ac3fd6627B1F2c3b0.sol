contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const MAX_OWNER_COUNT = 50


uint256 dailyLimit;
uint256 lastDay;
uint256 spentToday;
array of struct owners;
address deployerAddress;
mapping of uint8 stor5;
uint256 numConfirmationsRequired;
mapping of uint8 stor7;
array of struct stor8;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of struct stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of uint8 stor110349606679412691172957834289542550319383271247755660854362242977991410020070;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020071;

function owners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < owners.length
    return address(owners[arg1].field_0)
}

function getTransactionCount() {
    return stor8.length
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function dailyLimit() {
    return dailyLimit
}

function lastDay() {
    return lastDay
}

function getDeployer() {
    return deployerAddress
}

function isConfirmed(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(stor7[arg1][arg2])
}

function numConfirmationsRequired() {
    return numConfirmationsRequired
}

function spentToday() {
    return spentToday
}

function renounceOwnership() {
    if deployerAddress != msg.sender:
        revert with 0, 'Caller is not the deployer'
    deployerAddress = 0
    emit OwnershipTransferred(deployerAddress, 0);
}

function changeDailyLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if deployerAddress != msg.sender:
        revert with 0, 'Caller is not the deployer'
    dailyLimit = arg1
    emit DailyLimitChange(arg1);
}

function calcMaxWithdraw() {
    if 24 * 3600 > !lastDay:
        revert with 0, 17
    if block.timestamp > lastDay + (24 * 3600):
        return dailyLimit
    if dailyLimit >= spentToday:
        return (dailyLimit - spentToday)
    else:
        return 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if deployerAddress != msg.sender:
        revert with 0, 'Caller is not the deployer'
    if not arg1:
        revert with 0, 'Invalid new owner'
    deployerAddress = arg1
    emit OwnershipTransferred(deployerAddress, arg1);
}

function changeRequirement(uint256 arg1) {
    require calldata.size - 4 >= 32
    if deployerAddress != msg.sender:
        revert with 0, 'Caller is not the deployer'
    if owners.length > 50:
        revert with 0, 'Invalid requirement'
    if arg1 > owners.length:
        revert with 0, 'Invalid requirement'
    if not arg1:
        revert with 0, 'Invalid requirement'
    if not owners.length:
        revert with 0, 'Invalid requirement'
    numConfirmationsRequired = arg1
    emit RequirementChange(arg1);
}

function revokeConfirmation(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if deployerAddress != msg.sender:
            revert with 0, 'Unauthorized caller'
    if arg1 >= stor8.length:
        revert with 0, 'Transaction does not exist'
    if uint8(stor8[arg1].field_768):
        revert with 0, 'Transaction already executed'
    if arg1 >= stor8.length:
        revert with 0, 50
    if not stor7[arg1][msg.sender]:
        revert with 0, 'Transaction not confirmed'
    if stor8[arg1].field_1024 < 1:
        revert with 0, 17
    stor8[arg1].field_1024--
    stor7[arg1][msg.sender] = 0
    emit RevokeConfirmation(msg.sender, arg1);
}

function confirmTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if deployerAddress != msg.sender:
            revert with 0, 'Unauthorized caller'
    if arg1 >= stor8.length:
        revert with 0, 'Transaction does not exist'
    if uint8(stor8[arg1].field_768):
        revert with 0, 'Transaction already executed'
    if stor7[arg1][msg.sender]:
        revert with 0, 'Transaction already confirmed'
    if arg1 >= stor8.length:
        revert with 0, 50
    if stor8[arg1].field_1024 > -2:
        revert with 0, 17
    stor8[arg1].field_1024++
    stor7[arg1][msg.sender] = 1
    emit ConfirmTransaction(msg.sender, arg1);
}

function addOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if deployerAddress != msg.sender:
        revert with 0, 'Caller is not the deployer'
    if stor5[address(arg1)]:
        revert with 0, 'Owner exists'
    if not arg1:
        revert with 0, 'Address is nulled'
    if 1 > !owners.length:
        revert with 0, 17
    if owners.length + 1 > 50:
        revert with 0, 'Invalid requirement'
    if numConfirmationsRequired > owners.length + 1:
        revert with 0, 'Invalid requirement'
    if not numConfirmationsRequired:
        revert with 0, 'Invalid requirement'
    if not owners.length + 1:
        revert with 0, 'Invalid requirement'
    stor5[address(arg1)] = 1
    owners.length++
    address(owners[owners.length].field_0) = arg1
    emit OwnerAddition(arg1);
}

function getOwners() {
    mem[64] = (32 * owners.length) + 128
    mem[96] = owners.length
    if not owners.length:
        mem[(32 * owners.length) + 128] = 32
        mem[(32 * owners.length) + 160] = owners.length
        idx = 0
        s = (32 * owners.length) + 192
        t = 128
        while idx < owners.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * owners.length) + 128
           len (96 * owners.length) + 64
    mem[128] = address(owners.field_0)
    idx = 128
    s = 0
    while (32 * owners.length) + 96 > idx:
        mem[idx + 32] = address(owners[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 128] = 32
    mem[(32 * owners.length) + 160] = owners.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < owners.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * owners.length) + -mem[64] + 192
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    if not stor5[msg.sender]:
        if deployerAddress != msg.sender:
            revert with 0, 'Unauthorized caller'
    stor8.length++
    address(stor8[stor8.length].field_0) = arg1
    storF3F7[stor8.length] = arg2
    if bool(storF3F7[stor8.length].field_0):
        if bool(storF3F7[stor8.length].field_0) == uint255(storF3F7[stor8.length].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg3.length:
            stor[sha3((5 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911b)][] = Array(len=arg3.length, data=arg3[all])
        else:
            storF3F7[stor8.length].field_0 = 0
            idx = 0
            while (uint255(storF3F7[stor8.length].field_0) * 0.5) + 31 / 32 > idx:
                stor[idx + sha3((5 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911b)] = 0
                idx = idx + 1
                continue 
    else:
        if bool(storF3F7[stor8.length].field_0) == storF3F7[stor8.length].field_1 % 128 < 32:
            revert with 0, 34
        if arg3.length:
            stor[sha3((5 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911b)][] = Array(len=arg3.length, data=arg3[all])
        else:
            storF3F7[stor8.length].field_0 = 0
            idx = 0
            while storF3F7[stor8.length].field_1 % 128 + 31 / 32 > idx:
                stor[idx + sha3((5 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911b)] = 0
                idx = idx + 1
                continue 
    storF3F7[stor8.length] = 0
    storF3F7[stor8.length] = 0
    emit SubmitTransaction(address arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5):
                           arg2,
                           64,
                           arg3.length,
                           arg3[all],
                           0,
                           msg.sender,
                           stor8.length,
                           arg1,
}

function transactions(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor8.length
    if bool(stor8[arg1].field_512):
        if bool(stor8[arg1].field_512) == uint255(stor8[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if bool(stor8[arg1].field_512):
            if bool(stor8[arg1].field_512) == uint255(stor8[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor8[arg1].field_512):
                if 31 >= uint255(stor8[arg1].field_512) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor8[arg1].field_520)
                else:
                    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor8[arg1].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor8[arg1].field_512) == stor8[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if stor8[arg1].field_513 % 128:
                if 31 >= stor8[arg1].field_513 % 128:
                    mem[128] = 256 * Mask(248, 0, stor8[arg1].field_520)
                else:
                    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_0
                    idx = 128
                    s = 0
                    while stor8[arg1].field_513 % 128 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(stor8[arg1].field_0), 
               stor8[arg1].field_256,
               Array(len=2 * Mask(256, -1, stor8[arg1].field_512), data=mem[128 len ceil32(uint255(stor8[arg1].field_512) * 0.5)]),
               bool(uint8(stor8[arg1].field_768)),
               stor8[arg1].field_1024
    if bool(stor8[arg1].field_512) == stor8[arg1].field_513 % 128 < 32:
        revert with 0, 34
    if bool(stor8[arg1].field_512):
        if bool(stor8[arg1].field_512) == uint255(stor8[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor8[arg1].field_512):
            if 31 >= uint255(stor8[arg1].field_512) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor8[arg1].field_520)
            else:
                mem[128] = stor[sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_0
                idx = 128
                s = 0
                while (uint255(stor8[arg1].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor8[arg1].field_512) == stor8[arg1].field_513 % 128 < 32:
            revert with 0, 34
        if stor8[arg1].field_513 % 128:
            if 31 >= stor8[arg1].field_513 % 128:
                mem[128] = 256 * Mask(248, 0, stor8[arg1].field_520)
            else:
                mem[128] = stor[sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_0
                idx = 128
                s = 0
                while stor8[arg1].field_513 % 128 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(stor8[arg1].field_0), 
           stor8[arg1].field_256,
           Array(len=stor8[arg1].field_512 % 128, data=mem[128 len ceil32(stor8[arg1].field_513 % 128)]),
           bool(uint8(stor8[arg1].field_768)),
           stor8[arg1].field_1024
}

function getTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor8.length:
        revert with 0, 50
    if bool(stor8[arg1].field_512):
        if bool(stor8[arg1].field_512) == uint255(stor8[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if bool(stor8[arg1].field_512):
            if bool(stor8[arg1].field_512) == uint255(stor8[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor8[arg1].field_512):
                if 31 >= uint255(stor8[arg1].field_512) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor8[arg1].field_520)
                else:
                    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor8[arg1].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor8[arg1].field_512) == stor8[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if stor8[arg1].field_513 % 128:
                if 31 >= stor8[arg1].field_513 % 128:
                    mem[128] = 256 * Mask(248, 0, stor8[arg1].field_520)
                else:
                    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_0
                    idx = 128
                    s = 0
                    while stor8[arg1].field_513 % 128 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(stor8[arg1].field_0), 
               stor8[arg1].field_256,
               Array(len=2 * Mask(256, -1, stor8[arg1].field_512), data=mem[128 len ceil32(uint255(stor8[arg1].field_512) * 0.5)]),
               bool(uint8(stor8[arg1].field_768)),
               stor8[arg1].field_1024
    if bool(stor8[arg1].field_512) == stor8[arg1].field_513 % 128 < 32:
        revert with 0, 34
    if bool(stor8[arg1].field_512):
        if bool(stor8[arg1].field_512) == uint255(stor8[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor8[arg1].field_512):
            if 31 >= uint255(stor8[arg1].field_512) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor8[arg1].field_520)
            else:
                mem[128] = stor[sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_0
                idx = 128
                s = 0
                while (uint255(stor8[arg1].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor8[arg1].field_512) == stor8[arg1].field_513 % 128 < 32:
            revert with 0, 34
        if stor8[arg1].field_513 % 128:
            if 31 >= stor8[arg1].field_513 % 128:
                mem[128] = 256 * Mask(248, 0, stor8[arg1].field_520)
            else:
                mem[128] = stor[sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_0
                idx = 128
                s = 0
                while stor8[arg1].field_513 % 128 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(stor8[arg1].field_0), 
           stor8[arg1].field_256,
           Array(len=stor8[arg1].field_512 % 128, data=mem[128 len ceil32(stor8[arg1].field_513 % 128)]),
           bool(uint8(stor8[arg1].field_768)),
           stor8[arg1].field_1024
}

function executeTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        if deployerAddress != msg.sender:
            revert with 0, 'Unauthorized caller'
    if arg1 >= stor8.length:
        revert with 0, 'Transaction does not exist'
    if uint8(stor8[arg1].field_768):
        revert with 0, 'Transaction already executed'
    if arg1 >= stor8.length:
        revert with 0, 50
    if stor8[arg1].field_1024 < numConfirmationsRequired:
        revert with 0, 'Cannot execute transaction'
    if 24 * 3600 > !lastDay:
        revert with 0, 17
    if block.timestamp > lastDay + (24 * 3600):
        lastDay = block.timestamp
        spentToday = 0
    if spentToday > !stor8[arg1].field_256:
        revert with 0, 17
    if spentToday + stor8[arg1].field_256 > dailyLimit:
        revert with 0, 'Maximum daily limit'
    if spentToday > !stor8[arg1].field_256:
        revert with 0, 17
    if spentToday + stor8[arg1].field_256 < spentToday:
        revert with 0, 'Maximum daily limit'
    uint8(stor8[arg1].field_768) = 1
    if spentToday > !stor8[arg1].field_256:
        revert with 0, 17
    spentToday += stor8[arg1].field_256
    if bool(stor8[arg1].field_512):
        if bool(stor8[arg1].field_512) == uint255(stor8[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor8[arg1].field_512):
            mem[96] = Mask(248, 8, stor8[arg1].field_512)
            call address(stor8[arg1].field_0) with:
               funct uint32(stor8[arg1].field_736)
               value stor8[arg1].field_256 wei
                 gas gas_remaining wei
                args mem[100 len (uint255(stor8[arg1].field_512) * 0.5) - 4]
        else:
            if bool(stor8[arg1].field_512) != 1:
                call address(stor8[arg1].field_0).mem[96 len 4] with:
                   value stor8[arg1].field_256 wei
                     gas gas_remaining wei
                    args mem[100 len -100]
            else:
                idx = 0
                s = 0
                while idx < uint255(stor8[arg1].field_512) * 0.5:
                    mem[idx + 96] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                call address(stor8[arg1].field_0).mem[96 len 4] with:
                   value stor8[arg1].field_256 wei
                     gas gas_remaining wei
                    args mem[100 len (uint255(stor8[arg1].field_512) * 0.5) - 4]
    else:
        if bool(stor8[arg1].field_512) == stor8[arg1].field_513 % 128 < 32:
            revert with 0, 34
        if not bool(stor8[arg1].field_512):
            mem[96] = Mask(248, 8, stor8[arg1].field_512)
            call address(stor8[arg1].field_0) with:
               funct uint32(stor8[arg1].field_736)
               value stor8[arg1].field_256 wei
                 gas gas_remaining wei
                args mem[100 len stor8[arg1].field_513 % 128 - 4]
        else:
            if bool(stor8[arg1].field_512) != 1:
                call address(stor8[arg1].field_0).mem[96 len 4] with:
                   value stor8[arg1].field_256 wei
                     gas gas_remaining wei
                    args mem[100 len -100]
            else:
                idx = 0
                s = 0
                while idx < stor8[arg1].field_513 % 128:
                    mem[idx + 96] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                call address(stor8[arg1].field_0).mem[96 len 4] with:
                   value stor8[arg1].field_256 wei
                     gas gas_remaining wei
                    args mem[100 len stor8[arg1].field_513 % 128 - 4]
    if not ext_call.success:
        uint8(stor8[arg1].field_768) = 0
        if spentToday < stor8[arg1].field_256:
            revert with 0, 17
        spentToday -= stor8[arg1].field_256
        if not ext_call.success:
            revert with 0, 'Failed or insufficent funds'
    emit ExecuteTransaction(msg.sender, arg1);
}

function removeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if deployerAddress != msg.sender:
        revert with 0, 'Caller is not the deployer'
    if not stor5[address(arg1)]:
        revert with 0, 'Owner is not exists'
    if deployerAddress == arg1:
        revert with 0, 'Can't remove deployer'
    stor5[address(arg1)] = 0
    if owners.length < 1:
        revert with 0, 17
    if var29002 >= owners.length - 1:
        if not owners.length:
            revert with 0, 49
        address(owners[owners.length].field_0) = 0
        owners.length--
        if numConfirmationsRequired > owners.length:
            if deployerAddress != msg.sender:
                revert with 0, 'Caller is not the deployer'
            if owners.length > 50:
                revert with 0, 'Invalid requirement'
            if owners.length > owners.length:
                revert with 0, 'Invalid requirement'
            if not owners.length:
                revert with 0, 'Invalid requirement'
            if not owners.length:
                revert with 0, 'Invalid requirement'
            numConfirmationsRequired = owners.length
            emit RequirementChange(owners.length);
        emit OwnerRemoval(arg1);
    if var31001 >= owners.length:
        revert with 0, 50
    if address(owners[var33001].field_0) == arg1:
        if owners.length < 1:
            revert with 0, 17
        if owners.length - 1 >= owners.length:
            revert with 0, 50
        if var33004 >= owners.length:
            revert with 0, 50
        address(owners[var33004].field_0) = address(owners[owners.length].field_0)
        if not owners.length:
            revert with 0, 49
        address(owners[owners.length].field_0) = 0
        owners.length--
        if numConfirmationsRequired > owners.length:
            if deployerAddress != msg.sender:
                revert with 0, 'Caller is not the deployer'
            if owners.length > 50:
                revert with 0, 'Invalid requirement'
            if owners.length > owners.length:
                revert with 0, 'Invalid requirement'
            if not owners.length:
                revert with 0, 'Invalid requirement'
            if not owners.length:
                revert with 0, 'Invalid requirement'
            numConfirmationsRequired = owners.length
            emit RequirementChange(owners.length);
        emit OwnerRemoval(arg1);
    if var37001 == -1:
        revert with 0, 17
    if owners.length < 1:
        revert with 0, 17
    if var49002 >= owners.length - 1:
        if not owners.length:
            revert with 0, 49
        address(owners[owners.length].field_0) = 0
        owners.length--
        if numConfirmationsRequired > owners.length:
            if deployerAddress != msg.sender:
                revert with 0, 'Caller is not the deployer'
            if owners.length > 50:
                revert with 0, 'Invalid requirement'
            if owners.length > owners.length:
                revert with 0, 'Invalid requirement'
            if not owners.length:
                revert with 0, 'Invalid requirement'
            if not owners.length:
                revert with 0, 'Invalid requirement'
            numConfirmationsRequired = owners.length
            emit RequirementChange(owners.length);
        emit OwnerRemoval(arg1);
    if var51001 >= owners.length:
        revert with 0, 50
    if address(owners[var53001].field_0) != arg1:
        if var57001 == -1:
            revert with 0, 17
        # nil
    else:
        if owners.length < 1:
            revert with 0, 17
        if owners.length - 1 >= owners.length:
            revert with 0, 50
        if var53004 >= owners.length:
            revert with 0, 50
        address(owners[var53004].field_0) = address(owners[owners.length].field_0)
        if not owners.length:
            revert with 0, 49
        address(owners[owners.length].field_0) = 0
        owners.length--
        if numConfirmationsRequired > owners.length:
            if deployerAddress != msg.sender:
                revert with 0, 'Caller is not the deployer'
            if owners.length > 50:
                revert with 0, 'Invalid requirement'
            if owners.length > owners.length:
                revert with 0, 'Invalid requirement'
            if not owners.length:
                revert with 0, 'Invalid requirement'
            if not owners.length:
                revert with 0, 'Invalid requirement'
            numConfirmationsRequired = owners.length
            emit RequirementChange(owners.length);
        emit OwnerRemoval(arg1);
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit Deposit(msg.value, eth.balance(this.address), msg.sender);
    if owners(uint256 arg1) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 < owners.length
        return address(owners[arg1].field_0)
    if unknown_0x12065fe0(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return eth.balance(this.address)
    if unknown_0x173825d9(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        if deployerAddress != msg.sender:
            revert with 0, 'Caller is not the deployer'
        if not stor5[address(arg1)]:
            revert with 0, 'Owner is not exists'
        if deployerAddress == address(arg1):
            revert with 0, 'Can't remove deployer'
        stor5[address(arg1)] = 0
        if owners.length < 1:
            revert with 0, 17
        if var33002 >= owners.length - 1:
            if not owners.length:
                revert with 0, 49
            address(owners[owners.length].field_0) = 0
            owners.length--
            if numConfirmationsRequired > owners.length:
                if deployerAddress != msg.sender:
                    revert with 0, 'Caller is not the deployer'
                if owners.length > 50:
                    revert with 0, 'Invalid requirement'
                if owners.length > owners.length:
                    revert with 0, 'Invalid requirement'
                if not owners.length:
                    revert with 0, 'Invalid requirement'
                if not owners.length:
                    revert with 0, 'Invalid requirement'
                numConfirmationsRequired = owners.length
                emit RequirementChange(owners.length);
            emit OwnerRemoval(address(arg1));
        if var35001 >= owners.length:
            revert with 0, 50
        if address(owners[var37001].field_0) == address(arg1):
            if owners.length < 1:
                revert with 0, 17
            if owners.length - 1 >= owners.length:
                revert with 0, 50
            if var37004 >= owners.length:
                revert with 0, 50
            address(owners[var37004].field_0) = address(owners[owners.length].field_0)
            if not owners.length:
                revert with 0, 49
            address(owners[owners.length].field_0) = 0
            owners.length--
            if numConfirmationsRequired > owners.length:
                if deployerAddress != msg.sender:
                    revert with 0, 'Caller is not the deployer'
                if owners.length > 50:
                    revert with 0, 'Invalid requirement'
                if owners.length > owners.length:
                    revert with 0, 'Invalid requirement'
                if not owners.length:
                    revert with 0, 'Invalid requirement'
                if not owners.length:
                    revert with 0, 'Invalid requirement'
                numConfirmationsRequired = owners.length
                emit RequirementChange(owners.length);
            emit OwnerRemoval(address(arg1));
        if var41001 == -1:
            revert with 0, 17
        if owners.length < 1:
            revert with 0, 17
        if var53002 >= owners.length - 1:
            if not owners.length:
                revert with 0, 49
            address(owners[owners.length].field_0) = 0
            owners.length--
            if numConfirmationsRequired > owners.length:
                if deployerAddress != msg.sender:
                    revert with 0, 'Caller is not the deployer'
                if owners.length > 50:
                    revert with 0, 'Invalid requirement'
                if owners.length > owners.length:
                    revert with 0, 'Invalid requirement'
                if not owners.length:
                    revert with 0, 'Invalid requirement'
                if not owners.length:
                    revert with 0, 'Invalid requirement'
                numConfirmationsRequired = owners.length
                emit RequirementChange(owners.length);
            emit OwnerRemoval(address(arg1));
        if var55001 >= owners.length:
            revert with 0, 50
        if address(owners[var57001].field_0) != address(arg1):
            if var61001 == -1:
                revert with 0, 17
            # nil
        else:
            if owners.length < 1:
                revert with 0, 17
            if owners.length - 1 >= owners.length:
                revert with 0, 50
            if var57004 >= owners.length:
                revert with 0, 50
            address(owners[var57004].field_0) = address(owners[owners.length].field_0)
            if not owners.length:
                revert with 0, 49
            address(owners[owners.length].field_0) = 0
            owners.length--
            if numConfirmationsRequired > owners.length:
                if deployerAddress != msg.sender:
                    revert with 0, 'Caller is not the deployer'
                if owners.length > 50:
                    revert with 0, 'Invalid requirement'
                if owners.length > owners.length:
                    revert with 0, 'Invalid requirement'
                if not owners.length:
                    revert with 0, 'Invalid requirement'
                if not owners.length:
                    revert with 0, 'Invalid requirement'
                numConfirmationsRequired = owners.length
                emit RequirementChange(owners.length);
            emit OwnerRemoval(address(arg1));
    else:
        if unknown_0x20ea8d86(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            if not stor5[msg.sender]:
                if deployerAddress != msg.sender:
                    revert with 0, 'Unauthorized caller'
            if arg1 >= stor8.length:
                revert with 0, 'Transaction does not exist'
            if uint8(stor8[arg1].field_768):
                revert with 0, 'Transaction already executed'
            if arg1 >= stor8.length:
                revert with 0, 50
            if not stor7[arg1][msg.sender]:
                revert with 0, 'Transaction not confirmed'
            if stor8[arg1].field_1024 < 1:
                revert with 0, 17
            stor8[arg1].field_1024--
            stor7[arg1][msg.sender] = 0
            emit RevokeConfirmation(msg.sender, arg1);
        else:
            if unknown_0x2e7700f0(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return stor8.length
            if unknown_0x2f54bf6e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return bool(stor5[arg1])
            if unknown_0x33ea3dc8(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if arg1 >= stor8.length:
                    revert with 0, 50
                if bool(stor8[arg1].field_512):
                    if bool(stor8[arg1].field_512) == uint255(stor8[arg1].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor8[arg1].field_512):
                        if bool(stor8[arg1].field_512) == uint255(stor8[arg1].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor8[arg1].field_512):
                            if 31 >= uint255(stor8[arg1].field_512) * 0.5:
                                mem[160] = 256 * Mask(248, 0, stor8[arg1].field_520)
                            else:
                                mem[160] = stor[sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_0
                                idx = 160
                                s = 0
                                while (uint255(stor8[arg1].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor8[arg1].field_512) == stor8[arg1].field_513 % 128 < 32:
                            revert with 0, 34
                        if stor8[arg1].field_513 % 128:
                            if 31 >= stor8[arg1].field_513 % 128:
                                mem[160] = 256 * Mask(248, 0, stor8[arg1].field_520)
                            else:
                                mem[160] = stor[sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_0
                                idx = 160
                                s = 0
                                while stor8[arg1].field_513 % 128 + 128 > idx:
                                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    return address(stor8[arg1].field_0), 
                           stor8[arg1].field_256,
                           Array(len=2 * Mask(256, -1, stor8[arg1].field_512), data=mem[160 len ceil32(uint255(stor8[arg1].field_512) * 0.5)]),
                           bool(uint8(stor8[arg1].field_768)),
                           stor8[arg1].field_1024
                if bool(stor8[arg1].field_512) == stor8[arg1].field_513 % 128 < 32:
                    revert with 0, 34
                if bool(stor8[arg1].field_512):
                    if bool(stor8[arg1].field_512) == uint255(stor8[arg1].field_512) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor8[arg1].field_512):
                        if 31 >= uint255(stor8[arg1].field_512) * 0.5:
                            mem[160] = 256 * Mask(248, 0, stor8[arg1].field_520)
                        else:
                            mem[160] = stor[sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_0
                            idx = 160
                            s = 0
                            while (uint255(stor8[arg1].field_512) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor8[arg1].field_512) == stor8[arg1].field_513 % 128 < 32:
                        revert with 0, 34
                    if stor8[arg1].field_513 % 128:
                        if 31 >= stor8[arg1].field_513 % 128:
                            mem[160] = 256 * Mask(248, 0, stor8[arg1].field_520)
                        else:
                            mem[160] = stor[sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_0
                            idx = 160
                            s = 0
                            while stor8[arg1].field_513 % 128 + 128 > idx:
                                mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                return address(stor8[arg1].field_0), 
                       stor8[arg1].field_256,
                       Array(len=stor8[arg1].field_512 % 128, data=mem[160 len ceil32(stor8[arg1].field_513 % 128)]),
                       bool(uint8(stor8[arg1].field_768)),
                       stor8[arg1].field_1024
            if unknown_0x4bc9fdc2(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if 24 * 3600 > !lastDay:
                    revert with 0, 17
                if block.timestamp > lastDay + (24 * 3600):
                    return dailyLimit
                if dailyLimit >= spentToday:
                    return (dailyLimit - spentToday)
                else:
                    return 0
            if unknown_0x67eeba0c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return dailyLimit
            if unknown_0x6b0c932d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return lastDay
            if unknown_0x7065cb48(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if deployerAddress != msg.sender:
                    revert with 0, 'Caller is not the deployer'
                if stor5[address(arg1)]:
                    revert with 0, 'Owner exists'
                if not address(arg1):
                    revert with 0, 'Address is nulled'
                if 1 > !owners.length:
                    revert with 0, 17
                if owners.length + 1 > 50:
                    revert with 0, 'Invalid requirement'
                if numConfirmationsRequired > owners.length + 1:
                    revert with 0, 'Invalid requirement'
                if not numConfirmationsRequired:
                    revert with 0, 'Invalid requirement'
                if not owners.length + 1:
                    revert with 0, 'Invalid requirement'
                stor5[address(arg1)] = 1
                owners.length++
                address(owners[owners.length].field_0) = address(arg1)
                emit OwnerAddition(address(arg1));
            else:
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if deployerAddress != msg.sender:
                        revert with 0, 'Caller is not the deployer'
                    deployerAddress = 0
                    emit OwnershipTransferred(deployerAddress, 0);
                else:
                    if unknown_0x72630531(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return deployerAddress
                    if unknown_0x80f59a65(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg2 == address(arg2)
                        return bool(stor7[arg1][arg2])
                    if unknown_0x9ace38c2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 < stor8.length
                        if bool(stor8[arg1].field_512):
                            if bool(stor8[arg1].field_512) == uint255(stor8[arg1].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor8[arg1].field_512):
                                if bool(stor8[arg1].field_512) == uint255(stor8[arg1].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor8[arg1].field_512):
                                    if 31 >= uint255(stor8[arg1].field_512) * 0.5:
                                        mem[160] = 256 * Mask(248, 0, stor8[arg1].field_520)
                                    else:
                                        mem[160] = stor[sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_0
                                        idx = 160
                                        s = 0
                                        while (uint255(stor8[arg1].field_512) * 0.5) + 128 > idx:
                                            mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                            else:
                                if bool(stor8[arg1].field_512) == stor8[arg1].field_513 % 128 < 32:
                                    revert with 0, 34
                                if stor8[arg1].field_513 % 128:
                                    if 31 >= stor8[arg1].field_513 % 128:
                                        mem[160] = 256 * Mask(248, 0, stor8[arg1].field_520)
                                    else:
                                        mem[160] = stor[sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_0
                                        idx = 160
                                        s = 0
                                        while stor8[arg1].field_513 % 128 + 128 > idx:
                                            mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                            return address(stor8[arg1].field_0), 
                                   stor8[arg1].field_256,
                                   Array(len=2 * Mask(256, -1, stor8[arg1].field_512), data=mem[160 len ceil32(uint255(stor8[arg1].field_512) * 0.5)]),
                                   bool(uint8(stor8[arg1].field_768)),
                                   stor8[arg1].field_1024
                        if bool(stor8[arg1].field_512) == stor8[arg1].field_513 % 128 < 32:
                            revert with 0, 34
                        if bool(stor8[arg1].field_512):
                            if bool(stor8[arg1].field_512) == uint255(stor8[arg1].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor8[arg1].field_512):
                                if 31 >= uint255(stor8[arg1].field_512) * 0.5:
                                    mem[160] = 256 * Mask(248, 0, stor8[arg1].field_520)
                                else:
                                    mem[160] = stor[sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_0
                                    idx = 160
                                    s = 0
                                    while (uint255(stor8[arg1].field_512) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if bool(stor8[arg1].field_512) == stor8[arg1].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor8[arg1].field_513 % 128:
                                if 31 >= stor8[arg1].field_513 % 128:
                                    mem[160] = 256 * Mask(248, 0, stor8[arg1].field_520)
                                else:
                                    mem[160] = stor[sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_0
                                    idx = 160
                                    s = 0
                                    while stor8[arg1].field_513 % 128 + 128 > idx:
                                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        return address(stor8[arg1].field_0), 
                               stor8[arg1].field_256,
                               Array(len=stor8[arg1].field_512 % 128, data=mem[160 len ceil32(stor8[arg1].field_513 % 128)]),
                               bool(uint8(stor8[arg1].field_768)),
                               stor8[arg1].field_1024
                    if unknown_0xa0e67e2b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        mem[64] = (32 * owners.length) + 160
                        mem[128] = owners.length
                        if not owners.length:
                            mem[(32 * owners.length) + 160] = 32
                            mem[(32 * owners.length) + 192] = owners.length
                            idx = 0
                            s = (32 * owners.length) + 224
                            t = 160
                            while idx < owners.length:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from (32 * owners.length) + 160
                               len (96 * owners.length) + 64
                        mem[160] = address(owners.field_0)
                        idx = 160
                        s = 0
                        while (32 * owners.length) + 128 > idx:
                            mem[idx + 32] = address(owners[s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(32 * owners.length) + 160] = 32
                        mem[(32 * owners.length) + 192] = owners.length
                        idx = 0
                        s = mem[64] + 64
                        t = 160
                        while idx < owners.length:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len (64 * owners.length) + -mem[64] + 224
                    if unknown_0xba51a6df(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if deployerAddress != msg.sender:
                            revert with 0, 'Caller is not the deployer'
                        if owners.length > 50:
                            revert with 0, 'Invalid requirement'
                        if arg1 > owners.length:
                            revert with 0, 'Invalid requirement'
                        if not arg1:
                            revert with 0, 'Invalid requirement'
                        if not owners.length:
                            revert with 0, 'Invalid requirement'
                        numConfirmationsRequired = arg1
                        emit RequirementChange(arg1);
                    else:
                        if unknown_0xc01a8c84(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if not stor5[msg.sender]:
                                if deployerAddress != msg.sender:
                                    revert with 0, 'Unauthorized caller'
                            if arg1 >= stor8.length:
                                revert with 0, 'Transaction does not exist'
                            if uint8(stor8[arg1].field_768):
                                revert with 0, 'Transaction already executed'
                            if stor7[arg1][msg.sender]:
                                revert with 0, 'Transaction already confirmed'
                            if arg1 >= stor8.length:
                                revert with 0, 50
                            if stor8[arg1].field_1024 > -2:
                                revert with 0, 17
                            stor8[arg1].field_1024++
                            stor7[arg1][msg.sender] = 1
                            emit ConfirmTransaction(msg.sender, arg1);
                        else:
                            if unknown_0xc6427474(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 96
                                require arg1 == address(arg1)
                                require arg3 <= test266151307()
                                require arg3 + 35 < calldata.size
                                if arg3.length > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(arg3.length)) + 129 < 128 or ceil32(ceil32(arg3.length)) + 129 > test266151307():
                                    revert with 0, 65
                                require arg3 + arg3.length + 36 <= calldata.size
                                if not stor5[msg.sender]:
                                    if deployerAddress != msg.sender:
                                        revert with 0, 'Unauthorized caller'
                                stor8.length++
                                address(stor8[stor8.length].field_0) = address(arg1)
                                storF3F7[stor8.length] = arg2
                                if bool(storF3F7[stor8.length].field_0):
                                    if bool(storF3F7[stor8.length].field_0) == uint255(storF3F7[stor8.length].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if arg3.length:
                                        stor[sha3((5 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911b)][] = Array(len=arg3.length, data=arg3[all])
                                    else:
                                        storF3F7[stor8.length].field_0 = 0
                                        idx = 0
                                        while (uint255(storF3F7[stor8.length].field_0) * 0.5) + 31 / 32 > idx:
                                            stor[idx + sha3((5 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911b)] = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(storF3F7[stor8.length].field_0) == storF3F7[stor8.length].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if arg3.length:
                                        stor[sha3((5 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911b)][] = Array(len=arg3.length, data=arg3[all])
                                    else:
                                        storF3F7[stor8.length].field_0 = 0
                                        idx = 0
                                        while storF3F7[stor8.length].field_1 % 128 + 31 / 32 > idx:
                                            stor[idx + sha3((5 * stor8.length) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911b)] = 0
                                            idx = idx + 1
                                            continue 
                                storF3F7[stor8.length] = 0
                                storF3F7[stor8.length] = 0
                                emit SubmitTransaction(address arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5):
                                                       arg2,
                                                       64,
                                                       arg3.length,
                                                       arg3[all],
                                                       0,
                                                       msg.sender,
                                                       stor8.length,
                                                       address(arg1),
                            else:
                                if unknown_0xcea08621(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    if deployerAddress != msg.sender:
                                        revert with 0, 'Caller is not the deployer'
                                    dailyLimit = arg1
                                    emit DailyLimitChange(arg1);
                                else:
                                    if unknown_0xd0549b85(?????) == uint32(call.func_hash) >> 224:
                                        require not msg.value
                                        return numConfirmationsRequired
                                    if unknown_0xd74f8edd(?????) == uint32(call.func_hash) >> 224:
                                        require not msg.value
                                        return 50
                                    if uint32(call.func_hash) >> 224 != unknown_0xee22610b(?????):
                                        if unknown_0xf059cf2b(?????) == uint32(call.func_hash) >> 224:
                                            require not msg.value
                                            return spentToday
                                        require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                                        require not msg.value
                                        require calldata.size - 4 >= 32
                                        require arg1 == address(arg1)
                                        if deployerAddress != msg.sender:
                                            revert with 0, 'Caller is not the deployer'
                                        if not address(arg1):
                                            revert with 0, 'Invalid new owner'
                                        deployerAddress = address(arg1)
                                        emit OwnershipTransferred(deployerAddress, address(arg1));
                                    else:
                                        require not msg.value
                                        require calldata.size - 4 >= 32
                                        if not stor5[msg.sender]:
                                            if deployerAddress != msg.sender:
                                                revert with 0, 'Unauthorized caller'
                                        if arg1 >= stor8.length:
                                            revert with 0, 'Transaction does not exist'
                                        if uint8(stor8[arg1].field_768):
                                            revert with 0, 'Transaction already executed'
                                        if arg1 >= stor8.length:
                                            revert with 0, 50
                                        if stor8[arg1].field_1024 < numConfirmationsRequired:
                                            revert with 0, 'Cannot execute transaction'
                                        if 24 * 3600 > !lastDay:
                                            revert with 0, 17
                                        if block.timestamp > lastDay + (24 * 3600):
                                            lastDay = block.timestamp
                                            spentToday = 0
                                        if spentToday > !stor8[arg1].field_256:
                                            revert with 0, 17
                                        if spentToday + stor8[arg1].field_256 > dailyLimit:
                                            revert with 0, 'Maximum daily limit'
                                        if spentToday > !stor8[arg1].field_256:
                                            revert with 0, 17
                                        if spentToday + stor8[arg1].field_256 < spentToday:
                                            revert with 0, 'Maximum daily limit'
                                        uint8(stor8[arg1].field_768) = 1
                                        if spentToday > !stor8[arg1].field_256:
                                            revert with 0, 17
                                        spentToday += stor8[arg1].field_256
                                        if bool(stor8[arg1].field_512):
                                            if bool(stor8[arg1].field_512) == uint255(stor8[arg1].field_512) * 0.5 < 32:
                                                revert with 0, 34
                                            if not bool(stor8[arg1].field_512):
                                                mem[128] = Mask(248, 8, stor8[arg1].field_512)
                                                call address(stor8[arg1].field_0) with:
                                                   funct uint32(stor8[arg1].field_736)
                                                   value stor8[arg1].field_256 wei
                                                     gas gas_remaining wei
                                                    args mem[132 len (uint255(stor8[arg1].field_512) * 0.5) - 4]
                                            else:
                                                if bool(stor8[arg1].field_512) != 1:
                                                    call address(stor8[arg1].field_0).mem[128 len 4] with:
                                                       value stor8[arg1].field_256 wei
                                                         gas gas_remaining wei
                                                        args mem[132 len -132]
                                                else:
                                                    idx = 0
                                                    s = 0
                                                    while idx < uint255(stor8[arg1].field_512) * 0.5:
                                                        mem[idx + 128] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_0
                                                        idx = idx + 32
                                                        s = s + 1
                                                        continue 
                                                    call address(stor8[arg1].field_0).mem[128 len 4] with:
                                                       value stor8[arg1].field_256 wei
                                                         gas gas_remaining wei
                                                        args mem[132 len (uint255(stor8[arg1].field_512) * 0.5) - 4]
                                        else:
                                            if bool(stor8[arg1].field_512) == stor8[arg1].field_513 % 128 < 32:
                                                revert with 0, 34
                                            if not bool(stor8[arg1].field_512):
                                                mem[128] = Mask(248, 8, stor8[arg1].field_512)
                                                call address(stor8[arg1].field_0) with:
                                                   funct uint32(stor8[arg1].field_736)
                                                   value stor8[arg1].field_256 wei
                                                     gas gas_remaining wei
                                                    args mem[132 len stor8[arg1].field_513 % 128 - 4]
                                            else:
                                                if bool(stor8[arg1].field_512) != 1:
                                                    call address(stor8[arg1].field_0).mem[128 len 4] with:
                                                       value stor8[arg1].field_256 wei
                                                         gas gas_remaining wei
                                                        args mem[132 len -132]
                                                else:
                                                    idx = 0
                                                    s = 0
                                                    while idx < stor8[arg1].field_513 % 128:
                                                        mem[idx + 128] = stor[s + sha3((5 * arg1) + ('name', 'stor8', 8) + 2)].field_0
                                                        idx = idx + 32
                                                        s = s + 1
                                                        continue 
                                                    call address(stor8[arg1].field_0).mem[128 len 4] with:
                                                       value stor8[arg1].field_256 wei
                                                         gas gas_remaining wei
                                                        args mem[132 len stor8[arg1].field_513 % 128 - 4]
                                        if not ext_call.success:
                                            uint8(stor8[arg1].field_768) = 0
                                            if spentToday < stor8[arg1].field_256:
                                                revert with 0, 17
                                            spentToday -= stor8[arg1].field_256
                                            if not ext_call.success:
                                                revert with 0, 'Failed or insufficent funds'
                                        emit ExecuteTransaction(msg.sender, arg1);
}



}
