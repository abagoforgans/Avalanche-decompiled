contract main {




// =====================  Runtime code  =====================


const sub_e9347683(?) = sha3(Mask(120, 136, 'FEE_SETTER_ROLE') >> 136)

const sub_eb6e53aa(?) = sha3(Mask(160, 96, 'RESOURCE_SETTER_ROLE') >> 96)

const RELAYER_ROLE = sha3(Mask(96, 160, 'RELAYER_ROLE') >> 160)

const DEFAULT_ADMIN_ROLE = 0


uint8 paused;
array of struct roleAdmin;
uint8 _chainID;
uint256 _relayerThreshold;
uint256 _totalRelayers;
uint256 _totalProposals;
mapping of uint64 _depositCounts;
mapping of address _resourceIDToHandler;
array of struct _proposals;
mapping of uint8 stor9;
mapping of uint256 sub_a49e88d9;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function _depositCounts(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _depositCounts[arg1]
}

function _proposals(uint72 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == Mask(72, 0, arg1)
    require _proposals[arg1][arg2].field_1024 < 3
    return _proposals[arg1][arg2].field_0, 
           _proposals[arg1][arg2].field_256,
           _proposals[arg1][arg2].field_1024,
           _proposals[arg1][arg2].field_1280
}

function isRelayer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin['RELAYER_ROLE'][1][address(arg1)].field_0)
}

function paused() {
    return bool(paused)
}

function _hasVotedOnProposal(uint72 arg1, bytes32 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == Mask(72, 0, arg1)
    require arg3 == arg3
    return bool(stor9[arg1][arg2][arg3])
}

function _totalRelayers() {
    return _totalRelayers
}

