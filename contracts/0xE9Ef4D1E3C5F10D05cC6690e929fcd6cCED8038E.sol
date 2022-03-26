contract main {




// =====================  Runtime code  =====================


const GUARDIAN_ROLE = sha3(Mask(104, 152, 'GUARDIAN_ROLE') >> 152)

const BURNER_ROLE = sha3(Mask(88, 168, 'BURNER_ROLE') >> 168)

const GOVERN_ROLE = sha3(Mask(88, 168, 'GOVERN_ROLE') >> 168)

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = sha3(Mask(88, 168, 'MINTER_ROLE') >> 168)

const PCV_CONTROLLER_ROLE = sha3(Mask(152, 104, 'PCV_CONTROLLER_ROLE') >> 104)


array of struct roleAdmin;
uint8 stor1;
uint8 stor1; offset 8
address feiAddress; offset 16
uint256 stor1; offset 8
address tribeAddress;
uint8 hasGenesisGroupCompleted; offset 160
address genesisGroupAddress;

function isGuardian(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin['GUARDIAN_ROLE'][1][address(arg1)].field_0)
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function isBurner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin['BURNER_ROLE'][1][address(arg1)].field_0)
}

function isPCVController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin['PCV_CONTROLLER_ROLE'][1][address(arg1)].field_0)
}

function genesisGroup() payable {
    return genesisGroupAddress
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function hasGenesisGroupCompleted() payable {
    return bool(hasGenesisGroupCompleted)
}

function fei() payable {
    return feiAddress
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin['MINTER_ROLE'][1][address(arg1)].field_0)
}

function tribe() payable {
    return tribeAddress
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function isGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin['GOVERN_ROLE'][1][address(arg1)].field_0)
}

function _fallback() payable {
    revert
}

