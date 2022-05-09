contract main {




// =====================  Runtime code  =====================


address storC8FC;
array of struct stor115104503779346555416608448632616818762658382269519671606068554052054907764479;
mapping of uint256 stor115104503779346555416608448632616818762658382269519671606068554052054907764480;

function numberOfExecutors() payable {
    return storFE7A.length
}

function canExec(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(storFE7A[address(arg1)])
}

function isExecutor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(storFE7A[address(arg1)])
}

function _fallback() payable {
    revert
}

function addExecutors(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if storC8FC != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if storFE7A[address(cd[((32 * idx) + arg1 + 36)])]:
            revert with 0, 'ExecFacet.addExecutors'
        storFE7A.length++
        storFE7A[storFE7A.length].field_0 = address(cd[((32 * idx) + arg1 + 36)])
        storFE7A[storFE7A.length].field_160 = 0
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 0xfe7ad725e6d99a082d357ed78c93550a4ac89ca228cbbe8e92f3140a9c2a3f00
        storFE7A[address(cd[((32 * idx) + arg1 + 36)])] = storFE7A.length
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function executors() payable {
    if storFE7A.length > test266151307():
        revert with 0, 65
    mem[96] = storFE7A.length
    mem[64] = (32 * storFE7A.length) + 128
    if not storFE7A.length:
        idx = 0
        while idx < storFE7A.length:
            if idx >= storFE7A.length:
                revert with 0, 50
            mem[0] = 0xfe7ad725e6d99a082d357ed78c93550a4ac89ca228cbbe8e92f3140a9c2a3eff
            if idx >= storFE7A.length:
                revert with 0, 50
            mem[(32 * idx) + 128] = storFE7A[idx].field_0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(32 * storFE7A.length) + 128] = 32
        mem[(32 * storFE7A.length) + 160] = storFE7A.length
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < mem[96]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[128 len 32 * storFE7A.length] = call.data[calldata.size len 32 * storFE7A.length]
        idx = 0
        while idx < storFE7A.length:
            if idx >= storFE7A.length:
                revert with 0, 50
            mem[0] = 0xfe7ad725e6d99a082d357ed78c93550a4ac89ca228cbbe8e92f3140a9c2a3eff
            if idx >= storFE7A.length:
                revert with 0, 50
            mem[(32 * idx) + 128] = storFE7A[idx].field_0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(32 * storFE7A.length) + 128] = 32
        mem[(32 * storFE7A.length) + 160] = storFE7A.length
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < storFE7A.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    return memory
      from mem[64]
       len (64 * storFE7A.length) + -mem[64] + 192
}

function removeExecutors(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if address(cd[((32 * idx) + arg1 + 36)]) != msg.sender:
            if storC8FC != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'ExecFacet.removeExecutors: msg.sender ! executor || owner'
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if not storFE7A[address(cd[((32 * idx) + arg1 + 36)])]:
            revert with 0, 'ExecFacet.removeExecutors'
        if storFE7A[address(cd[((32 * idx) + arg1 + 36)])] < 1:
            revert with 0, 17
        if storFE7A.length < 1:
            revert with 0, 17
        if storFE7A.length - 1 != storFE7A[address(cd[((32 * idx) + arg1 + 36)])] - 1:
            if storFE7A.length - 1 >= storFE7A.length:
                revert with 0, 50
            if storFE7A[address(cd[((32 * idx) + arg1 + 36)])] - 1 >= storFE7A.length:
                revert with 0, 50
            storFE7A[storFE7A[address(cd[((32 * idx) + arg1 + 36)])]].field_0 = storFE7A[storFE7A.length].field_0
            storFE7A[storFE7A[storFE7A.length].field_0] = storFE7A[address(cd[((32 * idx) + arg1 + 36)])]
        if not storFE7A.length:
            revert with 0, 49
        storFE7A[storFE7A.length].field_0 = 0
        storFE7A.length--
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 0xfe7ad725e6d99a082d357ed78c93550a4ac89ca228cbbe8e92f3140a9c2a3f00
        storFE7A[address(cd[((32 * idx) + arg1 + 36)])] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
