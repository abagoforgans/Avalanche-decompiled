contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;

function addressExist(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(stor1[arg1][1][address(arg2)].field_0)
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_fc0527e4(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if not address(cd[((32 * idx) + cd[36] + 36)]):
            revert with 0, 'ZERO_ADDRESS'
        if stor1[cd[4]][1][address(cd[((32 * idx) + cd[36] + 36)])].field_0:
            revert with 0, 'ALREADY_EXISTS'
        mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = sha3(cd[4], 1) + 1
        if not stor1[cd[4]][1][address(cd[((32 * idx) + cd[36] + 36)])].field_0:
            stor1[cd[4]].field_0++
            stor1[cd[4]][stor1[cd[4]].field_0].field_0 = address(cd[((32 * idx) + cd[36] + 36)])
            stor1[cd[4]][stor1[cd[4]].field_0].field_160 = 0
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = sha3(cd[4], 1) + 1
            stor1[cd[4]][1][address(cd[((32 * idx) + cd[36] + 36)])].field_0 = stor1[cd[4]].field_0
        mem[96] = cd[4]
        mem[128] = address(cd[((32 * idx) + cd[36] + 36)])
        emit NewAddress(cd[4], address(cd[((32 * idx) + cd[36] + 36)]));
        idx = idx + 1
        continue 
}

function sub_48efff31(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if not address(cd[((32 * idx) + cd[36] + 36)]):
            revert with 0, 'ZERO_ADDRESS'
        if not stor1[cd[4]][1][address(cd[((32 * idx) + cd[36] + 36)])].field_0:
            revert with 0, 'DOES_NOT_EXIST'
        mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = sha3(cd[4], 1) + 1
        if stor1[cd[4]][1][address(cd[((32 * idx) + cd[36] + 36)])].field_0:
            require stor1[cd[4]].field_0 - 1 < stor1[cd[4]].field_0
            require stor1[cd[4]][1][address(cd[((32 * idx) + cd[36] + 36)])].field_0 - 1 < stor1[cd[4]].field_0
            stor1[cd[4]][stor1[cd[4]][1][address(cd[((32 * idx) + cd[36] + 36)])].field_0].field_0 = stor1[cd[4]][stor1[cd[4]].field_0].field_0
            stor1[cd[4]][1][stor1[cd[4]][stor1[cd[4]].field_0].field_0].field_0 = stor1[cd[4]][1][address(cd[((32 * idx) + cd[36] + 36)])].field_0
            require stor1[cd[4]].field_0
            stor1[cd[4]][stor1[cd[4]].field_0].field_0 = 0
            stor1[cd[4]].field_0--
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = sha3(cd[4], 1) + 1
            stor1[cd[4]][1][address(cd[((32 * idx) + cd[36] + 36)])].field_0 = 0
        mem[96] = cd[4]
        mem[128] = address(cd[((32 * idx) + cd[36] + 36)])
        emit RemoveAddress(cd[4], address(cd[((32 * idx) + cd[36] + 36)]));
        idx = idx + 1
        continue 
}

function getAddressesFromType(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require stor1[arg1].field_0 <= test266151307()
    mem[96] = stor1[arg1].field_0
    mem[64] = (32 * stor1[arg1].field_0) + 128
    if not stor1[arg1].field_0:
        idx = 0
        while idx < stor1[arg1].field_0:
            mem[32] = 1
            if idx >= stor1[arg1].field_0:
                revert with 0, 
                            32,
                            34,
                            0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                            mem[(32 * stor1[arg1].field_0) + 230 len 30]
            mem[0] = sha3(arg1, 1)
            require idx < stor1[arg1].field_0
            mem[(32 * idx) + 128] = stor1[arg1][idx].field_0
            idx = idx + 1
            continue 
        mem[(32 * stor1[arg1].field_0) + 128] = 32
        mem[(32 * stor1[arg1].field_0) + 160] = stor1[arg1].field_0
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
        mem[128 len 32 * stor1[arg1].field_0] = call.data[calldata.size len 32 * stor1[arg1].field_0]
        idx = 0
        while idx < stor1[arg1].field_0:
            mem[32] = 1
            if idx >= stor1[arg1].field_0:
                revert with 0, 
                            32,
                            34,
                            0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                            mem[(32 * stor1[arg1].field_0) + 230 len 30]
            mem[0] = sha3(arg1, 1)
            require idx < stor1[arg1].field_0
            mem[(32 * idx) + 128] = stor1[arg1][idx].field_0
            idx = idx + 1
            continue 
        mem[(32 * stor1[arg1].field_0) + 128] = 32
        mem[(32 * stor1[arg1].field_0) + 160] = stor1[arg1].field_0
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < stor1[arg1].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    return memory
      from mem[64]
       len (64 * stor1[arg1].field_0) + -mem[64] + 192
}



}
