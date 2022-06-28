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
address sub_68b577ffAddress;
uint256 sub_5486e4b0;
uint256 sub_583ae0ad;
mapping of uint8 stor205;
mapping of uint256 sub_2873259e;
mapping of uint256 stor207;
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

function sub_5486e4b0(?) payable {
    return sub_5486e4b0
}

function sub_583ae0ad(?) payable {
    return sub_583ae0ad
}

function sub_68b577ff(?) payable {
    return sub_68b577ffAddress
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

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
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
    require mem[192] <= test266151307()
    require mem[192] + 127 < return_data.size + 96
    if mem[mem[192] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[192] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[192] + 96])) + 97 > test266151307():
        revert with 0, 65
    require mem[192] + mem[mem[192] + 96] + 32 <= return_data.size
    if not stor205[arg1]:
        return 0
    if sub_583ae0ad and mem[160] > -1 / sub_583ae0ad:
        revert with 0, 17
    if sub_583ae0ad * mem[160] > !sub_5486e4b0:
        revert with 0, 17
    if block.timestamp < stor207[arg1]:
        revert with 0, 17
    if block.timestamp < sub_2873259e[arg1]:
        revert with 0, 17
    if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
        if block.timestamp - stor207[arg1] and (sub_583ae0ad * mem[160]) + sub_5486e4b0 / 24 * 3600 > -1 / block.timestamp - stor207[arg1]:
            revert with 0, 17
        return ((block.timestamp * (sub_583ae0ad * mem[160]) + sub_5486e4b0 / 24 * 3600) - (stor207[arg1] * (sub_583ae0ad * mem[160]) + sub_5486e4b0 / 24 * 3600))
    if (sub_583ae0ad * mem[160]) + sub_5486e4b0 and block.timestamp - stor207[arg1] > -1 / (sub_583ae0ad * mem[160]) + sub_5486e4b0:
        revert with 0, 17
    if (block.timestamp * sub_583ae0ad * mem[160]) - (stor207[arg1] * sub_583ae0ad * mem[160]) + (block.timestamp * sub_5486e4b0) - (stor207[arg1] * sub_5486e4b0) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
        revert with 0, 17
    return (105 * (block.timestamp * sub_583ae0ad * mem[160]) - (stor207[arg1] * sub_583ae0ad * mem[160]) + (block.timestamp * sub_5486e4b0) - (stor207[arg1] * sub_5486e4b0) / 24 * 3600 / 100)
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

