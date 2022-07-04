contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
mapping of uint256 stor2;

function getExecutorStatus(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[address(arg1)])
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function addExecutor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'executor address can not be 0'
    if stor2[address(arg1)]:
        revert with 0, 'Executor already registered'
    if not stor2[address(arg1)]:
        stor1.length++
        stor1[stor1.length].field_0 = arg1
        stor1[stor1.length].field_160 = 0
        stor2[address(arg1)] = stor1.length
    emit ExecutorAdded(address(arg1), msg.sender);
}

function getAllExecutors() payable {
    if stor1.length > test266151307():
        revert with 0, 65
    mem[96] = stor1.length
    mem[64] = (32 * stor1.length) + 128
    if stor1.length:
        mem[128 len 32 * stor1.length] = call.data[calldata.size len 32 * stor1.length]
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if idx >= stor1.length:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor1[idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * stor1.length) + 128] = 32
    mem[(32 * stor1.length) + 160] = stor1.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor1.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor1.length) + -mem[64] + 192
}

function removeExecutor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor2[address(arg1)]:
        revert with 0, 'Executor not registered'
    if stor2[address(arg1)]:
        if stor2[address(arg1)] < 1:
            revert with 0, 17
        if stor1.length < 1:
            revert with 0, 17
        if stor1.length - 1 != stor2[address(arg1)] - 1:
            if stor1.length - 1 >= stor1.length:
                revert with 0, 50
            if stor2[address(arg1)] - 1 >= stor1.length:
                revert with 0, 50
            stor1[stor2[address(arg1)]].field_0 = stor1[stor1.length].field_0
            stor2[stor1[stor1.length].field_0] = stor2[address(arg1)]
        if not stor1.length:
            revert with 0, 49
        stor1[stor1.length].field_0 = 0
        stor1.length--
        stor2[address(arg1)] = 0
    emit ExecutorRemoved(address(arg1), msg.sender);
}

function addExecutors(address[] arg1) payable {
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
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if not address(cd[((32 * idx) + arg1 + 36)]):
            revert with 0, 'executor address can not be 0'
        if stor2[address(cd[((32 * idx) + arg1 + 36)])]:
            revert with 0, 'Executor already registered'
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        if not stor2[address(cd[((32 * idx) + arg1 + 36)])]:
            stor1.length++
            stor1[stor1.length].field_0 = address(cd[((32 * idx) + arg1 + 36)])
            stor1[stor1.length].field_160 = 0
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 2
            stor2[address(cd[((32 * idx) + arg1 + 36)])] = stor1.length
        mem[96] = address(cd[((32 * idx) + arg1 + 36)])
        mem[128] = msg.sender
        emit ExecutorAdded(address(cd[((32 * idx) + arg1 + 36)]), msg.sender);
        idx = idx + 1
        continue 
}

function removeExecutors(address[] arg1) payable {
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
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if not stor2[address(cd[((32 * idx) + arg1 + 36)])]:
            revert with 0, 'Executor not registered'
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        if stor2[address(cd[((32 * idx) + arg1 + 36)])]:
            if stor2[address(cd[((32 * idx) + arg1 + 36)])] < 1:
                revert with 0, 17
            if stor1.length < 1:
                revert with 0, 17
            if stor1.length - 1 != stor2[address(cd[((32 * idx) + arg1 + 36)])] - 1:
                if stor1.length - 1 >= stor1.length:
                    revert with 0, 50
                if stor2[address(cd[((32 * idx) + arg1 + 36)])] - 1 >= stor1.length:
                    revert with 0, 50
                stor1[stor2[address(cd[((32 * idx) + arg1 + 36)])]].field_0 = stor1[stor1.length].field_0
                stor2[stor1[stor1.length].field_0] = stor2[address(cd[((32 * idx) + arg1 + 36)])]
            if not stor1.length:
                revert with 0, 49
            stor1[stor1.length].field_0 = 0
            stor1.length--
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 2
            stor2[address(cd[((32 * idx) + arg1 + 36)])] = 0
        mem[96] = address(cd[((32 * idx) + arg1 + 36)])
        mem[128] = msg.sender
        emit ExecutorRemoved(address(cd[((32 * idx) + arg1 + 36)]), msg.sender);
        idx = idx + 1
        continue 
}



}
