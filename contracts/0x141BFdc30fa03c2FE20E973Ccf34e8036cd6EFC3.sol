contract main {




// =====================  Runtime code  =====================


#
#  - sub_4791284b(?)
#  - sub_a06f3771(?)
#
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
address sub_68b577ffAddress;
uint256 sub_5486e4b0;
uint256 sub_583ae0ad;
mapping of uint8 stor205;
mapping of uint256 sub_2873259e;
mapping of uint256 stor207;
address sub_4d753de5Address;
uint256 sub_f7803a39;
uint256 sub_c5e31a8c;
uint256 sub_8ce8e9d7;
address sub_cd3b5b5eAddress;
address sub_d56cf10fAddress;
address sub_6f561548Address;
mapping of uint8 stor47137960530094679776692562557634819155177026018752964957737546094695497439431;
mapping of uint8 stor81548741879827099588806945174116297703936689880675665277475150220096538445385;

function sub_0de239aa(?) payable {
    return sub_0de239aaAddress
}

function totalSupply() payable {
    return totalSupply
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_2873259e(?) payable {
    require calldata.size - 4 >= 32
    return sub_2873259e[arg1]
}

function sub_4d753de5(?) payable {
    return sub_4d753de5Address
}

function sub_5486e4b0(?) payable {
    return sub_5486e4b0
}

function sub_583ae0ad(?) payable {
    return sub_583ae0ad
}

function sub_68b577ff(?) payable {
    return sub_68b577ffAddress
}

function sub_6f561548(?) payable {
    return sub_6f561548Address
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_8ce8e9d7(?) payable {
    return sub_8ce8e9d7
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_c5e31a8c(?) payable {
    return sub_c5e31a8c
}

function sub_cd3b5b5e(?) payable {
    return sub_cd3b5b5eAddress
}

function sub_d56cf10f(?) payable {
    return sub_d56cf10fAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_f7803a39(?) payable {
    return sub_f7803a39
}

function sub_fbbb2b7d(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor205[arg1])
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not storB44A[msg.sender]:
        if not stor6837[msg.sender]:
            revert with 0, 'Not authorized'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
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

function sub_04a7fd7e(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_0de239aaAddress)
    staticcall sub_0de239aaAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if not storB44A[msg.sender]:
            revert with 0, 'Not ur ant'
    stor205[arg1] = 0
}

function sub_2359316f(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_0de239aaAddress)
    staticcall sub_0de239aaAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not ur ant'
    if stor205[arg1]:
        revert with 0, 'Already staked'
    stor205[arg1] = 1
    sub_2873259e[arg1] = block.timestamp
    stor207[arg1] = block.timestamp
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

function sub_979b6f19(?) payable {
    require calldata.size - 4 >= 32
    if 1 == arg1:
        return 0
    if sub_f7803a39 > 0:
        if arg1 and sub_f7803a39 > -1 / arg1:
            revert with 0, 17
        if arg1 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
            revert with 0, 17
        if 60 * arg1 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
            revert with 0, 17
        return (3600 * arg1 * sub_f7803a39 / 10)
    if arg1 and 3 * 10^9 > -1 / arg1:
        revert with 0, 17
    if 3 * 10^9 * arg1 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    if 60 * 3 * 10^9 * arg1 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    return (3600 * 3 * 10^9 * arg1 / 10)
}

function sub_7550772a(?) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0][address(msg.sender)].field_0:
        sub_f7803a39 = arg1
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

function sub_c78c236f(?) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0][address(msg.sender)].field_0:
        sub_c5e31a8c = arg1
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

function setSellTaxPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0][address(msg.sender)].field_0:
        sub_8ce8e9d7 = arg1
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

function sub_3702e43d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if roleAdmin[0][address(msg.sender)].field_0:
        sub_6f561548Address = address(arg1)
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

function sub_0ae5e491(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if roleAdmin[0][address(msg.sender)].field_0:
        sub_cd3b5b5eAddress = address(arg1)
        sub_d56cf10fAddress = address(arg2)
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

function sub_07041ea0(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(sub_0de239aaAddress)
        staticcall sub_0de239aaAddress.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_15] == mem[_15 + 12 len 20]
        if mem[_15 + 12 len 20] != msg.sender:
            revert with 0, 'Not ur ant'
        if stor205[cd[((32 * idx) + cd[4] + 36)]]:
            revert with 0, 'Already staked'
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        stor205[cd[((32 * idx) + cd[4] + 36)]] = 1
        sub_2873259e[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
        mem[32] = 207
        stor207[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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

function airdrop(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if roleAdmin[0][address(msg.sender)].field_0:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if not address(cd[((32 * idx) + arg1 + 36)]):
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !arg2:
                revert with 0, 17
            totalSupply += arg2
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 51
            if balanceOf[address(cd[((32 * idx) + arg1 + 36)])] > !arg2:
                revert with 0, 17
            balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += arg2
            mem[96] = arg2
            emit Transfer(arg2, 0, address(cd[((32 * idx) + arg1 + 36)]));
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

function sub_6eba8784(?) payable {
    require calldata.size - 4 >= 32
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
    if not sub_4d753de5Address:
        sub_4d753de5Address = address(arg1)
        if not roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][address(arg1)].field_0:
            roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][address(arg1)].field_0 = 1
            emit RoleGranted(0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225, address(arg1), msg.sender);
    else:
        if roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][stor208].field_0:
            roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][stor208].field_0 = 0
            emit RoleRevoked(0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225, sub_4d753de5Address, msg.sender);
        sub_4d753de5Address = address(arg1)
        if not roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][address(arg1)].field_0:
            roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][address(arg1)].field_0 = 1
            emit RoleGranted(0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225, address(arg1), msg.sender);
}

function sub_c3f7ef9d(?) payable {
    require calldata.size - 4 >= 32
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
    if not sub_68b577ffAddress:
        sub_68b577ffAddress = address(arg1)
        if not roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][address(arg1)].field_0:
            roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][address(arg1)].field_0 = 1
            emit RoleGranted(0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225, address(arg1), msg.sender);
    else:
        if roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][stor202].field_0:
            roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][stor202].field_0 = 0
            emit RoleRevoked(0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225, sub_68b577ffAddress, msg.sender);
        sub_68b577ffAddress = address(arg1)
        if not roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][address(arg1)].field_0:
            roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][address(arg1)].field_0 = 1
            emit RoleGranted(0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225, address(arg1), msg.sender);
}

function initialize(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
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
        stor54.length.field_1 = 7
        stor54.length.field_8 = 'AntGold' / 256
        idx = 0
        while stor54.length.field_1 + 31 / 32 > idx:
            stor54[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        bool(stor54.length) = 0
        stor54.length.field_1 = 7
        stor54.length.field_8 = 'AntGold' / 256
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
        stor55.length.field_8 = 'ANTG' / 256
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
        stor55.length.field_8 = 'ANTG' / 256
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
    sub_0de239aaAddress = arg1
    sub_5486e4b0 = arg2
    sub_583ae0ad = arg3
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if sub_cd3b5b5eAddress == arg1:
        if arg2 / 100 and sub_8ce8e9d7 > -1 / arg2 / 100:
            revert with 0, 17
        if arg2 / 100 * sub_8ce8e9d7:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
            if balanceOf[address(msg.sender)] < arg2 / 100 * sub_8ce8e9d7:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
            balanceOf[address(msg.sender)] += -1 * arg2 / 100 * sub_8ce8e9d7
            if totalSupply < arg2 / 100 * sub_8ce8e9d7:
                revert with 0, 17
            totalSupply += -1 * arg2 / 100 * sub_8ce8e9d7
            emit Transfer((arg2 / 100 * sub_8ce8e9d7), msg.sender, 0);
        if arg2 < arg2 / 100 * sub_8ce8e9d7:
            revert with 0, 17
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2 - (arg2 / 100 * sub_8ce8e9d7):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100 * sub_8ce8e9d7)
        if balanceOf[arg1] > !(arg2 - (arg2 / 100 * sub_8ce8e9d7)):
            revert with 0, 17
        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 / 100 * sub_8ce8e9d7)
        emit Transfer((arg2 - (arg2 / 100 * sub_8ce8e9d7)), msg.sender, arg1);
    else:
        if sub_d56cf10fAddress != arg1:
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
        else:
            if arg2 / 100 and sub_8ce8e9d7 > -1 / arg2 / 100:
                revert with 0, 17
            if arg2 / 100 * sub_8ce8e9d7:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                if balanceOf[address(msg.sender)] < arg2 / 100 * sub_8ce8e9d7:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                balanceOf[address(msg.sender)] += -1 * arg2 / 100 * sub_8ce8e9d7
                if totalSupply < arg2 / 100 * sub_8ce8e9d7:
                    revert with 0, 17
                totalSupply += -1 * arg2 / 100 * sub_8ce8e9d7
                emit Transfer((arg2 / 100 * sub_8ce8e9d7), msg.sender, 0);
            if arg2 < arg2 / 100 * sub_8ce8e9d7:
                revert with 0, 17
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2 - (arg2 / 100 * sub_8ce8e9d7):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100 * sub_8ce8e9d7)
            if balanceOf[arg1] > !(arg2 - (arg2 / 100 * sub_8ce8e9d7)):
                revert with 0, 17
            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 / 100 * sub_8ce8e9d7)
            emit Transfer((arg2 - (arg2 / 100 * sub_8ce8e9d7)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if sub_cd3b5b5eAddress == arg2:
        if arg3 / 100 and sub_8ce8e9d7 > -1 / arg3 / 100:
            revert with 0, 17
        if arg3 / 100 * sub_8ce8e9d7:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
            if balanceOf[address(arg1)] < arg3 / 100 * sub_8ce8e9d7:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
            balanceOf[address(arg1)] += -1 * arg3 / 100 * sub_8ce8e9d7
            if totalSupply < arg3 / 100 * sub_8ce8e9d7:
                revert with 0, 17
            totalSupply += -1 * arg3 / 100 * sub_8ce8e9d7
            emit Transfer((arg3 / 100 * sub_8ce8e9d7), arg1, 0);
        if arg3 < arg3 / 100 * sub_8ce8e9d7:
            revert with 0, 17
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < arg3 - (arg3 / 100 * sub_8ce8e9d7):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100 * sub_8ce8e9d7)
        if balanceOf[arg2] > !(arg3 - (arg3 / 100 * sub_8ce8e9d7)):
            revert with 0, 17
        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 / 100 * sub_8ce8e9d7)
        emit Transfer((arg3 - (arg3 / 100 * sub_8ce8e9d7)), arg1, arg2);
        if allowance[address(arg1)][msg.sender] < arg3 - (arg3 / 100 * sub_8ce8e9d7):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3 + (arg3 / 100 * sub_8ce8e9d7)
        emit Approval((allowance[address(arg1)][msg.sender] - arg3 + (arg3 / 100 * sub_8ce8e9d7)), arg1, msg.sender);
    else:
        if sub_d56cf10fAddress != arg2:
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
        else:
            if arg3 / 100 and sub_8ce8e9d7 > -1 / arg3 / 100:
                revert with 0, 17
            if arg3 / 100 * sub_8ce8e9d7:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                if balanceOf[address(arg1)] < arg3 / 100 * sub_8ce8e9d7:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                balanceOf[address(arg1)] += -1 * arg3 / 100 * sub_8ce8e9d7
                if totalSupply < arg3 / 100 * sub_8ce8e9d7:
                    revert with 0, 17
                totalSupply += -1 * arg3 / 100 * sub_8ce8e9d7
                emit Transfer((arg3 / 100 * sub_8ce8e9d7), arg1, 0);
            if arg3 < arg3 / 100 * sub_8ce8e9d7:
                revert with 0, 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3 - (arg3 / 100 * sub_8ce8e9d7):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100 * sub_8ce8e9d7)
            if balanceOf[arg2] > !(arg3 - (arg3 / 100 * sub_8ce8e9d7)):
                revert with 0, 17
            balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 / 100 * sub_8ce8e9d7)
            emit Transfer((arg3 - (arg3 / 100 * sub_8ce8e9d7)), arg1, arg2);
            if allowance[address(arg1)][msg.sender] < arg3 - (arg3 / 100 * sub_8ce8e9d7):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3 + (arg3 / 100 * sub_8ce8e9d7)
            emit Approval((allowance[address(arg1)][msg.sender] - arg3 + (arg3 / 100 * sub_8ce8e9d7)), arg1, msg.sender);
    return 1
}

