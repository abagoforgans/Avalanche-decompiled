contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 sub_790c77a1;
uint256 sub_368b8d05;
uint256 sub_aa8a95e1;
uint256 sub_ae69a5a1;
mapping of uint8 stor6;
mapping of uint256 rewardsPaid;

function sub_368b8d05(?) payable {
    return sub_368b8d05
}

function rewardsPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardsPaid[arg1]
}

function sub_790c77a1(?) payable {
    return sub_790c77a1
}

function sub_aa8a95e1(?) payable {
    return sub_aa8a95e1
}

function sub_ae69a5a1(?) payable {
    return sub_ae69a5a1
}

function sub_ba0a7297(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return rewardsPaid[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_93eb4dc7(?) payable {
    require ext_code.size(stor1)
    staticcall stor1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 10^10 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    sub_ae69a5a1 = 10^10 * ext_call.return_data[0] / 2 / 10^10
}

function sub_58a0111d(?) payable {
    if not stor6[address(msg.sender)]:
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if sub_368b8d05 > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        sub_368b8d05 += ext_call.return_data[0]
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if sub_aa8a95e1 > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        sub_aa8a95e1 += ext_call.return_data[0]
        stor6[address(msg.sender)] = 1
}

function sub_fb699a3a(?) payable {
    if not stor6[address(msg.sender)]:
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if sub_790c77a1 > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        sub_790c77a1 += ext_call.return_data[0]
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if sub_aa8a95e1 > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        sub_aa8a95e1 += ext_call.return_data[0]
        stor6[address(msg.sender)] = 1
}

function payRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 10^10 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(stor1)
    staticcall stor1.0x18160ddd with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    mem[(2 * ceil32(return_data.size)) + 96] = 0x5fe8e7cc00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.getHolders() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _12 = mem[(2 * ceil32(return_data.size)) + 96]
    require mem[(2 * ceil32(return_data.size)) + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _13 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]
    require _12 + (32 * _13) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _12 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _13:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    t = 0
    while idx < _13:
        if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
            revert with 'NH{q', 50
        _63 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 140 len 20]
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args address(_63)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _66 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_66] == mem[_66]
        if mem[_66] <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
            revert with 'NH{q', 50
        _69 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 140 len 20]
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args address(_69)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _72 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _73 = mem[_72]
        require mem[_72] == mem[_72]
        if mem[_72] and 10^10 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / mem[_72]:
            revert with 'NH{q', 17
        if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 140 len 20]
        mem[mem[64] + 36] = _73 * 10^10 * ext_call.return_data[0] / ext_call.return_data[0] / 10^10
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _73 * 10^10 * ext_call.return_data[0] / ext_call.return_data[0] / 10^10
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _78 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_78] == bool(mem[_78])
        if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 140 len 20]
        mem[32] = 7
        if rewardsPaid[mem[(32 * idx) + (4 * ceil32(return_data.size)) + 140 len 20]] > -(_73 * 10^10 * ext_call.return_data[0] / ext_call.return_data[0] / 10^10) - 1:
            revert with 'NH{q', 17
        rewardsPaid[mem[(32 * idx) + (4 * ceil32(return_data.size)) + 140 len 20]] += _73 * 10^10 * ext_call.return_data[0] / ext_call.return_data[0] / 10^10
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _73 * 10^10 * ext_call.return_data[0] / ext_call.return_data[0] / 10^10
        t = _73
        continue 
}

function sub_ab03052c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor1)
    staticcall stor1.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 10^10 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    sub_ae69a5a1 = 10^10 * ext_call.return_data[0] / 2 / 10^10
    if sub_790c77a1 <= sub_ae69a5a1:
        if sub_368b8d05 > sub_ae69a5a1:
            mem[ceil32(return_data.size) + 96] = 0x5fe8e7cc00000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor0)
            staticcall stor0.getHolders() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _9 = mem[ceil32(return_data.size) + 96]
            require mem[ceil32(return_data.size) + 96] <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
            _11 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
            require _9 + (32 * _11) + 32 <= return_data.size
            idx = 0
            s = ceil32(return_data.size) + _9 + 128
            t = (2 * ceil32(return_data.size)) + 128
            while idx < _11:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            sub_790c77a1 = 0
            sub_368b8d05 = 0
            sub_aa8a95e1 = 0
            idx = 0
            while idx < _11:
                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
                mem[32] = 6
                stor6[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]] = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 100] = 0xf243d79910cbd70a0eaf405b08e80065a67d5e14
        mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args 0xf243d79910cbd70a0eaf405b08e80065a67d5e14, ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = 0x5fe8e7cc00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor0)
        staticcall stor0.getHolders() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _27 = mem[(4 * ceil32(return_data.size)) + 96]
        require mem[(4 * ceil32(return_data.size)) + 96] <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
        _28 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96] > test266151307():
            revert with 'NH{q', 65
        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]
        require _27 + (32 * _28) + 32 <= return_data.size
        idx = 0
        s = (4 * ceil32(return_data.size)) + _27 + 128
        t = (6 * ceil32(return_data.size)) + 128
        while idx < _28:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        sub_790c77a1 = 0
        sub_368b8d05 = 0
        sub_aa8a95e1 = 0
        idx = 0
        while idx < _28:
            if idx >= _28:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + (6 * ceil32(return_data.size)) + 140 len 20]
            mem[32] = 6
            stor6[mem[(32 * idx) + (6 * ceil32(return_data.size)) + 140 len 20]] = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}
