contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
address stor6;
address stor7;
address stor10;
array of struct stor11;
mapping of uint256 stor12;
mapping of uint256 stor13;

function _fallback() payable {
    revert
}

function srp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, ''
    stor4 = arg1
}

function active(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor12[address(arg1)][address(arg2)] >= stor11.length:
        revert with 'NH{q', 50
    stor11[stor12[address(arg1)][address(arg2)]].field_416 = 1
}

function createFight(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    stor5 = msg.sender
    create contract with 0 wei
                    code: code.data[4438 len 20036], address(this.address), stor0, address(arg1), stor2, stor3, stor4, stor5, stor6, address(arg2), address(arg3), stor10
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor7 = address(create.new_address)
    stor11.length++
    stor11[stor11.length].field_0 = msg.sender
    stor11[stor11.length].field_256 = stor7
    stor11[stor11.length].field_416 = 0
    if stor11.length < 1:
        revert with 'NH{q', 17
    stor12[address(msg.sender)][stor7] = stor11.length - 1
    if stor13[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    stor13[address(msg.sender)]++
    emit 0x4f4adcad: stor7, this.address
    return stor7
}

function sub_669aa701(?) payable {
    if stor11.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor11.length
    mem[64] = (32 * stor11.length) + 128
    if not stor11.length:
        idx = 0
        while idx < stor11.length:
            mem[0] = 11
            _26 = mem[64]
            mem[64] = mem[64] + 96
            mem[_26] = stor11[idx].field_0
            mem[_26 + 32] = stor11[idx].field_256
            mem[_26 + 64] = bool(stor11[idx].field_416)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _26
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _24 = mem[64]
        mem[mem[64]] = 32
        _28 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _28:
            _45 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_45 + 44 len 20]
            mem[t + 64] = bool(mem[_45 + 64])
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _24 + (96 * _28) + -mem[64] + 64
    mem[64] = (32 * stor11.length) + 224
    mem[(32 * stor11.length) + 128] = 0
    mem[(32 * stor11.length) + 160] = 0
    mem[(32 * stor11.length) + 192] = 0
    mem[var8001] = (32 * stor11.length) + 128
    s = var8001
    idx = var8002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * stor11.length) + 128] = 0
        mem[(32 * stor11.length) + 160] = 0
        mem[(32 * stor11.length) + 192] = 0
        mem[s + 32] = (32 * stor11.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        _62 = mem[64]
        mem[64] = mem[64] + 96
        mem[_62] = stor11[idx].field_0
        mem[_62 + 32] = stor11[idx].field_256
        mem[_62 + 64] = bool(stor11[idx].field_416)
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = _62
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _60 = mem[64]
    mem[mem[64]] = 32
    _64 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _64:
        _70 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_70 + 44 len 20]
        mem[t + 64] = bool(mem[_70 + 64])
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _60 + (96 * _64) + -mem[64] + 64
}

function getFightsByAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 13
    if stor13[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor13[address(arg1)]
    mem[64] = (32 * stor13[address(arg1)]) + 128
    if not stor13[address(arg1)]:
        idx = 0
        s = 0
        while idx < stor11.length:
            mem[0] = 11
            if stor11[idx].field_0 != arg1:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor11.length:
                revert with 'NH{q', 50
            mem[0] = 11
            _30 = mem[64]
            mem[64] = mem[64] + 96
            mem[_30] = stor11[idx].field_0
            mem[_30 + 32] = stor11[idx].field_256
            mem[_30 + 64] = bool(stor11[idx].field_416)
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _30
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _27 = mem[64]
        mem[mem[64]] = 32
        _32 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _32:
            _50 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_50 + 44 len 20]
            mem[t + 64] = bool(mem[_50 + 64])
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _27 + (96 * _32) + -mem[64] + 64
    mem[64] = (32 * stor13[address(arg1)]) + 224
    mem[(32 * stor13[address(arg1)]) + 128] = 0
    mem[(32 * stor13[address(arg1)]) + 160] = 0
    mem[(32 * stor13[address(arg1)]) + 192] = 0
    mem[var20001] = (32 * stor13[address(arg1)]) + 128
    s = var20001
    idx = var20002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * stor13[address(arg1)]) + 128] = 0
        mem[(32 * stor13[address(arg1)]) + 160] = 0
        mem[(32 * stor13[address(arg1)]) + 192] = 0
        mem[s + 32] = (32 * stor13[address(arg1)]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor11.length:
        mem[0] = 11
        if stor11[idx].field_0 != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= stor11.length:
            revert with 'NH{q', 50
        mem[0] = 11
        _69 = mem[64]
        mem[64] = mem[64] + 96
        mem[_69] = stor11[idx].field_0
        mem[_69 + 32] = stor11[idx].field_256
        mem[_69 + 64] = bool(stor11[idx].field_416)
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _69
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _66 = mem[64]
    mem[mem[64]] = 32
    _71 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _71:
        _77 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_77 + 44 len 20]
        mem[t + 64] = bool(mem[_77 + 64])
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _66 + (96 * _71) + -mem[64] + 64
}



}