function sub_4791284b(?) payable {
    mem[100] = msg.sender
    require ext_code.size(sub_0de239aaAddress)
    staticcall sub_0de239aaAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = idx
            require ext_code.size(sub_0de239aaAddress)
            staticcall sub_0de239aaAddress.'/t\Y' with:
                    gas gas_remaining wei
                   args msg.sender, idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _35 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _36 = mem[_35]
            mem[mem[64]] = 0xbfccdc6800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _36
            require ext_code.size(sub_0de239aaAddress)
            staticcall sub_0de239aaAddress.0xbfccdc68 with:
                    gas gas_remaining wei
                   args _36
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _39 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            require mem[_39 + 32] == mem[_39 + 44 len 20]
            _42 = mem[_39 + 64]
            _43 = mem[_39 + 96]
            require mem[_39 + 96] <= test266151307()
            require _39 + mem[_39 + 96] + 31 < _39 + return_data.size
            _44 = mem[_39 + mem[_39 + 96]]
            if mem[_39 + mem[_39 + 96]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_39 + mem[_39 + 96]])) + 1 < 0 or _39 + ceil32(return_data.size) + ceil32(ceil32(mem[_39 + mem[_39 + 96]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _39 + ceil32(return_data.size) + ceil32(ceil32(mem[_39 + mem[_39 + 96]])) + 1
            mem[_39 + ceil32(return_data.size)] = _44
            require _43 + _44 + 32 <= return_data.size
            s = 0
            while s < _44:
                mem[s + _39 + ceil32(return_data.size) + 32] = mem[s + _39 + _43 + 32]
                s = s + 32
                continue 
            if ceil32(_44) > _44:
                mem[_44 + _39 + ceil32(return_data.size) + 32] = 0
            mem[0] = _36
            mem[32] = 205
            if stor205[_36]:
                if sub_583ae0ad and _42 > -1 / sub_583ae0ad:
                    revert with 0, 17
                if sub_583ae0ad * _42 > !sub_5486e4b0:
                    revert with 0, 17
                if block.timestamp < stor207[_36]:
                    revert with 0, 17
                mem[0] = _36
                mem[32] = 206
                if block.timestamp < sub_2873259e[_36]:
                    revert with 0, 17
                if block.timestamp - sub_2873259e[_36] < 240 * 24 * 3600:
                    if block.timestamp - stor207[_36] and (sub_583ae0ad * _42) + sub_5486e4b0 / 24 * 3600 > -1 / block.timestamp - stor207[_36]:
                        revert with 0, 17
                    if 0 > !((block.timestamp * (sub_583ae0ad * _42) + sub_5486e4b0 / 24 * 3600) - (stor207[_36] * (sub_583ae0ad * _42) + sub_5486e4b0 / 24 * 3600)):
                        revert with 0, 17
                else:
                    if (sub_583ae0ad * _42) + sub_5486e4b0 and block.timestamp - stor207[_36] > -1 / (sub_583ae0ad * _42) + sub_5486e4b0:
                        revert with 0, 17
                    if (block.timestamp * sub_583ae0ad * _42) - (stor207[_36] * sub_583ae0ad * _42) + (block.timestamp * sub_5486e4b0) - (stor207[_36] * sub_5486e4b0) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                        revert with 0, 17
                    if 0 > !(105 * (block.timestamp * sub_583ae0ad * _42) - (stor207[_36] * sub_583ae0ad * _42) + (block.timestamp * sub_5486e4b0) - (stor207[_36] * sub_5486e4b0) / 24 * 3600 / 100):
                        revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}

function sub_1bfd0cd0(?) payable {
    require calldata.size - 4 >= 32
    mem[100] = arg1
    require ext_code.size(sub_0de239aaAddress)
    staticcall sub_0de239aaAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if not storB44A[msg.sender]:
            revert with 0, 'Not ur ant'
    mem[ceil32(return_data.size) + 96] = 0xbfccdc6800000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = arg1
    require ext_code.size(sub_0de239aaAddress)
    staticcall sub_0de239aaAddress.0xbfccdc68 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require uint32(arg1), mem[ceil32(return_data.size) + 132 len 28] == mem[ceil32(return_data.size) + 140 len 20]
    require mem[ceil32(return_data.size) + 192] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 127 < ceil32(return_data.size) + return_data.size + 96
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96])) + 97 > test266151307():
        revert with 0, 65
    require mem[ceil32(return_data.size) + 192] + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192] + 96] + 32 <= return_data.size
    if not stor205[arg1]:
        stor205[arg1] = 0
    else:
        if sub_583ae0ad and mem[ceil32(return_data.size) + 160] > -1 / sub_583ae0ad:
            revert with 0, 17
        if sub_583ae0ad * mem[ceil32(return_data.size) + 160] > !sub_5486e4b0:
            revert with 0, 17
        if block.timestamp < stor207[arg1]:
            revert with 0, 17
        if block.timestamp < sub_2873259e[arg1]:
            revert with 0, 17
        if block.timestamp - sub_2873259e[arg1] < 240 * 24 * 3600:
            if block.timestamp - stor207[arg1] and (sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + sub_5486e4b0 / 24 * 3600 > -1 / block.timestamp - stor207[arg1]:
                revert with 0, 17
            stor205[arg1] = 0
            if (block.timestamp * (sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + sub_5486e4b0 / 24 * 3600) - (stor207[arg1] * (sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + sub_5486e4b0 / 24 * 3600):
                if not address(ext_call.return_data[0]):
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !((block.timestamp * (sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + sub_5486e4b0 / 24 * 3600) - (stor207[arg1] * (sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + sub_5486e4b0 / 24 * 3600)):
                    revert with 0, 17
                totalSupply = totalSupply + (block.timestamp * (sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + sub_5486e4b0 / 24 * 3600) - (stor207[arg1] * (sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + sub_5486e4b0 / 24 * 3600)
                if balanceOf[address(ext_call.return_data[0])] > !((block.timestamp * (sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + sub_5486e4b0 / 24 * 3600) - (stor207[arg1] * (sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + sub_5486e4b0 / 24 * 3600)):
                    revert with 0, 17
                balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (block.timestamp * (sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + sub_5486e4b0 / 24 * 3600) - (stor207[arg1] * (sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + sub_5486e4b0 / 24 * 3600)
                emit Transfer(((block.timestamp * (sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + sub_5486e4b0 / 24 * 3600) - (stor207[arg1] * (sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + sub_5486e4b0 / 24 * 3600)), 0, address(ext_call.return_data[0]));
                emit Minted(address(ext_call.return_data[0]), (block.timestamp * (sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + sub_5486e4b0 / 24 * 3600) - (stor207[arg1] * (sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + sub_5486e4b0 / 24 * 3600));
        else:
            if (sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + sub_5486e4b0 and block.timestamp - stor207[arg1] > -1 / (sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + sub_5486e4b0:
                revert with 0, 17
            if (block.timestamp * sub_583ae0ad * mem[ceil32(return_data.size) + 160]) - (stor207[arg1] * sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + (block.timestamp * sub_5486e4b0) - (stor207[arg1] * sub_5486e4b0) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                revert with 0, 17
            stor205[arg1] = 0
            if 105 * (block.timestamp * sub_583ae0ad * mem[ceil32(return_data.size) + 160]) - (stor207[arg1] * sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + (block.timestamp * sub_5486e4b0) - (stor207[arg1] * sub_5486e4b0) / 24 * 3600 / 100:
                if not address(ext_call.return_data[0]):
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !(105 * (block.timestamp * sub_583ae0ad * mem[ceil32(return_data.size) + 160]) - (stor207[arg1] * sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + (block.timestamp * sub_5486e4b0) - (stor207[arg1] * sub_5486e4b0) / 24 * 3600 / 100):
                    revert with 0, 17
                totalSupply += 105 * (block.timestamp * sub_583ae0ad * mem[ceil32(return_data.size) + 160]) - (stor207[arg1] * sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + (block.timestamp * sub_5486e4b0) - (stor207[arg1] * sub_5486e4b0) / 24 * 3600 / 100
                if balanceOf[address(ext_call.return_data[0])] > !(105 * (block.timestamp * sub_583ae0ad * mem[ceil32(return_data.size) + 160]) - (stor207[arg1] * sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + (block.timestamp * sub_5486e4b0) - (stor207[arg1] * sub_5486e4b0) / 24 * 3600 / 100):
                    revert with 0, 17
                balanceOf[address(ext_call.return_data[0])] += 105 * (block.timestamp * sub_583ae0ad * mem[ceil32(return_data.size) + 160]) - (stor207[arg1] * sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + (block.timestamp * sub_5486e4b0) - (stor207[arg1] * sub_5486e4b0) / 24 * 3600 / 100
                emit Transfer((105 * (block.timestamp * sub_583ae0ad * mem[ceil32(return_data.size) + 160]) - (stor207[arg1] * sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + (block.timestamp * sub_5486e4b0) - (stor207[arg1] * sub_5486e4b0) / 24 * 3600 / 100), 0, address(ext_call.return_data[0]));
                emit Minted(address(ext_call.return_data[0]), 105 * (block.timestamp * sub_583ae0ad * mem[ceil32(return_data.size) + 160]) - (stor207[arg1] * sub_583ae0ad * mem[ceil32(return_data.size) + 160]) + (block.timestamp * sub_5486e4b0) - (stor207[arg1] * sub_5486e4b0) / 24 * 3600 / 100);
}

function sub_a06f3771(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not ('cd', 4).length:
        revert with 0, 50
    mem[100] = ('cd', 4)[0]
    require ext_code.size(sub_0de239aaAddress)
    staticcall sub_0de239aaAddress.0x6352211e with:
            gas gas_remaining wei
           args ('cd', 4)[0]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
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
        _58 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_58] == mem[_58 + 12 len 20]
        if mem[_58 + 12 len 20] == msg.sender:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64]] = 0xbfccdc6800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_0de239aaAddress)
            staticcall sub_0de239aaAddress.0xbfccdc68 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _67 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            require mem[_67 + 32] == mem[_67 + 44 len 20]
            _73 = mem[_67 + 64]
            _74 = mem[_67 + 96]
            require mem[_67 + 96] <= test266151307()
            require _67 + mem[_67 + 96] + 31 < _67 + return_data.size
            _77 = mem[_67 + mem[_67 + 96]]
            if mem[_67 + mem[_67 + 96]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_67 + mem[_67 + 96]])) + 1 < 0 or _67 + ceil32(return_data.size) + ceil32(ceil32(mem[_67 + mem[_67 + 96]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _67 + ceil32(return_data.size) + ceil32(ceil32(mem[_67 + mem[_67 + 96]])) + 1
            mem[_67 + ceil32(return_data.size)] = _77
            require _74 + _77 + 32 <= return_data.size
            s = 0
            while s < _77:
                mem[s + _67 + ceil32(return_data.size) + 32] = mem[s + _67 + _74 + 32]
                s = s + 32
                continue 
            if ceil32(_77) > _77:
                mem[_77 + _67 + ceil32(return_data.size) + 32] = 0
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 205
            if stor205[cd[((32 * idx) + cd[4] + 36)]]:
                if sub_583ae0ad and _73 > -1 / sub_583ae0ad:
                    revert with 0, 17
                if sub_583ae0ad * _73 > !sub_5486e4b0:
                    revert with 0, 17
                if block.timestamp < stor207[cd[((32 * idx) + cd[4] + 36)]]:
                    revert with 0, 17
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 206
                if block.timestamp < sub_2873259e[cd[((32 * idx) + cd[4] + 36)]]:
                    revert with 0, 17
                if block.timestamp - sub_2873259e[cd[((32 * idx) + cd[4] + 36)]] < 240 * 24 * 3600:
                    if block.timestamp - stor207[cd[((32 * idx) + cd[4] + 36)]] and (sub_583ae0ad * _73) + sub_5486e4b0 / 24 * 3600 > -1 / block.timestamp - stor207[cd[((32 * idx) + cd[4] + 36)]]:
                        revert with 0, 17
                    if (block.timestamp * (sub_583ae0ad * _73) + sub_5486e4b0 / 24 * 3600) - (stor207[cd[((32 * idx) + cd[4] + 36)]] * (sub_583ae0ad * _73) + sub_5486e4b0 / 24 * 3600):
                        if 0 > !((block.timestamp * (sub_583ae0ad * _73) + sub_5486e4b0 / 24 * 3600) - (stor207[cd[((32 * idx) + cd[4] + 36)]] * (sub_583ae0ad * _73) + sub_5486e4b0 / 24 * 3600)):
                            revert with 0, 17
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                        mem[32] = 207
                        stor207[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                else:
                    if (sub_583ae0ad * _73) + sub_5486e4b0 and block.timestamp - stor207[cd[((32 * idx) + cd[4] + 36)]] > -1 / (sub_583ae0ad * _73) + sub_5486e4b0:
                        revert with 0, 17
                    if (block.timestamp * sub_583ae0ad * _73) - (stor207[cd[((32 * idx) + cd[4] + 36)]] * sub_583ae0ad * _73) + (block.timestamp * sub_5486e4b0) - (stor207[cd[((32 * idx) + cd[4] + 36)]] * sub_5486e4b0) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                        revert with 0, 17
                    if 105 * (block.timestamp * sub_583ae0ad * _73) - (stor207[cd[((32 * idx) + cd[4] + 36)]] * sub_583ae0ad * _73) + (block.timestamp * sub_5486e4b0) - (stor207[cd[((32 * idx) + cd[4] + 36)]] * sub_5486e4b0) / 24 * 3600 / 100:
                        if 0 > !(105 * (block.timestamp * sub_583ae0ad * _73) - (stor207[cd[((32 * idx) + cd[4] + 36)]] * sub_583ae0ad * _73) + (block.timestamp * sub_5486e4b0) - (stor207[cd[((32 * idx) + cd[4] + 36)]] * sub_5486e4b0) / 24 * 3600 / 100):
                            revert with 0, 17
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                        mem[32] = 207
                        stor207[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
        else:
            mem[0] = msg.sender
            mem[32] = 0xb44af3c59d60a42a6f302ff6afaf39fd679716d4815f0f03a6e427d82ef88649
            if not storB44A[msg.sender]:
                revert with 0, 'Not ur ant'
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64]] = 0xbfccdc6800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_0de239aaAddress)
            staticcall sub_0de239aaAddress.0xbfccdc68 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _68 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            require mem[_68 + 32] == mem[_68 + 44 len 20]
            _75 = mem[_68 + 64]
            _76 = mem[_68 + 96]
            require mem[_68 + 96] <= test266151307()
            require _68 + mem[_68 + 96] + 31 < _68 + return_data.size
            _79 = mem[_68 + mem[_68 + 96]]
            if mem[_68 + mem[_68 + 96]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_68 + mem[_68 + 96]])) + 1 < 0 or _68 + ceil32(return_data.size) + ceil32(ceil32(mem[_68 + mem[_68 + 96]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _68 + ceil32(return_data.size) + ceil32(ceil32(mem[_68 + mem[_68 + 96]])) + 1
            mem[_68 + ceil32(return_data.size)] = _79
            require _76 + _79 + 32 <= return_data.size
            s = 0
            while s < _79:
                mem[s + _68 + ceil32(return_data.size) + 32] = mem[s + _68 + _76 + 32]
                s = s + 32
                continue 
            if ceil32(_79) > _79:
                mem[_79 + _68 + ceil32(return_data.size) + 32] = 0
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 205
            if stor205[cd[((32 * idx) + cd[4] + 36)]]:
                if sub_583ae0ad and _75 > -1 / sub_583ae0ad:
                    revert with 0, 17
                if sub_583ae0ad * _75 > !sub_5486e4b0:
                    revert with 0, 17
                if block.timestamp < stor207[cd[((32 * idx) + cd[4] + 36)]]:
                    revert with 0, 17
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 206
                if block.timestamp < sub_2873259e[cd[((32 * idx) + cd[4] + 36)]]:
                    revert with 0, 17
                if block.timestamp - sub_2873259e[cd[((32 * idx) + cd[4] + 36)]] < 240 * 24 * 3600:
                    if block.timestamp - stor207[cd[((32 * idx) + cd[4] + 36)]] and (sub_583ae0ad * _75) + sub_5486e4b0 / 24 * 3600 > -1 / block.timestamp - stor207[cd[((32 * idx) + cd[4] + 36)]]:
                        revert with 0, 17
                    if (block.timestamp * (sub_583ae0ad * _75) + sub_5486e4b0 / 24 * 3600) - (stor207[cd[((32 * idx) + cd[4] + 36)]] * (sub_583ae0ad * _75) + sub_5486e4b0 / 24 * 3600):
                        if 0 > !((block.timestamp * (sub_583ae0ad * _75) + sub_5486e4b0 / 24 * 3600) - (stor207[cd[((32 * idx) + cd[4] + 36)]] * (sub_583ae0ad * _75) + sub_5486e4b0 / 24 * 3600)):
                            revert with 0, 17
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                        mem[32] = 207
                        stor207[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
                else:
                    if (sub_583ae0ad * _75) + sub_5486e4b0 and block.timestamp - stor207[cd[((32 * idx) + cd[4] + 36)]] > -1 / (sub_583ae0ad * _75) + sub_5486e4b0:
                        revert with 0, 17
                    if (block.timestamp * sub_583ae0ad * _75) - (stor207[cd[((32 * idx) + cd[4] + 36)]] * sub_583ae0ad * _75) + (block.timestamp * sub_5486e4b0) - (stor207[cd[((32 * idx) + cd[4] + 36)]] * sub_5486e4b0) / 24 * 3600 > 0x270270270270270270270270270270270270270270270270270270270270270:
                        revert with 0, 17
                    if 105 * (block.timestamp * sub_583ae0ad * _75) - (stor207[cd[((32 * idx) + cd[4] + 36)]] * sub_583ae0ad * _75) + (block.timestamp * sub_5486e4b0) - (stor207[cd[((32 * idx) + cd[4] + 36)]] * sub_5486e4b0) / 24 * 3600 / 100:
                        if 0 > !(105 * (block.timestamp * sub_583ae0ad * _75) - (stor207[cd[((32 * idx) + cd[4] + 36)]] * sub_583ae0ad * _75) + (block.timestamp * sub_5486e4b0) - (stor207[cd[((32 * idx) + cd[4] + 36)]] * sub_5486e4b0) / 24 * 3600 / 100):
                            revert with 0, 17
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                        mem[32] = 207
                        stor207[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
