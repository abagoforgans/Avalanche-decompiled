contract main {




// =====================  Runtime code  =====================


address owner;
array of address stor1;
mapping of address oracles;
address masterQuoteAssetAddress;
array of struct adapters;

function masterQuoteAsset() payable {
    return masterQuoteAssetAddress
}

function adapters(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < adapters.length
    return adapters[arg1].field_0
}

function oracles(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return oracles[arg1][arg2]
}

function owner() payable {
    return owner
}

function controller() payable {
    return stor1.length
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function editMasterQuoteAsset(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    masterQuoteAssetAddress = arg1
    emit MasterQuoteAssetEdited(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addPair(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if oracles[address(arg1)][address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PriceOracle.addPair: Pair already exists.'
    oracles[address(arg1)][address(arg2)] = arg3
    emit PairAdded(arg3, arg1, arg2);
}

function removePair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not oracles[address(arg1)][address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PriceOracle.removePair: Pair doesn't exist.'
    oracles[address(arg1)][address(arg2)] = 0
    emit PairRemoved(oracles[address(arg1)][address(arg2)], arg1, arg2);
}

function sub_04289853(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not oracles[address(arg1)][address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PriceOracle.editPair: Pair doesn't exist.'
    oracles[address(arg1)][address(arg2)] = address(arg3)
    emit PairEdited(address(arg3), address(arg1), address(arg2));
}

function addAdapter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if adapters.length:
        mem[128] = address(adapters.field_0)
        if (32 * adapters.length) + 32 > 64:
            mem[160] = address(adapters.field_256)
            idx = 160
            s = 1
            while (32 * adapters.length) + 96 > idx:
                mem[idx + 32] = adapters[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    idx = 0
    while idx < adapters.length:
        require idx < adapters.length
        if mem[(32 * idx) + 140 len 20] == arg1:
            revert with 0, 'PriceOracle.addAdapter: Adapter already exists.'
        idx = idx + 1
        continue 
    adapters.length++
    adapters[adapters.length].field_0 = arg1
    emit AdapterAdded(arg1);
}

function getAdapters() payable {
    mem[64] = (32 * adapters.length) + 128
    mem[96] = adapters.length
    if not adapters.length:
        mem[(32 * adapters.length) + 128] = 32
        mem[(32 * adapters.length) + 160] = adapters.length
        idx = 0
        s = (32 * adapters.length) + 192
        t = 128
        while idx < adapters.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * adapters.length) + 128
           len (96 * adapters.length) + 64
    mem[128] = address(adapters.field_0)
    idx = 128
    s = 0
    while (32 * adapters.length) + 96 > idx:
        mem[idx + 32] = adapters[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * adapters.length) + 128] = 32
    mem[(32 * adapters.length) + 160] = adapters.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < adapters.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * adapters.length) + -mem[64] + 192
}

function removeAdapter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[64] = (32 * adapters.length) + 128
    mem[96] = adapters.length
    if not adapters.length:
        idx = 0
        while idx < adapters.length:
            require idx < adapters.length
            if mem[(32 * idx) + 140 len 20] != arg1:
                idx = idx + 1
                continue 
            mem[64] = (64 * adapters.length) + 160
            mem[(32 * adapters.length) + 128] = adapters.length
            if not adapters.length:
                idx = 0
                while idx < adapters.length:
                    require idx < adapters.length
                    if mem[(32 * idx) + (32 * adapters.length) + 172 len 20] != arg1:
                        idx = idx + 1
                        continue 
                    if idx >= adapters.length:
                        revert with 0, 'Index must be < A length'
                    require adapters.length - 1 <= test266151307()
                    mem[(64 * adapters.length) + 160] = adapters.length - 1
                    mem[64] = (64 * adapters.length) + (32 * adapters.length - 1) + 192
                    if adapters.length - 1:
                        mem[(64 * adapters.length) + 192 len 32 * adapters.length - 1] = call.data[calldata.size len 32 * adapters.length - 1]
                    s = 0
                    while s < idx:
                        require s < mem[(32 * adapters.length) + 128]
                        require s < adapters.length - 1
                        mem[(32 * s) + (64 * adapters.length) + 192] = mem[(32 * s) + (32 * adapters.length) + 172 len 20]
                        s = s + 1
                        continue 
                    s = idx + 1
                    while s < adapters.length:
                        require s < mem[(32 * adapters.length) + 128]
                        require s - 1 < mem[(64 * adapters.length) + 160]
                        mem[(32 * s - 1) + (64 * adapters.length) + 192] = mem[(32 * s) + (32 * adapters.length) + 172 len 20]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * adapters.length) + 128]
                    adapters.length = mem[(64 * adapters.length) + 160]
                    mem[0] = 4
                    if not mem[(64 * adapters.length) + 160]:
                        idx = sha3(4)
                        while sha3(4) + adapters.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3(4)
                        idx = (64 * adapters.length) + 192
                        while (64 * adapters.length) + (32 * mem[(64 * adapters.length) + 160]) + 192 > idx:
                            stor[s] = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(4) + (Mask(251, 0, (32 * mem[(64 * adapters.length) + 160]) + 31) >> 5)
                        while sha3(4) + adapters.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    emit AdapterRemoved(arg1);
            else:
                mem[0] = 4
                mem[(32 * adapters.length) + 160] = address(adapters.field_0)
                idx = (32 * adapters.length) + 160
                s = sha3(4)
                while (64 * adapters.length) + 128 > idx:
                    mem[idx + 32] = stor1[s]
                    idx = idx + 32
                    s = s + 1
                    continue 
                idx = 0
                while idx < adapters.length:
                    require idx < adapters.length
                    if mem[(32 * idx) + (32 * adapters.length) + 172 len 20] != arg1:
                        idx = idx + 1
                        continue 
                    if idx >= adapters.length:
                        revert with 0, 'Index must be < A length'
                    require adapters.length - 1 <= test266151307()
                    mem[(64 * adapters.length) + 160] = adapters.length - 1
                    mem[64] = (64 * adapters.length) + (32 * adapters.length - 1) + 192
                    if adapters.length - 1:
                        mem[(64 * adapters.length) + 192 len 32 * adapters.length - 1] = call.data[calldata.size len 32 * adapters.length - 1]
                    s = 0
                    while s < idx:
                        require s < mem[(32 * adapters.length) + 128]
                        require s < adapters.length - 1
                        mem[(32 * s) + (64 * adapters.length) + 192] = mem[(32 * s) + (32 * adapters.length) + 172 len 20]
                        s = s + 1
                        continue 
                    s = idx + 1
                    while s < adapters.length:
                        require s < mem[(32 * adapters.length) + 128]
                        require s - 1 < mem[(64 * adapters.length) + 160]
                        mem[(32 * s - 1) + (64 * adapters.length) + 192] = mem[(32 * s) + (32 * adapters.length) + 172 len 20]
                        s = s + 1
                        continue 
                    require idx < mem[(32 * adapters.length) + 128]
                    adapters.length = mem[(64 * adapters.length) + 160]
                    if not mem[(64 * adapters.length) + 160]:
                        idx = sha3(4)
                        while sha3(4) + adapters.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3(4)
                        idx = (64 * adapters.length) + 192
                        while (64 * adapters.length) + (32 * mem[(64 * adapters.length) + 160]) + 192 > idx:
                            stor[s] = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(4) + (Mask(251, 0, (32 * mem[(64 * adapters.length) + 160]) + 31) >> 5)
                        while sha3(4) + adapters.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    emit AdapterRemoved(arg1);
            revert with 0, 'Address not in array.'
    else:
        mem[0] = 4
        mem[128] = address(adapters.field_0)
        idx = 128
        s = 0
        while (32 * adapters.length) + 96 > idx:
            mem[idx + 32] = adapters[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < adapters.length:
            require idx < adapters.length
            if mem[(32 * idx) + 140 len 20] != arg1:
                idx = idx + 1
                continue 
            mem[64] = (64 * adapters.length) + 160
            mem[(32 * adapters.length) + 128] = adapters.length
            if adapters.length:
                mem[0] = 4
                mem[(32 * adapters.length) + 160] = address(adapters.field_0)
                idx = (32 * adapters.length) + 160
                s = sha3(4)
                while (64 * adapters.length) + 128 > idx:
                    mem[idx + 32] = stor1[s]
                    idx = idx + 32
                    s = s + 1
                    continue 
            idx = 0
            while idx < adapters.length:
                require idx < adapters.length
                if mem[(32 * idx) + (32 * adapters.length) + 172 len 20] != arg1:
                    idx = idx + 1
                    continue 
                if idx >= adapters.length:
                    revert with 0, 'Index must be < A length'
                require adapters.length - 1 <= test266151307()
                mem[(64 * adapters.length) + 160] = adapters.length - 1
                mem[64] = (64 * adapters.length) + (32 * adapters.length - 1) + 192
                if adapters.length - 1:
                    mem[(64 * adapters.length) + 192 len 32 * adapters.length - 1] = call.data[calldata.size len 32 * adapters.length - 1]
                s = 0
                while s < idx:
                    require s < mem[(32 * adapters.length) + 128]
                    require s < adapters.length - 1
                    mem[(32 * s) + (64 * adapters.length) + 192] = mem[(32 * s) + (32 * adapters.length) + 172 len 20]
                    s = s + 1
                    continue 
                s = idx + 1
                while s < adapters.length:
                    require s < mem[(32 * adapters.length) + 128]
                    require s - 1 < mem[(64 * adapters.length) + 160]
                    mem[(32 * s - 1) + (64 * adapters.length) + 192] = mem[(32 * s) + (32 * adapters.length) + 172 len 20]
                    s = s + 1
                    continue 
                require idx < mem[(32 * adapters.length) + 128]
                adapters.length = mem[(64 * adapters.length) + 160]
                if not mem[(64 * adapters.length) + 160]:
                    idx = sha3(4)
                    while sha3(4) + adapters.length > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                else:
                    s = sha3(4)
                    idx = (64 * adapters.length) + 192
                    while (64 * adapters.length) + (32 * mem[(64 * adapters.length) + 160]) + 192 > idx:
                        stor[s] = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = sha3(4) + (Mask(251, 0, (32 * mem[(64 * adapters.length) + 160]) + 31) >> 5)
                    while sha3(4) + adapters.length > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                emit AdapterRemoved(arg1);
            revert with 0, 'Address not in array.'
    revert with 0, 'PriceOracle.removeAdapter: Adapter does not exist.'
}

function getPrice(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = msg.sender
    require ext_code.size(stor1.length)
    staticcall stor1.length.0x13bc6d4b with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'PriceOracle.getPrice: Caller must be system contract.'
    if oracles[address(arg1)][address(arg2)]:
        require ext_code.size(oracles[address(arg1)][address(arg2)])
        staticcall oracles[address(arg1)][address(arg2)].0x57de26a4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    if oracles[address(arg2)][address(arg1)]:
        require ext_code.size(oracles[address(arg2)][address(arg1)])
        staticcall oracles[address(arg2)][address(arg1)].0x57de26a4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (1000000000000000000 * 10^18 / ext_call.return_data[0])
    if oracles[address(arg1)][stor3]:
        require ext_code.size(oracles[address(arg1)][stor3])
        staticcall oracles[address(arg1)][stor3].0x57de26a4 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        if oracles[address(arg2)][stor3]:
            require ext_code.size(oracles[address(arg2)][stor3])
            staticcall oracles[address(arg2)][stor3].0x57de26a4 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / ext_call.return_data[0])
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
        mem[0] = arg2
        mem[32] = sha3(masterQuoteAssetAddress, 2)
        if not oracles[stor3][address(arg2)]:
            idx = 0
            while idx < adapters.length:
                mem[0] = 4
                mem[mem[64] + 36] = arg2
                require ext_code.size(adapters[idx].field_0)
                staticcall adapters[idx].field_0.0xac41865a with:
                        gas gas_remaining wei
                       args address(arg1), arg2
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _301 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_301] == bool(mem[_301])
                if not mem[_301]:
                    idx = idx + 1
                    continue 
                if not mem[_301]:
                    revert with 0, 'PriceOracle.getPrice: Price not found.'
                mem[mem[64]] = mem[_301 + 32]
                return memory
                  from mem[64]
                   len 32
            revert with 0, 'PriceOracle.getPrice: Price not found.'
        require ext_code.size(oracles[stor3][address(arg2)])
        staticcall oracles[stor3][address(arg2)].0x57de26a4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if not ext_call.return_data[0]:
            if not 1000000000000000000 * 10^18 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / 1000000000000000000 * 10^18 / ext_call.return_data[0])
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 1000000000000000000 * 10^18 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (10^18 * ext_call.return_data[0] / 1000000000000000000 * 10^18 / ext_call.return_data[0])
    if not oracles[stor3][address(arg1)]:
        mem[0] = masterQuoteAssetAddress
        mem[32] = sha3(address(arg2), 2)
        if oracles[address(arg2)][stor3]:
            require ext_code.size(oracles[address(arg2)][stor3])
            staticcall oracles[address(arg2)][stor3].0x57de26a4 with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            idx = 0
            while idx < adapters.length:
                mem[0] = 4
                mem[mem[64] + 36] = arg2
                require ext_code.size(adapters[idx].field_0)
                staticcall adapters[idx].field_0.0xac41865a with:
                        gas gas_remaining wei
                       args address(arg1), arg2
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _297 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_297] == bool(mem[_297])
                if not mem[_297]:
                    idx = idx + 1
                    continue 
                if not mem[_297]:
                    revert with 0, 'PriceOracle.getPrice: Price not found.'
                mem[mem[64]] = mem[_297 + 32]
                return memory
                  from mem[64]
                   len 32
        else:
            mem[0] = arg2
            mem[32] = sha3(masterQuoteAssetAddress, 2)
            if not oracles[stor3][address(arg2)]:
                idx = 0
                while idx < adapters.length:
                    mem[0] = 4
                    mem[mem[64] + 36] = arg2
                    require ext_code.size(adapters[idx].field_0)
                    staticcall adapters[idx].field_0.0xac41865a with:
                            gas gas_remaining wei
                           args address(arg1), arg2
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _293 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_293] == bool(mem[_293])
                    if not mem[_293]:
                        idx = idx + 1
                        continue 
                    if not mem[_293]:
                        revert with 0, 'PriceOracle.getPrice: Price not found.'
                    mem[mem[64]] = mem[_293 + 32]
                    return memory
                      from mem[64]
                       len 32
            else:
                require ext_code.size(oracles[stor3][address(arg2)])
                staticcall oracles[stor3][address(arg2)].0x57de26a4 with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[64] = (2 * ceil32(return_data.size)) + 160
                mem[(2 * ceil32(return_data.size)) + 96] = 26
                mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                idx = 0
                while idx < adapters.length:
                    mem[0] = 4
                    mem[mem[64] + 36] = arg2
                    require ext_code.size(adapters[idx].field_0)
                    staticcall adapters[idx].field_0.0xac41865a with:
                            gas gas_remaining wei
                           args address(arg1), arg2
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _295 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_295] == bool(mem[_295])
                    if not mem[_295]:
                        idx = idx + 1
                        continue 
                    if not mem[_295]:
                        revert with 0, 'PriceOracle.getPrice: Price not found.'
                    mem[mem[64]] = mem[_295 + 32]
                    return memory
                      from mem[64]
                       len 32
        revert with 0, 'PriceOracle.getPrice: Price not found.'
    require ext_code.size(oracles[stor3][address(arg1)])
    staticcall oracles[stor3][address(arg1)].0x57de26a4 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[64] = (2 * ceil32(return_data.size)) + 160
    mem[(2 * ceil32(return_data.size)) + 96] = 26
    mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    if oracles[address(arg2)][stor3]:
        require ext_code.size(oracles[address(arg2)][stor3])
        staticcall oracles[address(arg2)][stor3].0x57de26a4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 1000000000000000000 * 10^18 / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / ext_call.return_data[0])
        if 10^18 * 1000000000000000000 * 10^18 / ext_call.return_data[0] / 1000000000000000000 * 10^18 / ext_call.return_data[0] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (10^18 * 1000000000000000000 * 10^18 / ext_call.return_data[0] / ext_call.return_data[0])
    mem[0] = arg2
    mem[32] = sha3(masterQuoteAssetAddress, 2)
    if not oracles[stor3][address(arg2)]:
        idx = 0
        while idx < adapters.length:
            mem[0] = 4
            mem[mem[64] + 36] = arg2
            require ext_code.size(adapters[idx].field_0)
            staticcall adapters[idx].field_0.0xac41865a with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _299 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_299] == bool(mem[_299])
            if not mem[_299]:
                idx = idx + 1
                continue 
            if not mem[_299]:
                revert with 0, 'PriceOracle.getPrice: Price not found.'
            mem[mem[64]] = mem[_299 + 32]
            return memory
              from mem[64]
               len 32
        revert with 0, 'PriceOracle.getPrice: Price not found.'
    require ext_code.size(oracles[stor3][address(arg2)])
    staticcall oracles[stor3][address(arg2)].0x57de26a4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    if not 1000000000000000000 * 10^18 / ext_call.return_data[0]:
        if not 1000000000000000000 * 10^18 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / 1000000000000000000 * 10^18 / ext_call.return_data[0])
    if 10^18 * 1000000000000000000 * 10^18 / ext_call.return_data[0] / 1000000000000000000 * 10^18 / ext_call.return_data[0] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 1000000000000000000 * 10^18 / ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    return (10^18 * 1000000000000000000 * 10^18 / ext_call.return_data[0] / 1000000000000000000 * 10^18 / ext_call.return_data[0])
}



}
