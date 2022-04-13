contract main {




// =====================  Runtime code  =====================


address owner;
address proposedOwner;
address tokenAddress;
uint256 minAmount;
address recipientAddress;
array of struct stor5;
array of struct stor6;
array of struct stor7;
array of struct stor8;
array of struct stor9;
array of struct stor10;
array of struct stor11;

function recipient() payable {
    return recipientAddress
}

function owner() payable {
    return owner
}

function minAmount() payable {
    return minAmount
}

function proposedOwner() payable {
    return proposedOwner
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setMinAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minAmount = arg1
}

function setRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    recipientAddress = arg1
}

function acceptOwnership() payable {
    if proposedOwner != msg.sender:
        revert with 0, 'Ownable: not proposed owner'
    emit OwnershipTransferred(owner, proposedOwner);
    owner = proposedOwner
    proposedOwner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if owner == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: proposed owner is the owner'
    emit OwnershipProposed(owner, arg1);
    proposedOwner = arg1
}

function removeOracle(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor9.length:
        revert with 0, 'Oracle does not exist'
    if stor9.length < 1:
        revert with 0, 17
    if stor9.length - 1 >= stor9.length:
        revert with 0, 50
    if arg1 >= stor9.length:
        revert with 0, 50
    stor9[arg1].field_0 = stor9[stor9.length].field_0
    if not stor9.length:
        revert with 0, 49
    stor9[stor9.length].field_0 = 0
    stor9.length--
}

function addOracles(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        stor9.length++
        mem[0] = 9
        stor9[stor9.length].field_0 = address(cd[((32 * idx) + arg1 + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sweepBalance() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args recipientAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getOracles() payable {
    if stor9.length:
        mem[128] = address(stor9.field_0)
        if (32 * stor9.length) + 32 > 64:
            mem[160] = address(stor9.field_256)
            idx = 160
            s = 1
            while (32 * stor9.length) + 96 > idx:
                mem[idx + 32] = stor9[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor9.length) + 128] = 32
    mem[(32 * stor9.length) + 160] = stor9.length
    idx = 0
    s = (32 * stor9.length) + 192
    t = 128
    while idx < stor9.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor9.length) + 128
       len (96 * stor9.length) + 64
}

function getFluxAggregators() payable {
    if stor5.length:
        mem[128] = address(stor5.field_0)
        if (32 * stor5.length) + 32 > 64:
            mem[160] = address(stor5.field_256)
            idx = 160
            s = 1
            while (32 * stor5.length) + 96 > idx:
                mem[idx + 32] = stor5[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor5.length) + 128] = 32
    mem[(32 * stor5.length) + 160] = stor5.length
    idx = 0
    s = (32 * stor5.length) + 192
    t = 128
    while idx < stor5.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor5.length) + 128
       len (96 * stor5.length) + 64
}

function getOffchainAggregators() payable {
    if stor7.length:
        mem[128] = address(stor7.field_0)
        if (32 * stor7.length) + 32 > 64:
            mem[160] = address(stor7.field_256)
            idx = 160
            s = 1
            while (32 * stor7.length) + 96 > idx:
                mem[idx + 32] = stor7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor7.length) + 128] = 32
    mem[(32 * stor7.length) + 160] = stor7.length
    idx = 0
    s = (32 * stor7.length) + 192
    t = 128
    while idx < stor7.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor7.length) + 128
       len (96 * stor7.length) + 64
}

function getKeepers() payable {
    if stor11.length:
        mem[128] = address(stor11.field_0)
        if (32 * stor11.length) + 32 > 64:
            mem[160] = address(stor11.field_256)
            idx = 160
            s = 1
            while (32 * stor11.length) + 96 > idx:
                mem[idx + 32] = stor11[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor11.length) + 128] = 32
    mem[(32 * stor11.length) + 160] = stor11.length
    idx = 0
    s = (32 * stor11.length) + 192
    t = 128
    while idx < stor11.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor11.length) + 128
       len (96 * stor11.length) + 64
}

function getFluxAggregatorOracles() payable {
    if stor6.length:
        mem[128] = address(stor6.field_0)
        if (32 * stor6.length) + 32 > 64:
            mem[160] = address(stor6.field_256)
            idx = 160
            s = 1
            while (32 * stor6.length) + 96 > idx:
                mem[idx + 32] = stor6[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor6.length) + 128] = 32
    mem[(32 * stor6.length) + 160] = stor6.length
    idx = 0
    s = (32 * stor6.length) + 192
    t = 128
    while idx < stor6.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor6.length) + 128
       len (96 * stor6.length) + 64
}

