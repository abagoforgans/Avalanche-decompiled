contract main {




// =====================  Runtime code  =====================


const REDEEMER_ROLE = 0x44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577cc

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
uint256 stor1;
address vestingTokenAddress;
address eTokenAddress;
uint256 sub_f68741d6;
uint256 totalAmountDeposited;
uint256 sub_84b12a90;
uint256 startDate;
uint256 periodLength;
uint256 sub_ad7f5c78;
mapping of struct sub_ed6272e0;

function startDate() payable {
    return startDate
}

function totalAmountDeposited() payable {
    return totalAmountDeposited
}

function vestingToken() payable {
    return vestingTokenAddress
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_84b12a90(?) payable {
    return sub_84b12a90
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function eToken() payable {
    return eTokenAddress
}

function sub_ad7f5c78(?) payable {
    return sub_ad7f5c78
}

function periodLength() payable {
    return periodLength
}

function sub_ed6272e0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ed6272e0[arg1].field_0, 
           sub_ed6272e0[arg1].field_256,
           sub_ed6272e0[arg1].field_512,
           bool(sub_ed6272e0[arg1].field_768)
}

function sub_f68741d6(?) payable {
    return sub_f68741d6
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_9c8ef6bb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(eTokenAddress)
    staticcall eTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_13601816(?) payable {
    if block.timestamp < startDate:
        revert with 0, 17
    if not block.timestamp - startDate:
        return 0
    if block.timestamp - startDate and 10000 > -1 / block.timestamp - startDate:
        revert with 0, 17
    if not periodLength:
        revert with 0, 18
    if not sub_ad7f5c78:
        revert with 0, 18
    if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 <= 10000:
        return ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78)
    return 10000
}

function sub_a290a9bd(?) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[address(msg.sender)].field_0:
        if block.timestamp >= startDate:
            revert with 0, 'VESTING_ALREADY_STARTED'
        sub_ad7f5c78 = arg1
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function setStartDate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[address(msg.sender)].field_0:
        if block.timestamp >= startDate:
            revert with 0, 'VESTING_ALREADY_STARTED'
        startDate = arg1
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function setPeriodLength(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[address(msg.sender)].field_0:
        if block.timestamp >= startDate:
            revert with 0, 'VESTING_ALREADY_STARTED'
        periodLength = arg1
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_e702b375(?) payable {
    require ext_code.size(eTokenAddress)
    staticcall eTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(eTokenAddress)
    staticcall eTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return ext_call.return_data[0]
    if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
        if not 10^ext_call.return_data[0]:
            revert with 0, 18
        return (ext_call.return_data[0] / 10^ext_call.return_data[0])
    s = 10
    t = 1
    idx = ext_call.return_data[0]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return (ext_call.return_data[0] / s * t)
}

function recoverERC20(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if roleAdmin[address(msg.sender)].field_0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_882c85c1(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    require ext_code.size(vestingTokenAddress)
    call vestingTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalAmountDeposited > !arg1:
        revert with 0, 17
    totalAmountDeposited += arg1
}

function sub_180b00fd(?) payable {
    if sub_ed6272e0[msg.sender].field_768:
        if block.timestamp < startDate:
            revert with 0, 17
        if not block.timestamp - startDate:
            if False and sub_ed6272e0[msg.sender].field_512 > 0:
                revert with 0, 17
            if 0 < sub_ed6272e0[msg.sender].field_256:
                return 0
            if 0 < sub_ed6272e0[msg.sender].field_256:
                revert with 0, 17
            return -sub_ed6272e0[msg.sender].field_256
        if block.timestamp - startDate and 10000 > -1 / block.timestamp - startDate:
            revert with 0, 17
        if not periodLength:
            revert with 0, 18
        if not sub_ad7f5c78:
            revert with 0, 18
        if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 <= 10000:
            if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 and sub_ed6272e0[msg.sender].field_512 > -1 / (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78:
                revert with 0, 17
            if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                return 0
            if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                revert with 0, 17
            return (((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256)
        if sub_ed6272e0[msg.sender].field_512 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
            return 0
        if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
            revert with 0, 17
        return ((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256)
    require ext_code.size(eTokenAddress)
    staticcall eTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < startDate:
        revert with 0, 17
    if not block.timestamp - startDate:
        if False and ext_call.return_data[0] > 0:
            revert with 0, 17
        if 0 < sub_ed6272e0[msg.sender].field_256:
            return 0
        if 0 < sub_ed6272e0[msg.sender].field_256:
            revert with 0, 17
        return -sub_ed6272e0[msg.sender].field_256
    if block.timestamp - startDate and 10000 > -1 / block.timestamp - startDate:
        revert with 0, 17
    if not periodLength:
        revert with 0, 18
    if not sub_ad7f5c78:
        revert with 0, 18
    if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 <= 10000:
        if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 and ext_call.return_data[0] > -1 / (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78:
            revert with 0, 17
        if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000 < sub_ed6272e0[msg.sender].field_256:
            return 0
        if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000 < sub_ed6272e0[msg.sender].field_256:
            revert with 0, 17
        return (((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256)
    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if 10000 * ext_call.return_data[0] / 10000 < sub_ed6272e0[msg.sender].field_256:
        return 0
    if 10000 * ext_call.return_data[0] / 10000 < sub_ed6272e0[msg.sender].field_256:
        revert with 0, 17
    return ((10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256)
}

function redeemOnBehalf(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0x44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577cc][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x44ac9762eec3a11893fefb11d028bb3102560094137c3ed4518712475b2577cc
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if sub_ed6272e0[address(arg1)].field_768:
        if sub_ed6272e0[address(arg1)].field_512 < sub_ed6272e0[address(arg1)].field_256:
            revert with 0, 17
        if arg3 > sub_ed6272e0[address(arg1)].field_512 - sub_ed6272e0[address(arg1)].field_256:
            revert with 0, 'NO_REDEEMABLE_TOKEN'
        require ext_code.size(eTokenAddress)
        call eTokenAddress.redeem(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(vestingTokenAddress)
        call vestingTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'VESTING_TOKEN_TRANSFER_FAILED'
        if sub_ed6272e0[address(arg1)].field_0 > !arg3:
            revert with 0, 17
        if sub_ed6272e0[address(arg1)].field_256 > !arg3:
            revert with 0, 17
        sub_ed6272e0[address(arg1)].field_0 += arg3
        sub_ed6272e0[address(arg1)].field_256 += arg3
    else:
        require ext_code.size(eTokenAddress)
        staticcall eTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_ed6272e0[address(arg1)].field_0 = 0
        sub_ed6272e0[address(arg1)].field_256 = 0
        sub_ed6272e0[address(arg1)].field_512 = ext_call.return_data[0]
        sub_ed6272e0[address(arg1)].field_768 = 1
        if ext_call.return_data[0] < 0:
            revert with 0, 17
        if arg3 > ext_call.return_data[0]:
            revert with 0, 'NO_REDEEMABLE_TOKEN'
        require ext_code.size(eTokenAddress)
        call eTokenAddress.redeem(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(vestingTokenAddress)
        call vestingTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'VESTING_TOKEN_TRANSFER_FAILED'
        if 0 > !arg3:
            revert with 0, 17
        if 0 > !arg3:
            revert with 0, 17
        sub_ed6272e0[address(arg1)].field_0 = arg3
        sub_ed6272e0[address(arg1)].field_256 = arg3
        sub_ed6272e0[address(arg1)].field_512 = ext_call.return_data[0]
    sub_ed6272e0[address(arg1)].field_768 = 1
    if sub_f68741d6 > !arg3:
        revert with 0, 17
    sub_f68741d6 += arg3
    if sub_84b12a90 > !arg3:
        revert with 0, 17
    sub_84b12a90 += arg3
    emit Withdrawal(arg3, arg3, arg1);
}

function redeem() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if block.timestamp < startDate:
        revert with 0, 'REDEEM_NOT_STARTED'
    if sub_ed6272e0[address(msg.sender)].field_768:
        if block.timestamp < startDate:
            revert with 0, 17
        if not periodLength:
            revert with 0, 18
        if sub_ed6272e0[msg.sender].field_768:
            if block.timestamp < startDate:
                revert with 0, 17
            if not block.timestamp - startDate:
                if False and sub_ed6272e0[msg.sender].field_512 > 0:
                    revert with 0, 17
                if 0 < sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 'NO_REDEEMABLE_TOKEN'
                if 0 < sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 17
                if -sub_ed6272e0[msg.sender].field_256 <= 0:
                    revert with 0, 'NO_REDEEMABLE_TOKEN'
                require ext_code.size(eTokenAddress)
                call eTokenAddress.redeem(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(vestingTokenAddress)
                call vestingTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'VESTING_TOKEN_TRANSFER_FAILED'
                if sub_ed6272e0[address(msg.sender)].field_0 > !-sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 17
                if sub_ed6272e0[address(msg.sender)].field_256 > !-sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 17
                sub_ed6272e0[address(msg.sender)].field_0 -= sub_ed6272e0[msg.sender].field_256
                sub_ed6272e0[address(msg.sender)].field_256 -= sub_ed6272e0[msg.sender].field_256
                sub_ed6272e0[address(msg.sender)].field_768 = 1
                if sub_f68741d6 > !-sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 17
                sub_f68741d6 -= sub_ed6272e0[msg.sender].field_256
                if sub_84b12a90 > !-sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 17
                sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, -sub_ed6272e0[msg.sender].field_256, msg.sender);
            else:
                if block.timestamp - startDate and 10000 > -1 / block.timestamp - startDate:
                    revert with 0, 17
                if not periodLength:
                    revert with 0, 18
                if not sub_ad7f5c78:
                    revert with 0, 18
                if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 <= 10000:
                    if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 and sub_ed6272e0[msg.sender].field_512 > -1 / (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78:
                        revert with 0, 17
                    if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 'NO_REDEEMABLE_TOKEN'
                    if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 17
                    if ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 <= 0:
                        revert with 0, 'NO_REDEEMABLE_TOKEN'
                    require ext_code.size(eTokenAddress)
                    call eTokenAddress.redeem(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(vestingTokenAddress)
                    call vestingTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'VESTING_TOKEN_TRANSFER_FAILED'
                    if sub_ed6272e0[address(msg.sender)].field_0 > !(((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    if sub_ed6272e0[address(msg.sender)].field_256 > !(((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_ed6272e0[address(msg.sender)].field_0 = sub_ed6272e0[address(msg.sender)].field_0 + ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    sub_ed6272e0[address(msg.sender)].field_256 = sub_ed6272e0[address(msg.sender)].field_256 + ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    sub_ed6272e0[address(msg.sender)].field_768 = 1
                    if sub_f68741d6 > !(((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_f68741d6 = sub_f68741d6 + ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    if sub_84b12a90 > !(((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_84b12a90 = sub_84b12a90 + ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    emit Withdrawal(((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, msg.sender);
                else:
                    if sub_ed6272e0[msg.sender].field_512 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 'NO_REDEEMABLE_TOKEN'
                    if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 17
                    if (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 <= 0:
                        revert with 0, 'NO_REDEEMABLE_TOKEN'
                    require ext_code.size(eTokenAddress)
                    call eTokenAddress.redeem(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(vestingTokenAddress)
                    call vestingTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'VESTING_TOKEN_TRANSFER_FAILED'
                    if sub_ed6272e0[address(msg.sender)].field_0 > !((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    if sub_ed6272e0[address(msg.sender)].field_256 > !((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_ed6272e0[address(msg.sender)].field_0 = sub_ed6272e0[address(msg.sender)].field_0 + (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    sub_ed6272e0[address(msg.sender)].field_256 = sub_ed6272e0[address(msg.sender)].field_256 + (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    sub_ed6272e0[address(msg.sender)].field_768 = 1
                    if sub_f68741d6 > !((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_f68741d6 = sub_f68741d6 + (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    if sub_84b12a90 > !((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_84b12a90 = sub_84b12a90 + (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    emit Withdrawal((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, msg.sender);
        else:
            require ext_code.size(eTokenAddress)
            staticcall eTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp < startDate:
                revert with 0, 17
            if not block.timestamp - startDate:
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                if 0 < sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 'NO_REDEEMABLE_TOKEN'
                if 0 < sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 17
                if -sub_ed6272e0[msg.sender].field_256 <= 0:
                    revert with 0, 'NO_REDEEMABLE_TOKEN'
                require ext_code.size(eTokenAddress)
                call eTokenAddress.redeem(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(vestingTokenAddress)
                call vestingTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'VESTING_TOKEN_TRANSFER_FAILED'
                if sub_ed6272e0[address(msg.sender)].field_0 > !-sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 17
                if sub_ed6272e0[address(msg.sender)].field_256 > !-sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 17
                sub_ed6272e0[address(msg.sender)].field_0 -= sub_ed6272e0[msg.sender].field_256
                sub_ed6272e0[address(msg.sender)].field_256 -= sub_ed6272e0[msg.sender].field_256
                sub_ed6272e0[address(msg.sender)].field_768 = 1
                if sub_f68741d6 > !-sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 17
                sub_f68741d6 -= sub_ed6272e0[msg.sender].field_256
                if sub_84b12a90 > !-sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 17
                sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, -sub_ed6272e0[msg.sender].field_256, msg.sender);
            else:
                if block.timestamp - startDate and 10000 > -1 / block.timestamp - startDate:
                    revert with 0, 17
                if not periodLength:
                    revert with 0, 18
                if not sub_ad7f5c78:
                    revert with 0, 18
                if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 <= 10000:
                    if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 and ext_call.return_data[0] > -1 / (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78:
                        revert with 0, 17
                    if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 'NO_REDEEMABLE_TOKEN'
                    if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 17
                    if ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256 <= 0:
                        revert with 0, 'NO_REDEEMABLE_TOKEN'
                    require ext_code.size(eTokenAddress)
                    call eTokenAddress.redeem(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(vestingTokenAddress)
                    call vestingTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'VESTING_TOKEN_TRANSFER_FAILED'
                    if sub_ed6272e0[address(msg.sender)].field_0 > !(((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    if sub_ed6272e0[address(msg.sender)].field_256 > !(((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_ed6272e0[address(msg.sender)].field_0 = sub_ed6272e0[address(msg.sender)].field_0 + ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    sub_ed6272e0[address(msg.sender)].field_256 = sub_ed6272e0[address(msg.sender)].field_256 + ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    sub_ed6272e0[address(msg.sender)].field_768 = 1
                    if sub_f68741d6 > !(((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_f68741d6 = sub_f68741d6 + ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    if sub_84b12a90 > !(((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_84b12a90 = sub_84b12a90 + ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    emit Withdrawal(((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256, ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256, msg.sender);
                else:
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] / 10000 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 'NO_REDEEMABLE_TOKEN'
                    if 10000 * ext_call.return_data[0] / 10000 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 17
                    if (10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256 <= 0:
                        revert with 0, 'NO_REDEEMABLE_TOKEN'
                    require ext_code.size(eTokenAddress)
                    call eTokenAddress.redeem(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(vestingTokenAddress)
                    call vestingTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'VESTING_TOKEN_TRANSFER_FAILED'
                    if sub_ed6272e0[address(msg.sender)].field_0 > !((10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    if sub_ed6272e0[address(msg.sender)].field_256 > !((10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_ed6272e0[address(msg.sender)].field_0 = sub_ed6272e0[address(msg.sender)].field_0 + (10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    sub_ed6272e0[address(msg.sender)].field_256 = sub_ed6272e0[address(msg.sender)].field_256 + (10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    sub_ed6272e0[address(msg.sender)].field_768 = 1
                    if sub_f68741d6 > !((10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_f68741d6 = sub_f68741d6 + (10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    if sub_84b12a90 > !((10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_84b12a90 = sub_84b12a90 + (10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    emit Withdrawal((10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256, (10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256, msg.sender);
    else:
        require ext_code.size(eTokenAddress)
        staticcall eTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_ed6272e0[address(msg.sender)].field_0 = 0
        sub_ed6272e0[address(msg.sender)].field_256 = 0
        sub_ed6272e0[address(msg.sender)].field_512 = ext_call.return_data[0]
        sub_ed6272e0[address(msg.sender)].field_768 = 1
        if block.timestamp < startDate:
            revert with 0, 17
        if not periodLength:
            revert with 0, 18
        if sub_ed6272e0[msg.sender].field_768:
            if block.timestamp < startDate:
                revert with 0, 17
            if not block.timestamp - startDate:
                if False and sub_ed6272e0[msg.sender].field_512 > 0:
                    revert with 0, 17
                if 0 < sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 'NO_REDEEMABLE_TOKEN'
                if 0 < sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 17
                if -sub_ed6272e0[msg.sender].field_256 <= 0:
                    revert with 0, 'NO_REDEEMABLE_TOKEN'
                require ext_code.size(eTokenAddress)
                call eTokenAddress.redeem(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(vestingTokenAddress)
                call vestingTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'VESTING_TOKEN_TRANSFER_FAILED'
                if 0 > !-sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 17
                if 0 > !-sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 17
                sub_ed6272e0[address(msg.sender)].field_0 = -sub_ed6272e0[msg.sender].field_256
                sub_ed6272e0[address(msg.sender)].field_256 = -sub_ed6272e0[msg.sender].field_256
                sub_ed6272e0[address(msg.sender)].field_512 = ext_call.return_data[0]
                sub_ed6272e0[address(msg.sender)].field_768 = 1
                if sub_f68741d6 > !-sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 17
                sub_f68741d6 -= sub_ed6272e0[msg.sender].field_256
                if sub_84b12a90 > !-sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 17
                sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, -sub_ed6272e0[msg.sender].field_256, msg.sender);
            else:
                if block.timestamp - startDate and 10000 > -1 / block.timestamp - startDate:
                    revert with 0, 17
                if not periodLength:
                    revert with 0, 18
                if not sub_ad7f5c78:
                    revert with 0, 18
                if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 <= 10000:
                    if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 and sub_ed6272e0[msg.sender].field_512 > -1 / (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78:
                        revert with 0, 17
                    if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 'NO_REDEEMABLE_TOKEN'
                    if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 17
                    if ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 <= 0:
                        revert with 0, 'NO_REDEEMABLE_TOKEN'
                    require ext_code.size(eTokenAddress)
                    call eTokenAddress.redeem(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(vestingTokenAddress)
                    call vestingTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'VESTING_TOKEN_TRANSFER_FAILED'
                    if 0 > !(((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    if 0 > !(((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_ed6272e0[address(msg.sender)].field_0 = ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    sub_ed6272e0[address(msg.sender)].field_256 = ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    sub_ed6272e0[address(msg.sender)].field_512 = ext_call.return_data[0]
                    sub_ed6272e0[address(msg.sender)].field_768 = 1
                    if sub_f68741d6 > !(((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_f68741d6 = sub_f68741d6 + ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    if sub_84b12a90 > !(((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_84b12a90 = sub_84b12a90 + ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    emit Withdrawal(((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, msg.sender);
                else:
                    if sub_ed6272e0[msg.sender].field_512 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 'NO_REDEEMABLE_TOKEN'
                    if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 17
                    if (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 <= 0:
                        revert with 0, 'NO_REDEEMABLE_TOKEN'
                    require ext_code.size(eTokenAddress)
                    call eTokenAddress.redeem(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(vestingTokenAddress)
                    call vestingTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'VESTING_TOKEN_TRANSFER_FAILED'
                    if 0 > !((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    if 0 > !((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_ed6272e0[address(msg.sender)].field_0 = (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    sub_ed6272e0[address(msg.sender)].field_256 = (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    sub_ed6272e0[address(msg.sender)].field_512 = ext_call.return_data[0]
                    sub_ed6272e0[address(msg.sender)].field_768 = 1
                    if sub_f68741d6 > !((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_f68741d6 = sub_f68741d6 + (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    if sub_84b12a90 > !((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_84b12a90 = sub_84b12a90 + (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                    emit Withdrawal((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, msg.sender);
        else:
            require ext_code.size(eTokenAddress)
            staticcall eTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp < startDate:
                revert with 0, 17
            if not block.timestamp - startDate:
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                if 0 < sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 'NO_REDEEMABLE_TOKEN'
                if 0 < sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 17
                if -sub_ed6272e0[msg.sender].field_256 <= 0:
                    revert with 0, 'NO_REDEEMABLE_TOKEN'
                require ext_code.size(eTokenAddress)
                call eTokenAddress.redeem(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(vestingTokenAddress)
                call vestingTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'VESTING_TOKEN_TRANSFER_FAILED'
                if 0 > !-sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 17
                if 0 > !-sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 17
                sub_ed6272e0[address(msg.sender)].field_0 = -sub_ed6272e0[msg.sender].field_256
                sub_ed6272e0[address(msg.sender)].field_256 = -sub_ed6272e0[msg.sender].field_256
                sub_ed6272e0[address(msg.sender)].field_512 = ext_call.return_data[0]
                sub_ed6272e0[address(msg.sender)].field_768 = 1
                if sub_f68741d6 > !-sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 17
                sub_f68741d6 -= sub_ed6272e0[msg.sender].field_256
                if sub_84b12a90 > !-sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 17
                sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, -sub_ed6272e0[msg.sender].field_256, msg.sender);
            else:
                if block.timestamp - startDate and 10000 > -1 / block.timestamp - startDate:
                    revert with 0, 17
                if not periodLength:
                    revert with 0, 18
                if not sub_ad7f5c78:
                    revert with 0, 18
                if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 <= 10000:
                    if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 and ext_call.return_data[0] > -1 / (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78:
                        revert with 0, 17
                    if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 'NO_REDEEMABLE_TOKEN'
                    if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 17
                    if ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256 <= 0:
                        revert with 0, 'NO_REDEEMABLE_TOKEN'
                    require ext_code.size(eTokenAddress)
                    call eTokenAddress.redeem(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(vestingTokenAddress)
                    call vestingTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'VESTING_TOKEN_TRANSFER_FAILED'
                    if 0 > !(((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    if 0 > !(((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_ed6272e0[address(msg.sender)].field_0 = ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    sub_ed6272e0[address(msg.sender)].field_256 = ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    sub_ed6272e0[address(msg.sender)].field_512 = ext_call.return_data[0]
                    sub_ed6272e0[address(msg.sender)].field_768 = 1
                    if sub_f68741d6 > !(((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_f68741d6 = sub_f68741d6 + ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    if sub_84b12a90 > !(((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_84b12a90 = sub_84b12a90 + ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    emit Withdrawal(((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256, ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256, msg.sender);
                else:
                    if ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 0, 17
                    if 10000 * ext_call.return_data[0] / 10000 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 'NO_REDEEMABLE_TOKEN'
                    if 10000 * ext_call.return_data[0] / 10000 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 17
                    if (10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256 <= 0:
                        revert with 0, 'NO_REDEEMABLE_TOKEN'
                    require ext_code.size(eTokenAddress)
                    call eTokenAddress.redeem(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(vestingTokenAddress)
                    call vestingTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'VESTING_TOKEN_TRANSFER_FAILED'
                    if 0 > !((10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    if 0 > !((10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_ed6272e0[address(msg.sender)].field_0 = (10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    sub_ed6272e0[address(msg.sender)].field_256 = (10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    sub_ed6272e0[address(msg.sender)].field_512 = ext_call.return_data[0]
                    sub_ed6272e0[address(msg.sender)].field_768 = 1
                    if sub_f68741d6 > !((10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_f68741d6 = sub_f68741d6 + (10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    if sub_84b12a90 > !((10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256):
                        revert with 0, 17
                    sub_84b12a90 = sub_84b12a90 + (10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256
                    emit Withdrawal((10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256, (10000 * ext_call.return_data[0] / 10000) - sub_ed6272e0[msg.sender].field_256, msg.sender);
    stor1 = 1
}



}
