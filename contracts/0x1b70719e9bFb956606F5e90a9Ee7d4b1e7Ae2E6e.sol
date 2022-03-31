contract main {




// =====================  Runtime code  =====================


address pefiAddress;
address nestAddress;
address adminAddress;
address sub_142e7e3fAddress;
address sub_982cfe85Address;
uint256 stor4;
uint256 sub_2f366d6f;
uint256 sub_587b0896;
uint256 sub_50aa9e97;
uint256 jackpot;
uint256 sub_a6e9d2bf;
uint256 sub_2915d5db;
uint256 sub_d503fa6e;
uint256 minBidIncrease;
uint256 sub_aec44b56;
array of address stor14;
array of address sub_853082a6;
array of uint256 stor19;
array of uint256 sub_06f6a017;
uint256 stor24;
array of uint256 sub_f01db9f9;
mapping of struct sub_fa3cb11f;

function sub_06f6a017(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_06f6a017[arg1]
}

function sub_142e7e3f(?) payable {
    return sub_142e7e3fAddress
}

function sub_1cc41bba(?) payable {
    return bool(uint8(stor14.length))
}

function sub_2915d5db(?) payable {
    return sub_2915d5db
}

function sub_2f366d6f(?) payable {
    return sub_2f366d6f
}

function pefi() payable {
    return pefiAddress
}

function sub_50aa9e97(?) payable {
    return sub_50aa9e97
}

function sub_587b0896(?) payable {
    return sub_587b0896
}

function jackpot() payable {
    return jackpot
}

function minBidIncrease() payable {
    return minBidIncrease
}

function sub_853082a6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_853082a6[arg1]
}

function sub_982cfe85(?) payable {
    return address(sub_982cfe85Address)
}

function sub_a6e9d2bf(?) payable {
    return sub_a6e9d2bf
}

function sub_aec44b56(?) payable {
    return sub_aec44b56
}

function sub_d503fa6e(?) payable {
    return sub_d503fa6e
}

function sub_f01db9f9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_f01db9f9[arg1]
}

function nest() payable {
    return nestAddress
}

function admin() payable {
    return adminAddress
}

function sub_fa3cb11f(?) payable {
    require calldata.size - 4 >= 32
    return sub_fa3cb11f[arg1].field_0, sub_fa3cb11f[arg1].field_256
}

function _fallback() payable {
    revert
}

function sub_fc948b50(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64596f7520617265206e6f7420617574686f72697a656420746f20646f2074686973,
                    mem[198 len 30]
    sub_2915d5db = arg1
}

function sub_803b0f8a(?) payable {
    mem[96] = 0xecd0159500000000000000000000000000000000000000000000000000000000
    mem[100] = address(sub_982cfe85Address)
    require ext_code.size(sub_142e7e3fAddress)
    staticcall sub_142e7e3fAddress.0xecd01595 with:
            gas gas_remaining wei
           args address(sub_982cfe85Address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 0, stor4)
    require mem[96 len 4], Mask(224, 0, stor4) <= 4294967296
    require mem[96 len 4], Mask(224, 0, stor4) + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 0, stor4) + 96] <= 4294967296 and mem[96 len 4], Mask(224, 0, stor4) + mem[mem[96 len 4], Mask(224, 0, stor4) + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 0, stor4) + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _7 % 32:
        mem[64] = _7 + ceil32(return_data.size) + 128
        mem[_7 + ceil32(return_data.size) + 128] = 32
        mem[_7 + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
        mem[_7 + ceil32(return_data.size) + 192 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return 32, mem[_7 + ceil32(return_data.size) + 160 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _7 + ceil32(return_data.size) + 192] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _7 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 224 len mem[ceil32(return_data.size) + 96] % 32]
        return Array(len=mem[ceil32(return_data.size) + 96], data=mem[_7 + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
    mem[floor32(_7) + ceil32(return_data.size) + 128] = mem[floor32(_7) + ceil32(return_data.size) + -(_7 % 32) + 160 len _7 % 32]
    mem[64] = floor32(_7) + ceil32(return_data.size) + 160
    mem[floor32(_7) + ceil32(return_data.size) + 160] = 32
    mem[floor32(_7) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_7) + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return 32, mem[floor32(_7) + ceil32(return_data.size) + 192 len mem[ceil32(return_data.size) + 96] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_7) + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_7) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 256 len mem[ceil32(return_data.size) + 96] % 32]
    return Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_7) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
}