function getKeeperRegistries() payable {
    if stor10.length:
        mem[128] = address(stor10.field_0)
        if (32 * stor10.length) + 32 > 64:
            mem[160] = address(stor10.field_256)
            idx = 160
            s = 1
            while (32 * stor10.length) + 96 > idx:
                mem[idx + 32] = stor10[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor10.length) + 128] = 32
    mem[(32 * stor10.length) + 160] = stor10.length
    idx = 0
    s = (32 * stor10.length) + 192
    t = 128
    while idx < stor10.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor10.length) + 128
       len (96 * stor10.length) + 64
}

function removeFluxAggregator(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor5.length:
        revert with 0, 'Aggregator does not exist'
    if stor5.length < 1:
        revert with 0, 17
    if stor5.length - 1 >= stor5.length:
        revert with 0, 50
    if arg1 >= stor5.length:
        revert with 0, 50
    stor5[arg1].field_0 = stor5[stor5.length].field_0
    if not stor5.length:
        revert with 0, 49
    stor5[stor5.length].field_0 = 0
    stor5.length--
    if stor6.length < 1:
        revert with 0, 17
    if stor6.length - 1 >= stor6.length:
        revert with 0, 50
    if arg1 >= stor6.length:
        revert with 0, 50
    stor6[arg1].field_0 = stor6[stor6.length].field_0
    if not stor6.length:
        revert with 0, 49
    stor6[stor6.length].field_0 = 0
    stor6.length--
}

function removeOffchainAggregator(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor7.length:
        revert with 0, 'Aggregator does not exist'
    if stor7.length < 1:
        revert with 0, 17
    if stor7.length - 1 >= stor7.length:
        revert with 0, 50
    if arg1 >= stor7.length:
        revert with 0, 50
    stor7[arg1].field_0 = stor7[stor7.length].field_0
    if not stor7.length:
        revert with 0, 49
    stor7[stor7.length].field_0 = 0
    stor7.length--
    if stor8.length < 1:
        revert with 0, 17
    if stor8.length - 1 >= stor8.length:
        revert with 0, 50
    if arg1 >= stor8.length:
        revert with 0, 50
    stor8[arg1].field_0 = stor8[stor8.length].field_0
    if not stor8.length:
        revert with 0, 49
    stor8[stor8.length].field_0 = 0
    stor8.length--
}

function removeKeeperRegistry(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor10.length:
        revert with 0, 'Aggregator does not exist'
    if stor10.length < 1:
        revert with 0, 17
    if stor10.length - 1 >= stor10.length:
        revert with 0, 50
    if arg1 >= stor10.length:
        revert with 0, 50
    stor10[arg1].field_0 = stor10[stor10.length].field_0
    if not stor10.length:
        revert with 0, 49
    stor10[stor10.length].field_0 = 0
    stor10.length--
    if stor11.length < 1:
        revert with 0, 17
    if stor11.length - 1 >= stor11.length:
        revert with 0, 50
    if arg1 >= stor11.length:
        revert with 0, 50
    stor11[arg1].field_0 = stor11[stor11.length].field_0
    if not stor11.length:
        revert with 0, 49
    stor11[stor11.length].field_0 = 0
    stor11.length--
}

function getOffchainAggregatorTransmitters() payable {
    mem[64] = (32 * stor8.length) + 128
    mem[96] = stor8.length
    if not stor8.length:
        mem[(32 * stor8.length) + 128] = 32
        mem[(32 * stor8.length) + 160] = stor8.length
        idx = 0
        s = (32 * stor8.length) + 192
        t = 128
        while idx < stor8.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor8.length) + 128
           len (96 * stor8.length) + 64
    mem[128] = address(stor8.field_0)
    idx = 128
    s = 0
    while (32 * stor8.length) + 96 > idx:
        mem[idx + 32] = stor8[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor8.length) + 128] = 32
    mem[(32 * stor8.length) + 160] = stor8.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor8.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor8.length) + -mem[64] + 192
}

