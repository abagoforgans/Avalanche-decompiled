contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address recoveryAdminAddress;
address stor6;
uint256 stor7;
address adminAddress;
uint256 timelockPeriod;
uint256 losslessTurnOffTimestamp;
uint8 isLosslessTurnOffProposed;
uint8 isLosslessOn; offset 8
uint16 stor11;
address stor11; offset 16

function totalSupply() payable {
    return totalSupply
}

function timelockPeriod() payable {
    return timelockPeriod
}

function recoveryAdmin() payable {
    return recoveryAdminAddress
}

function losslessTurnOffTimestamp() payable {
    return losslessTurnOffTimestamp
}

function getAdmin() payable {
    return adminAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function isLosslessOn() payable {
    return bool(isLosslessOn)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function isLosslessTurnOffProposed() payable {
    return bool(isLosslessTurnOffProposed)
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function executeLosslessTurnOn() payable {
    if recoveryAdminAddress != msg.sender:
        revert with 0, 'LERC20: Must be recovery admin'
    isLosslessTurnOffProposed = 0
    isLosslessOn = 1
    emit LosslessTurnedOn()
}

function setLosslessAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if recoveryAdminAddress != msg.sender:
        revert with 0, 'LERC20: Must be recovery admin'
    emit AdminChanged(adminAddress, arg1);
    adminAddress = arg1
}

function transferRecoveryAdminOwnership(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if recoveryAdminAddress != msg.sender:
        revert with 0, 'LERC20: Must be recovery admin'
    stor6 = arg1
    stor7 = arg2
    emit RecoveryAdminChangeProposed(arg1);
}

function proposeLosslessTurnOff() payable {
    if recoveryAdminAddress != msg.sender:
        revert with 0, 'LERC20: Must be recovery admin'
    if block.timestamp > !timelockPeriod:
        revert with 0, 17
    losslessTurnOffTimestamp = block.timestamp + timelockPeriod
    isLosslessTurnOffProposed = 1
    emit LosslessTurnOffProposed((block.timestamp + timelockPeriod));
}

function executeLosslessTurnOff() payable {
    if recoveryAdminAddress != msg.sender:
        revert with 0, 'LERC20: Must be recovery admin'
    if not isLosslessTurnOffProposed:
        revert with 0, 'LERC20: TurnOff not proposed'
    if losslessTurnOffTimestamp > block.timestamp:
        revert with 0, 'LERC20: Time lock in progress'
    uint16(stor11.field_0) = 0
    emit LosslessTurnedOff()
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'YDR: caller is not the admin'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit 0xfeddf252: arg1, msg.sender, 0
}

function acceptRecoveryAdminOwnership(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if stor6 != msg.sender:
        revert with 0, 'LERC20: Must be canditate'
    if sha3(arg1[all]) != stor7:
        revert with 0, 'LERC20: Invalid key'
    emit RecoveryAdminChanged(recoveryAdminAddress, stor6);
    recoveryAdminAddress = stor6
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not isLosslessOn:
        if allowance[msg.sender][address(arg1)] > !arg2:
            revert with 0, 17
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: approve from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: approve to the zero address'
        allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
        emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    else:
        require ext_code.size(address(stor11.field_16))
        call address(stor11.field_16).beforeIncreaseAllowance(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if allowance[msg.sender][address(arg1)] > !arg2:
            revert with 0, 17
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: approve from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: approve to the zero address'
        allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
        emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
        require ext_code.size(address(stor11.field_16))
        call address(stor11.field_16).afterIncreaseAllowance(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferOutBlacklistedFunds(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if address(stor11.field_16) != msg.sender:
        revert with 0, 'LERC20: Only lossless contract'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if not address(cd[((32 * idx) + arg1 + 36)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: transfer from the zero address'
        if not address(stor11.field_16):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: transfer to the zero address'
        if balanceOf[address(cd[((32 * idx) + arg1 + 36)])] < balanceOf[address(cd[((32 * idx) + arg1 + 36)])]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0xef4c45524332303a207472616e7366657220616d6f756e742065786365656473,
                        'balance' << 200
        mem[32] = 0
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] = 0
        if balanceOf[address(stor11.field_16)] > !balanceOf[address(cd[((32 * idx) + arg1 + 36)])]:
            revert with 0, 17
        balanceOf[address(stor11.field_16)] += balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        mem[0] = address(stor11.field_16)
        mem[96] = balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        emit 0xfeddf252: balanceOf[address(cd[((32 * idx) + arg1 + 36)])], address(cd[((32 * idx) + arg1 + 36)]), address(stor11.field_16)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not isLosslessOn:
        if arg2:
            if allowance[msg.sender][address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: Cannot change non zero allowance'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: approve from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: approve to the zero address'
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
    else:
        require ext_code.size(address(stor11.field_16))
        call address(stor11.field_16).beforeApprove(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg2 != 0:
            if allowance[msg.sender][address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: Cannot change non zero allowance'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: approve from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: approve to the zero address'
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
        require ext_code.size(address(stor11.field_16))
        call address(stor11.field_16).afterApprove(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not isLosslessOn:
        if allowance[msg.sender][address(arg1)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: decreased allowance below zero'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: approve from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: approve to the zero address'
        allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
        emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    else:
        require ext_code.size(address(stor11.field_16))
        call address(stor11.field_16).beforeDecreaseAllowance(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if allowance[address(msg.sender)][address(arg1)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: decreased allowance below zero'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: approve from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: approve to the zero address'
        allowance[address(msg.sender)][address(arg1)] -= arg2
        emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
        require ext_code.size(address(stor11.field_16))
        call address(stor11.field_16).afterDecreaseAllowance(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not isLosslessOn:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0xef4c45524332303a207472616e7366657220616d6f756e742065786365656473,
                        'balance' << 200
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[arg1] += arg2
        emit 0xfeddf252: arg2, msg.sender, arg1
    else:
        require ext_code.size(address(stor11.field_16))
        call address(stor11.field_16).beforeTransfer(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0xef4c45524332303a207472616e7366657220616d6f756e742065786365656473,
                        'balance' << 200
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[arg1] += arg2
        emit 0xfeddf252: arg2, msg.sender, arg1
        require ext_code.size(address(stor11.field_16))
        call address(stor11.field_16).afterTransfer(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not isLosslessOn:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0xef4c45524332303a207472616e7366657220616d6f756e742065786365656473,
                        'balance' << 200
        balanceOf[address(arg1)] -= arg3
        if balanceOf[arg2] > !arg3:
            revert with 0, 17
        balanceOf[arg2] += arg3
        emit 0xfeddf252: arg3, arg1, arg2
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xef4c45524332303a207472616e7366657220616d6f756e742065786365656473,
                        'allowance' << 184
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
        emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    else:
        require ext_code.size(address(stor11.field_16))
        call address(stor11.field_16).beforeTransferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0xef4c45524332303a207472616e7366657220616d6f756e742065786365656473,
                        'balance' << 200
        balanceOf[address(arg1)] -= arg3
        if balanceOf[arg2] > !arg3:
            revert with 0, 17
        balanceOf[arg2] += arg3
        emit 0xfeddf252: arg3, arg1, arg2
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xef4c45524332303a207472616e7366657220616d6f756e742065786365656473,
                        'allowance' << 184
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
        emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
        require ext_code.size(address(stor11.field_16))
        call address(stor11.field_16).afterTransferFrom(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
