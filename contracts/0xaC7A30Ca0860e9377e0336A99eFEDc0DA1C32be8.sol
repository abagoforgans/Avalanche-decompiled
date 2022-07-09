contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_4c6dbe7a;
uint256 sub_0e276407;
uint256 sub_c36e07cd;
uint256 sub_952bd855;
address sub_f290a094Address;
address sub_724348f2Address;
mapping of struct events;
uint256 sub_6680b447;
uint256 sub_377d77b4;
uint8 stor11;
uint8 stor11; offset 8
uint256 stor11; offset 8

function events(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return events[arg1].field_0, events[arg1].field_256, events[arg1].field_512
}

function sub_0e276407(?) payable {
    return sub_0e276407
}

function sub_377d77b4(?) payable {
    return sub_377d77b4
}

function sub_4c6dbe7a(?) payable {
    return sub_4c6dbe7a
}

function sub_6680b447(?) payable {
    return sub_6680b447
}

function sub_6bfe60cc(?) payable {
    return bool(uint8(stor11.field_0))
}

function sub_724348f2(?) payable {
    return sub_724348f2Address
}

function owner() payable {
    return owner
}

function sub_952bd855(?) payable {
    return sub_952bd855
}

function sub_b7f38f3f(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return events[arg1][3][address(arg2)].field_0
}

function sub_c36e07cd(?) payable {
    return sub_c36e07cd
}

function sub_f290a094(?) payable {
    return sub_f290a094Address
}

function sub_fc906729(?) payable {
    return bool(uint8(stor11.field_8))
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

function sub_0d779e05(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c36e07cd = arg1
}

function sub_1aa46a26(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_952bd855 = arg1
}

function sub_7e69b029(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0e276407 = arg1
}

function sub_b90b6860(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4c6dbe7a = arg1
}

function setFarmAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f290a094Address = arg1
}

function sub_b09744a4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_724348f2Address = address(arg1)
}

function sub_dcdf4417(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor11.field_8) = Mask(248, 0, bool(arg1))
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

function sub_4d734134(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_377d77b4 > !sub_4c6dbe7a:
        revert with 0, 17
    if block.timestamp < sub_377d77b4 + sub_4c6dbe7a:
        revert with 0, 'NO DELAY'
    if uint8(stor11.field_0):
        revert with 0, 'LOCUST ACTIVE'
    events[stor9].field_0 = block.timestamp
    uint8(stor11.field_0) = 1
    emit 0x848f242f: block.timestamp, sub_6680b447
}

function sub_10746e22(?) payable {
    if uint8(stor11.field_8):
        if sub_377d77b4 > !sub_4c6dbe7a:
            revert with 0, 17
        if block.timestamp >= sub_377d77b4 + sub_4c6dbe7a:
            if not uint8(stor11.field_0):
                if sub_377d77b4 > !sub_4c6dbe7a:
                    revert with 0, 17
                if block.timestamp < sub_377d77b4 + sub_4c6dbe7a:
                    revert with 0, 'NO DELAY'
                if uint8(stor11.field_0):
                    revert with 0, 'LOCUST ACTIVE'
                events[stor9].field_0 = block.timestamp
                uint8(stor11.field_0) = 1
                emit 0x848f242f: block.timestamp, sub_6680b447
}

function sub_09b528b5(?) payable {
    require calldata.size - 4 >= 32
    if sub_c36e07cd > test266151307():
        revert with 0, 65
    mem[96] = sub_c36e07cd
    mem[64] = (32 * sub_c36e07cd) + 128
    if not sub_c36e07cd:
        idx = 0
        while idx < sub_c36e07cd:
            mem[0] = idx
            mem[32] = sha3(arg1, 8) + 4
            _26 = mem[64]
            mem[64] = mem[64] + 64
            mem[_26] = events[arg1][4][idx].field_0
            mem[_26 + 32] = events[arg1][4][idx].field_256
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _26
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _28 = mem[64]
        mem[mem[64]] = 32
        _29 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _29:
            _44 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_44 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _28 + (64 * _29) + -mem[64] + 64
    mem[64] = (32 * sub_c36e07cd) + 192
    mem[(32 * sub_c36e07cd) + 128] = 0
    mem[(32 * sub_c36e07cd) + 160] = 0
    mem[128] = (32 * sub_c36e07cd) + 128
    s = 128
    idx = sub_c36e07cd
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * sub_c36e07cd) + 128] = 0
        mem[(32 * sub_c36e07cd) + 160] = 0
        mem[s + 32] = (32 * sub_c36e07cd) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < sub_c36e07cd:
        mem[0] = idx
        mem[32] = sha3(arg1, 8) + 4
        _49 = mem[64]
        mem[64] = mem[64] + 64
        mem[_49] = events[arg1][4][idx].field_0
        mem[_49 + 32] = events[arg1][4][idx].field_256
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _49
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _52 = mem[64]
    mem[mem[64]] = 32
    _53 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _53:
        _58 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_58 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _52 + (64 * _53) + -mem[64] + 64
}

function sub_b9ca82f9(?) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor11.field_0):
        revert with 0, 'LOCUST INACTIVE'
    require ext_code.size(sub_724348f2Address)
    call sub_724348f2Address.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if events[stor9].field_512 > !arg1:
        revert with 0, 17
    events[stor9].field_512 += arg1
    if events[stor9][3][msg.sender].field_0 > !arg1:
        revert with 0, 17
    events[stor9][3][msg.sender].field_0 += arg1
    idx = 0
    while idx < sub_c36e07cd:
        mem[0] = msg.sender
        mem[32] = sha3(sub_6680b447, 8) + 3
        if events[stor9][3][msg.sender].field_0 <= events[stor9][4][idx].field_256:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if 1 > !idx:
            revert with 0, 17
        events[stor9][4][idx].field_256 = events[stor9][3][msg.sender].field_0
        events[stor9][4][idx].field_0 = msg.sender or Mask(96, 160, events[stor9][4][idx].field_0)
        if msg.sender == events[stor9][4][idx].field_0:
        else:
            s = idx + 1
            t = events[stor9][4][idx].field_0
            while s < sub_c36e07cd:
                events[stor9][4][s].field_0 = address(t)
                mem[0] = s
                mem[32] = sha3(sub_6680b447, 8) + 4
                events[stor9][4][s].field_256 = events[stor9][3][address(t)].field_0
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = events[stor9][4][s].field_0
                continue 
        if events[stor9].field_512 >= sub_0e276407:
            if events[stor9].field_512 < sub_0e276407:
                revert with 0, 'SACRIFICE NOT MEET'
            events[stor9].field_256 = block.timestamp
            sub_377d77b4 = block.timestamp
            uint8(stor11.field_0) = 0
            emit 0x2a32ac77: block.timestamp, sub_6680b447
            if 1 > !sub_6680b447:
                revert with 0, 17
            sub_6680b447++
        emit 0x3ceb4bd0: msg.sender, arg1
    if events[stor9].field_512 >= sub_0e276407:
        if events[stor9].field_512 < sub_0e276407:
            revert with 0, 'SACRIFICE NOT MEET'
        events[stor9].field_256 = block.timestamp
        sub_377d77b4 = block.timestamp
        uint8(stor11.field_0) = 0
        emit 0x2a32ac77: block.timestamp, sub_6680b447
        if 1 > !sub_6680b447:
            revert with 0, 17
        sub_6680b447++
    emit 0x3ceb4bd0: msg.sender, arg1
}



}
