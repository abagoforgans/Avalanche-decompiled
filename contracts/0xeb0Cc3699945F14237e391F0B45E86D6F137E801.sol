contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of struct roleAdmin;
uint256 stor151;
address sub_de766c31Address;
address sub_68b577ffAddress;
uint256 sub_9acb379b;
uint256 sub_c5d9ee6c;
mapping of uint256 sub_4283ac08;
mapping of uint256 sub_0608333b;
array of address sub_eecd3aee;
mapping of uint256 stor208;
array of uint256 stor78124409783719932406374152597529114957380397136489353056513409383928196874025;

function sub_0608333b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0608333b[arg1]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_4283ac08(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4283ac08[arg1]
}

function sub_68b577ff(?) payable {
    return sub_68b577ffAddress
}

function sub_6f746443(?) payable {
    return sub_eecd3aee.length
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_9acb379b(?) payable {
    return sub_9acb379b
}

function sub_c5d9ee6c(?) payable {
    return sub_c5d9ee6c
}

function sub_de766c31(?) payable {
    return sub_de766c31Address
}

function sub_eecd3aee(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_eecd3aee.length
    return sub_eecd3aee[arg1]
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

function updateRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0][address(msg.sender)].field_0:
        sub_9acb379b = arg1
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

function initialize(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    sub_de766c31Address = arg1
    sub_68b577ffAddress = arg2
    sub_9acb379b = arg3
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_f89f6b2f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_de766c31Address)
    staticcall sub_de766c31Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_de766c31Address)
    staticcall sub_de766c31Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if sub_4283ac08[address(arg1)] and ext_call.return_data[50 len 14] > -1 / sub_4283ac08[address(arg1)]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (sub_4283ac08[address(arg1)] * ext_call.return_data[50 len 14] / ext_call.return_data[0])
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

function sub_605fba67(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_de766c31Address)
    staticcall sub_de766c31Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_de766c31Address)
    staticcall sub_de766c31Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if sub_4283ac08[address(arg1)] and ext_call.return_data[50 len 14] > -1 / sub_4283ac08[address(arg1)]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if block.timestamp < sub_0608333b[address(arg1)]:
        revert with 0, 17
    if block.timestamp - sub_0608333b[address(arg1)] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if sub_4283ac08[address(arg1)] * ext_call.return_data[50 len 14] / ext_call.return_data[0] and sub_9acb379b > -1 / sub_4283ac08[address(arg1)] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
        revert with 0, 17
    if sub_4283ac08[address(arg1)] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * sub_9acb379b / 10 and (10^10 * block.timestamp) - (10^10 * sub_0608333b[address(arg1)]) > -1 / sub_4283ac08[address(arg1)] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * sub_9acb379b / 10:
        revert with 0, 17
    return ((10^10 * block.timestamp * sub_4283ac08[address(arg1)] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * sub_9acb379b / 10) - (10^10 * sub_0608333b[address(arg1)] * sub_4283ac08[address(arg1)] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * sub_9acb379b / 10) / 24 * 3600 / 10^10)
}

function sub_351d02fa(?) payable {
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    require ext_code.size(sub_de766c31Address)
    staticcall sub_de766c31Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_de766c31Address)
    staticcall sub_de766c31Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if sub_4283ac08[address(msg.sender)] and ext_call.return_data[50 len 14] > -1 / sub_4283ac08[address(msg.sender)]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if block.timestamp < sub_0608333b[address(msg.sender)]:
        revert with 0, 17
    if block.timestamp - sub_0608333b[address(msg.sender)] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if sub_4283ac08[address(msg.sender)] * ext_call.return_data[50 len 14] / ext_call.return_data[0] and sub_9acb379b > -1 / sub_4283ac08[address(msg.sender)] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
        revert with 0, 17
    if sub_4283ac08[address(msg.sender)] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * sub_9acb379b / 10 and (10^10 * block.timestamp) - (10^10 * sub_0608333b[address(msg.sender)]) > -1 / sub_4283ac08[address(msg.sender)] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * sub_9acb379b / 10:
        revert with 0, 17
    if (10^10 * block.timestamp * sub_4283ac08[address(msg.sender)] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * sub_9acb379b / 10) - (10^10 * sub_0608333b[address(msg.sender)] * sub_4283ac08[address(msg.sender)] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * sub_9acb379b / 10) / 24 * 3600 / 10^10:
        sub_0608333b[address(msg.sender)] = block.timestamp
        require ext_code.size(sub_68b577ffAddress)
        call sub_68b577ffAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, (10^10 * block.timestamp * sub_4283ac08[address(msg.sender)] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * sub_9acb379b / 10) - (10^10 * sub_0608333b[address(msg.sender)] * sub_4283ac08[address(msg.sender)] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * sub_9acb379b / 10) / 24 * 3600 / 10^10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor151 = 1
}

