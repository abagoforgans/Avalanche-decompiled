contract main {




// =====================  Runtime code  =====================


const RELAYER_ROLE = sha3(Mask(96, 160, 'RELAYER_ROLE') >> 160)

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
array of struct roleAdmin;
uint8 _chainID;
uint256 _relayerThreshold;
uint256 _totalRelayers;
uint256 _totalProposals;
uint256 _fee;
uint256 _expiry;
mapping of uint64 _depositCounts;
mapping of address _resourceIDToHandler;
array of uint256 _depositRecords;
mapping of uint8 stor12;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_512
}

function _depositRecords(uint64 arg1, uint8 arg2) {
    return _depositRecords[arg1][arg2][0 len _depositRecords[arg1][arg2].length]
}

function _depositCounts(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _depositCounts[arg1]
}

function _proposals(uint72 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == Mask(72, 0, arg1)
    require arg2 == arg2
    require _proposals[arg1][arg2].field_1024 < 5
    return _proposals[arg1][arg2].field_0, 
           _proposals[arg1][arg2].field_256,
           _proposals[arg1][arg2].field_1024,
           _proposals[arg1][arg2].field_1280
}

function paused() {
    return bool(stor0)
}

function _hasVotedOnProposal(uint72 arg1, bytes32 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == Mask(72, 0, arg1)
    require arg2 == arg2
    require arg3 == arg3
    return bool(stor12[arg1][arg2][arg3])
}

function _totalRelayers() {
    return _totalRelayers
}

function _resourceIDToHandlerAddress(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _resourceIDToHandler[arg1]
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[arg1].field_0 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require arg2 < roleAdmin[arg1].field_0
    return roleAdmin[arg1][arg2].field_0
}

function _totalProposals() {
    return _totalProposals
}

function _chainID() {
    return _chainID
}

function _fee() {
    return _fee
}

function _expiry() {
    return _expiry
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_0
}

function _relayerThreshold() {
    return _relayerThreshold
}

function _fallback() payable {
    revert
}

function isRelayer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not not roleAdmin['RELAYER_ROLE'][1][address(arg1)].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return not not roleAdmin[arg1][1][address(arg2)].field_0
}

function adminPauseTransfers() {
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function adminUnpauseTransfers() {
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function adminChangeRelayerThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    _relayerThreshold = arg1
    emit RelayerThresholdChanged(arg1);
}

function adminChangeFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    if _fee == arg1:
        revert with 0, 'Current fee is equal to new fee'
    _fee = arg1
}

