contract main {




// =====================  Runtime code  =====================


const sub_23e67ca2(?) = 0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225

const decimals = 18

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor54;
array of struct stor55;
mapping of struct roleAdmin;
address sub_0de239aaAddress;
address sub_18d10813Address;
address sub_6f561548Address;
uint256 MAX_SUPPLY;
uint256 sub_aee3ca84;
uint256 sub_384e7b99;
uint256 sub_53868170;
mapping of uint256 sub_3cc52ad4;
mapping of uint256 stor209;
array of address sub_b4fdef0d;
mapping of uint256 stor211;
array of uint256 stor109504198450538312644429626222214290510990020594438590561605628618698244384070;

function sub_0de239aa(?) payable {
    return sub_0de239aaAddress
}

function totalSupply() payable {
    return totalSupply
}

function sub_18d10813(?) payable {
    return sub_18d10813Address
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function MAX_SUPPLY() payable {
    return MAX_SUPPLY
}

function sub_384e7b99(?) payable {
    return sub_384e7b99
}

function sub_3cc52ad4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3cc52ad4[arg1]
}

function sub_53868170(?) payable {
    return sub_53868170
}

function sub_6f561548(?) payable {
    return sub_6f561548Address
}

function sub_6f746443(?) payable {
    return sub_b4fdef0d.length
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_aee3ca84(?) payable {
    return sub_aee3ca84
}

function sub_b4fdef0d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_b4fdef0d.length
    return sub_b4fdef0d[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
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

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_605fba67(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < stor209[address(arg1)]:
        revert with 0, 17
    if block.timestamp - stor209[address(arg1)] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if sub_3cc52ad4[address(arg1)] and sub_384e7b99 > -1 / sub_3cc52ad4[address(arg1)]:
        revert with 0, 17
    if sub_3cc52ad4[address(arg1)] * sub_384e7b99 and (10^10 * block.timestamp) - (10^10 * stor209[address(arg1)]) > -1 / sub_3cc52ad4[address(arg1)] * sub_384e7b99:
        revert with 0, 17
    return ((10^10 * block.timestamp * sub_3cc52ad4[address(arg1)] * sub_384e7b99) - (10^10 * stor209[address(arg1)] * sub_3cc52ad4[address(arg1)] * sub_384e7b99) / 24 * 3600 / 10^10)
}

function sub_d73f6daa(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Amount must be greater than 0'
    require ext_code.size(sub_18d10813Address)
    call sub_18d10813Address.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 and sub_aee3ca84 > -1 / arg1:
        revert with 0, 17
    if totalSupply > !(arg1 * sub_aee3ca84):
        revert with 0, 17
    if totalSupply + (arg1 * sub_aee3ca84) > MAX_SUPPLY:
        revert with 0, 'Max supply reached'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !(arg1 * sub_aee3ca84):
        revert with 0, 17
    totalSupply += arg1 * sub_aee3ca84
    if balanceOf[address(msg.sender)] > !(arg1 * sub_aee3ca84):
        revert with 0, 17
    balanceOf[address(msg.sender)] += arg1 * sub_aee3ca84
    emit Transfer((arg1 * sub_aee3ca84), 0, msg.sender);
    emit 0x4bd781ae: msg.sender, arg1
}

function sub_db433efa(?) payable {
    require calldata.size - 4 >= 64
    if roleAdmin[0][address(msg.sender)].field_0:
        sub_aee3ca84 = arg1
        sub_384e7b99 = arg2
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function sub_f09a5d97(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not roleAdmin[0][address(msg.sender)].field_0:
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    if totalSupply > !arg2:
        revert with 0, 17
    if totalSupply + arg2 > MAX_SUPPLY:
        revert with 0, 'Max supply reached'
    if not address(arg1):
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, address(arg1));
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][address(msg.sender)].field_0:
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
            s = 0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225
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
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function sub_351d02fa(?) payable {
    if block.timestamp < stor209[address(msg.sender)]:
        revert with 0, 17
    if block.timestamp - stor209[address(msg.sender)] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if sub_3cc52ad4[address(msg.sender)] and sub_384e7b99 > -1 / sub_3cc52ad4[address(msg.sender)]:
        revert with 0, 17
    if sub_3cc52ad4[address(msg.sender)] * sub_384e7b99 and (10^10 * block.timestamp) - (10^10 * stor209[address(msg.sender)]) > -1 / sub_3cc52ad4[address(msg.sender)] * sub_384e7b99:
        revert with 0, 17
    if (10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10:
        stor209[msg.sender] = block.timestamp
        if totalSupply > !((10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10):
            revert with 0, 17
        if totalSupply + ((10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10) > MAX_SUPPLY:
            revert with 0, 'Max supply reached'
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !((10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10):
            revert with 0, 17
        totalSupply += (10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10
        if balanceOf[address(msg.sender)] > !((10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10):
            revert with 0, 17
        balanceOf[address(msg.sender)] += (10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10
        emit Transfer(((10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10), 0, msg.sender);
}

function sub_97081e49(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Amount must be greater than 0'
    require ext_code.size(sub_18d10813Address)
    call sub_18d10813Address.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.timestamp < stor209[address(msg.sender)]:
        revert with 0, 17
    if block.timestamp - stor209[address(msg.sender)] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if sub_3cc52ad4[address(msg.sender)] and sub_384e7b99 > -1 / sub_3cc52ad4[address(msg.sender)]:
        revert with 0, 17
    if sub_3cc52ad4[address(msg.sender)] * sub_384e7b99 and (10^10 * block.timestamp) - (10^10 * stor209[address(msg.sender)]) > -1 / sub_3cc52ad4[address(msg.sender)] * sub_384e7b99:
        revert with 0, 17
    if (10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10:
        stor209[msg.sender] = block.timestamp
        if totalSupply > !((10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10):
            revert with 0, 17
        if totalSupply + ((10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10) > MAX_SUPPLY:
            revert with 0, 'Max supply reached'
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !((10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10):
            revert with 0, 17
        totalSupply += (10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10
        if balanceOf[address(msg.sender)] > !((10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10):
            revert with 0, 17
        balanceOf[address(msg.sender)] += (10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10
        emit Transfer(((10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10), 0, msg.sender);
    if sub_53868170 > !arg1:
        revert with 0, 17
    sub_53868170 += arg1
    if not sub_3cc52ad4[msg.sender]:
        sub_b4fdef0d.length++
        storF219[stor210.length] = msg.sender or Mask(96, 160, storF219[stor210.length])
        if sub_b4fdef0d.length < 1:
            revert with 0, 17
        stor211[msg.sender] = sub_b4fdef0d.length - 1
    if sub_3cc52ad4[msg.sender] > !arg1:
        revert with 0, 17
    sub_3cc52ad4[msg.sender] += arg1
    stor209[msg.sender] = block.timestamp
    emit 0x99053287: msg.sender, arg1
}

function initialize(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        revert with 0, 'Initializable: contract is not initializing'
    if bool(stor54.length):
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        bool(stor54.length) = 0
        stor54.length.field_1 = 5
        stor54.length.field_8 = 'Sugar' / 256
        idx = 0
        while stor54.length.field_1 + 31 / 32 > idx:
            stor54[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        bool(stor54.length) = 0
        stor54.length.field_1 = 5
        stor54.length.field_8 = 'Sugar' / 256
        idx = 0
        while stor54.length.field_1 + 31 / 32 > idx:
            stor54[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor55.length):
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        bool(stor55.length) = 0
        stor55.length.field_1 = 4
        stor55.length.field_8 = 'SUGA' / 256
        idx = 0
        while stor55.length.field_1 + 31 / 32 > idx:
            stor55[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        bool(stor55.length) = 0
        stor55.length.field_1 = 4
        stor55.length.field_8 = 'SUGA' / 256
        idx = 0
        while stor55.length.field_1 + 31 / 32 > idx:
            stor55[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not uint8(stor0.field_8):
        revert with 0, 'Initializable: contract is not initializing'
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][address(arg1)].field_0:
        roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][address(arg1)].field_0 = 1
        emit RoleGranted(0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225, arg1, msg.sender);
    if not roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][address(arg2)].field_0:
        roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][address(arg2)].field_0 = 1
        emit RoleGranted(0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225, arg2, msg.sender);
    if not roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][address(arg3)].field_0:
        roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][address(arg3)].field_0 = 1
        emit RoleGranted(0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225, arg3, msg.sender);
    sub_0de239aaAddress = arg1
    sub_18d10813Address = arg2
    sub_6f561548Address = arg3
    MAX_SUPPLY = arg4
    sub_aee3ca84 = arg5
    sub_384e7b99 = arg6
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function name() payable {
    if bool(stor54.length):
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if bool(stor54.length):
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 0, 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length.field_1), data=mem[128 len ceil32(stor54.length.field_1)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 0, 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length.field_1), data=mem[128 len ceil32(stor54.length.field_1)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
        if ceil32(stor54.length.field_1) > stor54.length.field_1:
            mem[stor54.length.field_1 + ceil32(stor54.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length.field_1), data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 0, 34
    if bool(stor54.length):
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[stor54.length.field_1 + ceil32(stor54.length.field_1) + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() payable {
    if bool(stor55.length):
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if bool(stor55.length):
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 0, 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length.field_1), data=mem[128 len ceil32(stor55.length.field_1)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 0, 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length.field_1), data=mem[128 len ceil32(stor55.length.field_1)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
        if ceil32(stor55.length.field_1) > stor55.length.field_1:
            mem[stor55.length.field_1 + ceil32(stor55.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length.field_1), data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 0, 34
    if bool(stor55.length):
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[stor55.length.field_1 + ceil32(stor55.length.field_1) + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
}

function sub_ece796a3(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Amount must be greater than 0'
    if arg1 > sub_3cc52ad4[msg.sender]:
        revert with 0, 'Not enough AntG staked'
    if block.timestamp < stor209[address(msg.sender)]:
        revert with 0, 17
    if block.timestamp - stor209[address(msg.sender)] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if sub_3cc52ad4[address(msg.sender)] and sub_384e7b99 > -1 / sub_3cc52ad4[address(msg.sender)]:
        revert with 0, 17
    if sub_3cc52ad4[address(msg.sender)] * sub_384e7b99 and (10^10 * block.timestamp) - (10^10 * stor209[address(msg.sender)]) > -1 / sub_3cc52ad4[address(msg.sender)] * sub_384e7b99:
        revert with 0, 17
    if (10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10:
        stor209[msg.sender] = block.timestamp
        if totalSupply > !((10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10):
            revert with 0, 17
        if totalSupply + ((10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10) > MAX_SUPPLY:
            revert with 0, 'Max supply reached'
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !((10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10):
            revert with 0, 17
        totalSupply += (10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10
        if balanceOf[address(msg.sender)] > !((10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10):
            revert with 0, 17
        balanceOf[address(msg.sender)] += (10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10
        emit Transfer(((10^10 * block.timestamp * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) - (10^10 * stor209[address(msg.sender)] * sub_3cc52ad4[address(msg.sender)] * sub_384e7b99) / 24 * 3600 / 10^10), 0, msg.sender);
    if sub_3cc52ad4[msg.sender] < arg1:
        revert with 0, 17
    sub_3cc52ad4[msg.sender] -= arg1
    if not sub_3cc52ad4[msg.sender]:
        if sub_b4fdef0d.length < 1:
            revert with 0, 17
        if sub_b4fdef0d.length - 1 >= sub_b4fdef0d.length:
            revert with 0, 50
        if stor211[address(msg.sender)] >= sub_b4fdef0d.length:
            revert with 0, 50
        sub_b4fdef0d[stor211[address(msg.sender)]] = sub_b4fdef0d[sub_b4fdef0d.length]
        stor211[stor210[stor210.length]] = stor211[address(msg.sender)]
        stor211[msg.sender] = 0
        if not sub_b4fdef0d.length:
            revert with 0, 49
        sub_b4fdef0d[sub_b4fdef0d.length] = 0
        sub_b4fdef0d.length--
    if sub_53868170 < arg1:
        revert with 0, 17
    sub_53868170 -= arg1
    if arg1 > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
        revert with 0, 17
    require ext_code.size(sub_18d10813Address)
    call sub_18d10813Address.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, 9 * arg1 / 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x96507045: msg.sender, 9 * arg1 / 10
}

function sub_5ab5c9f6(?) payable {
    require calldata.size - 4 >= 64
    if roleAdmin[0][address(msg.sender)].field_0:
        idx = arg1
        while idx <= arg2:
            if idx >= sub_b4fdef0d.length:
                revert with 0, 50
            mem[0] = sub_b4fdef0d[idx]
            mem[32] = 209
            if block.timestamp < stor209[stor210[idx]]:
                revert with 0, 17
            if block.timestamp - stor209[stor210[idx]] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
                revert with 0, 17
            if sub_3cc52ad4[stor210[idx]] and sub_384e7b99 > -1 / sub_3cc52ad4[stor210[idx]]:
                revert with 0, 17
            if sub_3cc52ad4[stor210[idx]] * sub_384e7b99 and (10^10 * block.timestamp) - (10^10 * stor209[stor210[idx]]) > -1 / sub_3cc52ad4[stor210[idx]] * sub_384e7b99:
                revert with 0, 17
            if (10^10 * block.timestamp * sub_3cc52ad4[stor210[idx]] * sub_384e7b99) - (10^10 * stor209[stor210[idx]] * sub_3cc52ad4[stor210[idx]] * sub_384e7b99) / 24 * 3600 / 10^10:
                stor209[stor210[idx]] = block.timestamp
                if totalSupply > !((10^10 * block.timestamp * sub_3cc52ad4[stor210[idx]] * sub_384e7b99) - (10^10 * stor209[stor210[idx]] * sub_3cc52ad4[stor210[idx]] * sub_384e7b99) / 24 * 3600 / 10^10):
                    revert with 0, 17
                if totalSupply + ((10^10 * block.timestamp * sub_3cc52ad4[stor210[idx]] * sub_384e7b99) - (10^10 * stor209[stor210[idx]] * sub_3cc52ad4[stor210[idx]] * sub_384e7b99) / 24 * 3600 / 10^10) > MAX_SUPPLY:
                    revert with 0, 'Max supply reached'
                if not sub_b4fdef0d[idx]:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !((10^10 * block.timestamp * sub_3cc52ad4[stor210[idx]] * sub_384e7b99) - (10^10 * stor209[stor210[idx]] * sub_3cc52ad4[stor210[idx]] * sub_384e7b99) / 24 * 3600 / 10^10):
                    revert with 0, 17
                totalSupply += (10^10 * block.timestamp * sub_3cc52ad4[stor210[idx]] * sub_384e7b99) - (10^10 * stor209[stor210[idx]] * sub_3cc52ad4[stor210[idx]] * sub_384e7b99) / 24 * 3600 / 10^10
                mem[0] = sub_b4fdef0d[idx]
                mem[32] = 51
                if balanceOf[stor210[idx]] > !((10^10 * block.timestamp * sub_3cc52ad4[stor210[idx]] * sub_384e7b99) - (10^10 * stor209[stor210[idx]] * sub_3cc52ad4[stor210[idx]] * sub_384e7b99) / 24 * 3600 / 10^10):
                    revert with 0, 17
                balanceOf[stor210[idx]] += (10^10 * block.timestamp * sub_3cc52ad4[stor210[idx]] * sub_384e7b99) - (10^10 * stor209[stor210[idx]] * sub_3cc52ad4[stor210[idx]] * sub_384e7b99) / 24 * 3600 / 10^10
                mem[96] = (10^10 * block.timestamp * sub_3cc52ad4[stor210[idx]] * sub_384e7b99) - (10^10 * stor209[stor210[idx]] * sub_3cc52ad4[stor210[idx]] * sub_384e7b99) / 24 * 3600 / 10^10
                emit Transfer(((10^10 * block.timestamp * sub_3cc52ad4[stor210[idx]] * sub_384e7b99) - (10^10 * stor209[stor210[idx]] * sub_3cc52ad4[stor210[idx]] * sub_384e7b99) / 24 * 3600 / 10^10), 0, sub_b4fdef0d[idx]);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}



}
