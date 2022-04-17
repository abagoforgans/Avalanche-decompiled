contract main {




// =====================  Runtime code  =====================


#
#  - getPeriodDefinitions()
#
address owner;
mapping of struct sub_ffa61235;

function sub_5c98d157(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 6
    return bool(sub_ffa61235[arg1].field_0)
}

function owner() payable {
    return owner
}

function sub_ffa61235(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < 6
    require arg1 <= 5
    require arg2 < sub_ffa61235[arg1].field_256
    require arg1 <= 5
    require arg2 < sub_ffa61235[arg1].field_512
    return stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'sub_ffa61235', 1))) + arg2].field_0, 
           stor[('array', 2, ('map', ('param', 'arg1'), ('name', 'sub_ffa61235', 1))) + arg2].field_0
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

function sub_8fdec1da(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 6
    require arg1 <= 5
    if sub_ffa61235[arg1].field_256:
        idx = 320
        s = 0
        while (32 * sub_ffa61235[arg1].field_256) + 288 > idx:
            mem[idx + 32] = sub_ffa61235[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if sub_ffa61235[arg1].field_512:
        idx = (32 * sub_ffa61235[arg1].field_256) + 352
        s = 0
        while (32 * sub_ffa61235[arg1].field_256) + (32 * sub_ffa61235[arg1].field_512) + 320 > idx:
            mem[idx + 32] = sub_ffa61235[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return bool(sub_ffa61235[arg1].field_0)
}

function sub_ddfc4fde(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < 6
    require arg1 <= 5
    if sub_ffa61235[arg1].field_256:
        idx = 320
        s = 0
        while (32 * sub_ffa61235[arg1].field_256) + 288 > idx:
            mem[idx + 32] = sub_ffa61235[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if sub_ffa61235[arg1].field_512:
        idx = (32 * sub_ffa61235[arg1].field_256) + 352
        s = 0
        while (32 * sub_ffa61235[arg1].field_256) + (32 * sub_ffa61235[arg1].field_512) + 320 > idx:
            mem[idx + 32] = sub_ffa61235[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if 1 > sub_ffa61235[arg1].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    return sub_ffa61235[arg1].field_256 - 1 >= arg2
}

function sub_7a1d83bc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < 6
    require arg1 <= 5
    if sub_ffa61235[arg1].field_256:
        idx = 320
        s = 0
        while (32 * sub_ffa61235[arg1].field_256) + 288 > idx:
            mem[idx + 32] = sub_ffa61235[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if sub_ffa61235[arg1].field_512:
        idx = (32 * sub_ffa61235[arg1].field_256) + 352
        s = 0
        while (32 * sub_ffa61235[arg1].field_256) + (32 * sub_ffa61235[arg1].field_512) + 320 > idx:
            mem[idx + 32] = sub_ffa61235[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if 1 > sub_ffa61235[arg1].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_ffa61235[arg1].field_256 - 1 < arg2:
        revert with 0, 'Period data is not valid'
    require arg1 <= 5
    require arg2 < sub_ffa61235[arg1].field_256
    return (stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'sub_ffa61235', 1))) + arg2].field_0 < block.timestamp)
}

function sub_c7b6ceb4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < 6
    require arg1 <= 5
    if sub_ffa61235[arg1].field_256:
        idx = 320
        s = 0
        while (32 * sub_ffa61235[arg1].field_256) + 288 > idx:
            mem[idx + 32] = sub_ffa61235[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if sub_ffa61235[arg1].field_512:
        idx = (32 * sub_ffa61235[arg1].field_256) + 352
        s = 0
        while (32 * sub_ffa61235[arg1].field_256) + (32 * sub_ffa61235[arg1].field_512) + 320 > idx:
            mem[idx + 32] = sub_ffa61235[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if 1 > sub_ffa61235[arg1].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_ffa61235[arg1].field_256 - 1 < arg2:
        revert with 0, 'Period data is not valid'
    require arg1 <= 5
    require arg2 < sub_ffa61235[arg1].field_512
    return (stor[('array', 2, ('map', ('param', 'arg1'), ('name', 'sub_ffa61235', 1))) + arg2].field_0 < block.timestamp)
}

function sub_963a470b(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] < 6
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    idx = 0
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307() and (32 * ('cd', 68).length) + 160 >= 128
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    idx = 0
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length <= 0:
        revert with 0, 'Period length can't be 0'
    require cd[4] <= 5
    if not sub_ffa61235[cd[4]].field_0:
        revert with 0, 'Period was not initialized yet'
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        require idx < ('cd', 36).length
        if mem[(32 * idx) + 128] >= mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
            revert with 0, 'Start should be before end'
        if 1 > ('cd', 36).length:
            revert with 0, 'SafeMath: subtraction overflow'
        if idx < ('cd', 36).length - 1:
            require idx < ('cd', 68).length
            require idx + 1 < ('cd', 36).length
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] > mem[(32 * idx + 1) + 128]:
                revert with 0, 'SafeMath: subtraction overflow'
            if mem[(32 * idx + 1) + 128] - mem[(32 * idx) + (32 * ('cd', 36).length) + 160] != 1:
                revert with 0, 'Start of a period should be 1 second after the end of the previous period'
        require idx < ('cd', 36).length
        sub_ffa61235[cd[4]].field_256++
        stor[('array', 1, ('map', ('cd', 4), ('name', 'sub_ffa61235', 1))) + sub_ffa61235[cd[4]].field_256].field_0 = mem[(32 * idx) + 128]
        require idx < ('cd', 68).length
        sub_ffa61235[cd[4]].field_512++
        mem[0] = sha3(cd[4], 1) + 2
        stor[sub_ffa61235[cd[4]].field_512 + ('array', 2, ('map', ('cd', 4), ('name', 'sub_ffa61235', 1)))].field_0 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        idx = idx + 1
        continue 
    require cd[4] < 6
    emit 0x22453266: cd[4], ('cd', 36).length
}