function sub_2ed9e1fa(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Amount must be greater than 0'
    require ext_code.size(sub_de766c31Address)
    staticcall sub_de766c31Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_de766c31Address)
    staticcall sub_de766c31Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if sub_4283ac08[address(msg.sender)] and ext_call.return_data[50 len 14] > -1 / sub_4283ac08[address(msg.sender)]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if block.timestamp < sub_0608333b[address(msg.sender)]:
        revert with 0, 17
    if block.timestamp - sub_0608333b[address(msg.sender)] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if sub_4283ac08[address(msg.sender)] * ext_call.return_data[50 len 14] / ext_call.return_data[0] and sub_9acb379b > -1 / sub_4283ac08[address(msg.sender)] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
        revert with 0, 17
    if sub_4283ac08[address(msg.sender)] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * sub_9acb379b / 10 and (10^10 * block.timestamp) - (10^10 * sub_0608333b[address(msg.sender)]) > -1 / sub_4283ac08[address(msg.sender)] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * sub_9acb379b / 10:
        revert with 0, 17
    if (10^10 * block.timestamp * sub_4283ac08[address(msg.sender)] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * sub_9acb379b / 10) - (10^10 * sub_0608333b[address(msg.sender)] * sub_4283ac08[address(msg.sender)] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * sub_9acb379b / 10) / 24 * 3600 / 10^10:
        sub_0608333b[address(msg.sender)] = block.timestamp
        require ext_code.size(sub_68b577ffAddress)
        call sub_68b577ffAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, (10^10 * block.timestamp * sub_4283ac08[address(msg.sender)] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * sub_9acb379b / 10) - (10^10 * sub_0608333b[address(msg.sender)] * sub_4283ac08[address(msg.sender)] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * sub_9acb379b / 10) / 24 * 3600 / 10^10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_de766c31Address)
    call sub_de766c31Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_c5d9ee6c > !arg1:
        revert with 0, 17
    sub_c5d9ee6c += arg1
    if not sub_4283ac08[msg.sender]:
        sub_eecd3aee.length++
        storACB8[stor207.length] = msg.sender or Mask(96, 160, storACB8[stor207.length])
        if sub_eecd3aee.length < 1:
            revert with 0, 17
        stor208[msg.sender] = sub_eecd3aee.length - 1
    if sub_4283ac08[msg.sender] > !arg1:
        revert with 0, 17
    sub_4283ac08[msg.sender] += arg1
    sub_0608333b[msg.sender] = block.timestamp
    emit 0xa2dd46d0: msg.sender, arg1
}

function sub_63b9302e(?) payable {
    require calldata.size - 4 >= 32
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if not arg1:
        revert with 0, 'Amount must be greater than 0'
    if arg1 > sub_4283ac08[msg.sender]:
        revert with 0, 'Not enough AntG staked'
    require ext_code.size(sub_de766c31Address)
    staticcall sub_de766c31Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_de766c31Address)
    staticcall sub_de766c31Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if sub_4283ac08[address(msg.sender)] and ext_call.return_data[50 len 14] > -1 / sub_4283ac08[address(msg.sender)]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if block.timestamp < sub_0608333b[address(msg.sender)]:
        revert with 0, 17
    if block.timestamp - sub_0608333b[address(msg.sender)] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if sub_4283ac08[address(msg.sender)] * ext_call.return_data[50 len 14] / ext_call.return_data[0] and sub_9acb379b > -1 / sub_4283ac08[address(msg.sender)] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
        revert with 0, 17
    if sub_4283ac08[address(msg.sender)] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * sub_9acb379b / 10 and (10^10 * block.timestamp) - (10^10 * sub_0608333b[address(msg.sender)]) > -1 / sub_4283ac08[address(msg.sender)] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * sub_9acb379b / 10:
        revert with 0, 17
    if (10^10 * block.timestamp * sub_4283ac08[address(msg.sender)] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * sub_9acb379b / 10) - (10^10 * sub_0608333b[address(msg.sender)] * sub_4283ac08[address(msg.sender)] * ext_call.return_data[50 len 14] / ext_call.return_data[0] * sub_9acb379b / 10) / 24 * 3600 / 10^10:
        sub_0608333b[address(msg.sender)] = block.timestamp
        require ext_code.size(sub_68b577ffAddress)
        call sub_68b577ffAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, (10^10 * block.timestamp * sub_4283ac08[address(msg.sender)] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * sub_9acb379b / 10) - (10^10 * sub_0608333b[address(msg.sender)] * sub_4283ac08[address(msg.sender)] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * sub_9acb379b / 10) / 24 * 3600 / 10^10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if sub_4283ac08[msg.sender] < arg1:
        revert with 0, 17
    sub_4283ac08[msg.sender] -= arg1
    if not sub_4283ac08[msg.sender]:
        if sub_eecd3aee.length < 1:
            revert with 0, 17
        if sub_eecd3aee.length - 1 >= sub_eecd3aee.length:
            revert with 0, 50
        if stor208[address(msg.sender)] >= sub_eecd3aee.length:
            revert with 0, 50
        sub_eecd3aee[stor208[address(msg.sender)]] = sub_eecd3aee[sub_eecd3aee.length]
        stor208[stor207[stor207.length]] = stor208[address(msg.sender)]
        stor208[msg.sender] = 0
        if not sub_eecd3aee.length:
            revert with 0, 49
        sub_eecd3aee[sub_eecd3aee.length] = 0
        sub_eecd3aee.length--
    if sub_c5d9ee6c < arg1:
        revert with 0, 17
    sub_c5d9ee6c -= arg1
    require ext_code.size(sub_de766c31Address)
    call sub_de766c31Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x545568b7: msg.sender, arg1
    stor151 = 1
}