function _resourceIDToHandlerAddress(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return _resourceIDToHandler[arg1]
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function _totalProposals() {
    return _totalProposals
}

function sub_a49e88d9(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_a49e88d9[arg1]
}

function _chainID() {
    return _chainID
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function _relayerThreshold() {
    return _relayerThreshold
}

function _fallback() payable {
    revert
}

function adminPauseTransfers() {
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function adminUnpauseTransfers() {
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function changeFee(uint8 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin['FEE_SETTER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0, 'sender is not fee setter'
    sub_a49e88d9[arg1 << 248] = arg2
}

function adminChangeRelayerThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    _relayerThreshold = arg1
    emit RelayerThresholdChanged(arg1);
}

function setFeePercent(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin['FEE_SETTER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0, 'sender is not fee setter'
    require ext_code.size(arg1)
    call arg1.setFeePercent(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFeePercentTreasury(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    require ext_code.size(arg1)
    call arg1.setFeePercentTreasury(address rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function adminSetBurnable(address arg1, address arg2, bool arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not roleAdmin['RESOURCE_SETTER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0, 'sender is not resource setter'
    require ext_code.size(arg1)
    call arg1.setBurnable(address rg1, bool rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function adminSetResource(address arg1, bytes32 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if not roleAdmin['RESOURCE_SETTER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0, 'sender is not resource setter'
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
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    require ext_code.size(arg1)
    call arg1.withdraw(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function grantRole(bytes32 arg1, address arg2) {
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

function adminSetGenericResource(address arg1, bytes32 arg2, address arg3, bytes4 arg4, bytes4 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg3 == arg3
    require arg4 == Mask(32, 224, arg4)
    require arg5 == Mask(32, 224, arg5)
    if not roleAdmin['RESOURCE_SETTER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0, 'sender is not resource setter'
    _resourceIDToHandler[arg2] = arg1
    require ext_code.size(arg1)
    call arg1.setResource(bytes32 rg1, address rg2, bytes4 rg3, bytes4 rg4) with:
         gas gas_remaining wei
        args 0, uint32(arg2), address(arg3), Mask(32, 224, arg4), Mask(32, 224, arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function renounceRole(bytes32 arg1, address arg2) {
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

function revokeRole(bytes32 arg1, address arg2) {
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

function sub_73c45c98(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if paused:
        revert with 0, 'Pausable: paused'
    if sub_a49e88d9[arg1 << 248] != msg.value:
        revert with 0, 'Incorrect fee supplied'
    if not _resourceIDToHandler[arg2]:
        revert with 0, 'resourceID not mapped to handler'
    _depositCounts[arg1 << 248] = uint64(_depositCounts[arg1 << 248] + 1)
    mem[292 len arg3.length] = arg3[all]
    mem[arg3.length + 292] = 0
    require ext_code.size(_resourceIDToHandler[arg2])
    call _resourceIDToHandler[arg2].deposit(bytes32 rg1, uint8 rg2, uint64 rg3, address rg4, bytes rg5) with:
         gas gas_remaining wei
        args 0, uint32(arg2), arg1 << 248, _depositCounts[arg1 << 248] + 1 << 192, msg.sender, 160, arg3.length, arg3[all], mem[arg3.length + 292 len ceil32(arg3.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(uint8(arg1), arg2, uint64(_depositCounts[arg1 << 248] + 1));
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

function sub_aa81cea7(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0, 1) + 1
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have admin role'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 68).length
        _47 = mem[64]
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
        _48 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_48 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_48 + 36 len 28]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[((32 * idx) + cd[36] + 36)])):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(address(cd[((32 * idx) + cd[36] + 36)])):
            revert with 0, 'SafeERC20: call to non-contract'
        _54 = mem[_48]
        s = 0
        while s < _54:
            mem[s + _47 + 100] = mem[_48 + s + 32]
            s = s + 32
            continue 
        if ceil32(_54) <= _54:
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _54 + _47 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                _91 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_91] = return_data.size
                mem[_91 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_91 + 32] == bool(mem[_91 + 32])
                    if not mem[_91 + 32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_47 + _54 + 100] = 0
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _54 + _47 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                _93 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_93] = return_data.size
                mem[_93 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_93 + 32] == bool(mem[_93 + 32])
                    if not mem[_93 + 32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        idx = idx + 1
        continue 
}

function sub_c0331b3e(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    require arg2 == uint64(arg2)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if not roleAdmin['RELAYER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0, 'sender doesn't have relayer role'
    if paused:
        revert with 0, 'Pausable: paused'
    if not _resourceIDToHandler[arg3]:
        revert with 0, 'no handler for resourceID'
    require _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_1024 <= 2
    if _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_1024 > 1:
        revert with 0, 'proposal already executed'
    if stor9[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))][msg.sender]:
        revert with 0, 'relayer already voted'
    require _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_1024 <= 2
    if _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_1024:
        if sha3(_resourceIDToHandler[arg3], arg4[all]) != _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_256:
            revert with 0, 'datahash mismatch'
        _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_512++
        stor[('array', 2, ('map', ('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4'))))), ('map', ('or', ('mask_shl', 8, 0, 0, ('param', 'arg1')), ('mask_shl', 64, 0, 8, ('param', 'arg2'))), ('name', '_proposals', 8)))) + _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_512].field_0 = msg.sender or Mask(96, 160, stor[('array', 2, ('map', ('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4'))))), ('map', ('or', ('mask_shl', 8, 0, 0, ('param', 'arg1')), ('mask_shl', 64, 0, 8, ('param', 'arg2'))), ('name', '_proposals', 8)))) + _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_512].field_0)
    else:
        _totalProposals++
        mem[arg4.length + 372] = call.data[calldata.size]
        mem[arg4.length + 404] = 0
        _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_0 = arg3
        _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_256 = sha3(_resourceIDToHandler[arg3], arg4[all])
        _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_512 = 1
        s = 0
        idx = arg4.length + 372
        while arg4.length + 404 > idx:
            _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))][s + 2].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 1
        while _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_512 > idx:
            _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
        _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_768 = 0
        idx = 0
        while _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_768 > idx:
            _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
        _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_1024 = 1
        _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_1280 = block.number
        require 0 < _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_512
        _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))][2].field_0 = msg.sender
        emit ProposalEvent(arg3, sha3(_resourceIDToHandler[arg3], arg4[all]), uint8(arg1), uint64(arg2), 1);
    stor9[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))][msg.sender] = 1
    require _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_1024 <= 2
    emit ProposalVote(arg3, uint8(arg1), uint64(arg2), _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_1024);
    if _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_512 >= _relayerThreshold:
        if sha3(_resourceIDToHandler[arg3], arg4[all]) != _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_256:
            revert with 0, 'data doesn't match datahash'
        _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_1024 = 2
        require ext_code.size(_resourceIDToHandler[stor8[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', '_resourceIDToHandler', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_0])
        call _resourceIDToHandler[stor8[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', '_resourceIDToHandler', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_0].executeProposal(bytes32 rg1, bytes rg2) with:
             gas gas_remaining wei
            args _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_0, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_1024 <= 2
        emit ProposalEvent(_proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_0, _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_256, uint8(arg1), uint64(arg2), _proposals[uint8(arg1) or uint64(arg2) << 8][('map', ('stor', ('map', ('param', 'arg3'), ('name', 'stor7', 7))), ('call.data', ('add', 36, ('param', 'arg4')), ('cd', ('add', 4, ('param', 'arg4')))))].field_1024);
}

function getProposal(uint8 arg1, uint64 arg2, bytes32 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 0
    mem[128] = 0
    mem[160] = 96
    mem[192] = 96
    mem[224] = 0
    mem[256] = 0
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
        require _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 <= 2
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
        require _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 < 3
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
        require _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 <= 2
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
        require _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 < 3
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
    mem[384] = (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + 512
    require _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024 <= 2
    mem[416] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_1024
    mem[448] = _proposals[uint64(arg2) << 8 or arg1][arg3].field_1280
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
    t = mem[64] + (32 * mem[480]) + 288
    while idx < _proposals[uint64(arg2) << 8 or arg1][arg3].field_768:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require mem[416] < 3
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 704] = mem[416]
    mem[(32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (32 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + 736] = mem[448]
    return memory
      from mem[64]
       len (64 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_512) + (64 * _proposals[uint64(arg2) << 8 or arg1][arg3].field_768) + -mem[64] + 832
}



}
