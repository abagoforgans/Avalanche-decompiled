contract main {




// =====================  Runtime code  =====================


address owner;
uint256 gamesPlayed;
array of struct stor2;
mapping of uint256 stor3;

function gamesPlayed() payable {
    return gamesPlayed
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

function sub_f1ca57ac(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    gamesPlayed = arg1
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

function sub_91f1c5ac(?) payable {
    require calldata.size - 4 >= 32
    mem[64] = (32 * stor2[arg1].field_0) + 128
    mem[96] = stor2[arg1].field_0
    if not stor2[arg1].field_0:
        mem[(32 * stor2[arg1].field_0) + 128] = 32
        mem[(32 * stor2[arg1].field_0) + 160] = stor2[arg1].field_0
        idx = 0
        s = (32 * stor2[arg1].field_0) + 192
        t = 128
        while idx < stor2[arg1].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor2[arg1].field_0) + 128
           len (96 * stor2[arg1].field_0) + 64
    mem[128] = stor2[arg1].field_0
    idx = 128
    s = 0
    while (32 * stor2[arg1].field_0) + 96 > idx:
        mem[idx + 32] = stor2[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2[arg1].field_0) + 128] = 32
    mem[(32 * stor2[arg1].field_0) + 160] = stor2[arg1].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor2[arg1].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2[arg1].field_0) + -mem[64] + 192
}

function sub_1484c0ee(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if stor3[address(cd[((32 * idx) + cd[4] + 36)])]:
            if stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][1][address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                if stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][1][address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                    if stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][1][address(cd[((32 * idx) + cd[4] + 36)])].field_0 < 1:
                        revert with 0, 17
                    if stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]].field_0 < 1:
                        revert with 0, 17
                    if stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]].field_0 - 1 != stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][1][address(cd[((32 * idx) + cd[4] + 36)])].field_0 - 1:
                        if stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]].field_0 - 1 >= stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]].field_0:
                            revert with 0, 50
                        if stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][1][address(cd[((32 * idx) + cd[4] + 36)])].field_0 - 1 >= stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]].field_0:
                            revert with 0, 50
                        stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][1][address(cd[((32 * idx) + cd[4] + 36)])].field_0].field_0 = stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]].field_0].field_0
                        stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][1][stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]].field_0].field_0].field_0 = stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][1][address(cd[((32 * idx) + cd[4] + 36)])].field_0
                    if not stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]].field_0:
                        revert with 0, 49
                    stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]].field_0].field_0 = 0
                    stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]].field_0--
                    stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][1][address(cd[((32 * idx) + cd[4] + 36)])].field_0 = 0
        stor3[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 2) + 1
        if not stor2[cd[((32 * idx) + cd[36] + 36)]][1][address(cd[((32 * idx) + cd[4] + 36)])].field_0:
            stor2[cd[((32 * idx) + cd[36] + 36)]].field_0++
            stor2[cd[((32 * idx) + cd[36] + 36)]][stor2[cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 = address(cd[((32 * idx) + cd[4] + 36)])
            stor2[cd[((32 * idx) + cd[36] + 36)]][stor2[cd[((32 * idx) + cd[36] + 36)]].field_0].field_160 = 0
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 2) + 1
            stor2[cd[((32 * idx) + cd[36] + 36)]][1][address(cd[((32 * idx) + cd[4] + 36)])].field_0 = stor2[cd[((32 * idx) + cd[36] + 36)]].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_6516c245(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if stor3[address(cd[((32 * idx) + cd[4] + 36)])] > !cd[((32 * idx) + cd[36] + 36)]:
            revert with 0, 17
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if stor3[address(cd[((32 * idx) + cd[4] + 36)])]:
            if stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][1][address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                if stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][1][address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                    if stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][1][address(cd[((32 * idx) + cd[4] + 36)])].field_0 < 1:
                        revert with 0, 17
                    if stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]].field_0 < 1:
                        revert with 0, 17
                    if stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]].field_0 - 1 != stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][1][address(cd[((32 * idx) + cd[4] + 36)])].field_0 - 1:
                        if stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]].field_0 - 1 >= stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]].field_0:
                            revert with 0, 50
                        if stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][1][address(cd[((32 * idx) + cd[4] + 36)])].field_0 - 1 >= stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]].field_0:
                            revert with 0, 50
                        stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][1][address(cd[((32 * idx) + cd[4] + 36)])].field_0].field_0 = stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]].field_0].field_0
                        stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][1][stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]].field_0].field_0].field_0 = stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][1][address(cd[((32 * idx) + cd[4] + 36)])].field_0
                    if not stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]].field_0:
                        revert with 0, 49
                    stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]].field_0].field_0 = 0
                    stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]].field_0--
                    stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])]][1][address(cd[((32 * idx) + cd[4] + 36)])].field_0 = 0
        stor3[address(cd[((32 * idx) + cd[4] + 36)])] += cd[((32 * idx) + cd[36] + 36)]
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = sha3(stor3[address(cd[((32 * idx) + cd[4] + 36)])] + cd[((32 * idx) + cd[36] + 36)], 2) + 1
        if not stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])] + cd[((32 * idx) + cd[36] + 36)]][1][address(cd[((32 * idx) + cd[4] + 36)])].field_0:
            stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])] + cd[((32 * idx) + cd[36] + 36)]].field_0++
            stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])] + cd[((32 * idx) + cd[36] + 36)]][stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])] + cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 = address(cd[((32 * idx) + cd[4] + 36)])
            stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])] + cd[((32 * idx) + cd[36] + 36)]][stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])] + cd[((32 * idx) + cd[36] + 36)]].field_0].field_160 = 0
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = sha3(stor3[address(cd[((32 * idx) + cd[4] + 36)])] + cd[((32 * idx) + cd[36] + 36)], 2) + 1
            stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])] + cd[((32 * idx) + cd[36] + 36)]][1][address(cd[((32 * idx) + cd[4] + 36)])].field_0 = stor2[stor3[address(cd[((32 * idx) + cd[4] + 36)])] + cd[((32 * idx) + cd[36] + 36)]].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