function adminSetBurnable(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    require ext_code.size(arg1)
    call arg1.setBurnable(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function adminSetResource(address arg1, bytes32 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    _resourceIDToHandler[arg2] = arg1
    require ext_code.size(arg1)
    call arg1.setResource(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function adminWithdraw(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    require ext_code.size(arg1)
    call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function adminSetGenericResource(address arg1, bytes32 arg2, address arg3, bytes4 arg4, bytes4 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == Mask(32, 224, arg4)
    require arg5 == Mask(32, 224, arg5)
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    _resourceIDToHandler[arg2] = arg1
    require ext_code.size(arg1)
    call arg1.setResource(bytes32 arg1, address arg2, bytes4 arg3, bytes4 arg4) with:
         gas gas_remaining wei
        args 0, uint32(arg2), address(arg3), Mask(32, 224, arg4), Mask(32, 224, arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function transferFunds(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        require idx < arg2.length
        call address(cd[((32 * idx) + arg1 + 36)]) with:
           value cd[((32 * idx) + arg2 + 36)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function adminAddRelayer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    if roleAdmin['RELAYER_ROLE'][1][address(arg1)].field_0:
        revert with 0, 'addr already has relayer role!'
    if not roleAdmin[roleAdmin['RELAYER_ROLE'].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin['RELAYER_ROLE'][1][address(arg1)].field_0:
        roleAdmin['RELAYER_ROLE'].field_0++
        roleAdmin['RELAYER_ROLE'][roleAdmin['RELAYER_ROLE'].field_0].field_0 = arg1
        roleAdmin['RELAYER_ROLE'][roleAdmin['RELAYER_ROLE'].field_0].field_160 = 0
        roleAdmin['RELAYER_ROLE'][1][address(arg1)].field_0 = roleAdmin['RELAYER_ROLE'].field_0
        emit RoleGranted(sha3('RELAYER_ROLE'), arg1, msg.sender);
    emit RelayerAdded(arg1);
    _totalRelayers++
}

function cancelProposal(uint8 arg1, uint64 arg2, bytes32 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        if not roleAdmin['RELAYER_ROLE'][1][address(msg.sender)].field_0:
            revert with 0, 'sender is not relayer or admin'
    require _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 <= 4
    if _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 == 4:
        revert with 0, 'Proposal already cancelled'
    if _proposals[uint64(arg2) << 8 or arg1][arg3].field_1280 > block.number:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.number - _proposals[uint64(arg2) << 8 or arg1][arg3].field_1280 <= _expiry:
        revert with 0, 'Proposal not at expiry threshold'
    _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 = 4
    emit ProposalEvent(_proposals[uint64(arg2) << 8 or arg1][arg3].field_0, _proposals[uint64(arg2) << 8 or arg1][arg3].field_256, arg1, arg2, 4);
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function adminRemoveRelayer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    if not roleAdmin['RELAYER_ROLE'][1][address(arg1)].field_0:
        revert with 0, 'addr doesn't have relayer role!'
    if not roleAdmin[roleAdmin['RELAYER_ROLE'].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin['RELAYER_ROLE'][1][address(arg1)].field_0:
        require roleAdmin['RELAYER_ROLE'].field_0 - 1 < roleAdmin['RELAYER_ROLE'].field_0
        require roleAdmin['RELAYER_ROLE'][1][address(arg1)].field_0 - 1 < roleAdmin['RELAYER_ROLE'].field_0
        roleAdmin['RELAYER_ROLE'][roleAdmin['RELAYER_ROLE'][1][address(arg1)].field_0].field_0 = roleAdmin['RELAYER_ROLE'][roleAdmin['RELAYER_ROLE'].field_0].field_0
        roleAdmin['RELAYER_ROLE'][1][roleAdmin['RELAYER_ROLE'][roleAdmin['RELAYER_ROLE'].field_0].field_0].field_0 = roleAdmin['RELAYER_ROLE'][1][address(arg1)].field_0
        require roleAdmin['RELAYER_ROLE'].field_0
        roleAdmin['RELAYER_ROLE'][roleAdmin['RELAYER_ROLE'].field_0].field_0 = 0
        roleAdmin['RELAYER_ROLE'].field_0--
        roleAdmin['RELAYER_ROLE'][1][address(arg1)].field_0 = 0
        emit RoleRevoked(sha3('RELAYER_ROLE'), arg1, msg.sender);
    emit RelayerRemoved(arg1);
    _totalRelayers--
}

function renounceAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    if not roleAdmin[roleAdmin[0].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[0][1][address(arg1)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = arg1
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(arg1)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, arg1, msg.sender);
    if msg.sender != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[0][1][address(msg.sender)].field_0:
        require roleAdmin[0].field_0 - 1 < roleAdmin[0].field_0
        require roleAdmin[0][1][address(msg.sender)].field_0 - 1 < roleAdmin[0].field_0
        roleAdmin[0][roleAdmin[0][1][address(msg.sender)].field_0].field_0 = roleAdmin[0][roleAdmin[0].field_0].field_0
        roleAdmin[0][1][roleAdmin[0][roleAdmin[0].field_0].field_0].field_0 = roleAdmin[0][1][address(msg.sender)].field_0
        require roleAdmin[0].field_0
        roleAdmin[0][roleAdmin[0].field_0].field_0 = 0
        roleAdmin[0].field_0--
        roleAdmin[0][1][address(msg.sender)].field_0 = 0
        emit RoleRevoked(0, msg.sender, msg.sender);
}

function deposit(uint8 arg1, bytes32 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if stor0:
        revert with 0, 'Pausable: paused'
    if _fee != msg.value:
        revert with 0, 'Incorrect fee supplied'
    if not _resourceIDToHandler[arg2]:
        revert with 0, 'resourceID not mapped to handler'
    _depositCounts[arg1 << 248] = uint64(_depositCounts[arg1 << 248] + 1)
    _depositRecords[stor8[arg1 << 248] + 1 << 192][arg1 << 248] = (2 * arg3.length) + 1
    s = 0
    idx = arg3 + 36
    while arg3 + arg3.length + 36 > idx:
        _depositRecords[stor8[arg1 << 248] + 1 << 192][arg1 << 248][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg3.length + 31) >> 5
    while _depositRecords[stor8[arg1 << 248] + 1 << 192][arg1 << 248].length + 31 / 32 > idx:
        _depositRecords[stor8[arg1 << 248] + 1 << 192][arg1 << 248][idx] = 0
        idx = idx + 1
        continue 
    mem[292 len arg3.length] = arg3[all]
    mem[arg3.length + 292] = 0
    require ext_code.size(_resourceIDToHandler[arg2])
    call _resourceIDToHandler[arg2].deposit(bytes32 arg1, uint8 arg2, uint64 arg3, address arg4, bytes arg5) with:
         gas gas_remaining wei
        args 0, uint32(arg2), arg1 << 248, _depositCounts[arg1 << 248] + 1 << 192, msg.sender, 160, arg3.length, arg3[all], mem[arg3.length + 292 len ceil32(arg3.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(arg1, arg2, uint64(_depositCounts[arg1 << 248] + 1));
}

function executeProposal(uint8 arg1, uint64 arg2, bytes arg3, bytes32 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == arg4
    if not roleAdmin['RELAYER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have relayer role'
    if stor0:
        revert with 0, 'Pausable: paused'
    require _proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_1024 <= 4
    if not _proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_1024:
        revert with 0, 'proposal is not active'
    require _proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_1024 <= 4
    if _proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_1024 != 2:
        revert with 0, 'proposal already transferred'
    if sha3(_resourceIDToHandler[arg4], arg3[all]) != _proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_256:
        revert with 0, 'data doesn't match datahash'
    _proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_1024 = 3
    require ext_code.size(_resourceIDToHandler[stor11[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', '_resourceIDToHandler', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_0])
    call _resourceIDToHandler[stor11[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', '_resourceIDToHandler', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_0].executeProposal(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args _proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_0, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require _proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_1024 <= 4
    emit ProposalEvent(_proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_0, _proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_256, arg1, arg2, _proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_1024);
}

function voteProposal(uint8 arg1, uint64 arg2, bytes32 arg3, bytes32 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not roleAdmin['RELAYER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have relayer role'
    if stor0:
        revert with 0, 'Pausable: paused'
    if not _resourceIDToHandler[arg3]:
        revert with 0, 'no handler for resourceID'
    require _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024 <= 4
    if _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024 > 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'proposal already passed/executed/cancelled'
    if stor12[uint64(arg2) << 8 or arg1][arg4][address(msg.sender)]:
        revert with 0, 'relayer already voted'
    require _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024 <= 4
    if _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024:
        if _proposals[uint64(arg2) << 8 or arg1][arg4].field_1280 > block.number:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.number - _proposals[uint64(arg2) << 8 or arg1][arg4].field_1280 > _expiry:
            _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024 = 4
            emit ProposalEvent(arg3, arg4, arg1, arg2, 4);
        else:
            if arg4 != _proposals[uint64(arg2) << 8 or arg1][arg4].field_256:
                revert with 0, 'datahash mismatch'
            _proposals[uint64(arg2) << 8 or arg1][arg4].field_512++
            stor[('array', 2, ('map', ('param', 'arg4'), ('map', ('or', ('mask_shl', 64, 0, 8, ('param', 'arg2')), ('param', 'arg1')), ('name', '_proposals', 11)))) + _proposals[uint64(arg2) << 8 or arg1][arg4].field_512].field_0 = msg.sender
    else:
        _totalProposals++
        mem[320] = call.data[calldata.size]
        mem[352] = 0
        _proposals[uint64(arg2) << 8 or arg1][arg4].field_0 = arg3
        _proposals[uint64(arg2) << 8 or arg1][arg4].field_256 = arg4
        _proposals[uint64(arg2) << 8 or arg1][arg4].field_512 = 1
        s = 0
        idx = 320
        while 352 > idx:
            _proposals[uint64(arg2) << 8 or arg1][arg4][s + 2].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 1
        while _proposals[uint64(arg2) << 8 or arg1][arg4].field_512 > idx:
            _proposals[uint64(arg2) << 8 or arg1][arg4][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
        _proposals[uint64(arg2) << 8 or arg1][arg4].field_768 = 0
        idx = 0
        while _proposals[uint64(arg2) << 8 or arg1][arg4].field_768 > idx:
            _proposals[uint64(arg2) << 8 or arg1][arg4][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
        _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024 = 1
        _proposals[uint64(arg2) << 8 or arg1][arg4].field_1280 = block.number
        require 0 < _proposals[uint64(arg2) << 8 or arg1][arg4].field_512
        _proposals[uint64(arg2) << 8 or arg1][arg4][2].field_0 = msg.sender
        emit ProposalEvent(arg3, arg4, arg1, arg2, 1);
    require _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024 <= 4
    if _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024 != 4:
        stor12[uint64(arg2) << 8 or arg1][arg4][address(msg.sender)] = 1
        require _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024 <= 4
        emit ProposalVote(arg3, arg1, arg2, _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024);
        if _relayerThreshold <= 1:
            _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024 = 2
            emit ProposalEvent(arg3, arg4, arg1, arg2, 2);
        else:
            if _proposals[uint64(arg2) << 8 or arg1][arg4].field_512 >= _relayerThreshold:
                _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024 = 2
                emit ProposalEvent(arg3, arg4, arg1, arg2, 2);
}

function getProposal(uint8 arg1, uint64 arg2, bytes32 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not _proposals[uint64(arg2) << 8 or arg1][arg3].field_512:
        mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + 512] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_768
        if _proposals[uint64(arg2) << 8 or arg1][arg3].field_768:
            mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + 544] = _proposals[uint64(arg2) << 8 or arg1][arg3][3].field_0
            idx = (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + 544
            s = 0
            while (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 512 > idx:
                mem[idx + 32] = _proposals[uint64(arg2) << 8 or arg1][arg3][s + 3].field_256
                idx = idx + 32
                s = s + 1
                continue 
        require _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 <= 4
        mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 544] = 32
        mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 576] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_0
        mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 608] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_256
        mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 640] = 192
        mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 768] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_512
        idx = 0
        s = 512
        t = (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 800
        while idx < _proposals[uint64(arg2) << 8 or arg1][arg3].field_512:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 672] = (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + 224
        mem[(64 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 800] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_768
        idx = 0
        s = (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + 544
        t = (64 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 832
        while idx < _proposals[uint64(arg2) << 8 or arg1][arg3].field_768:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 < 5
        mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 704] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024
        mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 736] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_1280
        return memory
          from (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 544
           len (96 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 288
    mem[512] = _proposals[uint64(arg2) << 8 or arg1][arg3][2].field_0
    idx = 512
    s = 0
    while (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + 480 > idx:
        mem[idx + 32] = _proposals[uint64(arg2) << 8 or arg1][arg3][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + 512] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_768
    if not _proposals[uint64(arg2) << 8 or arg1][arg3].field_768:
        require _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 <= 4
        mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 544] = 32
        mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 576] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_0
        mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 608] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_256
        mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 640] = 192
        mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 768] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_512
        idx = 0
        s = 512
        t = (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 800
        while idx < _proposals[uint64(arg2) << 8 or arg1][arg3].field_512:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 672] = (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + 224
        mem[(64 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 800] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_768
        idx = 0
        s = (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + 544
        t = (64 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 832
        while idx < _proposals[uint64(arg2) << 8 or arg1][arg3].field_768:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 < 5
        mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 704] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024
        mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 736] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_1280
        return memory
          from (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 544
           len (96 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 288
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + 544] = _proposals[uint64(arg2) << 8 or arg1][arg3][3].field_0
    idx = (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + 544
    s = 0
    while (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 512 > idx:
        mem[idx + 32] = _proposals[uint64(arg2) << 8 or arg1][arg3][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 <= 4
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 544] = 32
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 576] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_0
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 608] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_256
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 640] = 192
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 768] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_512
    idx = 0
    s = 512
    t = (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 800
    while idx < _proposals[uint64(arg2) << 8 or arg1][arg3].field_512:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 672] = (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + 224
    mem[(64 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 800] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_768
    idx = 0
    s = (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + 544
    t = (64 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 832
    while idx < _proposals[uint64(arg2) << 8 or arg1][arg3].field_768:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 < 5
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 704] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 736] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_1280
    return memory
      from (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 544
       len (96 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (96 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 288
}



}
