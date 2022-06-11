contract main {




// =====================  Runtime code  =====================


address sub_635ab940Address;
uint8 sub_0bd4424c; offset 160
address sub_775574d4Address;
address owner;

function sub_0bd4424c(?) payable {
    return sub_0bd4424c
}

function sub_635ab940(?) payable {
    return sub_635ab940Address
}

function sub_775574d4(?) payable {
    return sub_775574d4Address
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 818771057
    owner = arg1
}

function sub_6ba0d52d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 818771057
    sub_0bd4424c = uint8(arg1)
}

function sub_8cec5491(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > sub_0bd4424c:
        revert with 192766690
    if not ('cd', 4).length:
        revert with 3210048663
    idx = 0
    while idx < ('cd', 4).length:
        _74 = mem[64]
        mem[64] = mem[64] + 224
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 387
        mem[_74] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 387
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)])
        mem[_74 + 32] = address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 387
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)])
        mem[_74 + 64] = address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 387
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 67
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]
        _75 = mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + 32
        mem[_75] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]
        mem[_75 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]]
        mem[_75 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)] + 32] = 0
        mem[_74 + 96] = _75
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 387
        mem[_74 + 128] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 387
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)])
        mem[_74 + 160] = address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 387
        require calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 292 >= 96
        _76 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 292)] == cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 292)]
        mem[_76] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 292)]
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 324)] == uint8(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 324)])
        mem[_76 + 32] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 324)]
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 356)] == uint8(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 356)])
        mem[_76 + 64] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 356)]
        mem[_74 + 192] = _76
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 387
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 387
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 67
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]
        _77 = mem[64]
        mem[mem[64] + 36] = 96
        mem[mem[64] + 132] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)]
        mem[mem[64] + 164] = address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)])
        mem[mem[64] + 196] = address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)])
        mem[mem[64] + 228] = 288
        mem[mem[64] + 420] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]
        s = 0
        while s < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]:
            mem[mem[64] + s + 452] = mem[_75 + s + 32]
            s = s + 32
            continue 
        if ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) <= cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]:
            mem[_77 + 260] = mem[_74 + 128]
            mem[_77 + 292] = mem[_74 + 172 len 20]
            _111 = mem[_74 + 192]
            mem[_77 + 324] = mem[mem[_74 + 192]]
            mem[_77 + 356] = mem[_111 + 63 len 1]
            mem[_77 + 388] = mem[_111 + 95 len 1]
            mem[_77 + 68] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 260)]
            mem[_77 + 100] = ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + 416
            mem[_77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + 452] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]
            mem[_77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + 484 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]]
            mem[_77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)] + 484] = 0
            _119 = mem[64]
            mem[mem[64]] = _77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]) + -mem[64] + 452
            mem[64] = _77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]) + 484
            mem[_119 + 32] = mem[_119 + 36 len 28] or 0xa1001a6000000000000000000000000000000000000000000000000000000000
            _125 = mem[_119]
            s = 0
            while s < _125:
                mem[_77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]) + s + 484] = mem[_119 + s + 32]
                s = s + 32
                continue 
            if ceil32(_125) > _125:
                mem[_77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]) + _125 + 484] = 0
            delegate sub_775574d4Address.mem[_77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]) + 484 len 4] with:
                 gas gas_remaining wei
                args mem[_77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]) + 488 len _125 - 4]
        else:
            mem[_77 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)] + 452] = 0
            mem[_77 + 260] = mem[_74 + 128]
            mem[_77 + 292] = mem[_74 + 172 len 20]
            _113 = mem[_74 + 192]
            mem[_77 + 324] = mem[mem[_74 + 192]]
            mem[_77 + 356] = mem[_113 + 63 len 1]
            mem[_77 + 388] = mem[_113 + 95 len 1]
            mem[_77 + 68] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 260)]
            mem[_77 + 100] = ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + 416
            mem[_77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + 452] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]
            mem[_77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + 484 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]]
            mem[_77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)] + 484] = 0
            _122 = mem[64]
            mem[mem[64]] = _77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]) + -mem[64] + 452
            mem[64] = _77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]) + 484
            mem[_122 + 32] = mem[_122 + 36 len 28] or 0xa1001a6000000000000000000000000000000000000000000000000000000000
            _126 = mem[_122]
            s = 0
            while s < _126:
                mem[_77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]) + s + 484] = mem[_122 + s + 32]
                s = s + 32
                continue 
            if ceil32(_126) > _126:
                mem[_77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]) + _126 + 484] = 0
            delegate sub_775574d4Address.mem[_77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]) + 484 len 4] with:
                 gas gas_remaining wei
                args mem[_77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]) + 488 len _126 - 4]
        if return_data.size:
            mem[64] = _77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]) + ceil32(return_data.size) + 485
            mem[_77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]) + 484] = return_data.size
            mem[_77 + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 36)]) + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] + 36)]) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not delegate.return_code:
            revert with 4036875046
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