function sub_a163f020(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] < 6
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    idx = 0
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307() and (32 * ('cd', 68).length) + 160 >= 128
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    idx = 0
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require cd[4] <= 5
    if sub_ffa61235[cd[4]].field_0:
        revert with 0, 'Period type already initialized'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'Period type starts and ends should match'
    if ('cd', 36).length <= 0:
        revert with 0, 'Period length can't be 0'
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        require idx < ('cd', 36).length
        if mem[(32 * idx) + 128] >= mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
            revert with 0, 'Start should be before end'
        if idx < ('cd', 36).length - 1:
            require idx < ('cd', 68).length
            require idx + 1 < ('cd', 36).length
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] > mem[(32 * idx + 1) + 128]:
                revert with 0, 'SafeMath: subtraction overflow'
            if mem[(32 * idx + 1) + 128] - mem[(32 * idx) + (32 * ('cd', 36).length) + 160] != 1:
                revert with 0, 'Start of a period should be 1 second after the end of the previous period'
        require idx < ('cd', 36).length
        sub_ffa61235[cd[4]].field_256++
        stor[('array', 1, ('map', ('cd', 4), ('name', 'sub_ffa61235', 1))) + sub_ffa61235[cd[4]].field_256].field_0 = mem[(32 * idx) + 128]
        require idx < ('cd', 68).length
        sub_ffa61235[cd[4]].field_512++
        mem[0] = sha3(cd[4], 1) + 2
        stor[sub_ffa61235[cd[4]].field_512 + ('array', 2, ('map', ('cd', 4), ('name', 'sub_ffa61235', 1)))].field_0 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        idx = idx + 1
        continue 
    sub_ffa61235[cd[4]].field_0 = 1
    require cd[4] < 6
    emit 0x2b0f2d8c: cd[4], ('cd', 36).length
}



}