function addFluxAggregators(address[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length != arg1.length:
        revert with 0, 'must have equal length'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        stor5.length++
        stor5[stor5.length].field_0 = address(cd[((32 * idx) + arg1 + 36)])
        if idx >= arg2.length:
            revert with 0, 50
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        stor6.length++
        mem[0] = 6
        stor6[stor6.length].field_0 = address(cd[((32 * idx) + arg2 + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function addOffchainAggregators(address[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length != arg1.length:
        revert with 0, 'must have equal length'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        stor7.length++
        stor7[stor7.length].field_0 = address(cd[((32 * idx) + arg1 + 36)])
        if idx >= arg2.length:
            revert with 0, 50
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        stor8.length++
        mem[0] = 8
        stor8[stor8.length].field_0 = address(cd[((32 * idx) + arg2 + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function addKeeperRegistries(address[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length != arg1.length:
        revert with 0, 'must have equal length'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        stor10.length++
        stor10[stor10.length].field_0 = address(cd[((32 * idx) + arg1 + 36)])
        if idx >= arg2.length:
            revert with 0, 50
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        stor11.length++
        mem[0] = 11
        stor11[stor11.length].field_0 = address(cd[((32 * idx) + arg2 + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function acceptAdminFlux(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length > stor5.length:
        revert with 0, 'too many idxs'
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        _15 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 128] >= stor5.length:
            revert with 0, 50
        if mem[(32 * idx) + 128] >= stor6.length:
            revert with 0, 50
        mem[0] = 6
        mem[(32 * arg1.length) + 128] = 0x628806ef00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = stor6[_15].field_0
        require ext_code.size(stor5[_15].field_0)
        call stor5[_15].field_0.acceptAdmin(address rg1) with:
             gas gas_remaining wei
            args stor6[_15].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function acceptPayeeshipOffchain(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length > stor7.length:
        revert with 0, 'too many idxs'
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        _15 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 128] >= stor7.length:
            revert with 0, 50
        if mem[(32 * idx) + 128] >= stor8.length:
            revert with 0, 50
        mem[0] = 8
        mem[(32 * arg1.length) + 128] = 0xb121e14700000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = stor8[_15].field_0
        require ext_code.size(stor7[_15].field_0)
        call stor7[_15].field_0.acceptPayeeship(address rg1) with:
             gas gas_remaining wei
            args stor8[_15].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function acceptPayeeshipKeeper(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length > stor10.length:
        revert with 0, 'too many idxs'
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        _15 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 128] >= stor10.length:
            revert with 0, 50
        if mem[(32 * idx) + 128] >= stor11.length:
            revert with 0, 50
        mem[0] = 11
        mem[(32 * arg1.length) + 128] = 0xb121e14700000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = stor11[_15].field_0
        require ext_code.size(stor10[_15].field_0)
        call stor10[_15].field_0.acceptPayeeship(address rg1) with:
             gas gas_remaining wei
            args stor11[_15].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function transferOwnershipOracles(uint256[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length > stor9.length:
        revert with 0, 'too many idxs'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        _26 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 128] >= stor9.length:
            revert with 0, 50
        mem[0] = 9
        mem[(32 * arg1.length) + 128] = 0xf2fde38b00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = arg2
        require ext_code.size(stor9[_26].field_0)
        call stor9[_26].field_0.0xf2fde38b with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function transferAdminFlux(uint256[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length > stor5.length:
        revert with 0, 'too many idxs'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        _28 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 128] >= stor5.length:
            revert with 0, 50
        if mem[(32 * idx) + 128] >= stor6.length:
            revert with 0, 50
        mem[0] = 6
        mem[(32 * arg1.length) + 128] = 0xe9ee6eeb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = stor6[_28].field_0
        mem[(32 * arg1.length) + 164] = arg2
        require ext_code.size(stor5[_28].field_0)
        call stor5[_28].field_0.transferAdmin(address rg1, address rg2) with:
             gas gas_remaining wei
            args stor6[_28].field_0, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function transferPayeeshipOffchain(uint256[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length > stor7.length:
        revert with 0, 'too many idxs'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        _28 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 128] >= stor7.length:
            revert with 0, 50
        if mem[(32 * idx) + 128] >= stor8.length:
            revert with 0, 50
        mem[0] = 8
        mem[(32 * arg1.length) + 128] = 0xeb5dcd6c00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = stor8[_28].field_0
        mem[(32 * arg1.length) + 164] = arg2
        require ext_code.size(stor7[_28].field_0)
        call stor7[_28].field_0.transferPayeeship(address rg1, address rg2) with:
             gas gas_remaining wei
            args stor8[_28].field_0, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function transferPayeeshipKeeper(uint256[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length > stor10.length:
        revert with 0, 'too many idxs'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        _28 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 128] >= stor10.length:
            revert with 0, 50
        if mem[(32 * idx) + 128] >= stor11.length:
            revert with 0, 50
        mem[0] = 11
        mem[(32 * arg1.length) + 128] = 0xeb5dcd6c00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = stor11[_28].field_0
        mem[(32 * arg1.length) + 164] = arg2
        require ext_code.size(stor10[_28].field_0)
        call stor10[_28].field_0.transferPayeeship(address rg1, address rg2) with:
             gas gas_remaining wei
            args stor11[_28].field_0, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function acceptNewSweeper() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < stor5.length:
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = 6
        mem[96] = 0x628806ef00000000000000000000000000000000000000000000000000000000
        mem[100] = stor6[idx].field_0
        require ext_code.size(stor5[idx].field_0)
        call stor5[idx].field_0.acceptAdmin(address rg1) with:
             gas gas_remaining wei
            args stor6[idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor7.length:
        if idx >= stor8.length:
            revert with 0, 50
        mem[0] = 8
        mem[96] = 0xb121e14700000000000000000000000000000000000000000000000000000000
        mem[100] = stor8[idx].field_0
        require ext_code.size(stor7[idx].field_0)
        call stor7[idx].field_0.acceptPayeeship(address rg1) with:
             gas gas_remaining wei
            args stor8[idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor10.length:
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = 11
        mem[96] = 0xb121e14700000000000000000000000000000000000000000000000000000000
        mem[100] = stor11[idx].field_0
        require ext_code.size(stor10[idx].field_0)
        call stor10[idx].field_0.acceptPayeeship(address rg1) with:
             gas gas_remaining wei
            args stor11[idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function proxy(address[] arg1, bytes[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length != arg1.length:
        revert with 0, 'must have equal length'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if address(cd[((32 * idx) + arg1 + 36)]) == this.address:
            revert with 0, 'cannot proxy to itself'
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if idx >= arg2.length:
            revert with 0, 50
        require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
        require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        _12 = mem[64]
        mem[mem[64] len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
        mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
        call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + _12 + -mem[64] - 4]
        if return_data.size:
            _14 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_14] = return_data.size
            mem[_14 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function migrateSweeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < stor5.length:
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = 6
        mem[96] = 0xe9ee6eeb00000000000000000000000000000000000000000000000000000000
        mem[100] = stor6[idx].field_0
        mem[132] = arg1
        require ext_code.size(stor5[idx].field_0)
        call stor5[idx].field_0.transferAdmin(address rg1, address rg2) with:
             gas gas_remaining wei
            args stor6[idx].field_0, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor7.length:
        if idx >= stor8.length:
            revert with 0, 50
        mem[0] = 8
        mem[96] = 0xeb5dcd6c00000000000000000000000000000000000000000000000000000000
        mem[100] = stor8[idx].field_0
        mem[132] = arg1
        require ext_code.size(stor7[idx].field_0)
        call stor7[idx].field_0.transferPayeeship(address rg1, address rg2) with:
             gas gas_remaining wei
            args stor8[idx].field_0, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor10.length:
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = 11
        mem[96] = 0xeb5dcd6c00000000000000000000000000000000000000000000000000000000
        mem[100] = stor11[idx].field_0
        mem[132] = arg1
        require ext_code.size(stor10[idx].field_0)
        call stor10[idx].field_0.transferPayeeship(address rg1, address rg2) with:
             gas gas_remaining wei
            args stor11[idx].field_0, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        mem[96] = 0xf2fde38b00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor9[idx].field_0)
        call stor9[idx].field_0.0xf2fde38b with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sweepableManualAmount() payable {
    mem[100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < stor10.length:
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = 11
        require ext_code.size(stor10[idx].field_0)
        staticcall stor10[idx].field_0.getKeeperInfo(address rg1) with:
                gas gas_remaining wei
               args stor11[idx].field_0
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_33] == mem[_33 + 12 len 20]
        require mem[_33 + 32] == bool(mem[_33 + 32])
        require mem[_33 + 64] == mem[_33 + 84 len 12]
        if mem[_33 + 84 len 12] <= minAmount:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if mem[_33 + 84 len 12] <= 0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > !mem[_33 + 84 len 12]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_33 + 84 len 12]
        continue 
    idx = 0
    t = 0
    while idx < stor9.length:
        mem[0] = 9
        require ext_code.size(stor9[idx].field_0)
        staticcall stor9[idx].field_0.withdrawable() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _50 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_50] <= minAmount:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t
            continue 
        if t > !mem[_50]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = t + mem[_50]
        continue 
    idx = 0
    u = 0
    while idx < stor5.length:
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = 6
        mem[mem[64] + 4] = stor6[idx].field_0
        require ext_code.size(stor5[idx].field_0)
        staticcall stor5[idx].field_0.withdrawablePayment(address rg1) with:
                gas gas_remaining wei
               args stor6[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _64 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_64] <= minAmount:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = u
            continue 
        if u > !mem[_64]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        u = u + mem[_64]
        continue 
    if u > !t:
        revert with 0, 17
    if u + t > !s:
        revert with 0, 17
    if u + t + s > !ext_call.return_data[0]:
        revert with 0, 17
    return (u + t + s + ext_call.return_data[0])
}

function sweepableAmount() payable {
    mem[100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < stor10.length:
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = 11
        require ext_code.size(stor10[idx].field_0)
        staticcall stor10[idx].field_0.getKeeperInfo(address rg1) with:
                gas gas_remaining wei
               args stor11[idx].field_0
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _43 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_43] == mem[_43 + 12 len 20]
        require mem[_43 + 32] == bool(mem[_43 + 32])
        require mem[_43 + 64] == mem[_43 + 84 len 12]
        if mem[_43 + 84 len 12] <= minAmount:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if mem[_43 + 84 len 12] <= 0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > !mem[_43 + 84 len 12]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_43 + 84 len 12]
        continue 
    idx = 0
    t = 0
    while idx < stor9.length:
        mem[0] = 9
        require ext_code.size(stor9[idx].field_0)
        staticcall stor9[idx].field_0.withdrawable() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _70 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_70] <= minAmount:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t
            continue 
        if t > !mem[_70]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = t + mem[_70]
        continue 
    idx = 0
    while idx < stor7.length:
        if idx >= stor8.length:
            revert with 0, 50
        mem[0] = 8
        mem[mem[64] + 4] = stor8[idx].field_0
        require ext_code.size(stor7[idx].field_0)
        staticcall stor7[idx].field_0.owedPayment(address rg1) with:
                gas gas_remaining wei
               args stor8[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _97 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _99 = mem[_97]
        mem[mem[64] + 4] = stor7[idx].field_0
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args stor7[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _104 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_104] >= _99:
            if _99 > minAmount:
                if _99 > 0:
                    if 0 > !_99:
                        revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    u = 0
    while idx < stor5.length:
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = 6
        mem[mem[64] + 4] = stor6[idx].field_0
        require ext_code.size(stor5[idx].field_0)
        staticcall stor5[idx].field_0.withdrawablePayment(address rg1) with:
                gas gas_remaining wei
               args stor6[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _112 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_112] <= minAmount:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = u
            continue 
        if u > !mem[_112]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        u = u + mem[_112]
        continue 
    if u > -1:
        revert with 0, 17
    if u > !t:
        revert with 0, 17
    if u + t > !s:
        revert with 0, 17
    if u + t + s > !ext_call.return_data[0]:
        revert with 0, 17
    return (u + t + s + ext_call.return_data[0])
}

function sweepManual() payable {
    mem[64] = 96
    idx = 0
    while idx < stor5.length:
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = 6
        mem[mem[64] + 4] = stor6[idx].field_0
        require ext_code.size(stor5[idx].field_0)
        staticcall stor5[idx].field_0.withdrawablePayment(address rg1) with:
                gas gas_remaining wei
               args stor6[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _46 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _48 = mem[_46]
        if mem[_46] > minAmount:
            if mem[_46] > 0:
                if idx >= stor5.length:
                    revert with 0, 50
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = 6
                mem[mem[64]] = 0x3d3d771400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor6[idx].field_0
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _48
                require ext_code.size(stor5[idx].field_0)
                call stor5[idx].field_0.withdrawPayment(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args stor6[idx].field_0, address(this.address), _48
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        require ext_code.size(stor9[idx].field_0)
        staticcall stor9[idx].field_0.withdrawable() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _80 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _82 = mem[_80]
        if mem[_80] > minAmount:
            if mem[_80] > 0:
                if idx >= stor9.length:
                    revert with 0, 50
                mem[0] = 9
                mem[mem[64]] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = _82
                require ext_code.size(stor9[idx].field_0)
                call stor9[idx].field_0.0xf3fef3a3 with:
                     gas gas_remaining wei
                    args address(this.address), _82
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor10.length:
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = 11
        require ext_code.size(stor10[idx].field_0)
        staticcall stor10[idx].field_0.getKeeperInfo(address rg1) with:
                gas gas_remaining wei
               args stor11[idx].field_0
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _111 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_111] == mem[_111 + 12 len 20]
        require mem[_111 + 32] == bool(mem[_111 + 32])
        require mem[_111 + 64] == mem[_111 + 84 len 12]
        if mem[_111 + 84 len 12] > minAmount:
            if mem[_111 + 84 len 12] > 0:
                if idx >= stor10.length:
                    revert with 0, 50
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = 11
                mem[mem[64]] = 0xa710b22100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor11[idx].field_0
                mem[mem[64] + 36] = this.address
                require ext_code.size(stor10[idx].field_0)
                call stor10[idx].field_0.withdrawPayment(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args stor11[idx].field_0, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _112 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _114 = mem[_112]
    if mem[_112]:
        mem[mem[64] + 4] = recipientAddress
        mem[mem[64] + 36] = _114
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args recipientAddress, _114
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _119 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_119] == bool(mem[_119])
}

function sweepAll() payable {
    mem[64] = 96
    idx = 0
    while idx < stor5.length:
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = 6
        mem[mem[64] + 4] = stor6[idx].field_0
        require ext_code.size(stor5[idx].field_0)
        staticcall stor5[idx].field_0.withdrawablePayment(address rg1) with:
                gas gas_remaining wei
               args stor6[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _59 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _61 = mem[_59]
        if mem[_59] > minAmount:
            if mem[_59] > 0:
                if idx >= stor5.length:
                    revert with 0, 50
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = 6
                mem[mem[64]] = 0x3d3d771400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor6[idx].field_0
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _61
                require ext_code.size(stor5[idx].field_0)
                call stor5[idx].field_0.withdrawPayment(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args stor6[idx].field_0, address(this.address), _61
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor7.length:
        if idx >= stor8.length:
            revert with 0, 50
        mem[0] = 8
        mem[mem[64] + 4] = stor8[idx].field_0
        require ext_code.size(stor7[idx].field_0)
        staticcall stor7[idx].field_0.owedPayment(address rg1) with:
                gas gas_remaining wei
               args stor8[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _113 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _116 = mem[_113]
        mem[mem[64] + 4] = stor7[idx].field_0
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args stor7[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _127 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_127] >= _116:
            if _116 > minAmount:
                if _116 > 0:
                    if idx >= stor7.length:
                        revert with 0, 50
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = 8
                    mem[mem[64]] = 0x8ac28d5a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor8[idx].field_0
                    require ext_code.size(stor7[idx].field_0)
                    call stor7[idx].field_0.withdrawPayment(address rg1) with:
                         gas gas_remaining wei
                        args stor8[idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        require ext_code.size(stor9[idx].field_0)
        staticcall stor9[idx].field_0.withdrawable() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _150 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _152 = mem[_150]
        if mem[_150] > minAmount:
            if mem[_150] > 0:
                if idx >= stor9.length:
                    revert with 0, 50
                mem[0] = 9
                mem[mem[64]] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = _152
                require ext_code.size(stor9[idx].field_0)
                call stor9[idx].field_0.0xf3fef3a3 with:
                     gas gas_remaining wei
                    args address(this.address), _152
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor10.length:
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = 11
        require ext_code.size(stor10[idx].field_0)
        staticcall stor10[idx].field_0.getKeeperInfo(address rg1) with:
                gas gas_remaining wei
               args stor11[idx].field_0
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _181 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_181] == mem[_181 + 12 len 20]
        require mem[_181 + 32] == bool(mem[_181 + 32])
        require mem[_181 + 64] == mem[_181 + 84 len 12]
        if mem[_181 + 84 len 12] > minAmount:
            if mem[_181 + 84 len 12] > 0:
                if idx >= stor10.length:
                    revert with 0, 50
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = 11
                mem[mem[64]] = 0xa710b22100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor11[idx].field_0
                mem[mem[64] + 36] = this.address
                require ext_code.size(stor10[idx].field_0)
                call stor10[idx].field_0.withdrawPayment(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args stor11[idx].field_0, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _182 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _184 = mem[_182]
    if mem[_182]:
        mem[mem[64] + 4] = recipientAddress
        mem[mem[64] + 36] = _184
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args recipientAddress, _184
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _189 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_189] == bool(mem[_189])
}



}