function sub_5ab5c9f6(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    mem[0] = msg.sender
    mem[32] = sha3(0, 101)
    if roleAdmin[0][address(msg.sender)].field_0:
        idx = arg1
        while idx <= arg2:
            if idx >= sub_eecd3aee.length:
                revert with 0, 50
            mem[0] = 207
            require ext_code.size(sub_de766c31Address)
            staticcall sub_de766c31Address.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _29 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _30 = mem[_29]
            require ext_code.size(sub_de766c31Address)
            staticcall sub_de766c31Address.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_33] == mem[_33 + 18 len 14]
            _38 = mem[_33 + 32]
            require mem[_33 + 32] == mem[_33 + 50 len 14]
            require mem[_33 + 64] == mem[_33 + 92 len 4]
            if sub_4283ac08[stor207[idx]] and mem[_33 + 50 len 14] > -1 / sub_4283ac08[stor207[idx]]:
                revert with 0, 17
            if not _30:
                revert with 0, 18
            mem[0] = sub_eecd3aee[idx]
            mem[32] = 206
            if block.timestamp < sub_0608333b[stor207[idx]]:
                revert with 0, 17
            if block.timestamp - sub_0608333b[stor207[idx]] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
                revert with 0, 17
            if sub_4283ac08[stor207[idx]] * Mask(112, 0, _38) / _30 and sub_9acb379b > -1 / sub_4283ac08[stor207[idx]] * Mask(112, 0, _38) / _30:
                revert with 0, 17
            if sub_4283ac08[stor207[idx]] * Mask(112, 0, _38) / _30 * sub_9acb379b / 10 and (10^10 * block.timestamp) - (10^10 * sub_0608333b[stor207[idx]]) > -1 / sub_4283ac08[stor207[idx]] * Mask(112, 0, _38) / _30 * sub_9acb379b / 10:
                revert with 0, 17
            if (10^10 * block.timestamp * sub_4283ac08[stor207[idx]] * Mask(112, 0, _38) / _30 * sub_9acb379b / 10) - (10^10 * sub_0608333b[stor207[idx]] * sub_4283ac08[stor207[idx]] * Mask(112, 0, _38) / _30 * sub_9acb379b / 10) / 24 * 3600 / 10^10:
                mem[0] = sub_eecd3aee[idx]
                mem[32] = 206
                sub_0608333b[stor207[idx]] = block.timestamp
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_eecd3aee[idx]
                mem[mem[64] + 36] = (10^10 * block.timestamp * sub_4283ac08[stor207[idx]] * Mask(112, 0, _38) / _30 * sub_9acb379b / 10) - (10^10 * sub_0608333b[stor207[idx]] * sub_4283ac08[stor207[idx]] * Mask(112, 0, _38) / _30 * sub_9acb379b / 10) / 24 * 3600 / 10^10
                require ext_code.size(sub_68b577ffAddress)
                call sub_68b577ffAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_eecd3aee[idx], (10^10 * block.timestamp * sub_4283ac08[stor207[idx]] * Mask(112, 0, _38) / _30 * sub_9acb379b / 10) - (10^10 * sub_0608333b[stor207[idx]] * sub_4283ac08[stor207[idx]] * Mask(112, 0, _38) / _30 * sub_9acb379b / 10) / 24 * 3600 / 10^10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
