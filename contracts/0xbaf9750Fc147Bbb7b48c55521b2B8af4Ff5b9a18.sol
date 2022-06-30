contract main {




// =====================  Runtime code  =====================


address owner;
array of struct sets;
array of struct factories;
array of struct modules;
array of struct resources;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint256 fees;
mapping of address resourceId;
uint8 stor11; offset 160
address feeRecipientAddress;

function isFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function isResource(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function resources(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < resources.length
    return resources[arg1].field_0
}

function fees(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return fees[arg1][arg2]
}

function isInitialized() payable {
    return bool(stor11)
}

function isModule(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function feeRecipient() payable {
    return feeRecipientAddress
}

function sets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < sets.length
    return sets[arg1].field_0
}

function factories(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < factories.length
    return factories[arg1].field_0
}

function isSet(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function getModuleFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return fees[address(arg1)][arg2]
}

function modules(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < modules.length
    return modules[arg1].field_0
}

function owner() payable {
    return owner
}

function resourceId(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return resourceId[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function isSystemContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor5[address(arg1)]:
        return bool(stor5[address(arg1)])
    if stor7[address(arg1)]:
        return bool(stor7[address(arg1)])
    if stor8[address(arg1)]:
        return bool(stor8[address(arg1)])
    if stor6[address(arg1)]:
        return bool(stor6[address(arg1)])
    return (this.address == arg1)
}

function editFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor11:
        revert with 0, 32, 29, 0xe0436f6e7472616374206d75737420626520696e697469616c697a65642e0000
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Address must not be 0'
    feeRecipientAddress = arg1
    emit FeeRecipientChanged(arg1);
}

function addSet(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor11:
        revert with 0, 32, 29, 0xe0436f6e7472616374206d75737420626520696e697469616c697a65642e0000
    if not stor6[msg.sender]:
        revert with 0, 'Only valid factories can call'
    if stor5[address(arg1)]:
        revert with 0, 'Set already exists'
    stor5[address(arg1)] = 1
    sets.length++
    sets[sets.length].field_0 = arg1
    emit SetAdded(arg1, msg.sender);
}

function addModule(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor11:
        revert with 0, 32, 29, 0xe0436f6e7472616374206d75737420626520696e697469616c697a65642e0000
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor7[address(arg1)]:
        revert with 0, 'Module already exists'
    stor7[address(arg1)] = 1
    modules.length++
    modules[modules.length].field_0 = arg1
    emit ModuleAdded(arg1);
}

function addFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor11:
        revert with 0, 32, 29, 0xe0436f6e7472616374206d75737420626520696e697469616c697a65642e0000
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor6[address(arg1)]:
        revert with 0, 'Factory already exists'
    stor6[address(arg1)] = 1
    factories.length++
    factories[factories.length].field_0 = arg1
    emit FactoryAdded(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
    owner = arg1
}

function addResource(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor11:
        revert with 0, 32, 29, 0xe0436f6e7472616374206d75737420626520696e697469616c697a65642e0000
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor8[address(arg1)]:
        revert with 0, 'Resource already exists'
    if resourceId[arg2]:
        revert with 0, 'Resource ID already exists'
    stor8[address(arg1)] = 1
    resourceId[arg2] = arg1
    resources.length++
    resources[resources.length].field_0 = arg1
    emit ResourceAdded(arg2, arg1);
}

function getModules() payable {
    if modules.length:
        mem[128] = address(modules.field_0)
        if (32 * modules.length) + 32 > 64:
            mem[160] = address(modules.field_256)
            idx = 160
            s = 1
            while (32 * modules.length) + 96 > idx:
                mem[idx + 32] = modules[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * modules.length) + 128] = 32
    mem[(32 * modules.length) + 160] = modules.length
    mem[(32 * modules.length) + 192 len floor32(modules.length)] = mem[128 len floor32(modules.length)]
    return memory
      from (32 * modules.length) + 128
       len (96 * modules.length) + 64
}

function getFactories() payable {
    if factories.length:
        mem[128] = address(factories.field_0)
        if (32 * factories.length) + 32 > 64:
            mem[160] = address(factories.field_256)
            idx = 160
            s = 1
            while (32 * factories.length) + 96 > idx:
                mem[idx + 32] = factories[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * factories.length) + 128] = 32
    mem[(32 * factories.length) + 160] = factories.length
    mem[(32 * factories.length) + 192 len floor32(factories.length)] = mem[128 len floor32(factories.length)]
    return memory
      from (32 * factories.length) + 128
       len (96 * factories.length) + 64
}