function setFei(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin['GOVERN_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permissions: Caller is not a governor'
    feiAddress = arg1
    emit FeiUpdate(arg1);
}

function setTribe(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin['GOVERN_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permissions: Caller is not a governor'
    tribeAddress = arg1
    emit TribeUpdate(arg1);
}

function setGenesisGroup(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin['GOVERN_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permissions: Caller is not a governor'
    genesisGroupAddress = arg1
    emit GenesisGroupUpdate(arg1);
}

function createRole(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin['GOVERN_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permissions: Caller is not a governor'
    emit RoleAdminChanged(arg1, roleAdmin[arg1].field_512, arg2);
    roleAdmin[arg1].field_512 = arg2
}

function completeGenesisGroup() payable {
    if hasGenesisGroupCompleted:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Core: Genesis Group already complete'
    if genesisGroupAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Core: Caller is not Genesis Group'
    hasGenesisGroupCompleted = 1
    emit GenesisPeriodComplete(block.timestamp);
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function revokeOverride(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin['GUARDIAN_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permissions: Caller is not a guardian'
    if arg1 == sha3('GOVERN_ROLE'):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permissions: Guardian cannot revoke governor'
    require ext_code.size(this.address)
    call this.address.0xd547741f with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function grantBurner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin['GOVERN_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permissions: Caller is not a governor'
    if not roleAdmin[roleAdmin['BURNER_ROLE'].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin['BURNER_ROLE'][1][address(arg1)].field_0:
        roleAdmin['BURNER_ROLE'].field_0++
        roleAdmin['BURNER_ROLE'][roleAdmin['BURNER_ROLE'].field_0].field_0 = arg1
        roleAdmin['BURNER_ROLE'][roleAdmin['BURNER_ROLE'].field_0].field_160 = 0
        roleAdmin['BURNER_ROLE'][1][address(arg1)].field_0 = roleAdmin['BURNER_ROLE'].field_0
        emit RoleGranted(sha3('BURNER_ROLE'), arg1, msg.sender);
}

function grantMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin['GOVERN_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permissions: Caller is not a governor'
    if not roleAdmin[roleAdmin['MINTER_ROLE'].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin['MINTER_ROLE'][1][address(arg1)].field_0:
        roleAdmin['MINTER_ROLE'].field_0++
        roleAdmin['MINTER_ROLE'][roleAdmin['MINTER_ROLE'].field_0].field_0 = arg1
        roleAdmin['MINTER_ROLE'][roleAdmin['MINTER_ROLE'].field_0].field_160 = 0
        roleAdmin['MINTER_ROLE'][1][address(arg1)].field_0 = roleAdmin['MINTER_ROLE'].field_0
        emit RoleGranted(sha3('MINTER_ROLE'), arg1, msg.sender);
}

function grantGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin['GOVERN_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permissions: Caller is not a governor'
    if not roleAdmin[roleAdmin['GOVERN_ROLE'].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin['GOVERN_ROLE'][1][address(arg1)].field_0:
        roleAdmin['GOVERN_ROLE'].field_0++
        roleAdmin['GOVERN_ROLE'][roleAdmin['GOVERN_ROLE'].field_0].field_0 = arg1
        roleAdmin['GOVERN_ROLE'][roleAdmin['GOVERN_ROLE'].field_0].field_160 = 0
        roleAdmin['GOVERN_ROLE'][1][address(arg1)].field_0 = roleAdmin['GOVERN_ROLE'].field_0
        emit RoleGranted(sha3('GOVERN_ROLE'), arg1, msg.sender);
}

function grantGuardian(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin['GOVERN_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permissions: Caller is not a governor'
    if not roleAdmin[roleAdmin['GUARDIAN_ROLE'].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin['GUARDIAN_ROLE'][1][address(arg1)].field_0:
        roleAdmin['GUARDIAN_ROLE'].field_0++
        roleAdmin['GUARDIAN_ROLE'][roleAdmin['GUARDIAN_ROLE'].field_0].field_0 = arg1
        roleAdmin['GUARDIAN_ROLE'][roleAdmin['GUARDIAN_ROLE'].field_0].field_160 = 0
        roleAdmin['GUARDIAN_ROLE'][1][address(arg1)].field_0 = roleAdmin['GUARDIAN_ROLE'].field_0
        emit RoleGranted(sha3('GUARDIAN_ROLE'), arg1, msg.sender);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function grantPCVController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin['GOVERN_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permissions: Caller is not a governor'
    if not roleAdmin[roleAdmin['PCV_CONTROLLER_ROLE'].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin['PCV_CONTROLLER_ROLE'][1][address(arg1)].field_0:
        roleAdmin['PCV_CONTROLLER_ROLE'].field_0++
        roleAdmin['PCV_CONTROLLER_ROLE'][roleAdmin['PCV_CONTROLLER_ROLE'].field_0].field_0 = arg1
        roleAdmin['PCV_CONTROLLER_ROLE'][roleAdmin['PCV_CONTROLLER_ROLE'].field_0].field_160 = 0
        roleAdmin['PCV_CONTROLLER_ROLE'][1][address(arg1)].field_0 = roleAdmin['PCV_CONTROLLER_ROLE'].field_0
        emit RoleGranted(sha3('PCV_CONTROLLER_ROLE'), arg1, msg.sender);
}

function allocateTribe(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin['GOVERN_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permissions: Caller is not a governor'
    require ext_code.size(tribeAddress)
    staticcall tribeAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Core: Not enough Tribe'
    require ext_code.size(tribeAddress)
    call tribeAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit TribeAllocation(arg2, arg1);
}

function revokeBurner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin['GOVERN_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permissions: Caller is not a governor'
    if not roleAdmin[roleAdmin['BURNER_ROLE'].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin['BURNER_ROLE'][1][address(arg1)].field_0:
        require roleAdmin['BURNER_ROLE'].field_0 - 1 < roleAdmin['BURNER_ROLE'].field_0
        require roleAdmin['BURNER_ROLE'][1][address(arg1)].field_0 - 1 < roleAdmin['BURNER_ROLE'].field_0
        roleAdmin['BURNER_ROLE'][roleAdmin['BURNER_ROLE'][1][address(arg1)].field_0].field_0 = roleAdmin['BURNER_ROLE'][roleAdmin['BURNER_ROLE'].field_0].field_0
        roleAdmin['BURNER_ROLE'][1][roleAdmin['BURNER_ROLE'][roleAdmin['BURNER_ROLE'].field_0].field_0].field_0 = roleAdmin['BURNER_ROLE'][1][address(arg1)].field_0
        require roleAdmin['BURNER_ROLE'].field_0
        roleAdmin['BURNER_ROLE'][roleAdmin['BURNER_ROLE'].field_0].field_0 = 0
        roleAdmin['BURNER_ROLE'].field_0--
        roleAdmin['BURNER_ROLE'][1][address(arg1)].field_0 = 0
        emit RoleRevoked(sha3('BURNER_ROLE'), arg1, msg.sender);
}

function revokeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin['GOVERN_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permissions: Caller is not a governor'
    if not roleAdmin[roleAdmin['MINTER_ROLE'].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin['MINTER_ROLE'][1][address(arg1)].field_0:
        require roleAdmin['MINTER_ROLE'].field_0 - 1 < roleAdmin['MINTER_ROLE'].field_0
        require roleAdmin['MINTER_ROLE'][1][address(arg1)].field_0 - 1 < roleAdmin['MINTER_ROLE'].field_0
        roleAdmin['MINTER_ROLE'][roleAdmin['MINTER_ROLE'][1][address(arg1)].field_0].field_0 = roleAdmin['MINTER_ROLE'][roleAdmin['MINTER_ROLE'].field_0].field_0
        roleAdmin['MINTER_ROLE'][1][roleAdmin['MINTER_ROLE'][roleAdmin['MINTER_ROLE'].field_0].field_0].field_0 = roleAdmin['MINTER_ROLE'][1][address(arg1)].field_0
        require roleAdmin['MINTER_ROLE'].field_0
        roleAdmin['MINTER_ROLE'][roleAdmin['MINTER_ROLE'].field_0].field_0 = 0
        roleAdmin['MINTER_ROLE'].field_0--
        roleAdmin['MINTER_ROLE'][1][address(arg1)].field_0 = 0
        emit RoleRevoked(sha3('MINTER_ROLE'), arg1, msg.sender);
}

function revokeGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin['GOVERN_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permissions: Caller is not a governor'
    if not roleAdmin[roleAdmin['GOVERN_ROLE'].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin['GOVERN_ROLE'][1][address(arg1)].field_0:
        require roleAdmin['GOVERN_ROLE'].field_0 - 1 < roleAdmin['GOVERN_ROLE'].field_0
        require roleAdmin['GOVERN_ROLE'][1][address(arg1)].field_0 - 1 < roleAdmin['GOVERN_ROLE'].field_0
        roleAdmin['GOVERN_ROLE'][roleAdmin['GOVERN_ROLE'][1][address(arg1)].field_0].field_0 = roleAdmin['GOVERN_ROLE'][roleAdmin['GOVERN_ROLE'].field_0].field_0
        roleAdmin['GOVERN_ROLE'][1][roleAdmin['GOVERN_ROLE'][roleAdmin['GOVERN_ROLE'].field_0].field_0].field_0 = roleAdmin['GOVERN_ROLE'][1][address(arg1)].field_0
        require roleAdmin['GOVERN_ROLE'].field_0
        roleAdmin['GOVERN_ROLE'][roleAdmin['GOVERN_ROLE'].field_0].field_0 = 0
        roleAdmin['GOVERN_ROLE'].field_0--
        roleAdmin['GOVERN_ROLE'][1][address(arg1)].field_0 = 0
        emit RoleRevoked(sha3('GOVERN_ROLE'), arg1, msg.sender);
}

function revokeGuardian(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin['GOVERN_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permissions: Caller is not a governor'
    if not roleAdmin[roleAdmin['GUARDIAN_ROLE'].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin['GUARDIAN_ROLE'][1][address(arg1)].field_0:
        require roleAdmin['GUARDIAN_ROLE'].field_0 - 1 < roleAdmin['GUARDIAN_ROLE'].field_0
        require roleAdmin['GUARDIAN_ROLE'][1][address(arg1)].field_0 - 1 < roleAdmin['GUARDIAN_ROLE'].field_0
        roleAdmin['GUARDIAN_ROLE'][roleAdmin['GUARDIAN_ROLE'][1][address(arg1)].field_0].field_0 = roleAdmin['GUARDIAN_ROLE'][roleAdmin['GUARDIAN_ROLE'].field_0].field_0
        roleAdmin['GUARDIAN_ROLE'][1][roleAdmin['GUARDIAN_ROLE'][roleAdmin['GUARDIAN_ROLE'].field_0].field_0].field_0 = roleAdmin['GUARDIAN_ROLE'][1][address(arg1)].field_0
        require roleAdmin['GUARDIAN_ROLE'].field_0
        roleAdmin['GUARDIAN_ROLE'][roleAdmin['GUARDIAN_ROLE'].field_0].field_0 = 0
        roleAdmin['GUARDIAN_ROLE'].field_0--
        roleAdmin['GUARDIAN_ROLE'][1][address(arg1)].field_0 = 0
        emit RoleRevoked(sha3('GUARDIAN_ROLE'), arg1, msg.sender);
}

function init() payable {
    if not uint8(stor1.field_8):
        if ext_code.size(this.address):
            if uint8(stor1.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor1.field_8):
            uint8(stor1.field_0) = 1
            uint8(stor1.field_8) = 1
            Mask(248, 0, stor1.field_8) = 0
    if not roleAdmin['GOVERN_ROLE'][1][address(msg.sender)].field_0:
        roleAdmin['GOVERN_ROLE'].field_0++
        roleAdmin['GOVERN_ROLE'][roleAdmin['GOVERN_ROLE'].field_0].field_0 = msg.sender
        roleAdmin['GOVERN_ROLE'][roleAdmin['GOVERN_ROLE'].field_0].field_160 = 0
        roleAdmin['GOVERN_ROLE'][1][address(msg.sender)].field_0 = roleAdmin['GOVERN_ROLE'].field_0
        emit RoleGranted(sha3('GOVERN_ROLE'), msg.sender, msg.sender);
    create contract with 0 wei
                    code: code.data[6406 len 8900], address(this.address)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    feiAddress = address(create.new_address)
    emit FeiUpdate(address(create.new_address));
    create contract with 0 wei
                    code: code.data[15306 len 8460], address(this.address), msg.sender
    tribeAddress = address(create.new_address)
    emit TribeUpdate(address(create.new_address));
    if not uint8(stor1.field_8):
        uint8(stor1.field_8) = 0
}

function revokePCVController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin['GOVERN_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Permissions: Caller is not a governor'
    if not roleAdmin[roleAdmin['PCV_CONTROLLER_ROLE'].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin['PCV_CONTROLLER_ROLE'][1][address(arg1)].field_0:
        require roleAdmin['PCV_CONTROLLER_ROLE'].field_0 - 1 < roleAdmin['PCV_CONTROLLER_ROLE'].field_0
        require roleAdmin['PCV_CONTROLLER_ROLE'][1][address(arg1)].field_0 - 1 < roleAdmin['PCV_CONTROLLER_ROLE'].field_0
        roleAdmin['PCV_CONTROLLER_ROLE'][roleAdmin['PCV_CONTROLLER_ROLE'][1][address(arg1)].field_0].field_0 = roleAdmin['PCV_CONTROLLER_ROLE'][roleAdmin['PCV_CONTROLLER_ROLE'].field_0].field_0
        roleAdmin['PCV_CONTROLLER_ROLE'][1][roleAdmin['PCV_CONTROLLER_ROLE'][roleAdmin['PCV_CONTROLLER_ROLE'].field_0].field_0].field_0 = roleAdmin['PCV_CONTROLLER_ROLE'][1][address(arg1)].field_0
        require roleAdmin['PCV_CONTROLLER_ROLE'].field_0
        roleAdmin['PCV_CONTROLLER_ROLE'][roleAdmin['PCV_CONTROLLER_ROLE'].field_0].field_0 = 0
        roleAdmin['PCV_CONTROLLER_ROLE'].field_0--
        roleAdmin['PCV_CONTROLLER_ROLE'][1][address(arg1)].field_0 = 0
        emit RoleRevoked(sha3('PCV_CONTROLLER_ROLE'), arg1, msg.sender);
}



}