function sub_c0dafc20(?) payable {
    require calldata.size - 4 >= 64
    if sub_c5e31a8c > 0:
        if not sub_6f561548Address:
            if sub_c5e31a8c > arg2:
                if 1 == arg1:
                    if sub_c5e31a8c > -1:
                        revert with 0, 17
                    return sub_c5e31a8c
                if sub_f7803a39 > 0:
                    if arg1 and sub_f7803a39 > -1 / arg1:
                        revert with 0, 17
                    if arg1 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                        revert with 0, 17
                    if 60 * arg1 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                        revert with 0, 17
                    if sub_c5e31a8c > !(3600 * arg1 * sub_f7803a39 / 10):
                        revert with 0, 17
                    return (sub_c5e31a8c + (3600 * arg1 * sub_f7803a39 / 10))
                if arg1 and 3 * 10^9 > -1 / arg1:
                    revert with 0, 17
                if 3 * 10^9 * arg1 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                    revert with 0, 17
                if 60 * 3 * 10^9 * arg1 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                    revert with 0, 17
                if sub_c5e31a8c > !(3600 * 3 * 10^9 * arg1 / 10):
                    revert with 0, 17
                return (sub_c5e31a8c + (3600 * 3 * 10^9 * arg1 / 10))
        else:
            require ext_code.size(sub_6f561548Address)
            staticcall sub_6f561548Address.0xfecc76f2 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if sub_c5e31a8c > arg2:
                    if 1 == arg1:
                        if sub_c5e31a8c > -1:
                            revert with 0, 17
                        return sub_c5e31a8c
                    if sub_f7803a39 > 0:
                        if arg1 and sub_f7803a39 > -1 / arg1:
                            revert with 0, 17
                        if arg1 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                            revert with 0, 17
                        if 60 * arg1 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                            revert with 0, 17
                        if sub_c5e31a8c > !(3600 * arg1 * sub_f7803a39 / 10):
                            revert with 0, 17
                        return (sub_c5e31a8c + (3600 * arg1 * sub_f7803a39 / 10))
                    if arg1 and 3 * 10^9 > -1 / arg1:
                        revert with 0, 17
                    if 3 * 10^9 * arg1 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                        revert with 0, 17
                    if 60 * 3 * 10^9 * arg1 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                        revert with 0, 17
                    if sub_c5e31a8c > !(3600 * 3 * 10^9 * arg1 / 10):
                        revert with 0, 17
                    return (sub_c5e31a8c + (3600 * 3 * 10^9 * arg1 / 10))
            else:
                if 3650276004 > arg2:
                    if 1 == arg1:
                        return 3650276004
                    if sub_f7803a39 > 0:
                        if arg1 and sub_f7803a39 > -1 / arg1:
                            revert with 0, 17
                        if arg1 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                            revert with 0, 17
                        if 60 * arg1 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                            revert with 0, 17
                        if 3650276004 > !(3600 * arg1 * sub_f7803a39 / 10):
                            revert with 0, 17
                        return ((3600 * arg1 * sub_f7803a39 / 10) + 3650276004)
                    if arg1 and 3 * 10^9 > -1 / arg1:
                        revert with 0, 17
                    if 3 * 10^9 * arg1 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                        revert with 0, 17
                    if 60 * 3 * 10^9 * arg1 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                        revert with 0, 17
                    if 3650276004 > !(3600 * 3 * 10^9 * arg1 / 10):
                        revert with 0, 17
                    return ((3600 * 3 * 10^9 * arg1 / 10) + 3650276004)
    else:
        if not sub_6f561548Address:
            if 2650276004 > arg2:
                if 1 == arg1:
                    return 2650276004
                if sub_f7803a39 > 0:
                    if arg1 and sub_f7803a39 > -1 / arg1:
                        revert with 0, 17
                    if arg1 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                        revert with 0, 17
                    if 60 * arg1 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                        revert with 0, 17
                    if 2650276004 > !(3600 * arg1 * sub_f7803a39 / 10):
                        revert with 0, 17
                    return ((3600 * arg1 * sub_f7803a39 / 10) + 2650276004)
                if arg1 and 3 * 10^9 > -1 / arg1:
                    revert with 0, 17
                if 3 * 10^9 * arg1 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                    revert with 0, 17
                if 60 * 3 * 10^9 * arg1 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                    revert with 0, 17
                if 2650276004 > !(3600 * 3 * 10^9 * arg1 / 10):
                    revert with 0, 17
                return ((3600 * 3 * 10^9 * arg1 / 10) + 2650276004)
        else:
            require ext_code.size(sub_6f561548Address)
            staticcall sub_6f561548Address.0xfecc76f2 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if 2650276004 > arg2:
                    if 1 == arg1:
                        return 2650276004
                    if sub_f7803a39 > 0:
                        if arg1 and sub_f7803a39 > -1 / arg1:
                            revert with 0, 17
                        if arg1 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                            revert with 0, 17
                        if 60 * arg1 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                            revert with 0, 17
                        if 2650276004 > !(3600 * arg1 * sub_f7803a39 / 10):
                            revert with 0, 17
                        return ((3600 * arg1 * sub_f7803a39 / 10) + 2650276004)
                    if arg1 and 3 * 10^9 > -1 / arg1:
                        revert with 0, 17
                    if 3 * 10^9 * arg1 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                        revert with 0, 17
                    if 60 * 3 * 10^9 * arg1 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                        revert with 0, 17
                    if 2650276004 > !(3600 * 3 * 10^9 * arg1 / 10):
                        revert with 0, 17
                    return ((3600 * 3 * 10^9 * arg1 / 10) + 2650276004)
            else:
                if 3650276004 > arg2:
                    if 1 == arg1:
                        return 3650276004
                    if sub_f7803a39 > 0:
                        if arg1 and sub_f7803a39 > -1 / arg1:
                            revert with 0, 17
                        if arg1 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                            revert with 0, 17
                        if 60 * arg1 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                            revert with 0, 17
                        if 3650276004 > !(3600 * arg1 * sub_f7803a39 / 10):
                            revert with 0, 17
                        return ((3600 * arg1 * sub_f7803a39 / 10) + 3650276004)
                    if arg1 and 3 * 10^9 > -1 / arg1:
                        revert with 0, 17
                    if 3 * 10^9 * arg1 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                        revert with 0, 17
                    if 60 * 3 * 10^9 * arg1 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                        revert with 0, 17
                    if 3650276004 > !(3600 * 3 * 10^9 * arg1 / 10):
                        revert with 0, 17
                    return ((3600 * 3 * 10^9 * arg1 / 10) + 3650276004)
    if 1 == arg1:
        if arg2 > -1:
            revert with 0, 17
        return arg2
    if sub_f7803a39 > 0:
        if arg1 and sub_f7803a39 > -1 / arg1:
            revert with 0, 17
        if arg1 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
            revert with 0, 17
        if 60 * arg1 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
            revert with 0, 17
        if arg2 > !(3600 * arg1 * sub_f7803a39 / 10):
            revert with 0, 17
        return (arg2 + (3600 * arg1 * sub_f7803a39 / 10))
    if arg1 and 3 * 10^9 > -1 / arg1:
        revert with 0, 17
    if 3 * 10^9 * arg1 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    if 60 * 3 * 10^9 * arg1 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    if arg2 > !(3600 * 3 * 10^9 * arg1 / 10):
        revert with 0, 17
    return (arg2 + (3600 * 3 * 10^9 * arg1 / 10))
}

