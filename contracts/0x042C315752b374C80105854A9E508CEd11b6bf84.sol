contract main {




// =====================  Runtime code  =====================


const getContractBalance = eth.balance(this.address)


address tokenAddress;
array of struct stor1;
uint256 balance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address stor3;
mapping of struct vestingInfo;
mapping of uint8 stor5;
array of struct transactions;
mapping of uint8 stor7;
array of address stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986689;
array of uint8 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;

function Balance() payable {
    return balance
}

function getTransactionCount() payable {
    if not stor5[msg.sender]:
        revert with 0, 'not owner'
    return transactions.length
}

function getTransaction(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        revert with 0, 'not owner'
    if arg1 >= transactions.length:
        revert with 0, 50
    return transactions[arg1].field_0, 
           transactions[arg1].field_256,
           transactions[arg1].field_512,
           bool(transactions[arg1].field_768)
}

function sub_3687ff58(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function isConfirmed(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(stor7[arg1][arg2])
}

function transactions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < transactions.length
    return transactions[arg1].field_0, 
           transactions[arg1].field_256,
           transactions[arg1].field_512,
           bool(transactions[arg1].field_768)
}

function Token() payable {
    return tokenAddress
}

function Vesting(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return vestingInfo[arg1].field_0, 
           vestingInfo[arg1].field_256,
           vestingInfo[arg1].field_512,
           vestingInfo[arg1].field_768,
           vestingInfo[arg1].field_1024,
           vestingInfo[arg1].field_1280,
           bool(vestingInfo[arg1].field_1536)
}

function getVestingInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return vestingInfo[address(arg1)].field_0, 
           vestingInfo[address(arg1)].field_256,
           vestingInfo[address(arg1)].field_512,
           vestingInfo[address(arg1)].field_768,
           vestingInfo[address(arg1)].field_1024,
           vestingInfo[address(arg1)].field_1280,
           bool(vestingInfo[address(arg1)].field_1536)
}

function _fallback() payable {
    revert
}

function sub_88002d09(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor3.field_0) != msg.sender:
        revert with 0, 'You are not Authorized!'
    address(stor3.field_0) = address(arg1)
}

function sub_31049bf3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if address(stor3.field_0) != msg.sender:
        revert with 0, 'You are not Authorized!'
    if bool(arg1) == bool(uint8(stor3.field_160)):
        revert with 0, 'No Change!'
    Mask(96, 0, stor3.field_160) = Mask(96, 0, bool(arg1))
}

function sub_8d94bc02(?) payable {
    staticcall tokenAddress.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8b86c237(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if address(stor3.field_0) != msg.sender:
        revert with 0, 'You are not Authorized!'
    if bool(arg2) == bool(vestingInfo[address(arg1)].field_1536):
        revert with 0, 'No Change!'
    vestingInfo[address(arg1)].field_1536 = uint8(bool(arg2))
}

function Withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        revert with 0, 'not owner'
    if not address(stor3.field_0):
        revert with 0, 'Address cannot be Zero!'
    if arg1 <= 0:
        revert with 0, 'Amount cannot be Zero!'
    call address(stor3.field_0) with:
       value arg1 wei
         gas gas_remaining wei
    require ext_call.success
}

function sub_27782212(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor5[msg.sender]:
        revert with 0, 'not owner'
    transactions.length++
    transactions[transactions.length].field_0 = address(arg1)
    storF652[stor6.length] = address(arg2)
    storF652[stor6.length] = arg3
    storF652[stor6.length] = 0
    stor7[stor6.length][msg.sender] = 1
}

function sub_d4d90b29(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if address(stor3.field_0) != msg.sender:
        revert with 0, 'You are not Authorized!'
    if arg2 <= vestingInfo[address(arg1)].field_512:
        revert with 0, 'Start time must be greater'
    if arg3 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'End time must be greater start time'
    if arg2 > arg3:
        revert with 0, 'SM: subtraction overflow', 0
    if arg3 < arg2:
        revert with 0, 17
    if not arg3 - arg2:
        revert with 0, 'SM: division by zero', 0
    vestingInfo[address(arg1)].field_512 = arg2
    vestingInfo[address(arg1)].field_1024 = 0
    vestingInfo[address(arg1)].field_768 = arg3
    vestingInfo[address(arg1)].field_1280 = vestingInfo[address(arg1)].field_0 / arg3 - arg2
}

