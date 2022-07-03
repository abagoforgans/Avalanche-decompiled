contract main {




// =====================  Runtime code  =====================


const UPGRADE_DELAY = (168 * 24 * 3600)


address governorAddress;
address proposedGovernorAddress;
uint256 delay;
uint256 requestTime;
mapping of struct module;
mapping of uint256 stor5;
mapping of struct proposedModules;
mapping of uint256 proposedLockModules;
uint8 initialized;

function governor() payable {
    return governorAddress
}

function initialized() payable {
    return bool(initialized)
}

function proposedLockModules(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return proposedLockModules[arg1]
}

function delay() payable {
    return delay
}

function proposedModules(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return proposedModules[arg1].field_0, proposedModules[arg1].field_256
}

function getModule(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return module[arg1].field_0
}

function proposedGovernor() payable {
    return proposedGovernorAddress
}

function modules(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return module[arg1].field_0, bool(module[arg1].field_160)
}

function requestTime() payable {
    return requestTime
}

function _fallback() payable {
    revert
}

function isGovernor() payable {
    return (msg.sender == governorAddress)
}

function moduleExists(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    if not module[arg1].field_0:
        return 0
    return 1
}

function changeGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'GOV: caller is not the Governor'
    revert with 0, 'Direct change not allowed'
}

function cancelLockModule(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if governorAddress != msg.sender:
        revert with 0, 'GOV: caller is not the Governor'
    if not proposedLockModules[arg1]:
        revert with 0, 'Module lock request not found'
    proposedLockModules[arg1] = 0
    emit ModuleLockCancelled(arg1);
}

function cancelGovernorChange() payable {
    if governorAddress != msg.sender:
        revert with 0, 'GOV: caller is not the Governor'
    requestTime = 0
    if not proposedGovernorAddress:
        revert with 0, 'Proposed Governor not set'
    emit GovernorChangeCancelled(governorAddress, proposedGovernorAddress);
    proposedGovernorAddress = 0
}

function cancelProposedModule(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if governorAddress != msg.sender:
        revert with 0, 'GOV: caller is not the Governor'
    if not proposedModules[arg1].field_256:
        revert with 0, 'Proposed module not found'
    proposedModules[arg1].field_0 = 0
    proposedModules[arg1].field_256 = 0
    emit ModuleCancelled(arg1);
}

function requestGovernorChange(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'GOV: caller is not the Governor'
    requestTime = block.timestamp
    if not arg1:
        revert with 0, 'Proposed governor is address(0)'
    if proposedGovernorAddress:
        revert with 0, 'Proposed governor already set'
    proposedGovernorAddress = arg1
    emit GovernorChangeRequested(governorAddress, arg1);
}

function lockModule(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if governorAddress != msg.sender:
        revert with 0, 'GOV: caller is not the Governor'
    if proposedLockModules[arg1] <= 0:
        revert with 0, 'Delay not over'
    if proposedLockModules[arg1] > -604801:
        revert with 0, 17
    if block.timestamp < proposedLockModules[arg1] + (168 * 24 * 3600):
        revert with 0, 'Delay not over'
    module[arg1].field_160 = 1
    proposedLockModules[arg1] = 0
    emit ModuleLockEnabled(arg1);
}

function requestLockModule(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if governorAddress != msg.sender:
        revert with 0, 'GOV: caller is not the Governor'
    if not arg1:
        revert with 0, 'Module must exist'
    if not module[arg1].field_0:
        revert with 0, 'Module must exist'
    if module[arg1].field_160:
        revert with 0, 'Module must be unlocked'
    if proposedLockModules[arg1]:
        revert with 0, 'Lock already proposed'
    proposedLockModules[arg1] = block.timestamp
    emit ModuleLockRequested(block.timestamp, arg1);
}

function claimGovernorChange() payable {
    if proposedGovernorAddress != msg.sender:
        revert with 0, 'Sender is not proposed governor'
    if requestTime > !delay:
        revert with 0, 17
    if block.timestamp < requestTime + delay:
        revert with 0, 'Delay not over'
    if proposedGovernorAddress != msg.sender:
        revert with 0, 'Sender is not proposed governor'
    if not proposedGovernorAddress:
        revert with 0, 'GOV: new Governor is address(0)'
    emit GovernorChanged(governorAddress, proposedGovernorAddress);
    governorAddress = proposedGovernorAddress
    emit GovernorChangeClaimed(proposedGovernorAddress);
    proposedGovernorAddress = 0
    requestTime = 0
}

function proposeModule(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if governorAddress != msg.sender:
        revert with 0, 'GOV: caller is not the Governor'
    if not arg1:
        revert with 0, 'Key must not be zero'
    if not arg2:
        revert with 0, 'Module address must not be 0'
    if module[arg1].field_160:
        revert with 0, 'Module must be unlocked'
    if module[arg1].field_0 == arg2:
        revert with 0, 'Module already has same address'
    if proposedModules[arg1].field_256:
        revert with 0, 'Module already proposed'
    proposedModules[arg1].field_0 = arg2
    proposedModules[arg1].field_256 = block.timestamp
    emit ModuleProposed(address(arg2), block.timestamp, arg1);
}