function sub_40f964dd(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0xbfccdc6800000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(sub_0de239aaAddress)
    staticcall sub_0de239aaAddress.0xbfccdc68 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 160
    require uint32(arg1), mem[132 len 28] == mem[140 len 20]
    _6 = mem[160]
    _7 = mem[192]
    require mem[192] <= test266151307()
    require mem[192] + 127 < return_data.size + 96
    _8 = mem[mem[192] + 96]
    if mem[mem[192] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[192] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[192] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[192] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _8
    require _7 + _8 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_8)] = mem[_7 + 128 len ceil32(_8)]
    if ceil32(_8) <= _8:
        _2652 = mem[224]
        mem[0] = arg1
        mem[32] = 205
        if not stor205[arg1]:
            return 0
        mem[mem[64] + 4] = arg1
        require ext_code.size(sub_4d753de5Address)
        staticcall sub_4d753de5Address.0x9920715 with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2660 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2660] == bool(mem[_2660])
        if sub_583ae0ad and _6 > -1 / sub_583ae0ad:
            revert with 0, 17
        if sub_583ae0ad * _6 > !sub_5486e4b0:
            revert with 0, 17
        if not mem[_2660]:
            if (sub_583ae0ad * _6) + sub_5486e4b0 and 10 > -1 / (sub_583ae0ad * _6) + sub_5486e4b0:
                revert with 0, 17
            if sub_c5e31a8c > 0:
                if not sub_6f561548Address:
                    if sub_c5e31a8c > _2652:
                        if 1 == _6:
                            if sub_c5e31a8c > -1:
                                revert with 0, 17
                            if block.timestamp > sub_c5e31a8c:
                                if sub_c5e31a8c <= stor207[arg1]:
                                    return 0
                                if sub_c5e31a8c < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if sub_c5e31a8c - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c - stor207[arg1]:
                                        revert with 0, 17
                                    return ((sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and sub_c5e31a8c - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if sub_c5e31a8c > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10):
                                    if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                        return 0
                                    if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if sub_c5e31a8c > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10):
                                    if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                        return 0
                                    if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if 1 == _6:
                            if _2652 > -1:
                                revert with 0, 17
                            if block.timestamp > _2652:
                                if _2652 <= stor207[arg1]:
                                    return 0
                                if _2652 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if _2652 - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 - stor207[arg1]:
                                        revert with 0, 17
                                    return ((_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2652 - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2652 > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2652 + (3600 * _6 * sub_f7803a39 / 10):
                                    if _2652 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2652 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2652 > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2652 + (3600 * 3 * 10^9 * _6 / 10):
                                    if _2652 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2652 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                else:
                    mem[mem[64] + 4] = _6
                    require ext_code.size(sub_6f561548Address)
                    staticcall sub_6f561548Address.0xfecc76f2 with:
                            gas gas_remaining wei
                           args _6
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2684 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2684] == bool(mem[_2684])
                    if not mem[_2684]:
                        if sub_c5e31a8c > _2652:
                            if 1 == _6:
                                if sub_c5e31a8c > -1:
                                    revert with 0, 17
                                if block.timestamp > sub_c5e31a8c:
                                    if sub_c5e31a8c <= stor207[arg1]:
                                        return 0
                                    if sub_c5e31a8c < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if sub_c5e31a8c - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c - stor207[arg1]:
                                            revert with 0, 17
                                        return ((sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and sub_c5e31a8c - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if sub_f7803a39 > 0:
                                    if _6 and sub_f7803a39 > -1 / _6:
                                        revert with 0, 17
                                    if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if sub_c5e31a8c > !(3600 * _6 * sub_f7803a39 / 10):
                                        revert with 0, 17
                                    if block.timestamp > sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10):
                                        if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                            return 0
                                        if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                                revert with 0, 17
                                            return ((sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                                else:
                                    if _6 and 3 * 10^9 > -1 / _6:
                                        revert with 0, 17
                                    if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if sub_c5e31a8c > !(3600 * 3 * 10^9 * _6 / 10):
                                        revert with 0, 17
                                    if block.timestamp > sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10):
                                        if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                            return 0
                                        if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                                revert with 0, 17
                                            return ((sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if 1 == _6:
                                if _2652 > -1:
                                    revert with 0, 17
                                if block.timestamp > _2652:
                                    if _2652 <= stor207[arg1]:
                                        return 0
                                    if _2652 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2652 - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2652 - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if sub_f7803a39 > 0:
                                    if _6 and sub_f7803a39 > -1 / _6:
                                        revert with 0, 17
                                    if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if _2652 > !(3600 * _6 * sub_f7803a39 / 10):
                                        revert with 0, 17
                                    if block.timestamp > _2652 + (3600 * _6 * sub_f7803a39 / 10):
                                        if _2652 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                            return 0
                                        if _2652 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                                revert with 0, 17
                                            return ((_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                                else:
                                    if _6 and 3 * 10^9 > -1 / _6:
                                        revert with 0, 17
                                    if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if _2652 > !(3600 * 3 * 10^9 * _6 / 10):
                                        revert with 0, 17
                                    if block.timestamp > _2652 + (3600 * 3 * 10^9 * _6 / 10):
                                        if _2652 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                            return 0
                                        if _2652 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                                revert with 0, 17
                                            return ((_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if 3650276004 > _2652:
                            if 1 == _6:
                                if block.timestamp > 3650276004:
                                    if 3650276004 <= stor207[arg1]:
                                        return 0
                                    if 3650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if -stor207[arg1] + 3650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / -stor207[arg1] + 3650276004:
                                            revert with 0, 17
                                        return ((3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and -stor207[arg1] + 3650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if sub_f7803a39 > 0:
                                    if _6 and sub_f7803a39 > -1 / _6:
                                        revert with 0, 17
                                    if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 3650276004 > !(3600 * _6 * sub_f7803a39 / 10):
                                        revert with 0, 17
                                    if block.timestamp > (3600 * _6 * sub_f7803a39 / 10) + 3650276004:
                                        if (3600 * _6 * sub_f7803a39 / 10) + 3650276004 <= stor207[arg1]:
                                            return 0
                                        if (3600 * _6 * sub_f7803a39 / 10) + 3650276004 < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004:
                                                revert with 0, 17
                                            return ((3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                                else:
                                    if _6 and 3 * 10^9 > -1 / _6:
                                        revert with 0, 17
                                    if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 3650276004 > !(3600 * 3 * 10^9 * _6 / 10):
                                        revert with 0, 17
                                    if block.timestamp > (3600 * 3 * 10^9 * _6 / 10) + 3650276004:
                                        if (3600 * 3 * 10^9 * _6 / 10) + 3650276004 <= stor207[arg1]:
                                            return 0
                                        if (3600 * 3 * 10^9 * _6 / 10) + 3650276004 < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004:
                                                revert with 0, 17
                                            return ((3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if 1 == _6:
                                if _2652 > -1:
                                    revert with 0, 17
                                if block.timestamp > _2652:
                                    if _2652 <= stor207[arg1]:
                                        return 0
                                    if _2652 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2652 - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2652 - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if sub_f7803a39 > 0:
                                    if _6 and sub_f7803a39 > -1 / _6:
                                        revert with 0, 17
                                    if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if _2652 > !(3600 * _6 * sub_f7803a39 / 10):
                                        revert with 0, 17
                                    if block.timestamp > _2652 + (3600 * _6 * sub_f7803a39 / 10):
                                        if _2652 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                            return 0
                                        if _2652 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                                revert with 0, 17
                                            return ((_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                                else:
                                    if _6 and 3 * 10^9 > -1 / _6:
                                        revert with 0, 17
                                    if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if _2652 > !(3600 * 3 * 10^9 * _6 / 10):
                                        revert with 0, 17
                                    if block.timestamp > _2652 + (3600 * 3 * 10^9 * _6 / 10):
                                        if _2652 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                            return 0
                                        if _2652 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                                revert with 0, 17
                                            return ((_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
            else:
                if not sub_6f561548Address:
                    if 2650276004 > _2652:
                        if 1 == _6:
                            if block.timestamp > 2650276004:
                                if 2650276004 <= stor207[arg1]:
                                    return 0
                                if 2650276004 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if -stor207[arg1] + 2650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / -stor207[arg1] + 2650276004:
                                        revert with 0, 17
                                    return ((2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and -stor207[arg1] + 2650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 2650276004 > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > (3600 * _6 * sub_f7803a39 / 10) + 2650276004:
                                    if (3600 * _6 * sub_f7803a39 / 10) + 2650276004 <= stor207[arg1]:
                                        return 0
                                    if (3600 * _6 * sub_f7803a39 / 10) + 2650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004:
                                            revert with 0, 17
                                        return ((2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 2650276004 > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > (3600 * 3 * 10^9 * _6 / 10) + 2650276004:
                                    if (3600 * 3 * 10^9 * _6 / 10) + 2650276004 <= stor207[arg1]:
                                        return 0
                                    if (3600 * 3 * 10^9 * _6 / 10) + 2650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004:
                                            revert with 0, 17
                                        return ((2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if 1 == _6:
                            if _2652 > -1:
                                revert with 0, 17
                            if block.timestamp > _2652:
                                if _2652 <= stor207[arg1]:
                                    return 0
                                if _2652 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if _2652 - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 - stor207[arg1]:
                                        revert with 0, 17
                                    return ((_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2652 - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2652 > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2652 + (3600 * _6 * sub_f7803a39 / 10):
                                    if _2652 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2652 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2652 > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2652 + (3600 * 3 * 10^9 * _6 / 10):
                                    if _2652 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2652 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                else:
                    mem[mem[64] + 4] = _6
                    require ext_code.size(sub_6f561548Address)
                    staticcall sub_6f561548Address.0xfecc76f2 with:
                            gas gas_remaining wei
                           args _6
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2685 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2685] == bool(mem[_2685])
                    if not mem[_2685]:
                        if 2650276004 > _2652:
                            if 1 == _6:
                                if block.timestamp > 2650276004:
                                    if 2650276004 <= stor207[arg1]:
                                        return 0
                                    if 2650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if -stor207[arg1] + 2650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / -stor207[arg1] + 2650276004:
                                            revert with 0, 17
                                        return ((2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and -stor207[arg1] + 2650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if sub_f7803a39 > 0:
                                    if _6 and sub_f7803a39 > -1 / _6:
                                        revert with 0, 17
                                    if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 2650276004 > !(3600 * _6 * sub_f7803a39 / 10):
                                        revert with 0, 17
                                    if block.timestamp > (3600 * _6 * sub_f7803a39 / 10) + 2650276004:
                                        if (3600 * _6 * sub_f7803a39 / 10) + 2650276004 <= stor207[arg1]:
                                            return 0
                                        if (3600 * _6 * sub_f7803a39 / 10) + 2650276004 < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004:
                                                revert with 0, 17
                                            return ((2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                                else:
                                    if _6 and 3 * 10^9 > -1 / _6:
                                        revert with 0, 17
                                    if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 2650276004 > !(3600 * 3 * 10^9 * _6 / 10):
                                        revert with 0, 17
                                    if block.timestamp > (3600 * 3 * 10^9 * _6 / 10) + 2650276004:
                                        if (3600 * 3 * 10^9 * _6 / 10) + 2650276004 <= stor207[arg1]:
                                            return 0
                                        if (3600 * 3 * 10^9 * _6 / 10) + 2650276004 < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004:
                                                revert with 0, 17
                                            return ((2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if 1 == _6:
                                if _2652 > -1:
                                    revert with 0, 17
                                if block.timestamp > _2652:
                                    if _2652 <= stor207[arg1]:
                                        return 0
                                    if _2652 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2652 - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2652 - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if sub_f7803a39 > 0:
                                    if _6 and sub_f7803a39 > -1 / _6:
                                        revert with 0, 17
                                    if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if _2652 > !(3600 * _6 * sub_f7803a39 / 10):
                                        revert with 0, 17
                                    if block.timestamp > _2652 + (3600 * _6 * sub_f7803a39 / 10):
                                        if _2652 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                            return 0
                                        if _2652 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                                revert with 0, 17
                                            return ((_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                                else:
                                    if _6 and 3 * 10^9 > -1 / _6:
                                        revert with 0, 17
                                    if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if _2652 > !(3600 * 3 * 10^9 * _6 / 10):
                                        revert with 0, 17
                                    if block.timestamp > _2652 + (3600 * 3 * 10^9 * _6 / 10):
                                        if _2652 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                            return 0
                                        if _2652 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                                revert with 0, 17
                                            return ((_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if 3650276004 > _2652:
                            if 1 == _6:
                                if block.timestamp > 3650276004:
                                    if 3650276004 <= stor207[arg1]:
                                        return 0
                                    if 3650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if -stor207[arg1] + 3650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / -stor207[arg1] + 3650276004:
                                            revert with 0, 17
                                        return ((3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and -stor207[arg1] + 3650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if sub_f7803a39 > 0:
                                    if _6 and sub_f7803a39 > -1 / _6:
                                        revert with 0, 17
                                    if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 3650276004 > !(3600 * _6 * sub_f7803a39 / 10):
                                        revert with 0, 17
                                    if block.timestamp > (3600 * _6 * sub_f7803a39 / 10) + 3650276004:
                                        if (3600 * _6 * sub_f7803a39 / 10) + 3650276004 <= stor207[arg1]:
                                            return 0
                                        if (3600 * _6 * sub_f7803a39 / 10) + 3650276004 < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004:
                                                revert with 0, 17
                                            return ((3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                                else:
                                    if _6 and 3 * 10^9 > -1 / _6:
                                        revert with 0, 17
                                    if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 3650276004 > !(3600 * 3 * 10^9 * _6 / 10):
                                        revert with 0, 17
                                    if block.timestamp > (3600 * 3 * 10^9 * _6 / 10) + 3650276004:
                                        if (3600 * 3 * 10^9 * _6 / 10) + 3650276004 <= stor207[arg1]:
                                            return 0
                                        if (3600 * 3 * 10^9 * _6 / 10) + 3650276004 < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004:
                                                revert with 0, 17
                                            return ((3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if 1 == _6:
                                if _2652 > -1:
                                    revert with 0, 17
                                if block.timestamp > _2652:
                                    if _2652 <= stor207[arg1]:
                                        return 0
                                    if _2652 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2652 - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2652 - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if sub_f7803a39 > 0:
                                    if _6 and sub_f7803a39 > -1 / _6:
                                        revert with 0, 17
                                    if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if _2652 > !(3600 * _6 * sub_f7803a39 / 10):
                                        revert with 0, 17
                                    if block.timestamp > _2652 + (3600 * _6 * sub_f7803a39 / 10):
                                        if _2652 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                            return 0
                                        if _2652 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                                revert with 0, 17
                                            return ((_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                                else:
                                    if _6 and 3 * 10^9 > -1 / _6:
                                        revert with 0, 17
                                    if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if _2652 > !(3600 * 3 * 10^9 * _6 / 10):
                                        revert with 0, 17
                                    if block.timestamp > _2652 + (3600 * 3 * 10^9 * _6 / 10):
                                        if _2652 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                            return 0
                                        if _2652 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                                revert with 0, 17
                                            return ((_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (_2652 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
            if block.timestamp <= stor207[arg1]:
                return 0
            if block.timestamp < stor207[arg1]:
                revert with 0, 17
            if block.timestamp < sub_2873259e[arg1]:
                revert with 0, 17
            if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                if block.timestamp - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / block.timestamp - stor207[arg1]:
                    revert with 0, 17
                return ((block.timestamp * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
            if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and block.timestamp - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                revert with 0, 17
            if (block.timestamp * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                revert with 0, 17
            return (105 * (block.timestamp * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
        if (sub_583ae0ad * _6) + sub_5486e4b0 and 14 > -1 / (sub_583ae0ad * _6) + sub_5486e4b0:
            revert with 0, 17
        if sub_c5e31a8c > 0:
            if not sub_6f561548Address:
                if sub_c5e31a8c > _2652:
                    if 1 == _6:
                        if sub_c5e31a8c > -1:
                            revert with 0, 17
                        if block.timestamp > sub_c5e31a8c:
                            if sub_c5e31a8c <= stor207[arg1]:
                                return 0
                            if sub_c5e31a8c < stor207[arg1]:
                                revert with 0, 17
                            if block.timestamp < sub_2873259e[arg1]:
                                revert with 0, 17
                            if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                if sub_c5e31a8c - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c - stor207[arg1]:
                                    revert with 0, 17
                                return ((sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                            if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and sub_c5e31a8c - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                revert with 0, 17
                            if (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            return (105 * (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if sub_f7803a39 > 0:
                            if _6 and sub_f7803a39 > -1 / _6:
                                revert with 0, 17
                            if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if sub_c5e31a8c > !(3600 * _6 * sub_f7803a39 / 10):
                                revert with 0, 17
                            if block.timestamp > sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10):
                                if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                    return 0
                                if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                        revert with 0, 17
                                    return ((sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if _6 and 3 * 10^9 > -1 / _6:
                                revert with 0, 17
                            if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if sub_c5e31a8c > !(3600 * 3 * 10^9 * _6 / 10):
                                revert with 0, 17
                            if block.timestamp > sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10):
                                if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                    return 0
                                if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                        revert with 0, 17
                                    return ((sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                else:
                    if 1 == _6:
                        if _2652 > -1:
                            revert with 0, 17
                        if block.timestamp > _2652:
                            if _2652 <= stor207[arg1]:
                                return 0
                            if _2652 < stor207[arg1]:
                                revert with 0, 17
                            if block.timestamp < sub_2873259e[arg1]:
                                revert with 0, 17
                            if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                if _2652 - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 - stor207[arg1]:
                                    revert with 0, 17
                                return ((_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                            if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2652 - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                revert with 0, 17
                            if (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            return (105 * (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if sub_f7803a39 > 0:
                            if _6 and sub_f7803a39 > -1 / _6:
                                revert with 0, 17
                            if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if _2652 > !(3600 * _6 * sub_f7803a39 / 10):
                                revert with 0, 17
                            if block.timestamp > _2652 + (3600 * _6 * sub_f7803a39 / 10):
                                if _2652 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                    return 0
                                if _2652 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                        revert with 0, 17
                                    return ((_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if _6 and 3 * 10^9 > -1 / _6:
                                revert with 0, 17
                            if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if _2652 > !(3600 * 3 * 10^9 * _6 / 10):
                                revert with 0, 17
                            if block.timestamp > _2652 + (3600 * 3 * 10^9 * _6 / 10):
                                if _2652 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                    return 0
                                if _2652 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                        revert with 0, 17
                                    return ((_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
            else:
                mem[mem[64] + 4] = _6
                require ext_code.size(sub_6f561548Address)
                staticcall sub_6f561548Address.0xfecc76f2 with:
                        gas gas_remaining wei
                       args _6
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2688 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2688] == bool(mem[_2688])
                if not mem[_2688]:
                    if sub_c5e31a8c > _2652:
                        if 1 == _6:
                            if sub_c5e31a8c > -1:
                                revert with 0, 17
                            if block.timestamp > sub_c5e31a8c:
                                if sub_c5e31a8c <= stor207[arg1]:
                                    return 0
                                if sub_c5e31a8c < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if sub_c5e31a8c - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c - stor207[arg1]:
                                        revert with 0, 17
                                    return ((sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and sub_c5e31a8c - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if sub_c5e31a8c > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10):
                                    if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                        return 0
                                    if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if sub_c5e31a8c > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10):
                                    if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                        return 0
                                    if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if 1 == _6:
                            if _2652 > -1:
                                revert with 0, 17
                            if block.timestamp > _2652:
                                if _2652 <= stor207[arg1]:
                                    return 0
                                if _2652 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if _2652 - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 - stor207[arg1]:
                                        revert with 0, 17
                                    return ((_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2652 - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2652 > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2652 + (3600 * _6 * sub_f7803a39 / 10):
                                    if _2652 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2652 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2652 > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2652 + (3600 * 3 * 10^9 * _6 / 10):
                                    if _2652 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2652 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                else:
                    if 3650276004 > _2652:
                        if 1 == _6:
                            if block.timestamp > 3650276004:
                                if 3650276004 <= stor207[arg1]:
                                    return 0
                                if 3650276004 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if -stor207[arg1] + 3650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / -stor207[arg1] + 3650276004:
                                        revert with 0, 17
                                    return ((3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and -stor207[arg1] + 3650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 3650276004 > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > (3600 * _6 * sub_f7803a39 / 10) + 3650276004:
                                    if (3600 * _6 * sub_f7803a39 / 10) + 3650276004 <= stor207[arg1]:
                                        return 0
                                    if (3600 * _6 * sub_f7803a39 / 10) + 3650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004:
                                            revert with 0, 17
                                        return ((3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 3650276004 > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > (3600 * 3 * 10^9 * _6 / 10) + 3650276004:
                                    if (3600 * 3 * 10^9 * _6 / 10) + 3650276004 <= stor207[arg1]:
                                        return 0
                                    if (3600 * 3 * 10^9 * _6 / 10) + 3650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004:
                                            revert with 0, 17
                                        return ((3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if 1 == _6:
                            if _2652 > -1:
                                revert with 0, 17
                            if block.timestamp > _2652:
                                if _2652 <= stor207[arg1]:
                                    return 0
                                if _2652 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if _2652 - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 - stor207[arg1]:
                                        revert with 0, 17
                                    return ((_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2652 - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2652 > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2652 + (3600 * _6 * sub_f7803a39 / 10):
                                    if _2652 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2652 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2652 > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2652 + (3600 * 3 * 10^9 * _6 / 10):
                                    if _2652 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2652 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
        else:
            if not sub_6f561548Address:
                if 2650276004 > _2652:
                    if 1 == _6:
                        if block.timestamp > 2650276004:
                            if 2650276004 <= stor207[arg1]:
                                return 0
                            if 2650276004 < stor207[arg1]:
                                revert with 0, 17
                            if block.timestamp < sub_2873259e[arg1]:
                                revert with 0, 17
                            if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                if -stor207[arg1] + 2650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / -stor207[arg1] + 2650276004:
                                    revert with 0, 17
                                return ((2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                            if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and -stor207[arg1] + 2650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                revert with 0, 17
                            if (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            return (105 * (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if sub_f7803a39 > 0:
                            if _6 and sub_f7803a39 > -1 / _6:
                                revert with 0, 17
                            if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if 2650276004 > !(3600 * _6 * sub_f7803a39 / 10):
                                revert with 0, 17
                            if block.timestamp > (3600 * _6 * sub_f7803a39 / 10) + 2650276004:
                                if (3600 * _6 * sub_f7803a39 / 10) + 2650276004 <= stor207[arg1]:
                                    return 0
                                if (3600 * _6 * sub_f7803a39 / 10) + 2650276004 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004:
                                        revert with 0, 17
                                    return ((2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if _6 and 3 * 10^9 > -1 / _6:
                                revert with 0, 17
                            if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if 2650276004 > !(3600 * 3 * 10^9 * _6 / 10):
                                revert with 0, 17
                            if block.timestamp > (3600 * 3 * 10^9 * _6 / 10) + 2650276004:
                                if (3600 * 3 * 10^9 * _6 / 10) + 2650276004 <= stor207[arg1]:
                                    return 0
                                if (3600 * 3 * 10^9 * _6 / 10) + 2650276004 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004:
                                        revert with 0, 17
                                    return ((2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                else:
                    if 1 == _6:
                        if _2652 > -1:
                            revert with 0, 17
                        if block.timestamp > _2652:
                            if _2652 <= stor207[arg1]:
                                return 0
                            if _2652 < stor207[arg1]:
                                revert with 0, 17
                            if block.timestamp < sub_2873259e[arg1]:
                                revert with 0, 17
                            if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                if _2652 - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 - stor207[arg1]:
                                    revert with 0, 17
                                return ((_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                            if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2652 - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                revert with 0, 17
                            if (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            return (105 * (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if sub_f7803a39 > 0:
                            if _6 and sub_f7803a39 > -1 / _6:
                                revert with 0, 17
                            if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if _2652 > !(3600 * _6 * sub_f7803a39 / 10):
                                revert with 0, 17
                            if block.timestamp > _2652 + (3600 * _6 * sub_f7803a39 / 10):
                                if _2652 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                    return 0
                                if _2652 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                        revert with 0, 17
                                    return ((_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if _6 and 3 * 10^9 > -1 / _6:
                                revert with 0, 17
                            if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if _2652 > !(3600 * 3 * 10^9 * _6 / 10):
                                revert with 0, 17
                            if block.timestamp > _2652 + (3600 * 3 * 10^9 * _6 / 10):
                                if _2652 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                    return 0
                                if _2652 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                        revert with 0, 17
                                    return ((_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
            else:
                mem[mem[64] + 4] = _6
                require ext_code.size(sub_6f561548Address)
                staticcall sub_6f561548Address.0xfecc76f2 with:
                        gas gas_remaining wei
                       args _6
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2689 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2689] == bool(mem[_2689])
                if not mem[_2689]:
                    if 2650276004 > _2652:
                        if 1 == _6:
                            if block.timestamp > 2650276004:
                                if 2650276004 <= stor207[arg1]:
                                    return 0
                                if 2650276004 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if -stor207[arg1] + 2650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / -stor207[arg1] + 2650276004:
                                        revert with 0, 17
                                    return ((2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and -stor207[arg1] + 2650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 2650276004 > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > (3600 * _6 * sub_f7803a39 / 10) + 2650276004:
                                    if (3600 * _6 * sub_f7803a39 / 10) + 2650276004 <= stor207[arg1]:
                                        return 0
                                    if (3600 * _6 * sub_f7803a39 / 10) + 2650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004:
                                            revert with 0, 17
                                        return ((2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 2650276004 > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > (3600 * 3 * 10^9 * _6 / 10) + 2650276004:
                                    if (3600 * 3 * 10^9 * _6 / 10) + 2650276004 <= stor207[arg1]:
                                        return 0
                                    if (3600 * 3 * 10^9 * _6 / 10) + 2650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004:
                                            revert with 0, 17
                                        return ((2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if 1 == _6:
                            if _2652 > -1:
                                revert with 0, 17
                            if block.timestamp > _2652:
                                if _2652 <= stor207[arg1]:
                                    return 0
                                if _2652 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if _2652 - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 - stor207[arg1]:
                                        revert with 0, 17
                                    return ((_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2652 - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2652 > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2652 + (3600 * _6 * sub_f7803a39 / 10):
                                    if _2652 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2652 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2652 > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2652 + (3600 * 3 * 10^9 * _6 / 10):
                                    if _2652 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2652 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                else:
                    if 3650276004 > _2652:
                        if 1 == _6:
                            if block.timestamp > 3650276004:
                                if 3650276004 <= stor207[arg1]:
                                    return 0
                                if 3650276004 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if -stor207[arg1] + 3650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / -stor207[arg1] + 3650276004:
                                        revert with 0, 17
                                    return ((3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and -stor207[arg1] + 3650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 3650276004 > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > (3600 * _6 * sub_f7803a39 / 10) + 3650276004:
                                    if (3600 * _6 * sub_f7803a39 / 10) + 3650276004 <= stor207[arg1]:
                                        return 0
                                    if (3600 * _6 * sub_f7803a39 / 10) + 3650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004:
                                            revert with 0, 17
                                        return ((3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 3650276004 > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > (3600 * 3 * 10^9 * _6 / 10) + 3650276004:
                                    if (3600 * 3 * 10^9 * _6 / 10) + 3650276004 <= stor207[arg1]:
                                        return 0
                                    if (3600 * 3 * 10^9 * _6 / 10) + 3650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004:
                                            revert with 0, 17
                                        return ((3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if 1 == _6:
                            if _2652 > -1:
                                revert with 0, 17
                            if block.timestamp > _2652:
                                if _2652 <= stor207[arg1]:
                                    return 0
                                if _2652 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if _2652 - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 - stor207[arg1]:
                                        revert with 0, 17
                                    return ((_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2652 - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2652 > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2652 + (3600 * _6 * sub_f7803a39 / 10):
                                    if _2652 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2652 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2652 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2652 > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2652 + (3600 * 3 * 10^9 * _6 / 10):
                                    if _2652 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2652 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2652 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2652 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
    else:
        mem[_8 + ceil32(return_data.size) + 128] = 0
        _2653 = mem[224]
        mem[0] = arg1
        mem[32] = 205
        if not stor205[arg1]:
            return 0
        mem[mem[64] + 4] = arg1
        require ext_code.size(sub_4d753de5Address)
        staticcall sub_4d753de5Address.0x9920715 with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2662 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2662] == bool(mem[_2662])
        if sub_583ae0ad and _6 > -1 / sub_583ae0ad:
            revert with 0, 17
        if sub_583ae0ad * _6 > !sub_5486e4b0:
            revert with 0, 17
        if not mem[_2662]:
            if (sub_583ae0ad * _6) + sub_5486e4b0 and 10 > -1 / (sub_583ae0ad * _6) + sub_5486e4b0:
                revert with 0, 17
            if sub_c5e31a8c > 0:
                if not sub_6f561548Address:
                    if sub_c5e31a8c > _2653:
                        if 1 == _6:
                            if sub_c5e31a8c > -1:
                                revert with 0, 17
                            if block.timestamp > sub_c5e31a8c:
                                if sub_c5e31a8c <= stor207[arg1]:
                                    return 0
                                if sub_c5e31a8c < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if sub_c5e31a8c - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c - stor207[arg1]:
                                        revert with 0, 17
                                    return ((sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and sub_c5e31a8c - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if sub_c5e31a8c > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10):
                                    if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                        return 0
                                    if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if sub_c5e31a8c > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10):
                                    if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                        return 0
                                    if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if 1 == _6:
                            if _2653 > -1:
                                revert with 0, 17
                            if block.timestamp > _2653:
                                if _2653 <= stor207[arg1]:
                                    return 0
                                if _2653 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if _2653 - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 - stor207[arg1]:
                                        revert with 0, 17
                                    return ((_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2653 - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2653 > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2653 + (3600 * _6 * sub_f7803a39 / 10):
                                    if _2653 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2653 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2653 > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2653 + (3600 * 3 * 10^9 * _6 / 10):
                                    if _2653 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2653 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                else:
                    mem[mem[64] + 4] = _6
                    require ext_code.size(sub_6f561548Address)
                    staticcall sub_6f561548Address.0xfecc76f2 with:
                            gas gas_remaining wei
                           args _6
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2686 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2686] == bool(mem[_2686])
                    if not mem[_2686]:
                        if sub_c5e31a8c > _2653:
                            if 1 == _6:
                                if sub_c5e31a8c > -1:
                                    revert with 0, 17
                                if block.timestamp > sub_c5e31a8c:
                                    if sub_c5e31a8c <= stor207[arg1]:
                                        return 0
                                    if sub_c5e31a8c < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if sub_c5e31a8c - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c - stor207[arg1]:
                                            revert with 0, 17
                                        return ((sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and sub_c5e31a8c - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if sub_f7803a39 > 0:
                                    if _6 and sub_f7803a39 > -1 / _6:
                                        revert with 0, 17
                                    if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if sub_c5e31a8c > !(3600 * _6 * sub_f7803a39 / 10):
                                        revert with 0, 17
                                    if block.timestamp > sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10):
                                        if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                            return 0
                                        if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                                revert with 0, 17
                                            return ((sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                                else:
                                    if _6 and 3 * 10^9 > -1 / _6:
                                        revert with 0, 17
                                    if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if sub_c5e31a8c > !(3600 * 3 * 10^9 * _6 / 10):
                                        revert with 0, 17
                                    if block.timestamp > sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10):
                                        if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                            return 0
                                        if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                                revert with 0, 17
                                            return ((sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (sub_c5e31a8c * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if 1 == _6:
                                if _2653 > -1:
                                    revert with 0, 17
                                if block.timestamp > _2653:
                                    if _2653 <= stor207[arg1]:
                                        return 0
                                    if _2653 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2653 - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2653 - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if sub_f7803a39 > 0:
                                    if _6 and sub_f7803a39 > -1 / _6:
                                        revert with 0, 17
                                    if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if _2653 > !(3600 * _6 * sub_f7803a39 / 10):
                                        revert with 0, 17
                                    if block.timestamp > _2653 + (3600 * _6 * sub_f7803a39 / 10):
                                        if _2653 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                            return 0
                                        if _2653 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                                revert with 0, 17
                                            return ((_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                                else:
                                    if _6 and 3 * 10^9 > -1 / _6:
                                        revert with 0, 17
                                    if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if _2653 > !(3600 * 3 * 10^9 * _6 / 10):
                                        revert with 0, 17
                                    if block.timestamp > _2653 + (3600 * 3 * 10^9 * _6 / 10):
                                        if _2653 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                            return 0
                                        if _2653 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                                revert with 0, 17
                                            return ((_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if 3650276004 > _2653:
                            if 1 == _6:
                                if block.timestamp > 3650276004:
                                    if 3650276004 <= stor207[arg1]:
                                        return 0
                                    if 3650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if -stor207[arg1] + 3650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / -stor207[arg1] + 3650276004:
                                            revert with 0, 17
                                        return ((3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and -stor207[arg1] + 3650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if sub_f7803a39 > 0:
                                    if _6 and sub_f7803a39 > -1 / _6:
                                        revert with 0, 17
                                    if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 3650276004 > !(3600 * _6 * sub_f7803a39 / 10):
                                        revert with 0, 17
                                    if block.timestamp > (3600 * _6 * sub_f7803a39 / 10) + 3650276004:
                                        if (3600 * _6 * sub_f7803a39 / 10) + 3650276004 <= stor207[arg1]:
                                            return 0
                                        if (3600 * _6 * sub_f7803a39 / 10) + 3650276004 < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004:
                                                revert with 0, 17
                                            return ((3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                                else:
                                    if _6 and 3 * 10^9 > -1 / _6:
                                        revert with 0, 17
                                    if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 3650276004 > !(3600 * 3 * 10^9 * _6 / 10):
                                        revert with 0, 17
                                    if block.timestamp > (3600 * 3 * 10^9 * _6 / 10) + 3650276004:
                                        if (3600 * 3 * 10^9 * _6 / 10) + 3650276004 <= stor207[arg1]:
                                            return 0
                                        if (3600 * 3 * 10^9 * _6 / 10) + 3650276004 < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004:
                                                revert with 0, 17
                                            return ((3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if 1 == _6:
                                if _2653 > -1:
                                    revert with 0, 17
                                if block.timestamp > _2653:
                                    if _2653 <= stor207[arg1]:
                                        return 0
                                    if _2653 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2653 - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2653 - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if sub_f7803a39 > 0:
                                    if _6 and sub_f7803a39 > -1 / _6:
                                        revert with 0, 17
                                    if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if _2653 > !(3600 * _6 * sub_f7803a39 / 10):
                                        revert with 0, 17
                                    if block.timestamp > _2653 + (3600 * _6 * sub_f7803a39 / 10):
                                        if _2653 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                            return 0
                                        if _2653 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                                revert with 0, 17
                                            return ((_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                                else:
                                    if _6 and 3 * 10^9 > -1 / _6:
                                        revert with 0, 17
                                    if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if _2653 > !(3600 * 3 * 10^9 * _6 / 10):
                                        revert with 0, 17
                                    if block.timestamp > _2653 + (3600 * 3 * 10^9 * _6 / 10):
                                        if _2653 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                            return 0
                                        if _2653 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                                revert with 0, 17
                                            return ((_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
            else:
                if not sub_6f561548Address:
                    if 2650276004 > _2653:
                        if 1 == _6:
                            if block.timestamp > 2650276004:
                                if 2650276004 <= stor207[arg1]:
                                    return 0
                                if 2650276004 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if -stor207[arg1] + 2650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / -stor207[arg1] + 2650276004:
                                        revert with 0, 17
                                    return ((2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and -stor207[arg1] + 2650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 2650276004 > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > (3600 * _6 * sub_f7803a39 / 10) + 2650276004:
                                    if (3600 * _6 * sub_f7803a39 / 10) + 2650276004 <= stor207[arg1]:
                                        return 0
                                    if (3600 * _6 * sub_f7803a39 / 10) + 2650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004:
                                            revert with 0, 17
                                        return ((2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 2650276004 > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > (3600 * 3 * 10^9 * _6 / 10) + 2650276004:
                                    if (3600 * 3 * 10^9 * _6 / 10) + 2650276004 <= stor207[arg1]:
                                        return 0
                                    if (3600 * 3 * 10^9 * _6 / 10) + 2650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004:
                                            revert with 0, 17
                                        return ((2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if 1 == _6:
                            if _2653 > -1:
                                revert with 0, 17
                            if block.timestamp > _2653:
                                if _2653 <= stor207[arg1]:
                                    return 0
                                if _2653 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if _2653 - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 - stor207[arg1]:
                                        revert with 0, 17
                                    return ((_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2653 - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2653 > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2653 + (3600 * _6 * sub_f7803a39 / 10):
                                    if _2653 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2653 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2653 > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2653 + (3600 * 3 * 10^9 * _6 / 10):
                                    if _2653 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2653 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                else:
                    mem[mem[64] + 4] = _6
                    require ext_code.size(sub_6f561548Address)
                    staticcall sub_6f561548Address.0xfecc76f2 with:
                            gas gas_remaining wei
                           args _6
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2687 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2687] == bool(mem[_2687])
                    if not mem[_2687]:
                        if 2650276004 > _2653:
                            if 1 == _6:
                                if block.timestamp > 2650276004:
                                    if 2650276004 <= stor207[arg1]:
                                        return 0
                                    if 2650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if -stor207[arg1] + 2650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / -stor207[arg1] + 2650276004:
                                            revert with 0, 17
                                        return ((2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and -stor207[arg1] + 2650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if sub_f7803a39 > 0:
                                    if _6 and sub_f7803a39 > -1 / _6:
                                        revert with 0, 17
                                    if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 2650276004 > !(3600 * _6 * sub_f7803a39 / 10):
                                        revert with 0, 17
                                    if block.timestamp > (3600 * _6 * sub_f7803a39 / 10) + 2650276004:
                                        if (3600 * _6 * sub_f7803a39 / 10) + 2650276004 <= stor207[arg1]:
                                            return 0
                                        if (3600 * _6 * sub_f7803a39 / 10) + 2650276004 < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004:
                                                revert with 0, 17
                                            return ((2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                                else:
                                    if _6 and 3 * 10^9 > -1 / _6:
                                        revert with 0, 17
                                    if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 2650276004 > !(3600 * 3 * 10^9 * _6 / 10):
                                        revert with 0, 17
                                    if block.timestamp > (3600 * 3 * 10^9 * _6 / 10) + 2650276004:
                                        if (3600 * 3 * 10^9 * _6 / 10) + 2650276004 <= stor207[arg1]:
                                            return 0
                                        if (3600 * 3 * 10^9 * _6 / 10) + 2650276004 < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004:
                                                revert with 0, 17
                                            return ((2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (2650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if 1 == _6:
                                if _2653 > -1:
                                    revert with 0, 17
                                if block.timestamp > _2653:
                                    if _2653 <= stor207[arg1]:
                                        return 0
                                    if _2653 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2653 - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2653 - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if sub_f7803a39 > 0:
                                    if _6 and sub_f7803a39 > -1 / _6:
                                        revert with 0, 17
                                    if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if _2653 > !(3600 * _6 * sub_f7803a39 / 10):
                                        revert with 0, 17
                                    if block.timestamp > _2653 + (3600 * _6 * sub_f7803a39 / 10):
                                        if _2653 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                            return 0
                                        if _2653 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                                revert with 0, 17
                                            return ((_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                                else:
                                    if _6 and 3 * 10^9 > -1 / _6:
                                        revert with 0, 17
                                    if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if _2653 > !(3600 * 3 * 10^9 * _6 / 10):
                                        revert with 0, 17
                                    if block.timestamp > _2653 + (3600 * 3 * 10^9 * _6 / 10):
                                        if _2653 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                            return 0
                                        if _2653 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                                revert with 0, 17
                                            return ((_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if 3650276004 > _2653:
                            if 1 == _6:
                                if block.timestamp > 3650276004:
                                    if 3650276004 <= stor207[arg1]:
                                        return 0
                                    if 3650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if -stor207[arg1] + 3650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / -stor207[arg1] + 3650276004:
                                            revert with 0, 17
                                        return ((3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and -stor207[arg1] + 3650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if sub_f7803a39 > 0:
                                    if _6 and sub_f7803a39 > -1 / _6:
                                        revert with 0, 17
                                    if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 3650276004 > !(3600 * _6 * sub_f7803a39 / 10):
                                        revert with 0, 17
                                    if block.timestamp > (3600 * _6 * sub_f7803a39 / 10) + 3650276004:
                                        if (3600 * _6 * sub_f7803a39 / 10) + 3650276004 <= stor207[arg1]:
                                            return 0
                                        if (3600 * _6 * sub_f7803a39 / 10) + 3650276004 < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004:
                                                revert with 0, 17
                                            return ((3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                                else:
                                    if _6 and 3 * 10^9 > -1 / _6:
                                        revert with 0, 17
                                    if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 3650276004 > !(3600 * 3 * 10^9 * _6 / 10):
                                        revert with 0, 17
                                    if block.timestamp > (3600 * 3 * 10^9 * _6 / 10) + 3650276004:
                                        if (3600 * 3 * 10^9 * _6 / 10) + 3650276004 <= stor207[arg1]:
                                            return 0
                                        if (3600 * 3 * 10^9 * _6 / 10) + 3650276004 < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004 and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004:
                                                revert with 0, 17
                                            return ((3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004 > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (3650276004 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if 1 == _6:
                                if _2653 > -1:
                                    revert with 0, 17
                                if block.timestamp > _2653:
                                    if _2653 <= stor207[arg1]:
                                        return 0
                                    if _2653 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2653 - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2653 - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if sub_f7803a39 > 0:
                                    if _6 and sub_f7803a39 > -1 / _6:
                                        revert with 0, 17
                                    if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if _2653 > !(3600 * _6 * sub_f7803a39 / 10):
                                        revert with 0, 17
                                    if block.timestamp > _2653 + (3600 * _6 * sub_f7803a39 / 10):
                                        if _2653 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                            return 0
                                        if _2653 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                                revert with 0, 17
                                            return ((_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                                else:
                                    if _6 and 3 * 10^9 > -1 / _6:
                                        revert with 0, 17
                                    if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                        revert with 0, 17
                                    if _2653 > !(3600 * 3 * 10^9 * _6 / 10):
                                        revert with 0, 17
                                    if block.timestamp > _2653 + (3600 * 3 * 10^9 * _6 / 10):
                                        if _2653 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                            return 0
                                        if _2653 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                            revert with 0, 17
                                        if block.timestamp < sub_2873259e[arg1]:
                                            revert with 0, 17
                                        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                            if _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                                revert with 0, 17
                                            return ((_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
                                        if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                                            revert with 0, 17
                                        if (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                            revert with 0, 17
                                        return (105 * (_2653 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
            if block.timestamp <= stor207[arg1]:
                return 0
            if block.timestamp < stor207[arg1]:
                revert with 0, 17
            if block.timestamp < sub_2873259e[arg1]:
                revert with 0, 17
            if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                if block.timestamp - stor207[arg1] and (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / block.timestamp - stor207[arg1]:
                    revert with 0, 17
                return ((block.timestamp * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 / 24 * 3600))
            if (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10 and block.timestamp - stor207[arg1] > -1 / (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10:
                revert with 0, 17
            if (block.timestamp * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                revert with 0, 17
            return (105 * (block.timestamp * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) - (stor207[arg1] * (10 * sub_583ae0ad * _6) + (10 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
        if (sub_583ae0ad * _6) + sub_5486e4b0 and 14 > -1 / (sub_583ae0ad * _6) + sub_5486e4b0:
            revert with 0, 17
        if sub_c5e31a8c > 0:
            if not sub_6f561548Address:
                if sub_c5e31a8c > _2653:
                    if 1 == _6:
                        if sub_c5e31a8c > -1:
                            revert with 0, 17
                        if block.timestamp > sub_c5e31a8c:
                            if sub_c5e31a8c <= stor207[arg1]:
                                return 0
                            if sub_c5e31a8c < stor207[arg1]:
                                revert with 0, 17
                            if block.timestamp < sub_2873259e[arg1]:
                                revert with 0, 17
                            if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                if sub_c5e31a8c - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c - stor207[arg1]:
                                    revert with 0, 17
                                return ((sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                            if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and sub_c5e31a8c - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                revert with 0, 17
                            if (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            return (105 * (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if sub_f7803a39 > 0:
                            if _6 and sub_f7803a39 > -1 / _6:
                                revert with 0, 17
                            if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if sub_c5e31a8c > !(3600 * _6 * sub_f7803a39 / 10):
                                revert with 0, 17
                            if block.timestamp > sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10):
                                if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                    return 0
                                if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                        revert with 0, 17
                                    return ((sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if _6 and 3 * 10^9 > -1 / _6:
                                revert with 0, 17
                            if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if sub_c5e31a8c > !(3600 * 3 * 10^9 * _6 / 10):
                                revert with 0, 17
                            if block.timestamp > sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10):
                                if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                    return 0
                                if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                        revert with 0, 17
                                    return ((sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                else:
                    if 1 == _6:
                        if _2653 > -1:
                            revert with 0, 17
                        if block.timestamp > _2653:
                            if _2653 <= stor207[arg1]:
                                return 0
                            if _2653 < stor207[arg1]:
                                revert with 0, 17
                            if block.timestamp < sub_2873259e[arg1]:
                                revert with 0, 17
                            if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                if _2653 - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 - stor207[arg1]:
                                    revert with 0, 17
                                return ((_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                            if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2653 - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                revert with 0, 17
                            if (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            return (105 * (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if sub_f7803a39 > 0:
                            if _6 and sub_f7803a39 > -1 / _6:
                                revert with 0, 17
                            if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if _2653 > !(3600 * _6 * sub_f7803a39 / 10):
                                revert with 0, 17
                            if block.timestamp > _2653 + (3600 * _6 * sub_f7803a39 / 10):
                                if _2653 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                    return 0
                                if _2653 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                        revert with 0, 17
                                    return ((_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if _6 and 3 * 10^9 > -1 / _6:
                                revert with 0, 17
                            if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if _2653 > !(3600 * 3 * 10^9 * _6 / 10):
                                revert with 0, 17
                            if block.timestamp > _2653 + (3600 * 3 * 10^9 * _6 / 10):
                                if _2653 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                    return 0
                                if _2653 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                        revert with 0, 17
                                    return ((_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
            else:
                mem[mem[64] + 4] = _6
                require ext_code.size(sub_6f561548Address)
                staticcall sub_6f561548Address.0xfecc76f2 with:
                        gas gas_remaining wei
                       args _6
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2690 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2690] == bool(mem[_2690])
                if not mem[_2690]:
                    if sub_c5e31a8c > _2653:
                        if 1 == _6:
                            if sub_c5e31a8c > -1:
                                revert with 0, 17
                            if block.timestamp > sub_c5e31a8c:
                                if sub_c5e31a8c <= stor207[arg1]:
                                    return 0
                                if sub_c5e31a8c < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if sub_c5e31a8c - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c - stor207[arg1]:
                                        revert with 0, 17
                                    return ((sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and sub_c5e31a8c - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if sub_c5e31a8c > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10):
                                    if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                        return 0
                                    if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and sub_c5e31a8c + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if sub_c5e31a8c > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10):
                                    if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                        return 0
                                    if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and sub_c5e31a8c + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (sub_c5e31a8c * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if 1 == _6:
                            if _2653 > -1:
                                revert with 0, 17
                            if block.timestamp > _2653:
                                if _2653 <= stor207[arg1]:
                                    return 0
                                if _2653 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if _2653 - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 - stor207[arg1]:
                                        revert with 0, 17
                                    return ((_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2653 - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2653 > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2653 + (3600 * _6 * sub_f7803a39 / 10):
                                    if _2653 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2653 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2653 > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2653 + (3600 * 3 * 10^9 * _6 / 10):
                                    if _2653 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2653 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                else:
                    if 3650276004 > _2653:
                        if 1 == _6:
                            if block.timestamp > 3650276004:
                                if 3650276004 <= stor207[arg1]:
                                    return 0
                                if 3650276004 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if -stor207[arg1] + 3650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / -stor207[arg1] + 3650276004:
                                        revert with 0, 17
                                    return ((3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and -stor207[arg1] + 3650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 3650276004 > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > (3600 * _6 * sub_f7803a39 / 10) + 3650276004:
                                    if (3600 * _6 * sub_f7803a39 / 10) + 3650276004 <= stor207[arg1]:
                                        return 0
                                    if (3600 * _6 * sub_f7803a39 / 10) + 3650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004:
                                            revert with 0, 17
                                        return ((3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 3650276004 > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > (3600 * 3 * 10^9 * _6 / 10) + 3650276004:
                                    if (3600 * 3 * 10^9 * _6 / 10) + 3650276004 <= stor207[arg1]:
                                        return 0
                                    if (3600 * 3 * 10^9 * _6 / 10) + 3650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004:
                                            revert with 0, 17
                                        return ((3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if 1 == _6:
                            if _2653 > -1:
                                revert with 0, 17
                            if block.timestamp > _2653:
                                if _2653 <= stor207[arg1]:
                                    return 0
                                if _2653 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if _2653 - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 - stor207[arg1]:
                                        revert with 0, 17
                                    return ((_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2653 - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2653 > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2653 + (3600 * _6 * sub_f7803a39 / 10):
                                    if _2653 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2653 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2653 > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2653 + (3600 * 3 * 10^9 * _6 / 10):
                                    if _2653 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2653 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
        else:
            if not sub_6f561548Address:
                if 2650276004 > _2653:
                    if 1 == _6:
                        if block.timestamp > 2650276004:
                            if 2650276004 <= stor207[arg1]:
                                return 0
                            if 2650276004 < stor207[arg1]:
                                revert with 0, 17
                            if block.timestamp < sub_2873259e[arg1]:
                                revert with 0, 17
                            if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                if -stor207[arg1] + 2650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / -stor207[arg1] + 2650276004:
                                    revert with 0, 17
                                return ((2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                            if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and -stor207[arg1] + 2650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                revert with 0, 17
                            if (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            return (105 * (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if sub_f7803a39 > 0:
                            if _6 and sub_f7803a39 > -1 / _6:
                                revert with 0, 17
                            if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if 2650276004 > !(3600 * _6 * sub_f7803a39 / 10):
                                revert with 0, 17
                            if block.timestamp > (3600 * _6 * sub_f7803a39 / 10) + 2650276004:
                                if (3600 * _6 * sub_f7803a39 / 10) + 2650276004 <= stor207[arg1]:
                                    return 0
                                if (3600 * _6 * sub_f7803a39 / 10) + 2650276004 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004:
                                        revert with 0, 17
                                    return ((2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if _6 and 3 * 10^9 > -1 / _6:
                                revert with 0, 17
                            if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if 2650276004 > !(3600 * 3 * 10^9 * _6 / 10):
                                revert with 0, 17
                            if block.timestamp > (3600 * 3 * 10^9 * _6 / 10) + 2650276004:
                                if (3600 * 3 * 10^9 * _6 / 10) + 2650276004 <= stor207[arg1]:
                                    return 0
                                if (3600 * 3 * 10^9 * _6 / 10) + 2650276004 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004:
                                        revert with 0, 17
                                    return ((2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                else:
                    if 1 == _6:
                        if _2653 > -1:
                            revert with 0, 17
                        if block.timestamp > _2653:
                            if _2653 <= stor207[arg1]:
                                return 0
                            if _2653 < stor207[arg1]:
                                revert with 0, 17
                            if block.timestamp < sub_2873259e[arg1]:
                                revert with 0, 17
                            if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                if _2653 - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 - stor207[arg1]:
                                    revert with 0, 17
                                return ((_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                            if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2653 - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                revert with 0, 17
                            if (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                revert with 0, 17
                            return (105 * (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if sub_f7803a39 > 0:
                            if _6 and sub_f7803a39 > -1 / _6:
                                revert with 0, 17
                            if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if _2653 > !(3600 * _6 * sub_f7803a39 / 10):
                                revert with 0, 17
                            if block.timestamp > _2653 + (3600 * _6 * sub_f7803a39 / 10):
                                if _2653 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                    return 0
                                if _2653 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                        revert with 0, 17
                                    return ((_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if _6 and 3 * 10^9 > -1 / _6:
                                revert with 0, 17
                            if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                revert with 0, 17
                            if _2653 > !(3600 * 3 * 10^9 * _6 / 10):
                                revert with 0, 17
                            if block.timestamp > _2653 + (3600 * 3 * 10^9 * _6 / 10):
                                if _2653 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                    return 0
                                if _2653 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                        revert with 0, 17
                                    return ((_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
            else:
                mem[mem[64] + 4] = _6
                require ext_code.size(sub_6f561548Address)
                staticcall sub_6f561548Address.0xfecc76f2 with:
                        gas gas_remaining wei
                       args _6
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2691 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2691] == bool(mem[_2691])
                if not mem[_2691]:
                    if 2650276004 > _2653:
                        if 1 == _6:
                            if block.timestamp > 2650276004:
                                if 2650276004 <= stor207[arg1]:
                                    return 0
                                if 2650276004 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if -stor207[arg1] + 2650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / -stor207[arg1] + 2650276004:
                                        revert with 0, 17
                                    return ((2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and -stor207[arg1] + 2650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 2650276004 > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > (3600 * _6 * sub_f7803a39 / 10) + 2650276004:
                                    if (3600 * _6 * sub_f7803a39 / 10) + 2650276004 <= stor207[arg1]:
                                        return 0
                                    if (3600 * _6 * sub_f7803a39 / 10) + 2650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004:
                                            revert with 0, 17
                                        return ((2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 2650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 2650276004 > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > (3600 * 3 * 10^9 * _6 / 10) + 2650276004:
                                    if (3600 * 3 * 10^9 * _6 / 10) + 2650276004 <= stor207[arg1]:
                                        return 0
                                    if (3600 * 3 * 10^9 * _6 / 10) + 2650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004:
                                            revert with 0, 17
                                        return ((2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 2650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (2650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if 1 == _6:
                            if _2653 > -1:
                                revert with 0, 17
                            if block.timestamp > _2653:
                                if _2653 <= stor207[arg1]:
                                    return 0
                                if _2653 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if _2653 - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 - stor207[arg1]:
                                        revert with 0, 17
                                    return ((_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2653 - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2653 > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2653 + (3600 * _6 * sub_f7803a39 / 10):
                                    if _2653 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2653 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2653 > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2653 + (3600 * 3 * 10^9 * _6 / 10):
                                    if _2653 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2653 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                else:
                    if 3650276004 > _2653:
                        if 1 == _6:
                            if block.timestamp > 3650276004:
                                if 3650276004 <= stor207[arg1]:
                                    return 0
                                if 3650276004 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if -stor207[arg1] + 3650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / -stor207[arg1] + 3650276004:
                                        revert with 0, 17
                                    return ((3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and -stor207[arg1] + 3650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 3650276004 > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > (3600 * _6 * sub_f7803a39 / 10) + 3650276004:
                                    if (3600 * _6 * sub_f7803a39 / 10) + 3650276004 <= stor207[arg1]:
                                        return 0
                                    if (3600 * _6 * sub_f7803a39 / 10) + 3650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004:
                                            revert with 0, 17
                                        return ((3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and (3600 * _6 * sub_f7803a39 / 10) + -stor207[arg1] + 3650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 3650276004 > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > (3600 * 3 * 10^9 * _6 / 10) + 3650276004:
                                    if (3600 * 3 * 10^9 * _6 / 10) + 3650276004 <= stor207[arg1]:
                                        return 0
                                    if (3600 * 3 * 10^9 * _6 / 10) + 3650276004 < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004 and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004:
                                            revert with 0, 17
                                        return ((3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and (3600 * 3 * 10^9 * _6 / 10) + -stor207[arg1] + 3650276004 > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (3650276004 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                    else:
                        if 1 == _6:
                            if _2653 > -1:
                                revert with 0, 17
                            if block.timestamp > _2653:
                                if _2653 <= stor207[arg1]:
                                    return 0
                                if _2653 < stor207[arg1]:
                                    revert with 0, 17
                                if block.timestamp < sub_2873259e[arg1]:
                                    revert with 0, 17
                                if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                    if _2653 - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 - stor207[arg1]:
                                        revert with 0, 17
                                    return ((_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2653 - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                    revert with 0, 17
                                if (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                    revert with 0, 17
                                return (105 * (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                        else:
                            if sub_f7803a39 > 0:
                                if _6 and sub_f7803a39 > -1 / _6:
                                    revert with 0, 17
                                if _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * _6 * sub_f7803a39 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2653 > !(3600 * _6 * sub_f7803a39 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2653 + (3600 * _6 * sub_f7803a39 / 10):
                                    if _2653 + (3600 * _6 * sub_f7803a39 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2653 + (3600 * _6 * sub_f7803a39 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2653 + (3600 * _6 * sub_f7803a39 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * _6 * sub_f7803a39 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
                            else:
                                if _6 and 3 * 10^9 > -1 / _6:
                                    revert with 0, 17
                                if 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if 60 * 3 * 10^9 * _6 / 10 > 0x444444444444444444444444444444444444444444444444444444444444444:
                                    revert with 0, 17
                                if _2653 > !(3600 * 3 * 10^9 * _6 / 10):
                                    revert with 0, 17
                                if block.timestamp > _2653 + (3600 * 3 * 10^9 * _6 / 10):
                                    if _2653 + (3600 * 3 * 10^9 * _6 / 10) <= stor207[arg1]:
                                        return 0
                                    if _2653 + (3600 * 3 * 10^9 * _6 / 10) < stor207[arg1]:
                                        revert with 0, 17
                                    if block.timestamp < sub_2873259e[arg1]:
                                        revert with 0, 17
                                    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
                                        if _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1]:
                                            revert with 0, 17
                                        return ((_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
                                    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and _2653 + (3600 * 3 * 10^9 * _6 / 10) - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
                                        revert with 0, 17
                                    if (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                                        revert with 0, 17
                                    return (105 * (_2653 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) + (3600 * 3 * 10^9 * _6 / 10 * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
    if block.timestamp <= stor207[arg1]:
        return 0
    if block.timestamp < stor207[arg1]:
        revert with 0, 17
    if block.timestamp < sub_2873259e[arg1]:
        revert with 0, 17
    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
        if block.timestamp - stor207[arg1] and (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600 > -1 / block.timestamp - stor207[arg1]:
            revert with 0, 17
        return ((block.timestamp * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 / 24 * 3600))
    if (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10 and block.timestamp - stor207[arg1] > -1 / (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10:
        revert with 0, 17
    if (block.timestamp * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
        revert with 0, 17
    return (105 * (block.timestamp * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) - (stor207[arg1] * (14 * sub_583ae0ad * _6) + (14 * sub_5486e4b0) / 10) / 24 * 3600 / 100)
}



}
