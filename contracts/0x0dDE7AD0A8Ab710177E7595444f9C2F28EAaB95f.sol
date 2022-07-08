contract main {




// =====================  Runtime code  =====================


#
#  - sub_6fbc9807(?)
#  - sub_987d6de7(?)
#  - sub_dbdaa9f3(?)
#  - sub_ddb27633(?)
#  - sub_ea87b634(?)
#
const getId = 112233


mapping of uint8 sub_f119462d;
mapping of uint8 stor1;
mapping of struct sub_c40571ec;
address sub_277f45d1Address;

function sub_277f45d1(?) payable {
    return sub_277f45d1Address
}

function sub_c40571ec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c40571ec[arg1].field_0
}

function sub_f119462d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return uint256(sub_f119462d[arg1][arg2])
}

function sub_fa847836(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function sub_fac783e2(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    mem[96] = arg1
    require arg2 == address(arg2)
    mem[128] = arg2
    require arg3 == address(arg3)
    mem[160] = arg3
    require arg4 == address(arg4)
    mem[192] = arg4
    require arg5 == arg5
    mem[224] = arg5
    require arg6 == arg6
    mem[256] = arg6
    if arg6 == 1:
        mem[420] = 0, mem[420 len 28]
        mem[424] = 0
        staticcall address(arg3).mem[420 len 4] with:
                gas gas_remaining wei
        if not return_data.size:
            return arg2, arg3
        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
        return mem[452], mem[484]
    mem[0] = address(arg1)
    mem[32] = 2
    if arg6 == 3:
        require ext_code.size(address(arg3))
        staticcall address(arg3)._BASE_TOKEN_() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg3))
        if ext_call.return_data[12 len 20] != address(arg1):
            staticcall address(arg3).querySellQuote(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(this.address), sub_c40571ec[address(arg1)].field_0
        else:
            staticcall address(arg3).querySellBase(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(this.address), sub_c40571ec[address(arg1)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        if address(arg1) < address(arg2):
            if address(arg1) != address(arg1):
                if ext_call.return_data[0] - 1 and 100 * 10^18 > -1 / ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                if sub_c40571ec[address(arg1)].field_0 and 100 * 10^18 > -1 / sub_c40571ec[address(arg1)].field_0:
                    revert with 'NH{q', 17
                return (100 * 10^18 * ext_call.return_data[0]) - 100 * 10^18, 100 * 10^18 * sub_c40571ec[address(arg1)].field_0
        else:
            if address(arg1) != address(arg2):
                if ext_call.return_data[0] - 1 and 100 * 10^18 > -1 / ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                if sub_c40571ec[address(arg1)].field_0 and 100 * 10^18 > -1 / sub_c40571ec[address(arg1)].field_0:
                    revert with 'NH{q', 17
                return (100 * 10^18 * ext_call.return_data[0]) - 100 * 10^18, 100 * 10^18 * sub_c40571ec[address(arg1)].field_0
        if sub_c40571ec[address(arg1)].field_0 and 100 * 10^18 > -1 / sub_c40571ec[address(arg1)].field_0:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - 1 and 100 * 10^18 > -1 / ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        return 100 * 10^18 * sub_c40571ec[address(arg1)].field_0, (100 * 10^18 * ext_call.return_data[0]) - 100 * 10^18
    if arg6 == 7:
        require ext_code.size(address(arg3))
        staticcall address(arg3).calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args uint8(sub_f119462d[address(arg3)][address(arg1)]), uint8(sub_f119462d[address(arg3)][address(arg2)]), sub_c40571ec[address(arg1)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        if address(arg1) < address(arg2):
            if address(arg1) != address(arg1):
                if ext_call.return_data[0] - 1 and 100 * 10^18 > -1 / ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                if sub_c40571ec[address(arg1)].field_0 and 100 * 10^18 > -1 / sub_c40571ec[address(arg1)].field_0:
                    revert with 'NH{q', 17
                return (100 * 10^18 * ext_call.return_data[0]) - 100 * 10^18, 100 * 10^18 * sub_c40571ec[address(arg1)].field_0
        else:
            if address(arg1) != address(arg2):
                if ext_call.return_data[0] - 1 and 100 * 10^18 > -1 / ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                if sub_c40571ec[address(arg1)].field_0 and 100 * 10^18 > -1 / sub_c40571ec[address(arg1)].field_0:
                    revert with 'NH{q', 17
                return (100 * 10^18 * ext_call.return_data[0]) - 100 * 10^18, 100 * 10^18 * sub_c40571ec[address(arg1)].field_0
        if sub_c40571ec[address(arg1)].field_0 and 100 * 10^18 > -1 / sub_c40571ec[address(arg1)].field_0:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - 1 and 100 * 10^18 > -1 / ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        return 100 * 10^18 * sub_c40571ec[address(arg1)].field_0, (100 * 10^18 * ext_call.return_data[0]) - 100 * 10^18
    if arg6 != 12:
        if arg6 != 13:
            if arg6 != 14:
                revert with 0, 'PBAD'
            require ext_code.size(0x66357dcace80431aee0a7507e2e361b7e2402370)
            staticcall 0x66357dcace80431aee0a7507e2e361b7e2402370.quotePotentialSwap(address arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args address(arg1), address(arg2), sub_c40571ec[address(arg1)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
        else:
            require ext_code.size(0x9e372b445723e71117b59393aaba05ad3b54ad3f)
            staticcall 0x9e372b445723e71117b59393aaba05ad3b54ad3f.0xd7176ca9 with:
                    gas gas_remaining wei
                   args 0x9ab2de34a33fb459b538c43f251eb825645e8595, address(arg1), address(arg2), sub_c40571ec[address(arg1)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        if address(arg1) < address(arg2):
            if address(arg1) != address(arg1):
                if ext_call.return_data[0] - 1 and 100 * 10^18 > -1 / ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                if sub_c40571ec[address(arg1)].field_0 and 100 * 10^18 > -1 / sub_c40571ec[address(arg1)].field_0:
                    revert with 'NH{q', 17
                return (100 * 10^18 * ext_call.return_data[0]) - 100 * 10^18, 100 * 10^18 * sub_c40571ec[address(arg1)].field_0
        else:
            if address(arg1) != address(arg2):
                if ext_call.return_data[0] - 1 and 100 * 10^18 > -1 / ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                if sub_c40571ec[address(arg1)].field_0 and 100 * 10^18 > -1 / sub_c40571ec[address(arg1)].field_0:
                    revert with 'NH{q', 17
                return (100 * 10^18 * ext_call.return_data[0]) - 100 * 10^18, 100 * 10^18 * sub_c40571ec[address(arg1)].field_0
        if sub_c40571ec[address(arg1)].field_0 and 100 * 10^18 > -1 / sub_c40571ec[address(arg1)].field_0:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - 1 and 100 * 10^18 > -1 / ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        return 100 * 10^18 * sub_c40571ec[address(arg1)].field_0, (100 * 10^18 * ext_call.return_data[0]) - 100 * 10^18
    mem[288] = 1
    mem[320] = address(arg3)
    mem[352] = 2
    mem[384] = address(arg1)
    mem[416] = address(arg2)
    mem[448] = 0xa8312b1d00000000000000000000000000000000000000000000000000000000
    mem[452] = sub_c40571ec[address(arg1)].field_0
    mem[484] = 96
    mem[548] = 1
    idx = 0
    s = 320
    t = 580
    while idx < 1:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[516] = 160
    mem[612] = 2
    idx = 0
    s = 384
    t = 644
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg4))
    staticcall address(arg4).0xa8312b1d with:
            gas gas_remaining wei
           args sub_c40571ec[address(arg1)].field_0, 96, 160, 1, mem[580], 2, mem[644 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 448
    require return_data.size >= 32
    _273 = mem[448 len 4], sub_c40571ec[address(arg1)].field_32
    require mem[448 len 4], sub_c40571ec[address(arg1)].field_32 <= test266151307()
    require mem[448 len 4], sub_c40571ec[address(arg1)].field_32 + 479 < return_data.size + 448
    _274 = mem[mem[448 len 4], sub_c40571ec[address(arg1)].field_32 + 448]
    if mem[mem[448 len 4], sub_c40571ec[address(arg1)].field_32 + 448] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[448 len 4], sub_c40571ec[address(arg1)].field_32 + 448]) + 449 > test266151307() or floor32(mem[mem[448 len 4], sub_c40571ec[address(arg1)].field_32 + 448]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[448 len 4], sub_c40571ec[address(arg1)].field_32 + 448]) + 449
    mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], sub_c40571ec[address(arg1)].field_32 + 448]
    require _273 + (32 * _274) + 32 <= return_data.size
    idx = 0
    s = _273 + 480
    t = ceil32(return_data.size) + 480
    while idx < _274:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _274 < 1:
        revert with 'NH{q', 17
    if _274 - 1 >= _274:
        revert with 'NH{q', 50
    if mem[(32 * _274 - 1) + ceil32(return_data.size) + 480] < 1:
        revert with 'NH{q', 17
    if address(arg1) < address(arg2):
        if address(arg1) != address(arg1):
            if mem[(32 * _274 - 1) + ceil32(return_data.size) + 480] - 1 and 100 * 10^18 > -1 / mem[(32 * _274 - 1) + ceil32(return_data.size) + 480] - 1:
                revert with 'NH{q', 17
            if sub_c40571ec[address(arg1)].field_0 and 100 * 10^18 > -1 / sub_c40571ec[address(arg1)].field_0:
                revert with 'NH{q', 17
            return (100 * 10^18 * mem[(32 * _274 - 1) + ceil32(return_data.size) + 480]) - 100 * 10^18, 
                   100 * 10^18 * sub_c40571ec[address(arg1)].field_0
    else:
        if address(arg1) != address(arg2):
            if mem[(32 * _274 - 1) + ceil32(return_data.size) + 480] - 1 and 100 * 10^18 > -1 / mem[(32 * _274 - 1) + ceil32(return_data.size) + 480] - 1:
                revert with 'NH{q', 17
            if sub_c40571ec[address(arg1)].field_0 and 100 * 10^18 > -1 / sub_c40571ec[address(arg1)].field_0:
                revert with 'NH{q', 17
            return (100 * 10^18 * mem[(32 * _274 - 1) + ceil32(return_data.size) + 480]) - 100 * 10^18, 
                   100 * 10^18 * sub_c40571ec[address(arg1)].field_0
    if sub_c40571ec[address(arg1)].field_0 and 100 * 10^18 > -1 / sub_c40571ec[address(arg1)].field_0:
        revert with 'NH{q', 17
    if mem[(32 * _274 - 1) + ceil32(return_data.size) + 480] - 1 and 100 * 10^18 > -1 / mem[(32 * _274 - 1) + ceil32(return_data.size) + 480] - 1:
        revert with 'NH{q', 17
    return 100 * 10^18 * sub_c40571ec[address(arg1)].field_0, 
           (100 * 10^18 * mem[(32 * _274 - 1) + ceil32(return_data.size) + 480]) - 100 * 10^18
}



}