function acceptProposedModule(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if governorAddress != msg.sender:
        revert with 0, 'GOV: caller is not the Governor'
    if proposedModules[arg1].field_256 <= 0:
        revert with 0, 'Module upgrade delay not over'
    if proposedModules[arg1].field_256 > -604801:
        revert with 0, 17
    if block.timestamp < proposedModules[arg1].field_256 + (168 * 24 * 3600):
        revert with 0, 'Module upgrade delay not over'
    proposedModules[arg1].field_0 = 0
    proposedModules[arg1].field_256 = 0
    if stor5[stor6[arg1].field_0]:
        revert with 0, 'Modules must have unique addr'
    if module[arg1].field_160:
        revert with 0, 'Module must be unlocked'
    if module[arg1].field_0:
        stor5[stor4[arg1].field_0] = 0
    module[arg1].field_0 = proposedModules[arg1].field_0
    module[arg1].field_160 = 0
    stor5[stor6[arg1].field_0] = arg1
    emit ModuleAdded(proposedModules[arg1].field_0, 0, arg1);
}

function acceptProposedModules(bytes32[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if governorAddress != msg.sender:
        revert with 0, 'GOV: caller is not the Governor'
    if not arg1.length:
        revert with 0, 'Keys array empty'
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 6
        _30 = mem[64]
        mem[64] = mem[64] + 64
        mem[_30] = proposedModules[cd[((32 * idx) + arg1 + 36)]].field_0
        mem[_30 + 32] = proposedModules[cd[((32 * idx) + arg1 + 36)]].field_256
        if proposedModules[cd[((32 * idx) + arg1 + 36)]].field_256 <= 0:
            revert with 0, 'Module upgrade delay not over'
        if proposedModules[cd[((32 * idx) + arg1 + 36)]].field_256 > -604801:
            revert with 0, 17
        if block.timestamp < proposedModules[cd[((32 * idx) + arg1 + 36)]].field_256 + (168 * 24 * 3600):
            revert with 0, 'Module upgrade delay not over'
        proposedModules[cd[((32 * idx) + arg1 + 36)]].field_0 = 0
        proposedModules[cd[((32 * idx) + arg1 + 36)]].field_256 = 0
        if stor5[stor6[cd[((32 * idx) + arg1 + 36)]].field_0]:
            revert with 0, 'Modules must have unique addr'
        if module[cd[((32 * idx) + arg1 + 36)]].field_160:
            revert with 0, 'Module must be unlocked'
        if module[cd[((32 * idx) + arg1 + 36)]].field_0:
            stor5[stor4[cd[((32 * idx) + arg1 + 36)]].field_0] = 0
        module[cd[((32 * idx) + arg1 + 36)]].field_0 = proposedModules[cd[((32 * idx) + arg1 + 36)]].field_0
        module[cd[((32 * idx) + arg1 + 36)]].field_160 = 0
        mem[0] = proposedModules[cd[((32 * idx) + arg1 + 36)]].field_0
        mem[32] = 5
        stor5[stor6[cd[((32 * idx) + arg1 + 36)]].field_0] = cd[((32 * idx) + arg1 + 36)]
        mem[mem[64]] = proposedModules[cd[((32 * idx) + arg1 + 36)]].field_0
        mem[mem[64] + 32] = 0
        emit ModuleAdded(proposedModules[cd[((32 * idx) + arg1 + 36)]].field_0, 0, cd[((32 * idx) + arg1 + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function initialize(bytes32[] arg1, address[] arg2, bool[] arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    if governorAddress != msg.sender:
        revert with 0, 'GOV: caller is not the Governor'
    if initialized:
        revert with 0, 'Fulcrum is already initialized'
    if not arg1.length:
        revert with 0, 'No keys provided'
    if arg2.length != arg1.length:
        revert with 0, 'Insufficient address data'
    if arg3.length != arg1.length:
        revert with 0, 'Insufficient locked statuses'
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 0, 50
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg3.length:
            revert with 0, 50
        require cd[((32 * idx) + arg3 + 36)] == bool(cd[((32 * idx) + arg3 + 36)])
        if stor5[address(cd[((32 * idx) + arg2 + 36)])]:
            revert with 0, 'Modules must have unique addr'
        if module[cd[((32 * idx) + arg1 + 36)]].field_160:
            revert with 0, 'Module must be unlocked'
        if module[cd[((32 * idx) + arg1 + 36)]].field_0:
            stor5[stor4[cd[((32 * idx) + arg1 + 36)]].field_0] = 0
        module[cd[((32 * idx) + arg1 + 36)]].field_0 = address(cd[((32 * idx) + arg2 + 36)])
        module[cd[((32 * idx) + arg1 + 36)]].field_160 = Mask(96, 0, bool(cd[((32 * idx) + arg3 + 36)]))
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = 5
        stor5[address(cd[((32 * idx) + arg2 + 36)])] = cd[((32 * idx) + arg1 + 36)]
        mem[96] = address(cd[((32 * idx) + arg2 + 36)])
        mem[128] = bool(cd[((32 * idx) + arg3 + 36)])
        emit ModuleAdded(address(cd[((32 * idx) + arg2 + 36)]), bool(cd[((32 * idx) + arg3 + 36)]), cd[((32 * idx) + arg1 + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if governorAddress != arg4:
        if not arg4:
            revert with 0, 'GOV: new Governor is address(0)'
        emit GovernorChanged(governorAddress, arg4);
        governorAddress = arg4
    initialized = 1
    return 1
}



}