function sub_76907fd7(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    if address(stor3.field_0) != msg.sender:
        revert with 0, 'You are not Authorized!'
    if arg4 <= arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'End time must be greater start time'
    if arg3 > arg4:
        revert with 0, 'SM: subtraction overflow', 0
    if arg4 < arg3:
        revert with 0, 17
    if not arg4 - arg3:
        revert with 0, 'SM: division by zero', 0
    vestingInfo[address(arg1)].field_0 = arg2
    vestingInfo[address(arg1)].field_256 = 0
    vestingInfo[address(arg1)].field_512 = arg3
    vestingInfo[address(arg1)].field_768 = arg4
    vestingInfo[address(arg1)].field_1024 = 0
    vestingInfo[address(arg1)].field_1280 = arg2 / arg4 - arg3
    vestingInfo[address(arg1)].field_1536 = 1
}

function confirmTransaction(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[msg.sender]:
        revert with 0, 'not owner'
    if arg1 >= transactions.length:
        revert with 0, 'tx does not exist'
    if transactions[arg1].field_768:
        revert with 0, 'tx already executed'
    if stor7[arg1][msg.sender]:
        revert with 0, 'tx already confirmed'
    if arg1 >= transactions.length:
        revert with 0, 50
    stor7[arg1][msg.sender] = 1
    transactions[arg1].field_768 = 1
    call transactions[arg1].field_0.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args transactions[arg1].field_256, transactions[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function Deposit() payable {
    if address(stor3.field_0) != msg.sender:
        revert with 0, 'You are not Authorized!'
    staticcall tokenAddress.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No balance allocated for Allowance!'
    if balance > !ext_call.return_data[0]:
        revert with 0, 17
    if balance + ext_call.return_data[0] < balance:
        revert with 0, 'SM: addition overflow'
    balance += ext_call.return_data[0]
    call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function Name() payable {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
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

function sub_0c593a3c(?) payable {
    if bool(vestingInfo[msg.sender].field_1536) != 1:
        revert with 0, 'You are not Authorized!'
    if not vestingInfo[msg.sender].field_0:
        revert with 0, 'You are not Authorized!'
    if block.timestamp <= vestingInfo[msg.sender].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vesting period has not started yet!'
    if block.timestamp < vestingInfo[msg.sender].field_768:
        if vestingInfo[msg.sender].field_1024 < vestingInfo[msg.sender].field_512:
            if vestingInfo[msg.sender].field_512 > block.timestamp:
                revert with 0, 'SM: subtraction overflow', 0
            if block.timestamp < vestingInfo[msg.sender].field_512:
                revert with 0, 17
            if not block.timestamp - vestingInfo[msg.sender].field_512:
                return 0
            if block.timestamp - vestingInfo[msg.sender].field_512 and vestingInfo[msg.sender].field_1280 > -1 / block.timestamp - vestingInfo[msg.sender].field_512:
                revert with 0, 17
            if not block.timestamp - vestingInfo[msg.sender].field_512:
                revert with 0, 18
            if (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280) / block.timestamp - vestingInfo[msg.sender].field_512 != vestingInfo[msg.sender].field_1280:
                revert with 0, 'SM: multiplication overflow'
            return ((block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280))
        if vestingInfo[msg.sender].field_1024 > block.timestamp:
            revert with 0, 'SM: subtraction overflow', 0
        if block.timestamp < vestingInfo[msg.sender].field_1024:
            revert with 0, 17
        if not block.timestamp - vestingInfo[msg.sender].field_1024:
            return 0
        if block.timestamp - vestingInfo[msg.sender].field_1024 and vestingInfo[msg.sender].field_1280 > -1 / block.timestamp - vestingInfo[msg.sender].field_1024:
            revert with 0, 17
        if not block.timestamp - vestingInfo[msg.sender].field_1024:
            revert with 0, 18
        if (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280) / block.timestamp - vestingInfo[msg.sender].field_1024 != vestingInfo[msg.sender].field_1280:
            revert with 0, 'SM: multiplication overflow'
        return ((block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280))
    if vestingInfo[msg.sender].field_1024 < vestingInfo[msg.sender].field_512:
        if vestingInfo[msg.sender].field_512 > vestingInfo[msg.sender].field_768:
            revert with 0, 'SM: subtraction overflow', 0
        if vestingInfo[msg.sender].field_768 < vestingInfo[msg.sender].field_512:
            revert with 0, 17
        if not vestingInfo[msg.sender].field_768 - vestingInfo[msg.sender].field_512:
            return 0
        if vestingInfo[msg.sender].field_768 - vestingInfo[msg.sender].field_512 and vestingInfo[msg.sender].field_1280 > -1 / vestingInfo[msg.sender].field_768 - vestingInfo[msg.sender].field_512:
            revert with 0, 17
        if not vestingInfo[msg.sender].field_768 - vestingInfo[msg.sender].field_512:
            revert with 0, 18
        if (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280) / vestingInfo[msg.sender].field_768 - vestingInfo[msg.sender].field_512 != vestingInfo[msg.sender].field_1280:
            revert with 0, 'SM: multiplication overflow'
        return ((vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280))
    if vestingInfo[msg.sender].field_1024 > vestingInfo[msg.sender].field_768:
        revert with 0, 'SM: subtraction overflow', 0
    if vestingInfo[msg.sender].field_768 < vestingInfo[msg.sender].field_1024:
        revert with 0, 17
    if not vestingInfo[msg.sender].field_768 - vestingInfo[msg.sender].field_1024:
        return 0
    if vestingInfo[msg.sender].field_768 - vestingInfo[msg.sender].field_1024 and vestingInfo[msg.sender].field_1280 > -1 / vestingInfo[msg.sender].field_768 - vestingInfo[msg.sender].field_1024:
        revert with 0, 17
    if not vestingInfo[msg.sender].field_768 - vestingInfo[msg.sender].field_1024:
        revert with 0, 18
    if (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280) / vestingInfo[msg.sender].field_768 - vestingInfo[msg.sender].field_1024 != vestingInfo[msg.sender].field_1280:
        revert with 0, 'SM: multiplication overflow'
    return ((vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280))
}

function Claim() payable {
    if bool(vestingInfo[msg.sender].field_1536) != 1:
        revert with 0, 'You are not Authorized!'
    if not vestingInfo[msg.sender].field_0:
        revert with 0, 'You are not Authorized!'
    if bool(uint8(stor3.field_160)) != 1:
        revert with 0, 'Vesting Claim Off!'
    if block.timestamp <= vestingInfo[msg.sender].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vesting period has not started yet!'
    if block.timestamp < vestingInfo[msg.sender].field_768:
        if vestingInfo[msg.sender].field_1024 < vestingInfo[msg.sender].field_512:
            if vestingInfo[msg.sender].field_512 > block.timestamp:
                revert with 0, 'SM: subtraction overflow', 0
            if block.timestamp < vestingInfo[msg.sender].field_512:
                revert with 0, 17
            if not block.timestamp - vestingInfo[msg.sender].field_512:
                revert with 0, 'Non found reward.'
            if block.timestamp - vestingInfo[msg.sender].field_512 and vestingInfo[msg.sender].field_1280 > -1 / block.timestamp - vestingInfo[msg.sender].field_512:
                revert with 0, 17
            if not block.timestamp - vestingInfo[msg.sender].field_512:
                revert with 0, 18
            if (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280) / block.timestamp - vestingInfo[msg.sender].field_512 != vestingInfo[msg.sender].field_1280:
                revert with 0, 'SM: multiplication overflow'
            if (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280) <= 0:
                revert with 0, 'Non found reward.'
            if (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280) > vestingInfo[msg.sender].field_0:
                revert with 0, 'Calc Err!'
            if (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280) > balance:
                revert with 0, 'Insufficient Balance!'
            if (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280) > vestingInfo[msg.sender].field_0:
                revert with 0, 'SM: subtraction overflow', 0
            if vestingInfo[msg.sender].field_0 < (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280):
                revert with 0, 17
            vestingInfo[msg.sender].field_0 = vestingInfo[msg.sender].field_0 - (block.timestamp * vestingInfo[msg.sender].field_1280) + (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280)
            if vestingInfo[msg.sender].field_256 > !((block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280)):
                revert with 0, 17
            if vestingInfo[msg.sender].field_256 + (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280) < vestingInfo[msg.sender].field_256:
                revert with 0, 'SM: addition overflow'
            vestingInfo[msg.sender].field_256 = vestingInfo[msg.sender].field_256 + (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280)
            if (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280) > balance:
                revert with 0, 'SM: subtraction overflow', 0
            if balance < (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280):
                revert with 0, 17
            balance = balance - (block.timestamp * vestingInfo[msg.sender].field_1280) + (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280)
            vestingInfo[msg.sender].field_1024 = block.timestamp
            call tokenAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Harvest(msg.sender, (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280), block.timestamp);
        else:
            if vestingInfo[msg.sender].field_1024 > block.timestamp:
                revert with 0, 'SM: subtraction overflow', 0
            if block.timestamp < vestingInfo[msg.sender].field_1024:
                revert with 0, 17
            if not block.timestamp - vestingInfo[msg.sender].field_1024:
                revert with 0, 'Non found reward.'
            if block.timestamp - vestingInfo[msg.sender].field_1024 and vestingInfo[msg.sender].field_1280 > -1 / block.timestamp - vestingInfo[msg.sender].field_1024:
                revert with 0, 17
            if not block.timestamp - vestingInfo[msg.sender].field_1024:
                revert with 0, 18
            if (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280) / block.timestamp - vestingInfo[msg.sender].field_1024 != vestingInfo[msg.sender].field_1280:
                revert with 0, 'SM: multiplication overflow'
            if (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280) <= 0:
                revert with 0, 'Non found reward.'
            if (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280) > vestingInfo[msg.sender].field_0:
                revert with 0, 'Calc Err!'
            if (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280) > balance:
                revert with 0, 'Insufficient Balance!'
            if (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280) > vestingInfo[msg.sender].field_0:
                revert with 0, 'SM: subtraction overflow', 0
            if vestingInfo[msg.sender].field_0 < (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280):
                revert with 0, 17
            vestingInfo[msg.sender].field_0 = vestingInfo[msg.sender].field_0 - (block.timestamp * vestingInfo[msg.sender].field_1280) + (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280)
            if vestingInfo[msg.sender].field_256 > !((block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280)):
                revert with 0, 17
            if vestingInfo[msg.sender].field_256 + (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280) < vestingInfo[msg.sender].field_256:
                revert with 0, 'SM: addition overflow'
            vestingInfo[msg.sender].field_256 = vestingInfo[msg.sender].field_256 + (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280)
            if (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280) > balance:
                revert with 0, 'SM: subtraction overflow', 0
            if balance < (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280):
                revert with 0, 17
            balance = balance - (block.timestamp * vestingInfo[msg.sender].field_1280) + (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280)
            vestingInfo[msg.sender].field_1024 = block.timestamp
            call tokenAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Harvest(msg.sender, (block.timestamp * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280), block.timestamp);
    else:
        if vestingInfo[msg.sender].field_1024 < vestingInfo[msg.sender].field_512:
            if vestingInfo[msg.sender].field_512 > vestingInfo[msg.sender].field_768:
                revert with 0, 'SM: subtraction overflow', 0
            if vestingInfo[msg.sender].field_768 < vestingInfo[msg.sender].field_512:
                revert with 0, 17
            if not vestingInfo[msg.sender].field_768 - vestingInfo[msg.sender].field_512:
                revert with 0, 'Non found reward.'
            if vestingInfo[msg.sender].field_768 - vestingInfo[msg.sender].field_512 and vestingInfo[msg.sender].field_1280 > -1 / vestingInfo[msg.sender].field_768 - vestingInfo[msg.sender].field_512:
                revert with 0, 17
            if not vestingInfo[msg.sender].field_768 - vestingInfo[msg.sender].field_512:
                revert with 0, 18
            if (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280) / vestingInfo[msg.sender].field_768 - vestingInfo[msg.sender].field_512 != vestingInfo[msg.sender].field_1280:
                revert with 0, 'SM: multiplication overflow'
            if (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280) <= 0:
                revert with 0, 'Non found reward.'
            if (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280) > vestingInfo[msg.sender].field_0:
                revert with 0, 'Calc Err!'
            if (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280) > balance:
                revert with 0, 'Insufficient Balance!'
            if (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280) > vestingInfo[msg.sender].field_0:
                revert with 0, 'SM: subtraction overflow', 0
            if vestingInfo[msg.sender].field_0 < (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280):
                revert with 0, 17
            vestingInfo[msg.sender].field_0 = vestingInfo[msg.sender].field_0 - (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) + (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280)
            if vestingInfo[msg.sender].field_256 > !((vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280)):
                revert with 0, 17
            if vestingInfo[msg.sender].field_256 + (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280) < vestingInfo[msg.sender].field_256:
                revert with 0, 'SM: addition overflow'
            vestingInfo[msg.sender].field_256 = vestingInfo[msg.sender].field_256 + (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280)
            if (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280) > balance:
                revert with 0, 'SM: subtraction overflow', 0
            if balance < (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280):
                revert with 0, 17
            balance = balance - (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) + (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280)
            vestingInfo[msg.sender].field_1024 = vestingInfo[msg.sender].field_768
            call tokenAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Harvest(msg.sender, (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_512 * vestingInfo[msg.sender].field_1280), vestingInfo[msg.sender].field_768);
        else:
            if vestingInfo[msg.sender].field_1024 > vestingInfo[msg.sender].field_768:
                revert with 0, 'SM: subtraction overflow', 0
            if vestingInfo[msg.sender].field_768 < vestingInfo[msg.sender].field_1024:
                revert with 0, 17
            if not vestingInfo[msg.sender].field_768 - vestingInfo[msg.sender].field_1024:
                revert with 0, 'Non found reward.'
            if vestingInfo[msg.sender].field_768 - vestingInfo[msg.sender].field_1024 and vestingInfo[msg.sender].field_1280 > -1 / vestingInfo[msg.sender].field_768 - vestingInfo[msg.sender].field_1024:
                revert with 0, 17
            if not vestingInfo[msg.sender].field_768 - vestingInfo[msg.sender].field_1024:
                revert with 0, 18
            if (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280) / vestingInfo[msg.sender].field_768 - vestingInfo[msg.sender].field_1024 != vestingInfo[msg.sender].field_1280:
                revert with 0, 'SM: multiplication overflow'
            if (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280) <= 0:
                revert with 0, 'Non found reward.'
            if (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280) > vestingInfo[msg.sender].field_0:
                revert with 0, 'Calc Err!'
            if (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280) > balance:
                revert with 0, 'Insufficient Balance!'
            if (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280) > vestingInfo[msg.sender].field_0:
                revert with 0, 'SM: subtraction overflow', 0
            if vestingInfo[msg.sender].field_0 < (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280):
                revert with 0, 17
            vestingInfo[msg.sender].field_0 = vestingInfo[msg.sender].field_0 - (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) + (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280)
            if vestingInfo[msg.sender].field_256 > !((vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280)):
                revert with 0, 17
            if vestingInfo[msg.sender].field_256 + (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280) < vestingInfo[msg.sender].field_256:
                revert with 0, 'SM: addition overflow'
            vestingInfo[msg.sender].field_256 = vestingInfo[msg.sender].field_256 + (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280)
            if (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280) > balance:
                revert with 0, 'SM: subtraction overflow', 0
            if balance < (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280):
                revert with 0, 17
            balance = balance - (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) + (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280)
            vestingInfo[msg.sender].field_1024 = vestingInfo[msg.sender].field_768
            call tokenAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Harvest(msg.sender, (vestingInfo[msg.sender].field_768 * vestingInfo[msg.sender].field_1280) - (vestingInfo[msg.sender].field_1024 * vestingInfo[msg.sender].field_1280), vestingInfo[msg.sender].field_768);
}



}
