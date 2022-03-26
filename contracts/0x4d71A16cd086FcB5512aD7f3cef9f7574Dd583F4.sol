contract main {




// =====================  Runtime code  =====================


const RELAYER_ROLE = 0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
mapping of struct roleAdmin;
uint8 _chainID;
uint256 _relayerThreshold;
uint256 _totalRelayers;
uint256 _totalProposals;
uint256 _fee;
uint256 _expiry;
mapping of uint64 _depositCounts;
mapping of address _resourceIDToHandler;
mapping of struct stor10;
mapping of uint8 stor12;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
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
    if _proposals[arg1][arg2].field_1024 >= 5:
        revert with 'NH{q', 33
    return _proposals[arg1][arg2].field_0, 
           _proposals[arg1][arg2].field_256,
           _proposals[arg1][arg2].field_1024,
           _proposals[arg1][arg2].field_1280
}

function isRelayer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin[0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4][address(arg1)].field_0)
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

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
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

function _relayerThreshold() {
    return _relayerThreshold
}

function _fallback() payable {
    revert
}

function adminPauseTransfers() {
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function adminUnpauseTransfers() {
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function adminChangeRelayerThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    _relayerThreshold = arg1
    emit RelayerThresholdChanged(arg1);
}

function adminChangeFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    if _fee == arg1:
        revert with 0, 'Current fee is equal to new fee'
    _fee = arg1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function adminSetBurnable(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    require ext_code.size(arg1)
    call arg1.setBurnable(address rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
}

function adminSetResource(address arg1, bytes32 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    _resourceIDToHandler[arg2] = arg1
    require ext_code.size(arg1)
    call arg1.setResource(bytes32 rg1, address rg2) with:
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
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    require ext_code.size(arg1)
    call arg1.withdraw(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function adminSetGenericResource(address arg1, bytes32 arg2, address arg3, bytes4 arg4, bytes4 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == Mask(32, 224, arg4)
    require arg5 == Mask(32, 224, arg5)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    _resourceIDToHandler[arg2] = arg1
    require ext_code.size(arg1)
    call arg1.setResource(bytes32 rg1, address rg2, bytes4 rg3, bytes4 rg4) with:
         gas gas_remaining wei
        args 0, uint32(arg2), address(arg3), Mask(32, 224, arg4), Mask(32, 224, arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function renounceAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    if not roleAdmin[roleAdmin[0].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[0][address(arg1)].field_0:
        roleAdmin[0][address(arg1)].field_0 = 1
        emit RoleGranted(0, arg1, msg.sender);
    if msg.sender != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 0
        emit RoleRevoked(0, msg.sender, msg.sender);
}

function cancelProposal(uint8 arg1, uint64 arg2, bytes32 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not roleAdmin[0][address(msg.sender)].field_0:
        if not roleAdmin[0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4][address(msg.sender)].field_0:
            revert with 0, 'sender is not relayer or admin'
    if _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 > 4:
        revert with 'NH{q', 33
    if _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 == 4:
        revert with 0, 'Proposal already cancelled'
    if block.number < _proposals[uint64(arg2) << 8 or arg1][arg3].field_1280:
        revert with 'NH{q', 17
    if block.number - _proposals[uint64(arg2) << 8 or arg1][arg3].field_1280 <= _expiry:
        revert with 0, 'Proposal not at expiry threshold'
    _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 = 4
    emit ProposalEvent(_proposals[uint64(arg2) << 8 or arg1][arg3].field_0, _proposals[uint64(arg2) << 8 or arg1][arg3].field_256, arg1, arg2, 4);
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
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if idx >= arg2.length:
            revert with 'NH{q', 50
        call address(cd[((32 * idx) + arg1 + 36)]) with:
           value cd[((32 * idx) + arg2 + 36)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function adminAddRelayer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    if roleAdmin[0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4][address(arg1)].field_0:
        revert with 0, 'addr already has relayer role!'
    if not roleAdmin[roleAdmin[0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4][address(arg1)].field_0:
        roleAdmin[0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4][address(arg1)].field_0 = 1
        emit RoleGranted(0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4, arg1, msg.sender);
    emit RelayerAdded(arg1);
    if _totalRelayers == -1:
        revert with 'NH{q', 17
    _totalRelayers++
}

function adminRemoveRelayer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    if not roleAdmin[0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4][address(arg1)].field_0:
        revert with 0, 'addr doesn't have relayer role!'
    if not roleAdmin[roleAdmin[0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4][address(arg1)].field_0:
        roleAdmin[0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4][address(arg1)].field_0 = 0
        emit RoleRevoked(0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4, arg1, msg.sender);
    emit RelayerRemoved(arg1);
    if not _totalRelayers:
        revert with 'NH{q', 17
    _totalRelayers--
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
    if _depositCounts[arg1 << 248] == test266151307():
        revert with 'NH{q', 17
    _depositCounts[arg1 << 248] = uint64(_depositCounts[arg1 << 248] + 1)
    if stor10[stor8[arg1 << 248] + 1 << 192][arg1 << 248].field_0:
        if stor10[stor8[arg1 << 248] + 1 << 192][arg1 << 248].field_0 == stor10[stor8[arg1 << 248] + 1 << 192][arg1 << 248].field_1 < 32:
            revert with 'NH{q', 34
        if not arg3.length:
            stor10[stor8[arg1 << 248] + 1 << 192][arg1 << 248].field_0 = 0
            idx = 0
            while stor10[stor8[arg1 << 248] + 1 << 192][arg1 << 248].field_1 + 31 / 32 > idx:
                stor10[stor8[arg1 << 248] + 1 << 192][arg1 << 248][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor10[stor8[arg1 << 248] + 1 << 192][arg1 << 248].field_0 = (2 * arg3.length) + 1
            s = 0
            idx = arg3 + 36
            while arg3 + arg3.length + 36 > idx:
                stor10[stor8[arg1 << 248] + 1 << 192][arg1 << 248][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg3.length + 31) >> 5
            while stor10[stor8[arg1 << 248] + 1 << 192][arg1 << 248].field_1 + 31 / 32 > idx:
                stor10[stor8[arg1 << 248] + 1 << 192][arg1 << 248][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor10[stor8[arg1 << 248] + 1 << 192][arg1 << 248].field_0 == stor10[stor8[arg1 << 248] + 1 << 192][arg1 << 248].field_1 < 32:
            revert with 'NH{q', 34
        if not arg3.length:
            stor10[stor8[arg1 << 248] + 1 << 192][arg1 << 248].field_0 = 0
            idx = 0
            while stor10[stor8[arg1 << 248] + 1 << 192][arg1 << 248].field_1 + 31 / 32 > idx:
                stor10[stor8[arg1 << 248] + 1 << 192][arg1 << 248][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor10[stor8[arg1 << 248] + 1 << 192][arg1 << 248].field_0 = (2 * arg3.length) + 1
            s = 0
            idx = arg3 + 36
            while arg3 + arg3.length + 36 > idx:
                stor10[stor8[arg1 << 248] + 1 << 192][arg1 << 248][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg3.length + 31) >> 5
            while stor10[stor8[arg1 << 248] + 1 << 192][arg1 << 248].field_1 + 31 / 32 > idx:
                stor10[stor8[arg1 << 248] + 1 << 192][arg1 << 248][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[292 len arg3.length] = arg3[all]
    mem[arg3.length + 292] = 0
    require ext_code.size(_resourceIDToHandler[arg2])
    call _resourceIDToHandler[arg2].deposit(bytes32 rg1, uint8 rg2, uint64 rg3, address rg4, bytes rg5) with:
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
    if not roleAdmin[0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have relayer role'
    if stor0:
        revert with 0, 'Pausable: paused'
    if _proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_1024 > 4:
        revert with 'NH{q', 33
    if not _proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_1024:
        revert with 0, 'proposal is not active'
    if _proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_1024 > 4:
        revert with 'NH{q', 33
    if _proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_1024 != 2:
        revert with 0, 'proposal already transferred'
    if sha3(_resourceIDToHandler[arg4], arg3[all]) != _proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_256:
        revert with 0, 'data doesn't match datahash'
    _proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_1024 = 3
    require ext_code.size(_resourceIDToHandler[stor11[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', '_resourceIDToHandler', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_0])
    call _resourceIDToHandler[stor11[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', '_resourceIDToHandler', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_0].executeProposal(bytes32 rg1, bytes rg2) with:
         gas gas_remaining wei
        args _proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_0, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if _proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_1024 > 4:
        revert with 'NH{q', 33
    emit ProposalEvent(_proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_0, _proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_256, arg1, arg2, _proposals[uint64(arg2) << 8 or arg1][('map', ('stor', ('map', ('param', 'arg4'), ('name', 'stor9', 9))), ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))))].field_1024);
}

function voteProposal(uint8 arg1, uint64 arg2, bytes32 arg3, bytes32 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not roleAdmin[0xe2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0dc4][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have relayer role'
    if stor0:
        revert with 0, 'Pausable: paused'
    if not _resourceIDToHandler[arg3]:
        revert with 0, 'no handler for resourceID'
    if _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024 > 4:
        revert with 'NH{q', 33
    if _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024 > 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'proposal already passed/executed/cancelled'
    if stor12[uint64(arg2) << 8 or arg1][arg4][address(msg.sender)]:
        revert with 0, 'relayer already voted'
    if _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024 > 4:
        revert with 'NH{q', 33
    if _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024:
        if block.number < _proposals[uint64(arg2) << 8 or arg1][arg4].field_1280:
            revert with 'NH{q', 17
        if block.number - _proposals[uint64(arg2) << 8 or arg1][arg4].field_1280 > _expiry:
            _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024 = 4
            emit ProposalEvent(arg3, arg4, arg1, arg2, 4);
        else:
            if arg4 != _proposals[uint64(arg2) << 8 or arg1][arg4].field_256:
                revert with 0, 'datahash mismatch'
            _proposals[uint64(arg2) << 8 or arg1][arg4].field_512++
            stor[('array', 2, ('map', ('param', 'arg4'), ('map', ('or', ('mask_shl', 64, 0, 8, ('param', 'arg2')), ('param', 'arg1')), ('name', '_proposals', 11)))) + _proposals[uint64(arg2) << 8 or arg1][arg4].field_512].field_0 = msg.sender
    else:
        if _totalProposals == -1:
            revert with 'NH{q', 17
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
        if 0 >= _proposals[uint64(arg2) << 8 or arg1][arg4].field_512:
            revert with 'NH{q', 50
        _proposals[uint64(arg2) << 8 or arg1][arg4][2].field_0 = msg.sender
        emit ProposalEvent(arg3, arg4, arg1, arg2, 1);
    if _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024 > 4:
        revert with 'NH{q', 33
    if _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024 != 4:
        stor12[uint64(arg2) << 8 or arg1][arg4][address(msg.sender)] = 1
        if _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024 > 4:
            revert with 'NH{q', 33
        emit ProposalVote(arg3, arg1, arg2, _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024);
        if _relayerThreshold <= 1:
            _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024 = 2
            emit ProposalEvent(arg3, arg4, arg1, arg2, 2);
        else:
            if _proposals[uint64(arg2) << 8 or arg1][arg4].field_512 >= _relayerThreshold:
                _proposals[uint64(arg2) << 8 or arg1][arg4].field_1024 = 2
                emit ProposalEvent(arg3, arg4, arg1, arg2, 2);
}

function _depositRecords(uint64 arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor10[arg1][arg2].field_0:
        if stor10[arg1][arg2].field_0 == stor10[arg1][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1][arg2].field_0:
            if stor10[arg1][arg2].field_0 == stor10[arg1][arg2].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[arg1][arg2].field_1:
                if 31 < stor10[arg1][arg2].field_1:
                    mem[128] = stor10[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1][arg2].field_1 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10[arg1][arg2].field_1), data=mem[128 len ceil32(stor10[arg1][arg2].field_1)])
                mem[128] = 256 * stor10[arg1][arg2].field_8
        else:
            if stor10[arg1][arg2].field_0 == stor10[arg1][arg2].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[arg1][arg2].field_1:
                if 31 < stor10[arg1][arg2].field_1:
                    mem[128] = stor10[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1][arg2].field_1 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10[arg1][arg2].field_1), data=mem[128 len ceil32(stor10[arg1][arg2].field_1)])
                mem[128] = 256 * stor10[arg1][arg2].field_8
        mem[ceil32(stor10[arg1][arg2].field_1) + 192 len ceil32(stor10[arg1][arg2].field_1)] = mem[128 len ceil32(stor10[arg1][arg2].field_1)]
        if ceil32(stor10[arg1][arg2].field_1) > stor10[arg1][arg2].field_1:
            mem[ceil32(stor10[arg1][arg2].field_1) + stor10[arg1][arg2].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor10[arg1][arg2].field_1), data=mem[128 len ceil32(stor10[arg1][arg2].field_1)], mem[(2 * ceil32(stor10[arg1][arg2].field_1)) + 192 len 2 * ceil32(stor10[arg1][arg2].field_1)]), 
    if stor10[arg1][arg2].field_0 == stor10[arg1][arg2].field_1 < 32:
        revert with 'NH{q', 34
    if stor10[arg1][arg2].field_0:
        if stor10[arg1][arg2].field_0 == stor10[arg1][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1][arg2].field_1:
            if 31 < stor10[arg1][arg2].field_1:
                mem[128] = stor10[arg1][arg2].field_0
                idx = 128
                s = 0
                while stor10[arg1][arg2].field_1 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][arg2][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10[arg1][arg2].field_0, data=mem[128 len ceil32(stor10[arg1][arg2].field_1)])
            mem[128] = 256 * stor10[arg1][arg2].field_8
    else:
        if stor10[arg1][arg2].field_0 == stor10[arg1][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1][arg2].field_1:
            if 31 < stor10[arg1][arg2].field_1:
                mem[128] = stor10[arg1][arg2].field_0
                idx = 128
                s = 0
                while stor10[arg1][arg2].field_1 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][arg2][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10[arg1][arg2].field_0, data=mem[128 len ceil32(stor10[arg1][arg2].field_1)])
            mem[128] = 256 * stor10[arg1][arg2].field_8
    mem[ceil32(stor10[arg1][arg2].field_1) + 192 len ceil32(stor10[arg1][arg2].field_1)] = mem[128 len ceil32(stor10[arg1][arg2].field_1)]
    if ceil32(stor10[arg1][arg2].field_1) > stor10[arg1][arg2].field_1:
        mem[ceil32(stor10[arg1][arg2].field_1) + stor10[arg1][arg2].field_1 + 192] = 0
    return Array(len=stor10[arg1][arg2].field_0, data=mem[128 len ceil32(stor10[arg1][arg2].field_1)], mem[(2 * ceil32(stor10[arg1][arg2].field_1)) + 192 len 2 * ceil32(stor10[arg1][arg2].field_1)]), 
}

function getProposal(uint8 arg1, uint64 arg2, bytes32 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[96] = 0
    mem[128] = 0
    mem[160] = 96
    mem[192] = 96
    mem[224] = 0
    mem[256] = 0
    mem[32] = sha3(uint64(arg2) << 8 or arg1, 11)
    mem[288] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_0
    mem[320] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_256
    mem[480] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_512
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
        if _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 > 4:
            revert with 'NH{q', 33
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
        if _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 >= 5:
            revert with 'NH{q', 33
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
    mem[352] = 480
    mem[64] = (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 544
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + 512] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_768
    if not _proposals[uint64(arg2) << 8 or arg1][arg3].field_768:
        if _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 > 4:
            revert with 'NH{q', 33
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
        if _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 >= 5:
            revert with 'NH{q', 33
        mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 704] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024
        mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 736] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_1280
        return memory
          from (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 544
           len (96 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 288
    mem[0] = sha3(arg3, sha3(uint64(arg2) << 8 or arg1, 11)) + 3
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + 544] = _proposals[uint64(arg2) << 8 or arg1][arg3][3].field_0
    idx = (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + 544
    s = 0
    while (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 512 > idx:
        mem[idx + 32] = _proposals[uint64(arg2) << 8 or arg1][arg3][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[384] = (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + 512
    if _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 > 4:
        revert with 'NH{q', 33
    mem[416] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024
    mem[448] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_1280
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 544] = 32
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 576] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_0
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 608] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_256
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 640] = 192
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 768] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_512
    idx = 0
    s = 512
    t = mem[64] + 256
    while idx < _proposals[uint64(arg2) << 8 or arg1][arg3].field_512:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 672] = (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + 224
    _94 = mem[mem[384]]
    mem[(64 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 800] = mem[mem[384]]
    idx = 0
    s = mem[384] + 32
    t = (64 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 832
    while idx < _94:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[416] >= 5:
        revert with 'NH{q', 33
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 704] = mem[416]
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 736] = mem[448]
    return memory
      from mem[64]
       len (64 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + (32 * _94) + -mem[64] + 832
}



}