function claimJackpot() payable {
    if block.timestamp <= sub_2915d5db:
        revert with 0, 'Competition still running'
    if uint8(stor14.length):
        revert with 0, 'Jackpot already claimed'
    uint8(stor14.length) = 1
    emit 0x2f17c26d: jackpot
    if sub_fa3cb11f[address(stor4)].field_256 > sub_2915d5db:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_fa3cb11f[address(stor4)].field_0 + sub_2915d5db - sub_fa3cb11f[address(stor4)].field_256 < sub_fa3cb11f[address(stor4)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    sub_fa3cb11f[address(stor4)].field_0 = sub_fa3cb11f[address(stor4)].field_0 + sub_2915d5db - sub_fa3cb11f[address(stor4)].field_256
    idx = 0
    while idx < 5:
        if sub_853082a6[idx] != address(sub_982cfe85Address):
            idx = idx + 1
            continue 
        s = 0
        while s < 5:
            if sub_06f6a017[s] >= sub_fa3cb11f[address(stor4)].field_0:
                s = s + 1
                continue 
            t = idx
            while t > s:
                require t - 1 < 5
                require t < 5
                sub_06f6a017[t] = stor19[t]
                require t - 1 < 5
                require t < 5
                sub_853082a6[t] = address(stor14[t])
                t = t - 1
                continue 
            require s < 5
            sub_06f6a017[s] = sub_fa3cb11f[address(stor4)].field_0
            sub_853082a6[s] = address(sub_982cfe85Address)
            idx = 0
            while idx < 5:
                if not jackpot:
                    require ext_code.size(nestAddress)
                    staticcall nestAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[100] = sub_853082a6[idx]
                    if 0 <= ext_call.return_data[0]:
                        mem[132] = 0
                        require ext_code.size(nestAddress)
                        call nestAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_853082a6[idx], 0
                    else:
                        mem[132] = ext_call.return_data[0]
                        require ext_code.size(nestAddress)
                        call nestAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_853082a6[idx], ext_call.return_data[0]
                else:
                    require jackpot
                    if jackpot * sub_f01db9f9[idx] / jackpot != sub_f01db9f9[idx]:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    require ext_code.size(nestAddress)
                    staticcall nestAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[100] = sub_853082a6[idx]
                    if jackpot * sub_f01db9f9[idx] / 10000 <= ext_call.return_data[0]:
                        mem[132] = jackpot * sub_f01db9f9[idx] / 10000
                        require ext_code.size(nestAddress)
                        call nestAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_853082a6[idx], jackpot * sub_f01db9f9[idx] / 10000
                    else:
                        mem[132] = ext_call.return_data[0]
                        require ext_code.size(nestAddress)
                        call nestAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_853082a6[idx], ext_call.return_data[0]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 32, 34, 0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65, mem[198 len 30]
                idx = idx + 1
                continue 
            require ext_code.size(nestAddress)
            staticcall nestAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(nestAddress)
            if sub_2f366d6f <= ext_call.return_data[0]:
                call nestAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(sub_982cfe85Address), sub_2f366d6f
            else:
                call nestAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(sub_982cfe85Address), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 34, 0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65, mem[198 len 30]
        t = idx
        while t > s:
            require t - 1 < 5
            require t < 5
            sub_06f6a017[t] = stor19[t]
            require t - 1 < 5
            require t < 5
            sub_853082a6[t] = address(stor14[t])
            t = t - 1
            continue 
        require s < 5
        sub_06f6a017[s] = sub_fa3cb11f[address(stor4)].field_0
        sub_853082a6[s] = address(sub_982cfe85Address)
        idx = 0
        while idx < 5:
            if not jackpot:
                require ext_code.size(nestAddress)
                staticcall nestAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[100] = sub_853082a6[idx]
                if 0 <= ext_call.return_data[0]:
                    mem[132] = 0
                    require ext_code.size(nestAddress)
                    call nestAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_853082a6[idx], 0
                else:
                    mem[132] = ext_call.return_data[0]
                    require ext_code.size(nestAddress)
                    call nestAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_853082a6[idx], ext_call.return_data[0]
            else:
                require jackpot
                if jackpot * sub_f01db9f9[idx] / jackpot != sub_f01db9f9[idx]:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                require ext_code.size(nestAddress)
                staticcall nestAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[100] = sub_853082a6[idx]
                if jackpot * sub_f01db9f9[idx] / 10000 <= ext_call.return_data[0]:
                    mem[132] = jackpot * sub_f01db9f9[idx] / 10000
                    require ext_code.size(nestAddress)
                    call nestAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_853082a6[idx], jackpot * sub_f01db9f9[idx] / 10000
                else:
                    mem[132] = ext_call.return_data[0]
                    require ext_code.size(nestAddress)
                    call nestAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_853082a6[idx], ext_call.return_data[0]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 34, 0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65, mem[198 len 30]
            idx = idx + 1
            continue 
        require ext_code.size(nestAddress)
        staticcall nestAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(nestAddress)
        if sub_2f366d6f <= ext_call.return_data[0]:
            call nestAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(sub_982cfe85Address), sub_2f366d6f
        else:
            call nestAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(sub_982cfe85Address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 32, 34, 0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65, mem[198 len 30]
    idx = 0
    while idx < 5:
        if sub_06f6a017[idx] >= sub_fa3cb11f[address(stor4)].field_0:
            idx = idx + 1
            continue 
        s = 4
        while s > idx:
            require s - 1 < 5
            require s < 5
            sub_06f6a017[s] = stor19[s]
            require s - 1 < 5
            require s < 5
            sub_853082a6[s] = address(stor14[s])
            s = s - 1
            continue 
        if idx < 4:
            sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
            sub_853082a6[idx] = address(sub_982cfe85Address)
        else:
            if stor24 < sub_fa3cb11f[address(stor4)].field_0:
                require idx < 5
                sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                sub_853082a6[idx] = address(sub_982cfe85Address)
        idx = 0
        while idx < 5:
            if not jackpot:
                require ext_code.size(nestAddress)
                staticcall nestAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[100] = sub_853082a6[idx]
                if 0 <= ext_call.return_data[0]:
                    mem[132] = 0
                    require ext_code.size(nestAddress)
                    call nestAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_853082a6[idx], 0
                else:
                    mem[132] = ext_call.return_data[0]
                    require ext_code.size(nestAddress)
                    call nestAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_853082a6[idx], ext_call.return_data[0]
            else:
                require jackpot
                if jackpot * sub_f01db9f9[idx] / jackpot != sub_f01db9f9[idx]:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                require ext_code.size(nestAddress)
                staticcall nestAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[100] = sub_853082a6[idx]
                if jackpot * sub_f01db9f9[idx] / 10000 <= ext_call.return_data[0]:
                    mem[132] = jackpot * sub_f01db9f9[idx] / 10000
                    require ext_code.size(nestAddress)
                    call nestAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_853082a6[idx], jackpot * sub_f01db9f9[idx] / 10000
                else:
                    mem[132] = ext_call.return_data[0]
                    require ext_code.size(nestAddress)
                    call nestAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_853082a6[idx], ext_call.return_data[0]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 34, 0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65, mem[198 len 30]
            idx = idx + 1
            continue 
        require ext_code.size(nestAddress)
        staticcall nestAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(nestAddress)
        if sub_2f366d6f <= ext_call.return_data[0]:
            call nestAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(sub_982cfe85Address), sub_2f366d6f
        else:
            call nestAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(sub_982cfe85Address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 32, 34, 0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65, mem[198 len 30]
    s = 4
    while s > idx:
        require s - 1 < 5
        require s < 5
        sub_06f6a017[s] = stor19[s]
        require s - 1 < 5
        require s < 5
        sub_853082a6[s] = address(stor14[s])
        s = s - 1
        continue 
    if idx < 4:
        sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
        sub_853082a6[idx] = address(sub_982cfe85Address)
    else:
        if stor24 < sub_fa3cb11f[address(stor4)].field_0:
            require idx < 5
            sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
            sub_853082a6[idx] = address(sub_982cfe85Address)
    idx = 0
    while idx < 5:
        if not jackpot:
            require ext_code.size(nestAddress)
            staticcall nestAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[100] = sub_853082a6[idx]
            if 0 <= ext_call.return_data[0]:
                mem[132] = 0
                require ext_code.size(nestAddress)
                call nestAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_853082a6[idx], 0
            else:
                mem[132] = ext_call.return_data[0]
                require ext_code.size(nestAddress)
                call nestAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_853082a6[idx], ext_call.return_data[0]
        else:
            require jackpot
            if jackpot * sub_f01db9f9[idx] / jackpot != sub_f01db9f9[idx]:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            require ext_code.size(nestAddress)
            staticcall nestAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[100] = sub_853082a6[idx]
            if jackpot * sub_f01db9f9[idx] / 10000 <= ext_call.return_data[0]:
                mem[132] = jackpot * sub_f01db9f9[idx] / 10000
                require ext_code.size(nestAddress)
                call nestAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_853082a6[idx], jackpot * sub_f01db9f9[idx] / 10000
            else:
                mem[132] = ext_call.return_data[0]
                require ext_code.size(nestAddress)
                call nestAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_853082a6[idx], ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 32, 34, 0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65, mem[198 len 30]
        idx = idx + 1
        continue 
    require ext_code.size(nestAddress)
    staticcall nestAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(nestAddress)
    if sub_2f366d6f <= ext_call.return_data[0]:
        call nestAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(sub_982cfe85Address), sub_2f366d6f
    else:
        call nestAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(sub_982cfe85Address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 34, 0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65, mem[198 len 30]
}

function sub_f40a3685(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp >= sub_2915d5db:
        revert with 0, 'The competiton is over.'
    require ext_code.size(sub_142e7e3fAddress)
    staticcall sub_142e7e3fAddress.0xc3c5a547 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x77506c6561736520726567697374657220796f75722050656e6775696e206669727374,
                    mem[199 len 29]
    if msg.sender == address(sub_982cfe85Address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e596f752061726520616c726561647920746865204b696e67206f662050656e6775696e73,
                    mem[201 len 27]
    if tx.origin != msg.sender:
        revert with 0, 'EOAs only'
    if not address(sub_982cfe85Address):
        if arg1 != sub_d503fa6e:
            revert with 0, 'must match openingBid'
    else:
        if sub_2f366d6f + minBidIncrease < sub_2f366d6f:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 < sub_2f366d6f + minBidIncrease:
            revert with 0, 'Bad bid'
        if sub_2f366d6f + sub_aec44b56 < sub_2f366d6f:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 > sub_2f366d6f + sub_aec44b56:
            revert with 0, 'Bad bid'
        if not sub_2f366d6f:
            if not sub_2f366d6f:
                if not sub_2f366d6f:
                    if sub_fa3cb11f[address(stor4)].field_256 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_fa3cb11f[address(stor4)].field_0 + block.timestamp - sub_fa3cb11f[address(stor4)].field_256 < sub_fa3cb11f[address(stor4)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fa3cb11f[address(stor4)].field_0 = sub_fa3cb11f[address(stor4)].field_0 + block.timestamp - sub_fa3cb11f[address(stor4)].field_256
                    idx = 0
                    while idx < 5:
                        if sub_853082a6[idx] != address(sub_982cfe85Address):
                            idx = idx + 1
                            continue 
                        s = 0
                        while s < 5:
                            if sub_06f6a017[s] >= sub_fa3cb11f[address(stor4)].field_0:
                                s = s + 1
                                continue 
                            t = idx
                            while t > s:
                                require t - 1 < 5
                                require t < 5
                                sub_06f6a017[t] = stor19[t]
                                require t - 1 < 5
                                require t < 5
                                sub_853082a6[t] = address(stor14[t])
                                t = t - 1
                                continue 
                            require s < 5
                            sub_06f6a017[s] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[s] = address(sub_982cfe85Address)
                            require ext_code.size(nestAddress)
                            call nestAddress.leave(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(pefiAddress)
                            staticcall pefiAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(pefiAddress)
                            call pefiAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args nestAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_a6e9d2bf += ext_call.return_data[0]
                            emit 0x1a5aa017: ext_call.return_data[0]
                            require ext_code.size(nestAddress)
                            staticcall nestAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(nestAddress)
                            if 0 <= ext_call.return_data[0]:
                                call nestAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(sub_982cfe85Address), 0
                            else:
                                call nestAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(sub_982cfe85Address), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            34,
                                            0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                            mem[198 len 30]
                            if jackpot < jackpot:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(nestAddress)
                            call nestAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            address(sub_982cfe85Address) = msg.sender
                            sub_2f366d6f = arg1
                            sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                            emit 0xfac4a0e2: msg.sender
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            sub_06f6a017[t] = stor19[t]
                            require t - 1 < 5
                            require t < 5
                            sub_853082a6[t] = address(stor14[t])
                            t = t - 1
                            continue 
                        require s < 5
                        sub_06f6a017[s] = sub_fa3cb11f[address(stor4)].field_0
                        sub_853082a6[s] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a6e9d2bf += ext_call.return_data[0]
                        emit 0x1a5aa017: ext_call.return_data[0]
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if 0 <= ext_call.return_data[0]:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), 0
                        else:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if jackpot < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(nestAddress)
                        call nestAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        address(sub_982cfe85Address) = msg.sender
                        sub_2f366d6f = arg1
                        sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                        emit 0xfac4a0e2: msg.sender
                    idx = 0
                    while idx < 5:
                        if sub_06f6a017[idx] >= sub_fa3cb11f[address(stor4)].field_0:
                            idx = idx + 1
                            continue 
                        s = 4
                        while s > idx:
                            require s - 1 < 5
                            require s < 5
                            sub_06f6a017[s] = stor19[s]
                            require s - 1 < 5
                            require s < 5
                            sub_853082a6[s] = address(stor14[s])
                            s = s - 1
                            continue 
                        if idx < 4:
                            sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                        else:
                            if stor24 < sub_fa3cb11f[address(stor4)].field_0:
                                require idx < 5
                                sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                                sub_853082a6[idx] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a6e9d2bf += ext_call.return_data[0]
                        emit 0x1a5aa017: ext_call.return_data[0]
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if 0 <= ext_call.return_data[0]:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), 0
                        else:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if jackpot < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(nestAddress)
                        call nestAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        address(sub_982cfe85Address) = msg.sender
                        sub_2f366d6f = arg1
                        sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                        emit 0xfac4a0e2: msg.sender
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        sub_06f6a017[s] = stor19[s]
                        require s - 1 < 5
                        require s < 5
                        sub_853082a6[s] = address(stor14[s])
                        s = s - 1
                        continue 
                    if idx < 4:
                        sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                    else:
                        if stor24 < sub_fa3cb11f[address(stor4)].field_0:
                            require idx < 5
                            sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                else:
                    require sub_2f366d6f
                    if sub_2f366d6f * sub_50aa9e97 / sub_2f366d6f != sub_50aa9e97:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if sub_fa3cb11f[address(stor4)].field_256 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_fa3cb11f[address(stor4)].field_0 + block.timestamp - sub_fa3cb11f[address(stor4)].field_256 < sub_fa3cb11f[address(stor4)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fa3cb11f[address(stor4)].field_0 = sub_fa3cb11f[address(stor4)].field_0 + block.timestamp - sub_fa3cb11f[address(stor4)].field_256
                    idx = 0
                    while idx < 5:
                        if sub_853082a6[idx] != address(sub_982cfe85Address):
                            idx = idx + 1
                            continue 
                        s = 0
                        while s < 5:
                            if sub_06f6a017[s] >= sub_fa3cb11f[address(stor4)].field_0:
                                s = s + 1
                                continue 
                            t = idx
                            while t > s:
                                require t - 1 < 5
                                require t < 5
                                sub_06f6a017[t] = stor19[t]
                                require t - 1 < 5
                                require t < 5
                                sub_853082a6[t] = address(stor14[t])
                                t = t - 1
                                continue 
                            require s < 5
                            sub_06f6a017[s] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[s] = address(sub_982cfe85Address)
                            require ext_code.size(nestAddress)
                            call nestAddress.leave(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (sub_2f366d6f * sub_50aa9e97 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(pefiAddress)
                            staticcall pefiAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(pefiAddress)
                            call pefiAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args nestAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_a6e9d2bf += ext_call.return_data[0]
                            emit 0x1a5aa017: ext_call.return_data[0]
                            require ext_code.size(nestAddress)
                            staticcall nestAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(nestAddress)
                            if 0 <= ext_call.return_data[0]:
                                call nestAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(sub_982cfe85Address), 0
                            else:
                                call nestAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(sub_982cfe85Address), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            34,
                                            0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                            mem[198 len 30]
                            if jackpot < jackpot:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(nestAddress)
                            call nestAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            address(sub_982cfe85Address) = msg.sender
                            sub_2f366d6f = arg1
                            sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                            emit 0xfac4a0e2: msg.sender
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            sub_06f6a017[t] = stor19[t]
                            require t - 1 < 5
                            require t < 5
                            sub_853082a6[t] = address(stor14[t])
                            t = t - 1
                            continue 
                        require s < 5
                        sub_06f6a017[s] = sub_fa3cb11f[address(stor4)].field_0
                        sub_853082a6[s] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args (sub_2f366d6f * sub_50aa9e97 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a6e9d2bf += ext_call.return_data[0]
                        emit 0x1a5aa017: ext_call.return_data[0]
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if 0 <= ext_call.return_data[0]:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), 0
                        else:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if jackpot < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(nestAddress)
                        call nestAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        address(sub_982cfe85Address) = msg.sender
                        sub_2f366d6f = arg1
                        sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                        emit 0xfac4a0e2: msg.sender
                    idx = 0
                    while idx < 5:
                        if sub_06f6a017[idx] >= sub_fa3cb11f[address(stor4)].field_0:
                            idx = idx + 1
                            continue 
                        s = 4
                        while s > idx:
                            require s - 1 < 5
                            require s < 5
                            sub_06f6a017[s] = stor19[s]
                            require s - 1 < 5
                            require s < 5
                            sub_853082a6[s] = address(stor14[s])
                            s = s - 1
                            continue 
                        if idx < 4:
                            sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                        else:
                            if stor24 < sub_fa3cb11f[address(stor4)].field_0:
                                require idx < 5
                                sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                                sub_853082a6[idx] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args (sub_2f366d6f * sub_50aa9e97 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a6e9d2bf += ext_call.return_data[0]
                        emit 0x1a5aa017: ext_call.return_data[0]
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if 0 <= ext_call.return_data[0]:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), 0
                        else:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if jackpot < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(nestAddress)
                        call nestAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        address(sub_982cfe85Address) = msg.sender
                        sub_2f366d6f = arg1
                        sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                        emit 0xfac4a0e2: msg.sender
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        sub_06f6a017[s] = stor19[s]
                        require s - 1 < 5
                        require s < 5
                        sub_853082a6[s] = address(stor14[s])
                        s = s - 1
                        continue 
                    if idx < 4:
                        sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                    else:
                        if stor24 < sub_fa3cb11f[address(stor4)].field_0:
                            require idx < 5
                            sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args (sub_2f366d6f * sub_50aa9e97 / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(pefiAddress)
                staticcall pefiAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(pefiAddress)
                call pefiAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args nestAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                    revert with 0, 'SafeMath: addition overflow'
                sub_a6e9d2bf += ext_call.return_data[0]
                emit 0x1a5aa017: ext_call.return_data[0]
                require ext_code.size(nestAddress)
                staticcall nestAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(nestAddress)
                if 0 <= ext_call.return_data[0]:
                    call nestAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(sub_982cfe85Address), 0
                else:
                    call nestAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(sub_982cfe85Address), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                34,
                                0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                mem[198 len 30]
                if jackpot < jackpot:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require sub_2f366d6f
                if sub_2f366d6f * sub_587b0896 / sub_2f366d6f != sub_587b0896:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not sub_2f366d6f:
                    if sub_fa3cb11f[address(stor4)].field_256 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_fa3cb11f[address(stor4)].field_0 + block.timestamp - sub_fa3cb11f[address(stor4)].field_256 < sub_fa3cb11f[address(stor4)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fa3cb11f[address(stor4)].field_0 = sub_fa3cb11f[address(stor4)].field_0 + block.timestamp - sub_fa3cb11f[address(stor4)].field_256
                    idx = 0
                    while idx < 5:
                        if sub_853082a6[idx] != address(sub_982cfe85Address):
                            idx = idx + 1
                            continue 
                        s = 0
                        while s < 5:
                            if sub_06f6a017[s] >= sub_fa3cb11f[address(stor4)].field_0:
                                s = s + 1
                                continue 
                            t = idx
                            while t > s:
                                require t - 1 < 5
                                require t < 5
                                sub_06f6a017[t] = stor19[t]
                                require t - 1 < 5
                                require t < 5
                                sub_853082a6[t] = address(stor14[t])
                                t = t - 1
                                continue 
                            require s < 5
                            sub_06f6a017[s] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[s] = address(sub_982cfe85Address)
                            require ext_code.size(nestAddress)
                            call nestAddress.leave(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(pefiAddress)
                            staticcall pefiAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(pefiAddress)
                            call pefiAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args nestAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_a6e9d2bf += ext_call.return_data[0]
                            emit 0x1a5aa017: ext_call.return_data[0]
                            require ext_code.size(nestAddress)
                            staticcall nestAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(nestAddress)
                            if 0 <= ext_call.return_data[0]:
                                call nestAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(sub_982cfe85Address), 0
                            else:
                                call nestAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(sub_982cfe85Address), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            34,
                                            0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                            mem[198 len 30]
                            if jackpot + (sub_2f366d6f * sub_587b0896 / 10000) < jackpot:
                                revert with 0, 'SafeMath: addition overflow'
                            jackpot += sub_2f366d6f * sub_587b0896 / 10000
                            require ext_code.size(nestAddress)
                            call nestAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            address(sub_982cfe85Address) = msg.sender
                            sub_2f366d6f = arg1
                            sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                            emit 0xfac4a0e2: msg.sender
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            sub_06f6a017[t] = stor19[t]
                            require t - 1 < 5
                            require t < 5
                            sub_853082a6[t] = address(stor14[t])
                            t = t - 1
                            continue 
                        require s < 5
                        sub_06f6a017[s] = sub_fa3cb11f[address(stor4)].field_0
                        sub_853082a6[s] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a6e9d2bf += ext_call.return_data[0]
                        emit 0x1a5aa017: ext_call.return_data[0]
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if 0 <= ext_call.return_data[0]:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), 0
                        else:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if jackpot + (sub_2f366d6f * sub_587b0896 / 10000) < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        jackpot += sub_2f366d6f * sub_587b0896 / 10000
                        require ext_code.size(nestAddress)
                        call nestAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        address(sub_982cfe85Address) = msg.sender
                        sub_2f366d6f = arg1
                        sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                        emit 0xfac4a0e2: msg.sender
                    idx = 0
                    while idx < 5:
                        if sub_06f6a017[idx] >= sub_fa3cb11f[address(stor4)].field_0:
                            idx = idx + 1
                            continue 
                        s = 4
                        while s > idx:
                            require s - 1 < 5
                            require s < 5
                            sub_06f6a017[s] = stor19[s]
                            require s - 1 < 5
                            require s < 5
                            sub_853082a6[s] = address(stor14[s])
                            s = s - 1
                            continue 
                        if idx < 4:
                            sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                        else:
                            if stor24 < sub_fa3cb11f[address(stor4)].field_0:
                                require idx < 5
                                sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                                sub_853082a6[idx] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a6e9d2bf += ext_call.return_data[0]
                        emit 0x1a5aa017: ext_call.return_data[0]
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if 0 <= ext_call.return_data[0]:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), 0
                        else:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if jackpot + (sub_2f366d6f * sub_587b0896 / 10000) < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        jackpot += sub_2f366d6f * sub_587b0896 / 10000
                        require ext_code.size(nestAddress)
                        call nestAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        address(sub_982cfe85Address) = msg.sender
                        sub_2f366d6f = arg1
                        sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                        emit 0xfac4a0e2: msg.sender
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        sub_06f6a017[s] = stor19[s]
                        require s - 1 < 5
                        require s < 5
                        sub_853082a6[s] = address(stor14[s])
                        s = s - 1
                        continue 
                    if idx < 4:
                        sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                    else:
                        if stor24 < sub_fa3cb11f[address(stor4)].field_0:
                            require idx < 5
                            sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                else:
                    require sub_2f366d6f
                    if sub_2f366d6f * sub_50aa9e97 / sub_2f366d6f != sub_50aa9e97:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if sub_fa3cb11f[address(stor4)].field_256 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_fa3cb11f[address(stor4)].field_0 + block.timestamp - sub_fa3cb11f[address(stor4)].field_256 < sub_fa3cb11f[address(stor4)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fa3cb11f[address(stor4)].field_0 = sub_fa3cb11f[address(stor4)].field_0 + block.timestamp - sub_fa3cb11f[address(stor4)].field_256
                    idx = 0
                    while idx < 5:
                        if sub_853082a6[idx] != address(sub_982cfe85Address):
                            idx = idx + 1
                            continue 
                        s = 0
                        while s < 5:
                            if sub_06f6a017[s] >= sub_fa3cb11f[address(stor4)].field_0:
                                s = s + 1
                                continue 
                            t = idx
                            while t > s:
                                require t - 1 < 5
                                require t < 5
                                sub_06f6a017[t] = stor19[t]
                                require t - 1 < 5
                                require t < 5
                                sub_853082a6[t] = address(stor14[t])
                                t = t - 1
                                continue 
                            require s < 5
                            sub_06f6a017[s] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[s] = address(sub_982cfe85Address)
                            require ext_code.size(nestAddress)
                            call nestAddress.leave(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (sub_2f366d6f * sub_50aa9e97 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(pefiAddress)
                            staticcall pefiAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(pefiAddress)
                            call pefiAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args nestAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_a6e9d2bf += ext_call.return_data[0]
                            emit 0x1a5aa017: ext_call.return_data[0]
                            require ext_code.size(nestAddress)
                            staticcall nestAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(nestAddress)
                            if 0 <= ext_call.return_data[0]:
                                call nestAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(sub_982cfe85Address), 0
                            else:
                                call nestAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(sub_982cfe85Address), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            34,
                                            0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                            mem[198 len 30]
                            if jackpot + (sub_2f366d6f * sub_587b0896 / 10000) < jackpot:
                                revert with 0, 'SafeMath: addition overflow'
                            jackpot += sub_2f366d6f * sub_587b0896 / 10000
                            require ext_code.size(nestAddress)
                            call nestAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            address(sub_982cfe85Address) = msg.sender
                            sub_2f366d6f = arg1
                            sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                            emit 0xfac4a0e2: msg.sender
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            sub_06f6a017[t] = stor19[t]
                            require t - 1 < 5
                            require t < 5
                            sub_853082a6[t] = address(stor14[t])
                            t = t - 1
                            continue 
                        require s < 5
                        sub_06f6a017[s] = sub_fa3cb11f[address(stor4)].field_0
                        sub_853082a6[s] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args (sub_2f366d6f * sub_50aa9e97 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a6e9d2bf += ext_call.return_data[0]
                        emit 0x1a5aa017: ext_call.return_data[0]
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if 0 <= ext_call.return_data[0]:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), 0
                        else:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if jackpot + (sub_2f366d6f * sub_587b0896 / 10000) < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        jackpot += sub_2f366d6f * sub_587b0896 / 10000
                        require ext_code.size(nestAddress)
                        call nestAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        address(sub_982cfe85Address) = msg.sender
                        sub_2f366d6f = arg1
                        sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                        emit 0xfac4a0e2: msg.sender
                    idx = 0
                    while idx < 5:
                        if sub_06f6a017[idx] >= sub_fa3cb11f[address(stor4)].field_0:
                            idx = idx + 1
                            continue 
                        s = 4
                        while s > idx:
                            require s - 1 < 5
                            require s < 5
                            sub_06f6a017[s] = stor19[s]
                            require s - 1 < 5
                            require s < 5
                            sub_853082a6[s] = address(stor14[s])
                            s = s - 1
                            continue 
                        if idx < 4:
                            sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                        else:
                            if stor24 < sub_fa3cb11f[address(stor4)].field_0:
                                require idx < 5
                                sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                                sub_853082a6[idx] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args (sub_2f366d6f * sub_50aa9e97 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a6e9d2bf += ext_call.return_data[0]
                        emit 0x1a5aa017: ext_call.return_data[0]
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if 0 <= ext_call.return_data[0]:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), 0
                        else:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if jackpot + (sub_2f366d6f * sub_587b0896 / 10000) < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        jackpot += sub_2f366d6f * sub_587b0896 / 10000
                        require ext_code.size(nestAddress)
                        call nestAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        address(sub_982cfe85Address) = msg.sender
                        sub_2f366d6f = arg1
                        sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                        emit 0xfac4a0e2: msg.sender
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        sub_06f6a017[s] = stor19[s]
                        require s - 1 < 5
                        require s < 5
                        sub_853082a6[s] = address(stor14[s])
                        s = s - 1
                        continue 
                    if idx < 4:
                        sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                    else:
                        if stor24 < sub_fa3cb11f[address(stor4)].field_0:
                            require idx < 5
                            sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args (sub_2f366d6f * sub_50aa9e97 / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(pefiAddress)
                staticcall pefiAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(pefiAddress)
                call pefiAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args nestAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                    revert with 0, 'SafeMath: addition overflow'
                sub_a6e9d2bf += ext_call.return_data[0]
                emit 0x1a5aa017: ext_call.return_data[0]
                require ext_code.size(nestAddress)
                staticcall nestAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(nestAddress)
                if 0 <= ext_call.return_data[0]:
                    call nestAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(sub_982cfe85Address), 0
                else:
                    call nestAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(sub_982cfe85Address), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                34,
                                0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                mem[198 len 30]
                if jackpot + (sub_2f366d6f * sub_587b0896 / 10000) < jackpot:
                    revert with 0, 'SafeMath: addition overflow'
                jackpot += sub_2f366d6f * sub_587b0896 / 10000
        else:
            require sub_2f366d6f
            if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / sub_2f366d6f != -sub_587b0896 + -sub_50aa9e97 + 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not sub_2f366d6f:
                if not sub_2f366d6f:
                    if sub_fa3cb11f[address(stor4)].field_256 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_fa3cb11f[address(stor4)].field_0 + block.timestamp - sub_fa3cb11f[address(stor4)].field_256 < sub_fa3cb11f[address(stor4)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fa3cb11f[address(stor4)].field_0 = sub_fa3cb11f[address(stor4)].field_0 + block.timestamp - sub_fa3cb11f[address(stor4)].field_256
                    idx = 0
                    while idx < 5:
                        if sub_853082a6[idx] != address(sub_982cfe85Address):
                            idx = idx + 1
                            continue 
                        s = 0
                        while s < 5:
                            if sub_06f6a017[s] >= sub_fa3cb11f[address(stor4)].field_0:
                                s = s + 1
                                continue 
                            t = idx
                            while t > s:
                                require t - 1 < 5
                                require t < 5
                                sub_06f6a017[t] = stor19[t]
                                require t - 1 < 5
                                require t < 5
                                sub_853082a6[t] = address(stor14[t])
                                t = t - 1
                                continue 
                            require s < 5
                            sub_06f6a017[s] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[s] = address(sub_982cfe85Address)
                            require ext_code.size(nestAddress)
                            call nestAddress.leave(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(pefiAddress)
                            staticcall pefiAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(pefiAddress)
                            call pefiAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args nestAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_a6e9d2bf += ext_call.return_data[0]
                            emit 0x1a5aa017: ext_call.return_data[0]
                            require ext_code.size(nestAddress)
                            staticcall nestAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(nestAddress)
                            if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                                call nestAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                            else:
                                call nestAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(sub_982cfe85Address), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            34,
                                            0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                            mem[198 len 30]
                            if jackpot < jackpot:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(nestAddress)
                            call nestAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            address(sub_982cfe85Address) = msg.sender
                            sub_2f366d6f = arg1
                            sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                            emit 0xfac4a0e2: msg.sender
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            sub_06f6a017[t] = stor19[t]
                            require t - 1 < 5
                            require t < 5
                            sub_853082a6[t] = address(stor14[t])
                            t = t - 1
                            continue 
                        require s < 5
                        sub_06f6a017[s] = sub_fa3cb11f[address(stor4)].field_0
                        sub_853082a6[s] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a6e9d2bf += ext_call.return_data[0]
                        emit 0x1a5aa017: ext_call.return_data[0]
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                        else:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if jackpot < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(nestAddress)
                        call nestAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        address(sub_982cfe85Address) = msg.sender
                        sub_2f366d6f = arg1
                        sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                        emit 0xfac4a0e2: msg.sender
                    idx = 0
                    while idx < 5:
                        if sub_06f6a017[idx] >= sub_fa3cb11f[address(stor4)].field_0:
                            idx = idx + 1
                            continue 
                        s = 4
                        while s > idx:
                            require s - 1 < 5
                            require s < 5
                            sub_06f6a017[s] = stor19[s]
                            require s - 1 < 5
                            require s < 5
                            sub_853082a6[s] = address(stor14[s])
                            s = s - 1
                            continue 
                        if idx < 4:
                            sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                        else:
                            if stor24 < sub_fa3cb11f[address(stor4)].field_0:
                                require idx < 5
                                sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                                sub_853082a6[idx] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a6e9d2bf += ext_call.return_data[0]
                        emit 0x1a5aa017: ext_call.return_data[0]
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                        else:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if jackpot < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(nestAddress)
                        call nestAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        address(sub_982cfe85Address) = msg.sender
                        sub_2f366d6f = arg1
                        sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                        emit 0xfac4a0e2: msg.sender
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        sub_06f6a017[s] = stor19[s]
                        require s - 1 < 5
                        require s < 5
                        sub_853082a6[s] = address(stor14[s])
                        s = s - 1
                        continue 
                    if idx < 4:
                        sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                    else:
                        if stor24 < sub_fa3cb11f[address(stor4)].field_0:
                            require idx < 5
                            sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                else:
                    require sub_2f366d6f
                    if sub_2f366d6f * sub_50aa9e97 / sub_2f366d6f != sub_50aa9e97:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if sub_fa3cb11f[address(stor4)].field_256 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_fa3cb11f[address(stor4)].field_0 + block.timestamp - sub_fa3cb11f[address(stor4)].field_256 < sub_fa3cb11f[address(stor4)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fa3cb11f[address(stor4)].field_0 = sub_fa3cb11f[address(stor4)].field_0 + block.timestamp - sub_fa3cb11f[address(stor4)].field_256
                    idx = 0
                    while idx < 5:
                        if sub_853082a6[idx] != address(sub_982cfe85Address):
                            idx = idx + 1
                            continue 
                        s = 0
                        while s < 5:
                            if sub_06f6a017[s] >= sub_fa3cb11f[address(stor4)].field_0:
                                s = s + 1
                                continue 
                            t = idx
                            while t > s:
                                require t - 1 < 5
                                require t < 5
                                sub_06f6a017[t] = stor19[t]
                                require t - 1 < 5
                                require t < 5
                                sub_853082a6[t] = address(stor14[t])
                                t = t - 1
                                continue 
                            require s < 5
                            sub_06f6a017[s] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[s] = address(sub_982cfe85Address)
                            require ext_code.size(nestAddress)
                            call nestAddress.leave(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (sub_2f366d6f * sub_50aa9e97 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(pefiAddress)
                            staticcall pefiAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(pefiAddress)
                            call pefiAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args nestAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_a6e9d2bf += ext_call.return_data[0]
                            emit 0x1a5aa017: ext_call.return_data[0]
                            require ext_code.size(nestAddress)
                            staticcall nestAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(nestAddress)
                            if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                                call nestAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                            else:
                                call nestAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(sub_982cfe85Address), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            34,
                                            0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                            mem[198 len 30]
                            if jackpot < jackpot:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(nestAddress)
                            call nestAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            address(sub_982cfe85Address) = msg.sender
                            sub_2f366d6f = arg1
                            sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                            emit 0xfac4a0e2: msg.sender
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            sub_06f6a017[t] = stor19[t]
                            require t - 1 < 5
                            require t < 5
                            sub_853082a6[t] = address(stor14[t])
                            t = t - 1
                            continue 
                        require s < 5
                        sub_06f6a017[s] = sub_fa3cb11f[address(stor4)].field_0
                        sub_853082a6[s] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args (sub_2f366d6f * sub_50aa9e97 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a6e9d2bf += ext_call.return_data[0]
                        emit 0x1a5aa017: ext_call.return_data[0]
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                        else:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if jackpot < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(nestAddress)
                        call nestAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        address(sub_982cfe85Address) = msg.sender
                        sub_2f366d6f = arg1
                        sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                        emit 0xfac4a0e2: msg.sender
                    idx = 0
                    while idx < 5:
                        if sub_06f6a017[idx] >= sub_fa3cb11f[address(stor4)].field_0:
                            idx = idx + 1
                            continue 
                        s = 4
                        while s > idx:
                            require s - 1 < 5
                            require s < 5
                            sub_06f6a017[s] = stor19[s]
                            require s - 1 < 5
                            require s < 5
                            sub_853082a6[s] = address(stor14[s])
                            s = s - 1
                            continue 
                        if idx < 4:
                            sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                        else:
                            if stor24 < sub_fa3cb11f[address(stor4)].field_0:
                                require idx < 5
                                sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                                sub_853082a6[idx] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args (sub_2f366d6f * sub_50aa9e97 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a6e9d2bf += ext_call.return_data[0]
                        emit 0x1a5aa017: ext_call.return_data[0]
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                        else:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if jackpot < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(nestAddress)
                        call nestAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        address(sub_982cfe85Address) = msg.sender
                        sub_2f366d6f = arg1
                        sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                        emit 0xfac4a0e2: msg.sender
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        sub_06f6a017[s] = stor19[s]
                        require s - 1 < 5
                        require s < 5
                        sub_853082a6[s] = address(stor14[s])
                        s = s - 1
                        continue 
                    if idx < 4:
                        sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                    else:
                        if stor24 < sub_fa3cb11f[address(stor4)].field_0:
                            require idx < 5
                            sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args (sub_2f366d6f * sub_50aa9e97 / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(pefiAddress)
                staticcall pefiAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(pefiAddress)
                call pefiAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args nestAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                    revert with 0, 'SafeMath: addition overflow'
                sub_a6e9d2bf += ext_call.return_data[0]
                emit 0x1a5aa017: ext_call.return_data[0]
                require ext_code.size(nestAddress)
                staticcall nestAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(nestAddress)
                if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                    call nestAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                else:
                    call nestAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(sub_982cfe85Address), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                34,
                                0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                mem[198 len 30]
                if jackpot < jackpot:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require sub_2f366d6f
                if sub_2f366d6f * sub_587b0896 / sub_2f366d6f != sub_587b0896:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not sub_2f366d6f:
                    if sub_fa3cb11f[address(stor4)].field_256 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_fa3cb11f[address(stor4)].field_0 + block.timestamp - sub_fa3cb11f[address(stor4)].field_256 < sub_fa3cb11f[address(stor4)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fa3cb11f[address(stor4)].field_0 = sub_fa3cb11f[address(stor4)].field_0 + block.timestamp - sub_fa3cb11f[address(stor4)].field_256
                    idx = 0
                    while idx < 5:
                        if sub_853082a6[idx] != address(sub_982cfe85Address):
                            idx = idx + 1
                            continue 
                        s = 0
                        while s < 5:
                            if sub_06f6a017[s] >= sub_fa3cb11f[address(stor4)].field_0:
                                s = s + 1
                                continue 
                            t = idx
                            while t > s:
                                require t - 1 < 5
                                require t < 5
                                sub_06f6a017[t] = stor19[t]
                                require t - 1 < 5
                                require t < 5
                                sub_853082a6[t] = address(stor14[t])
                                t = t - 1
                                continue 
                            require s < 5
                            sub_06f6a017[s] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[s] = address(sub_982cfe85Address)
                            require ext_code.size(nestAddress)
                            call nestAddress.leave(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(pefiAddress)
                            staticcall pefiAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(pefiAddress)
                            call pefiAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args nestAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_a6e9d2bf += ext_call.return_data[0]
                            emit 0x1a5aa017: ext_call.return_data[0]
                            require ext_code.size(nestAddress)
                            staticcall nestAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(nestAddress)
                            if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                                call nestAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                            else:
                                call nestAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(sub_982cfe85Address), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            34,
                                            0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                            mem[198 len 30]
                            if jackpot + (sub_2f366d6f * sub_587b0896 / 10000) < jackpot:
                                revert with 0, 'SafeMath: addition overflow'
                            jackpot += sub_2f366d6f * sub_587b0896 / 10000
                            require ext_code.size(nestAddress)
                            call nestAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            address(sub_982cfe85Address) = msg.sender
                            sub_2f366d6f = arg1
                            sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                            emit 0xfac4a0e2: msg.sender
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            sub_06f6a017[t] = stor19[t]
                            require t - 1 < 5
                            require t < 5
                            sub_853082a6[t] = address(stor14[t])
                            t = t - 1
                            continue 
                        require s < 5
                        sub_06f6a017[s] = sub_fa3cb11f[address(stor4)].field_0
                        sub_853082a6[s] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a6e9d2bf += ext_call.return_data[0]
                        emit 0x1a5aa017: ext_call.return_data[0]
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                        else:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if jackpot + (sub_2f366d6f * sub_587b0896 / 10000) < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        jackpot += sub_2f366d6f * sub_587b0896 / 10000
                        require ext_code.size(nestAddress)
                        call nestAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        address(sub_982cfe85Address) = msg.sender
                        sub_2f366d6f = arg1
                        sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                        emit 0xfac4a0e2: msg.sender
                    idx = 0
                    while idx < 5:
                        if sub_06f6a017[idx] >= sub_fa3cb11f[address(stor4)].field_0:
                            idx = idx + 1
                            continue 
                        s = 4
                        while s > idx:
                            require s - 1 < 5
                            require s < 5
                            sub_06f6a017[s] = stor19[s]
                            require s - 1 < 5
                            require s < 5
                            sub_853082a6[s] = address(stor14[s])
                            s = s - 1
                            continue 
                        if idx < 4:
                            sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                        else:
                            if stor24 < sub_fa3cb11f[address(stor4)].field_0:
                                require idx < 5
                                sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                                sub_853082a6[idx] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a6e9d2bf += ext_call.return_data[0]
                        emit 0x1a5aa017: ext_call.return_data[0]
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                        else:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if jackpot + (sub_2f366d6f * sub_587b0896 / 10000) < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        jackpot += sub_2f366d6f * sub_587b0896 / 10000
                        require ext_code.size(nestAddress)
                        call nestAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        address(sub_982cfe85Address) = msg.sender
                        sub_2f366d6f = arg1
                        sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                        emit 0xfac4a0e2: msg.sender
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        sub_06f6a017[s] = stor19[s]
                        require s - 1 < 5
                        require s < 5
                        sub_853082a6[s] = address(stor14[s])
                        s = s - 1
                        continue 
                    if idx < 4:
                        sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                    else:
                        if stor24 < sub_fa3cb11f[address(stor4)].field_0:
                            require idx < 5
                            sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                else:
                    require sub_2f366d6f
                    if sub_2f366d6f * sub_50aa9e97 / sub_2f366d6f != sub_50aa9e97:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if sub_fa3cb11f[address(stor4)].field_256 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_fa3cb11f[address(stor4)].field_0 + block.timestamp - sub_fa3cb11f[address(stor4)].field_256 < sub_fa3cb11f[address(stor4)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fa3cb11f[address(stor4)].field_0 = sub_fa3cb11f[address(stor4)].field_0 + block.timestamp - sub_fa3cb11f[address(stor4)].field_256
                    idx = 0
                    while idx < 5:
                        if sub_853082a6[idx] != address(sub_982cfe85Address):
                            idx = idx + 1
                            continue 
                        s = 0
                        while s < 5:
                            if sub_06f6a017[s] >= sub_fa3cb11f[address(stor4)].field_0:
                                s = s + 1
                                continue 
                            t = idx
                            while t > s:
                                require t - 1 < 5
                                require t < 5
                                sub_06f6a017[t] = stor19[t]
                                require t - 1 < 5
                                require t < 5
                                sub_853082a6[t] = address(stor14[t])
                                t = t - 1
                                continue 
                            require s < 5
                            sub_06f6a017[s] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[s] = address(sub_982cfe85Address)
                            require ext_code.size(nestAddress)
                            call nestAddress.leave(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (sub_2f366d6f * sub_50aa9e97 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(pefiAddress)
                            staticcall pefiAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(pefiAddress)
                            call pefiAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args nestAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_a6e9d2bf += ext_call.return_data[0]
                            emit 0x1a5aa017: ext_call.return_data[0]
                            require ext_code.size(nestAddress)
                            staticcall nestAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(nestAddress)
                            if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                                call nestAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                            else:
                                call nestAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(sub_982cfe85Address), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            34,
                                            0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                            mem[198 len 30]
                            if jackpot + (sub_2f366d6f * sub_587b0896 / 10000) < jackpot:
                                revert with 0, 'SafeMath: addition overflow'
                            jackpot += sub_2f366d6f * sub_587b0896 / 10000
                            require ext_code.size(nestAddress)
                            call nestAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            address(sub_982cfe85Address) = msg.sender
                            sub_2f366d6f = arg1
                            sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                            emit 0xfac4a0e2: msg.sender
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            sub_06f6a017[t] = stor19[t]
                            require t - 1 < 5
                            require t < 5
                            sub_853082a6[t] = address(stor14[t])
                            t = t - 1
                            continue 
                        require s < 5
                        sub_06f6a017[s] = sub_fa3cb11f[address(stor4)].field_0
                        sub_853082a6[s] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args (sub_2f366d6f * sub_50aa9e97 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a6e9d2bf += ext_call.return_data[0]
                        emit 0x1a5aa017: ext_call.return_data[0]
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                        else:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if jackpot + (sub_2f366d6f * sub_587b0896 / 10000) < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        jackpot += sub_2f366d6f * sub_587b0896 / 10000
                        require ext_code.size(nestAddress)
                        call nestAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        address(sub_982cfe85Address) = msg.sender
                        sub_2f366d6f = arg1
                        sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                        emit 0xfac4a0e2: msg.sender
                    idx = 0
                    while idx < 5:
                        if sub_06f6a017[idx] >= sub_fa3cb11f[address(stor4)].field_0:
                            idx = idx + 1
                            continue 
                        s = 4
                        while s > idx:
                            require s - 1 < 5
                            require s < 5
                            sub_06f6a017[s] = stor19[s]
                            require s - 1 < 5
                            require s < 5
                            sub_853082a6[s] = address(stor14[s])
                            s = s - 1
                            continue 
                        if idx < 4:
                            sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                        else:
                            if stor24 < sub_fa3cb11f[address(stor4)].field_0:
                                require idx < 5
                                sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                                sub_853082a6[idx] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args (sub_2f366d6f * sub_50aa9e97 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a6e9d2bf += ext_call.return_data[0]
                        emit 0x1a5aa017: ext_call.return_data[0]
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                        else:
                            call nestAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if jackpot + (sub_2f366d6f * sub_587b0896 / 10000) < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        jackpot += sub_2f366d6f * sub_587b0896 / 10000
                        require ext_code.size(nestAddress)
                        call nestAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        address(sub_982cfe85Address) = msg.sender
                        sub_2f366d6f = arg1
                        sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
                        emit 0xfac4a0e2: msg.sender
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        sub_06f6a017[s] = stor19[s]
                        require s - 1 < 5
                        require s < 5
                        sub_853082a6[s] = address(stor14[s])
                        s = s - 1
                        continue 
                    if idx < 4:
                        sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                    else:
                        if stor24 < sub_fa3cb11f[address(stor4)].field_0:
                            require idx < 5
                            sub_06f6a017[idx] = sub_fa3cb11f[address(stor4)].field_0
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args (sub_2f366d6f * sub_50aa9e97 / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(pefiAddress)
                staticcall pefiAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(pefiAddress)
                call pefiAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args nestAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_a6e9d2bf + ext_call.return_data[0] < sub_a6e9d2bf:
                    revert with 0, 'SafeMath: addition overflow'
                sub_a6e9d2bf += ext_call.return_data[0]
                emit 0x1a5aa017: ext_call.return_data[0]
                require ext_code.size(nestAddress)
                staticcall nestAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(nestAddress)
                if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                    call nestAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                else:
                    call nestAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(sub_982cfe85Address), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                34,
                                0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                mem[198 len 30]
                if jackpot + (sub_2f366d6f * sub_587b0896 / 10000) < jackpot:
                    revert with 0, 'SafeMath: addition overflow'
                jackpot += sub_2f366d6f * sub_587b0896 / 10000
    require ext_code.size(nestAddress)
    call nestAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    address(sub_982cfe85Address) = msg.sender
    sub_2f366d6f = arg1
    sub_fa3cb11f[address(msg.sender)].field_256 = block.timestamp
    emit 0xfac4a0e2: msg.sender
}



}