function getResources() payable {
    if resources.length:
        mem[128] = address(resources.field_0)
        if (32 * resources.length) + 32 > 64:
            mem[160] = address(resources.field_256)
            idx = 160
            s = 1
            while (32 * resources.length) + 96 > idx:
                mem[idx + 32] = resources[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * resources.length) + 128] = 32
    mem[(32 * resources.length) + 160] = resources.length
    mem[(32 * resources.length) + 192 len floor32(resources.length)] = mem[128 len floor32(resources.length)]
    return memory
      from (32 * resources.length) + 128
       len (96 * resources.length) + 64
}

function addFee(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor11:
        revert with 0, 32, 29, 0xe0436f6e7472616374206d75737420626520696e697469616c697a65642e0000
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor7[address(arg1)]:
        revert with 0, 'Module does not exist'
    if fees[address(arg1)][arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65466565207479706520616c726561647920657869737473206f6e206d6f64756c,
                    mem[197 len 31]
    fees[address(arg1)][arg2] = arg3
    emit FeeEdited(arg3, arg1, arg2);
}

function editFee(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor11:
        revert with 0, 32, 29, 0xe0436f6e7472616374206d75737420626520696e697469616c697a65642e0000
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor7[address(arg1)]:
        revert with 0, 'Module does not exist'
    if not fees[address(arg1)][arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73466565207479706520646f6573206e6f74206578697374206f6e206d6f64756c,
                    mem[197 len 31]
    fees[address(arg1)][arg2] = arg3
    emit FeeEdited(arg3, arg1, arg2);
}

function getSets() payable {
    if not sets.length:
        mem[(32 * sets.length) + 128] = 32
        mem[(32 * sets.length) + 160] = sets.length
        mem[(32 * sets.length) + 192 len floor32(sets.length)] = mem[128 len floor32(sets.length)]
        return memory
          from (32 * sets.length) + 128
           len (96 * sets.length) + 64
    mem[128] = address(sets.field_0)
    idx = 128
    s = 0
    while (32 * sets.length) + 96 > idx:
        mem[idx + 32] = sets[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sets.length) + 192 len floor32(sets.length)] = mem[128 len floor32(sets.length)]
    return Array(len=sets.length, data=mem[128 len floor32(sets.length)], mem[(32 * sets.length) + floor32(sets.length) + 192 len (32 * sets.length) - floor32(sets.length)]), 
}

function removeSet(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor11:
        revert with 0, 32, 29, 0xe0436f6e7472616374206d75737420626520696e697469616c697a65642e0000
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    mem[0] = arg1
    mem[32] = 5
    if not stor5[address(arg1)]:
        revert with 0, 'Set does not exist'
    mem[64] = (32 * sets.length) + 128
    mem[96] = sets.length
    if sets.length:
        mem[0] = 1
        mem[128] = address(sets.field_0)
        if (32 * sets.length) + 32 > 64:
            mem[160] = address(sets.field_256)
            idx = 160
            s = 1
            while (32 * sets.length) + 96 > idx:
                mem[idx + 32] = sets[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    idx = 0
    while idx < sets.length:
        require idx < sets.length
        if mem[(32 * idx) + 140 len 20] != arg1:
            idx = idx + 1
            continue 
        if idx >= sets.length:
            revert with 0, 'Index must be < A length'
        require sets.length - 1 <= test266151307()
        mem[(32 * sets.length) + 128] = sets.length - 1
        mem[64] = (32 * sets.length) + (32 * sets.length - 1) + 160
        if sets.length - 1:
            mem[(32 * sets.length) + 160 len 32 * sets.length - 1] = call.data[calldata.size len 32 * sets.length - 1]
        s = 0
        while s < idx:
            require s < sets.length
            require s < sets.length - 1
            mem[(32 * s) + (32 * sets.length) + 160] = mem[(32 * s) + 140 len 20]
            s = s + 1
            continue 
        s = idx + 1
        while s < sets.length:
            require s < sets.length
            require s - 1 < mem[(32 * sets.length) + 128]
            mem[(32 * s - 1) + (32 * sets.length) + 160] = mem[(32 * s) + 140 len 20]
            s = s + 1
            continue 
        require idx < sets.length
        sets.length = mem[(32 * sets.length) + 128]
        mem[0] = 1
        if not mem[(32 * sets.length) + 128]:
            idx = sha3(1)
            while sha3(1) + sets.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = sha3(1)
            idx = (32 * sets.length) + 160
            while (32 * sets.length) + (32 * mem[(32 * sets.length) + 128]) + 160 > idx:
                stor[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(1) + (Mask(251, 0, (32 * mem[(32 * sets.length) + 128]) + 31) >> 5)
            while sha3(1) + sets.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        stor5[address(arg1)] = 0
        emit SetRemoved(arg1);
    revert with 0, 'Address not in array.'
}

function removeModule(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor11:
        revert with 0, 32, 29, 0xe0436f6e7472616374206d75737420626520696e697469616c697a65642e0000
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    mem[0] = arg1
    mem[32] = 7
    if not stor7[address(arg1)]:
        revert with 0, 'Module does not exist'
    mem[64] = (32 * modules.length) + 128
    mem[96] = modules.length
    if modules.length:
        mem[0] = 3
        mem[128] = address(modules.field_0)
        if (32 * modules.length) + 32 > 64:
            mem[160] = address(modules.field_256)
            idx = 160
            s = 1
            while (32 * modules.length) + 96 > idx:
                mem[idx + 32] = modules[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    idx = 0
    while idx < modules.length:
        require idx < modules.length
        if mem[(32 * idx) + 140 len 20] != arg1:
            idx = idx + 1
            continue 
        if idx >= modules.length:
            revert with 0, 'Index must be < A length'
        require modules.length - 1 <= test266151307()
        mem[(32 * modules.length) + 128] = modules.length - 1
        if modules.length - 1:
            mem[(32 * modules.length) + 160 len 32 * modules.length - 1] = call.data[calldata.size len 32 * modules.length - 1]
        s = 0
        while s < idx:
            require s < modules.length
            require s < modules.length - 1
            mem[(32 * s) + (32 * modules.length) + 160] = mem[(32 * s) + 140 len 20]
            s = s + 1
            continue 
        s = idx + 1
        while s < modules.length:
            require s < modules.length
            require s - 1 < mem[(32 * modules.length) + 128]
            mem[(32 * s - 1) + (32 * modules.length) + 160] = mem[(32 * s) + 140 len 20]
            s = s + 1
            continue 
        require idx < modules.length
        modules.length = mem[(32 * modules.length) + 128]
        if not mem[(32 * modules.length) + 128]:
            idx = sha3(3)
            while sha3(3) + modules.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = sha3(3)
            idx = (32 * modules.length) + 160
            while (32 * modules.length) + (32 * mem[(32 * modules.length) + 128]) + 160 > idx:
                stor[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(3) + (Mask(251, 0, (32 * mem[(32 * modules.length) + 128]) + 31) >> 5)
            while sha3(3) + modules.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        stor7[address(arg1)] = 0
        emit ModuleRemoved(arg1);
    revert with 0, 'Address not in array.'
}

function removeResource(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor11:
        revert with 0, 32, 29, 0xe0436f6e7472616374206d75737420626520696e697469616c697a65642e0000
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    mem[0] = arg1
    mem[32] = 10
    if not resourceId[arg1]:
        revert with 0, 'Resource does not exist'
    mem[64] = (32 * resources.length) + 128
    mem[96] = resources.length
    if resources.length:
        mem[0] = 4
        mem[128] = address(resources.field_0)
        idx = 128
        s = 0
        while (32 * resources.length) + 96 > idx:
            mem[idx + 32] = resources[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < resources.length:
        require idx < resources.length
        if mem[(32 * idx) + 140 len 20] != resourceId[arg1]:
            idx = idx + 1
            continue 
        if idx >= resources.length:
            revert with 0, 'Index must be < A length'
        require resources.length - 1 <= test266151307()
        mem[(32 * resources.length) + 128] = resources.length - 1
        if resources.length - 1:
            mem[(32 * resources.length) + 160 len 32 * resources.length - 1] = call.data[calldata.size len 32 * resources.length - 1]
        s = 0
        while s < idx:
            require s < resources.length
            require s < resources.length - 1
            mem[(32 * s) + (32 * resources.length) + 160] = mem[(32 * s) + 140 len 20]
            s = s + 1
            continue 
        s = idx + 1
        while s < resources.length:
            require s < resources.length
            require s - 1 < mem[(32 * resources.length) + 128]
            mem[(32 * s - 1) + (32 * resources.length) + 160] = mem[(32 * s) + 140 len 20]
            s = s + 1
            continue 
        require idx < resources.length
        resources.length = mem[(32 * resources.length) + 128]
        if not mem[(32 * resources.length) + 128]:
            idx = sha3(4)
            while sha3(4) + resources.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = sha3(4)
            idx = (32 * resources.length) + 160
            while (32 * resources.length) + (32 * mem[(32 * resources.length) + 128]) + 160 > idx:
                stor[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(4) + (Mask(251, 0, (32 * mem[(32 * resources.length) + 128]) + 31) >> 5)
            while sha3(4) + resources.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        resourceId[arg1] = 0
        stor8[stor10[arg1]] = 0
        emit ResourceRemoved(arg1, resourceId[arg1]);
    revert with 0, 'Address not in array.'
}

function removeFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor11:
        revert with 0, 32, 29, 0xe0436f6e7472616374206d75737420626520696e697469616c697a65642e0000
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    mem[0] = arg1
    mem[32] = 6
    if not stor6[address(arg1)]:
        revert with 0, 'Factory does not exist'
    mem[64] = (32 * factories.length) + 128
    mem[96] = factories.length
    if factories.length:
        mem[0] = 2
        mem[128] = address(factories.field_0)
        if (32 * factories.length) + 32 > 64:
            mem[160] = address(factories.field_256)
            idx = 160
            s = 1
            while (32 * factories.length) + 96 > idx:
                mem[idx + 32] = factories[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    idx = 0
    while idx < factories.length:
        require idx < factories.length
        if mem[(32 * idx) + 140 len 20] != arg1:
            idx = idx + 1
            continue 
        if idx >= factories.length:
            revert with 0, 'Index must be < A length'
        require factories.length - 1 <= test266151307()
        mem[(32 * factories.length) + 128] = factories.length - 1
        mem[64] = (32 * factories.length) + (32 * factories.length - 1) + 160
        if factories.length - 1:
            mem[(32 * factories.length) + 160 len 32 * factories.length - 1] = call.data[calldata.size len 32 * factories.length - 1]
        s = 0
        while s < idx:
            require s < factories.length
            require s < factories.length - 1
            mem[(32 * s) + (32 * factories.length) + 160] = mem[(32 * s) + 140 len 20]
            s = s + 1
            continue 
        s = idx + 1
        while s < factories.length:
            require s < factories.length
            require s - 1 < mem[(32 * factories.length) + 128]
            mem[(32 * s - 1) + (32 * factories.length) + 160] = mem[(32 * s) + 140 len 20]
            s = s + 1
            continue 
        require idx < factories.length
        factories.length = mem[(32 * factories.length) + 128]
        mem[0] = 2
        if not mem[(32 * factories.length) + 128]:
            idx = sha3(2)
            while sha3(2) + factories.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = sha3(2)
            idx = (32 * factories.length) + 160
            while (32 * factories.length) + (32 * mem[(32 * factories.length) + 128]) + 160 > idx:
                stor[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(2) + (Mask(251, 0, (32 * mem[(32 * factories.length) + 128]) + 31) >> 5)
            while sha3(2) + factories.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        stor6[address(arg1)] = 0
        emit FactoryRemoved(arg1);
    revert with 0, 'Address not in array.'
}

function initialize(address[] arg1, address[] arg2, address[] arg3, uint256[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor11:
        revert with 0, 
                    32,
                    33,
                    0x436f6e74726f6c6c657220697320616c726561647920696e697469616c697a6500,
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 325 len 31]
    if arg3.length != arg4.length:
        revert with 0, 'Array lengths do not match.'
    factories.length = arg1.length
    if not arg1.length:
        idx = 0
        while factories.length > idx:
            factories[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            factories[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while factories.length > idx:
            factories[idx].field_0 = 0
            idx = idx + 1
            continue 
    modules.length = arg2.length
    if not arg2.length:
        idx = 0
        while modules.length > idx:
            modules[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
            modules[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while modules.length > idx:
            modules[idx].field_0 = 0
            idx = idx + 1
            continue 
    resources.length = arg3.length
    if not arg3.length:
        idx = 0
        while resources.length > idx:
            resources[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + (32 * arg2.length) + 192
        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192 > idx:
            resources[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while resources.length > idx:
            resources[idx].field_0 = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 32, 23, 0xfe5a65726f2061646472657373207375626d69747465642e0000000000000000
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if not mem[(32 * idx) + (32 * arg1.length) + 172 len 20]:
            revert with 0, 32, 23, 0xfe5a65726f2061646472657373207375626d69747465642e0000000000000000
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        mem[32] = 7
        stor7[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]] = 1
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]:
            revert with 0, 32, 23, 0xfe5a65726f2061646472657373207375626d69747465642e0000000000000000
        require idx < arg4.length
        if resourceId[mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]]:
            revert with 0, 'Resource ID already exists'
        require idx < arg3.length
        stor8[mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]] = 1
        require idx < arg3.length
        require idx < arg4.length
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        mem[32] = 10
        resourceId[mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
        idx = idx + 1
        continue 
    stor11 = 1
}



}
