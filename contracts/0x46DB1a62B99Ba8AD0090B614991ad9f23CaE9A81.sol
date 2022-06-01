contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 stor2;
uint256 stor3;
uint256 sub_bbb89b25;
array of struct stor5;
array of struct stor6;
mapping of uint256 stor7;
mapping of uint256 sub_58214308;

function playerCount() payable {
    return stor6.length
}

function sub_58214308(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_58214308[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_ba63245d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_58214308[arg1]
}

function sub_bbb89b25(?) payable {
    return sub_bbb89b25
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function sub_adafabe7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    stor3 = arg1
}

function changeToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    tokenAddress = arg1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getWinners() payable {
    mem[64] = (32 * stor5.length) + 128
    mem[96] = stor5.length
    s = 128
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        _11 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11] = stor5[idx].field_0
        mem[_11 + 32] = stor5[idx].field_256
        mem[s] = _11
        s = s + 32
        idx = idx + 1
        continue 
    _12 = mem[64]
    mem[mem[64]] = 32
    _13 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _13:
        _18 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_18 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _12 + (64 * _13) + -mem[64] + 64
}

function getAllRecords() payable {
    mem[64] = (32 * stor6.length) + 128
    mem[96] = stor6.length
    s = 128
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        _11 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11] = stor6[idx].field_0
        mem[_11 + 32] = stor6[idx].field_256
        mem[s] = _11
        s = s + 32
        idx = idx + 1
        continue 
    _12 = mem[64]
    mem[mem[64]] = 32
    _13 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _13:
        _18 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_18 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _12 + (64 * _13) + -mem[64] + 64
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'your balance is no enough'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor7[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    stor7[address(msg.sender)]++
}

function sub_c5c2e2e6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_58214308[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    if sub_58214308[address(arg1)]:
        mem[128 len 32 * sub_58214308[address(arg1)]] = call.data[calldata.size len 32 * sub_58214308[address(arg1)]]
    idx = 0
    s = 0
    while idx < stor6.length:
        mem[0] = 6
        if stor6[idx].field_0 != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = 6
        if s >= sub_58214308[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = stor6[idx].field_256
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=sub_58214308[address(arg1)], data=mem[128 len 32 * sub_58214308[address(arg1)]])
}

function recordScore(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 7
    if stor7[address(msg.sender)] <= sub_58214308[address(msg.sender)]:
        revert with 0, 'Please deposit first.'
    if sub_bbb89b25 >= arg1:
        if stor5.length >= 5:
            idx = 0
            while idx < 5:
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = 5
                if stor5[idx].field_256 >= arg1:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[96] = stor5[idx].field_0
                mem[128] = stor5[idx].field_256
                mem[64] = 224
                mem[160] = msg.sender
                mem[192] = arg1
                mem[0] = 5
                stor5[idx].field_0 = msg.sender
                stor5[idx].field_256 = arg1
                if idx > -2:
                    revert with 'NH{q', 17
                s = idx + 1
                t = 96
                while s < 5:
                    if s >= stor5.length:
                        revert with 'NH{q', 50
                    mem[0] = 5
                    _199 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_199] = stor5[s].field_0
                    mem[_199 + 32] = stor5[s].field_256
                    mem[0] = 5
                    stor5[s].field_0 = mem[t + 12 len 20]
                    stor5[s].field_256 = mem[t + 32]
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = _199
                    continue 
                stor6.length++
                stor6[stor6.length].field_0 = msg.sender
                stor6[stor6.length].field_256 = arg1
                if sub_58214308[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                sub_58214308[address(msg.sender)]++
                return 1
        else:
            mem[64] = 160
            mem[96] = msg.sender
            mem[128] = 0
            stor5.length++
            mem[0] = 5
            stor5[stor5.length].field_0 = msg.sender
            stor5[stor5.length].field_256 = 0
            idx = 0
            while idx < stor5.length:
                mem[0] = 5
                if stor5[idx].field_256 >= arg1:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[160] = stor5[idx].field_0
                mem[192] = stor5[idx].field_256
                mem[64] = 288
                mem[224] = msg.sender
                mem[256] = arg1
                mem[0] = 5
                stor5[idx].field_0 = msg.sender
                stor5[idx].field_256 = arg1
                if idx > -2:
                    revert with 'NH{q', 17
                s = idx + 1
                t = 160
                while s < stor5.length:
                    mem[0] = 5
                    _206 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_206] = stor5[s].field_0
                    mem[_206 + 32] = stor5[s].field_256
                    mem[0] = 5
                    stor5[s].field_0 = mem[t + 12 len 20]
                    stor5[s].field_256 = mem[t + 32]
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = _206
                    continue 
                stor6.length++
                stor6[stor6.length].field_0 = msg.sender
                stor6[stor6.length].field_256 = arg1
                if sub_58214308[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                sub_58214308[address(msg.sender)]++
                return 1
    else:
        sub_bbb89b25 = arg1
        if stor5.length >= 5:
            idx = 0
            while idx < 5:
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = 5
                if stor5[idx].field_256 >= arg1:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[96] = stor5[idx].field_0
                mem[128] = stor5[idx].field_256
                mem[64] = 224
                mem[160] = msg.sender
                mem[192] = arg1
                mem[0] = 5
                stor5[idx].field_0 = msg.sender
                stor5[idx].field_256 = arg1
                if idx > -2:
                    revert with 'NH{q', 17
                s = idx + 1
                t = 96
                while s < 5:
                    if s >= stor5.length:
                        revert with 'NH{q', 50
                    mem[0] = 5
                    _213 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_213] = stor5[s].field_0
                    mem[_213 + 32] = stor5[s].field_256
                    mem[0] = 5
                    stor5[s].field_0 = mem[t + 12 len 20]
                    stor5[s].field_256 = mem[t + 32]
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = _213
                    continue 
                stor6.length++
                stor6[stor6.length].field_0 = msg.sender
                stor6[stor6.length].field_256 = arg1
                if sub_58214308[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                sub_58214308[address(msg.sender)]++
                return 1
        else:
            mem[64] = 160
            mem[96] = msg.sender
            mem[128] = 0
            stor5.length++
            mem[0] = 5
            stor5[stor5.length].field_0 = msg.sender
            stor5[stor5.length].field_256 = 0
            idx = 0
            while idx < stor5.length:
                mem[0] = 5
                if stor5[idx].field_256 >= arg1:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[160] = stor5[idx].field_0
                mem[192] = stor5[idx].field_256
                mem[64] = 288
                mem[224] = msg.sender
                mem[256] = arg1
                mem[0] = 5
                stor5[idx].field_0 = msg.sender
                stor5[idx].field_256 = arg1
                if idx > -2:
                    revert with 'NH{q', 17
                s = idx + 1
                t = 160
                while s < stor5.length:
                    mem[0] = 5
                    _220 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_220] = stor5[s].field_0
                    mem[_220 + 32] = stor5[s].field_256
                    mem[0] = 5
                    stor5[s].field_0 = mem[t + 12 len 20]
                    stor5[s].field_256 = mem[t + 32]
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = _220
                    continue 
                stor6.length++
                stor6[stor6.length].field_0 = msg.sender
                stor6[stor6.length].field_256 = arg1
                if sub_58214308[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                sub_58214308[address(msg.sender)]++
                return 1
    stor6.length++
    stor6[stor6.length].field_0 = msg.sender
    stor6[stor6.length].field_256 = arg1
    if sub_58214308[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    sub_58214308[address(msg.sender)]++
    return 1
}

function sub_e7883418(?) payable {
    require msg.sender == owner
    if block.timestamp <= stor2:
        revert with 0, 'Please wait for a day.'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x313ce567 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if stor3 and stor6.length > -1 / stor3:
            revert with 'NH{q', 17
        if stor3 * stor6.length and 1 > -1 / stor3 * stor6.length:
            revert with 'NH{q', 17
        if Mask(254, 2, stor3 * stor6.length) and 3 > -1 / stor3 * stor6.length / 4:
            revert with 'NH{q', 17
        if stor6.length >= 10:
            if stor6.length >= 10:
                if 3 * stor3 * stor6.length / 4 / 10 and 10 > -1 / 3 * stor3 * stor6.length / 4 / 10:
                    revert with 'NH{q', 17
                mem[ceil32(return_data.size) + 100] = this.address
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 10 * 3 * stor3 * stor6.length / 4 / 10:
                    revert with 0, 'Pool balance is no enough.'
                idx = 0
                while idx < stor5.length:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 3 * stor3 * stor6.length / 4 / 10
                    require ext_code.size(tokenAddress)
                    call tokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 3 * stor3 * stor6.length / 4 / 10
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _922 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_922] == bool(mem[_922])
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[0] = 5
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor5[idx].field_0
                    mem[mem[64] + 68] = 3 * stor3 * stor6.length / 4 / 10
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), stor5[idx].field_0, 3 * stor3 * stor6.length / 4 / 10
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1075 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1075] == bool(mem[_1075])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if stor6.length <= 5:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _899 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _921 = mem[_899]
                    require mem[_899] == mem[_899]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _921
                    require ext_code.size(tokenAddress)
                    call tokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), _921
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1027 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1027] == bool(mem[_1027])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1159 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1183 = mem[_1159]
                    require mem[_1159] == mem[_1159]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = owner
                    mem[mem[64] + 68] = _1183
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), owner, _1183
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1353 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1353] == bool(mem[_1353])
                else:
                    if stor6.length >= 10:
                        mem[mem[64] + 32] = block.timestamp
                        mem[mem[64] + 64] = address(msg.sender)
                        _959 = mem[64]
                        mem[mem[64]] = 52
                        mem[64] = mem[64] + 84
                        idx = 0
                        s = 0
                        while idx < 5:
                            if stor6.length < 1:
                                revert with 'NH{q', 17
                            if not stor6.length - 1:
                                revert with 'NH{q', 18
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 3 * stor3 * stor6.length / 4 / 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 3 * stor3 * stor6.length / 4 / 10
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2090 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2090] == bool(mem[_2090])
                            if s + sha3(mem[_959 + 32 len mem[_959]]) % stor6.length - 1 >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor6[s + sha3(mem[_959 + 32 len mem[_959]]) % stor6.length - 1].field_0
                            mem[mem[64] + 68] = 3 * stor3 * stor6.length / 4 / 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length / 4 / 10
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2358 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2358] == bool(mem[_2358])
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = Mask(248, 0, s) * 0.00390625
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1954 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1995 = mem[_1954]
                        require mem[_1954] == mem[_1954]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _1995
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), _1995
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2162 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2162] == bool(mem[_2162])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2335 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2382 = mem[_2335]
                        require mem[_2335] == mem[_2335]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = owner
                        mem[mem[64] + 68] = _2382
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), owner, _2382
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2510 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2510] == bool(mem[_2510])
                    else:
                        if stor6.length < 5:
                            revert with 'NH{q', 17
                        mem[mem[64] + 32] = block.timestamp
                        mem[mem[64] + 64] = address(msg.sender)
                        _999 = mem[64]
                        mem[mem[64]] = 52
                        mem[64] = mem[64] + 84
                        idx = 0
                        s = 0
                        while idx < stor6.length - 5:
                            if stor6.length < 1:
                                revert with 'NH{q', 17
                            if not stor6.length - 1:
                                revert with 'NH{q', 18
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 3 * stor3 * stor6.length / 4 / 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 3 * stor3 * stor6.length / 4 / 10
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2089 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2089] == bool(mem[_2089])
                            if s + sha3(mem[_999 + 32 len mem[_999]]) % stor6.length - 1 >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor6[s + sha3(mem[_999 + 32 len mem[_999]]) % stor6.length - 1].field_0
                            mem[mem[64] + 68] = 3 * stor3 * stor6.length / 4 / 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length / 4 / 10
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2357 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2357] == bool(mem[_2357])
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = Mask(248, 0, s) * 0.00390625
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1953 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1993 = mem[_1953]
                        require mem[_1953] == mem[_1953]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _1993
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), _1993
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2161 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2161] == bool(mem[_2161])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2333 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2381 = mem[_2333]
                        require mem[_2333] == mem[_2333]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = owner
                        mem[mem[64] + 68] = _2381
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), owner, _2381
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2509 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2509] == bool(mem[_2509])
            else:
                if 3 * stor3 * stor6.length / 4 / 10 and stor6.length > -1 / 3 * stor3 * stor6.length / 4 / 10:
                    revert with 'NH{q', 17
                mem[ceil32(return_data.size) + 100] = this.address
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 3 * stor3 * stor6.length / 4 / 10 * stor6.length:
                    revert with 0, 'Pool balance is no enough.'
                idx = 0
                while idx < stor5.length:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 3 * stor3 * stor6.length / 4 / 10
                    require ext_code.size(tokenAddress)
                    call tokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 3 * stor3 * stor6.length / 4 / 10
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _924 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_924] == bool(mem[_924])
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[0] = 5
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor5[idx].field_0
                    mem[mem[64] + 68] = 3 * stor3 * stor6.length / 4 / 10
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), stor5[idx].field_0, 3 * stor3 * stor6.length / 4 / 10
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1076 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1076] == bool(mem[_1076])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if stor6.length <= 5:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _900 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _923 = mem[_900]
                    require mem[_900] == mem[_900]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _923
                    require ext_code.size(tokenAddress)
                    call tokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), _923
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1028 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1028] == bool(mem[_1028])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1160 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1185 = mem[_1160]
                    require mem[_1160] == mem[_1160]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = owner
                    mem[mem[64] + 68] = _1185
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), owner, _1185
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1356 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1356] == bool(mem[_1356])
                else:
                    if stor6.length >= 10:
                        mem[mem[64] + 32] = block.timestamp
                        mem[mem[64] + 64] = address(msg.sender)
                        _962 = mem[64]
                        mem[mem[64]] = 52
                        mem[64] = mem[64] + 84
                        idx = 0
                        s = 0
                        while idx < 5:
                            if stor6.length < 1:
                                revert with 'NH{q', 17
                            if not stor6.length - 1:
                                revert with 'NH{q', 18
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 3 * stor3 * stor6.length / 4 / 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 3 * stor3 * stor6.length / 4 / 10
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2092 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2092] == bool(mem[_2092])
                            if s + sha3(mem[_962 + 32 len mem[_962]]) % stor6.length - 1 >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor6[s + sha3(mem[_962 + 32 len mem[_962]]) % stor6.length - 1].field_0
                            mem[mem[64] + 68] = 3 * stor3 * stor6.length / 4 / 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length / 4 / 10
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2360 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2360] == bool(mem[_2360])
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = Mask(248, 0, s) * 0.00390625
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1956 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1999 = mem[_1956]
                        require mem[_1956] == mem[_1956]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _1999
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), _1999
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2164 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2164] == bool(mem[_2164])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2339 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2384 = mem[_2339]
                        require mem[_2339] == mem[_2339]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = owner
                        mem[mem[64] + 68] = _2384
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), owner, _2384
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2512 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2512] == bool(mem[_2512])
                    else:
                        if stor6.length < 5:
                            revert with 'NH{q', 17
                        mem[mem[64] + 32] = block.timestamp
                        mem[mem[64] + 64] = address(msg.sender)
                        _1002 = mem[64]
                        mem[mem[64]] = 52
                        mem[64] = mem[64] + 84
                        idx = 0
                        s = 0
                        while idx < stor6.length - 5:
                            if stor6.length < 1:
                                revert with 'NH{q', 17
                            if not stor6.length - 1:
                                revert with 'NH{q', 18
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 3 * stor3 * stor6.length / 4 / 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 3 * stor3 * stor6.length / 4 / 10
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2091 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2091] == bool(mem[_2091])
                            if s + sha3(mem[_1002 + 32 len mem[_1002]]) % stor6.length - 1 >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor6[s + sha3(mem[_1002 + 32 len mem[_1002]]) % stor6.length - 1].field_0
                            mem[mem[64] + 68] = 3 * stor3 * stor6.length / 4 / 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length / 4 / 10
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2359 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2359] == bool(mem[_2359])
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = Mask(248, 0, s) * 0.00390625
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1955 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1997 = mem[_1955]
                        require mem[_1955] == mem[_1955]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _1997
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), _1997
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2163 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2163] == bool(mem[_2163])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2337 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2383 = mem[_2337]
                        require mem[_2337] == mem[_2337]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = owner
                        mem[mem[64] + 68] = _2383
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), owner, _2383
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2511 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2511] == bool(mem[_2511])
        else:
            if not stor6.length:
                revert with 'NH{q', 18
            if stor6.length >= 10:
                if 3 * stor3 * stor6.length / 4 / stor6.length and 10 > -1 / 3 * stor3 * stor6.length / 4 / stor6.length:
                    revert with 'NH{q', 17
                mem[ceil32(return_data.size) + 100] = this.address
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 10 * 3 * stor3 * stor6.length / 4 / stor6.length:
                    revert with 0, 'Pool balance is no enough.'
                idx = 0
                while idx < stor5.length:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 3 * stor3 * stor6.length / 4 / stor6.length
                    require ext_code.size(tokenAddress)
                    call tokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 3 * stor3 * stor6.length / 4 / stor6.length
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _918 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_918] == bool(mem[_918])
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[0] = 5
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor5[idx].field_0
                    mem[mem[64] + 68] = 3 * stor3 * stor6.length / 4 / stor6.length
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), stor5[idx].field_0, 3 * stor3 * stor6.length / 4 / stor6.length
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1073 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1073] == bool(mem[_1073])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if stor6.length <= 5:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _897 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _917 = mem[_897]
                    require mem[_897] == mem[_897]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _917
                    require ext_code.size(tokenAddress)
                    call tokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), _917
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1025 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1025] == bool(mem[_1025])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1157 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1179 = mem[_1157]
                    require mem[_1157] == mem[_1157]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = owner
                    mem[mem[64] + 68] = _1179
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), owner, _1179
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1347 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1347] == bool(mem[_1347])
                else:
                    if stor6.length >= 10:
                        mem[mem[64] + 32] = block.timestamp
                        mem[mem[64] + 64] = address(msg.sender)
                        _953 = mem[64]
                        mem[mem[64]] = 52
                        mem[64] = mem[64] + 84
                        idx = 0
                        s = 0
                        while idx < 5:
                            if stor6.length < 1:
                                revert with 'NH{q', 17
                            if not stor6.length - 1:
                                revert with 'NH{q', 18
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 3 * stor3 * stor6.length / 4 / stor6.length
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 3 * stor3 * stor6.length / 4 / stor6.length
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2086 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2086] == bool(mem[_2086])
                            if s + sha3(mem[_953 + 32 len mem[_953]]) % stor6.length - 1 >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor6[s + sha3(mem[_953 + 32 len mem[_953]]) % stor6.length - 1].field_0
                            mem[mem[64] + 68] = 3 * stor3 * stor6.length / 4 / stor6.length
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length / 4 / stor6.length
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2354 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2354] == bool(mem[_2354])
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = Mask(248, 0, s) * 0.00390625
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1950 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1987 = mem[_1950]
                        require mem[_1950] == mem[_1950]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _1987
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), _1987
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2158 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2158] == bool(mem[_2158])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2327 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2378 = mem[_2327]
                        require mem[_2327] == mem[_2327]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = owner
                        mem[mem[64] + 68] = _2378
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), owner, _2378
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2506 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2506] == bool(mem[_2506])
                    else:
                        if stor6.length < 5:
                            revert with 'NH{q', 17
                        mem[mem[64] + 32] = block.timestamp
                        mem[mem[64] + 64] = address(msg.sender)
                        _993 = mem[64]
                        mem[mem[64]] = 52
                        mem[64] = mem[64] + 84
                        idx = 0
                        s = 0
                        while idx < stor6.length - 5:
                            if stor6.length < 1:
                                revert with 'NH{q', 17
                            if not stor6.length - 1:
                                revert with 'NH{q', 18
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 3 * stor3 * stor6.length / 4 / stor6.length
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 3 * stor3 * stor6.length / 4 / stor6.length
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2085 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2085] == bool(mem[_2085])
                            if s + sha3(mem[_993 + 32 len mem[_993]]) % stor6.length - 1 >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor6[s + sha3(mem[_993 + 32 len mem[_993]]) % stor6.length - 1].field_0
                            mem[mem[64] + 68] = 3 * stor3 * stor6.length / 4 / stor6.length
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length / 4 / stor6.length
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2353 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2353] == bool(mem[_2353])
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = Mask(248, 0, s) * 0.00390625
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1949 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1985 = mem[_1949]
                        require mem[_1949] == mem[_1949]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _1985
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), _1985
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2157 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2157] == bool(mem[_2157])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2325 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2377 = mem[_2325]
                        require mem[_2325] == mem[_2325]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = owner
                        mem[mem[64] + 68] = _2377
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), owner, _2377
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2505 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2505] == bool(mem[_2505])
            else:
                if 3 * stor3 * stor6.length / 4 / stor6.length and stor6.length > -1 / 3 * stor3 * stor6.length / 4 / stor6.length:
                    revert with 'NH{q', 17
                mem[ceil32(return_data.size) + 100] = this.address
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 3 * stor3 * stor6.length / 4 / stor6.length * stor6.length:
                    revert with 0, 'Pool balance is no enough.'
                idx = 0
                while idx < stor5.length:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 3 * stor3 * stor6.length / 4 / stor6.length
                    require ext_code.size(tokenAddress)
                    call tokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 3 * stor3 * stor6.length / 4 / stor6.length
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _920 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_920] == bool(mem[_920])
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[0] = 5
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor5[idx].field_0
                    mem[mem[64] + 68] = 3 * stor3 * stor6.length / 4 / stor6.length
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), stor5[idx].field_0, 3 * stor3 * stor6.length / 4 / stor6.length
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1074 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1074] == bool(mem[_1074])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if stor6.length <= 5:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _898 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _919 = mem[_898]
                    require mem[_898] == mem[_898]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = _919
                    require ext_code.size(tokenAddress)
                    call tokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), _919
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1026 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1026] == bool(mem[_1026])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1158 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1181 = mem[_1158]
                    require mem[_1158] == mem[_1158]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = owner
                    mem[mem[64] + 68] = _1181
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), owner, _1181
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1350 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1350] == bool(mem[_1350])
                else:
                    if stor6.length >= 10:
                        mem[mem[64] + 32] = block.timestamp
                        mem[mem[64] + 64] = address(msg.sender)
                        _956 = mem[64]
                        mem[mem[64]] = 52
                        mem[64] = mem[64] + 84
                        idx = 0
                        s = 0
                        while idx < 5:
                            if stor6.length < 1:
                                revert with 'NH{q', 17
                            if not stor6.length - 1:
                                revert with 'NH{q', 18
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 3 * stor3 * stor6.length / 4 / stor6.length
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 3 * stor3 * stor6.length / 4 / stor6.length
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2088 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2088] == bool(mem[_2088])
                            if s + sha3(mem[_956 + 32 len mem[_956]]) % stor6.length - 1 >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor6[s + sha3(mem[_956 + 32 len mem[_956]]) % stor6.length - 1].field_0
                            mem[mem[64] + 68] = 3 * stor3 * stor6.length / 4 / stor6.length
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length / 4 / stor6.length
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2356 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2356] == bool(mem[_2356])
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = Mask(248, 0, s) * 0.00390625
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1952 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1991 = mem[_1952]
                        require mem[_1952] == mem[_1952]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _1991
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), _1991
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2160 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2160] == bool(mem[_2160])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2331 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2380 = mem[_2331]
                        require mem[_2331] == mem[_2331]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = owner
                        mem[mem[64] + 68] = _2380
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), owner, _2380
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2508 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2508] == bool(mem[_2508])
                    else:
                        if stor6.length < 5:
                            revert with 'NH{q', 17
                        mem[mem[64] + 32] = block.timestamp
                        mem[mem[64] + 64] = address(msg.sender)
                        _996 = mem[64]
                        mem[mem[64]] = 52
                        mem[64] = mem[64] + 84
                        idx = 0
                        s = 0
                        while idx < stor6.length - 5:
                            if stor6.length < 1:
                                revert with 'NH{q', 17
                            if not stor6.length - 1:
                                revert with 'NH{q', 18
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 3 * stor3 * stor6.length / 4 / stor6.length
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 3 * stor3 * stor6.length / 4 / stor6.length
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2087 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2087] == bool(mem[_2087])
                            if s + sha3(mem[_996 + 32 len mem[_996]]) % stor6.length - 1 >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor6[s + sha3(mem[_996 + 32 len mem[_996]]) % stor6.length - 1].field_0
                            mem[mem[64] + 68] = 3 * stor3 * stor6.length / 4 / stor6.length
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length / 4 / stor6.length
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2355 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2355] == bool(mem[_2355])
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = Mask(248, 0, s) * 0.00390625
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1951 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1989 = mem[_1951]
                        require mem[_1951] == mem[_1951]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _1989
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), _1989
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2159 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2159] == bool(mem[_2159])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2329 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2379 = mem[_2329]
                        require mem[_2329] == mem[_2329]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = owner
                        mem[mem[64] + 68] = _2379
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), owner, _2379
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2507 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2507] == bool(mem[_2507])
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if stor3 and stor6.length > -1 / stor3:
                revert with 'NH{q', 17
            if stor3 * stor6.length and 10^ext_call.return_data[31 len 1] > -1 / stor3 * stor6.length:
                revert with 'NH{q', 17
            if Mask(254, 2, stor3 * stor6.length * 10^ext_call.return_data[31 len 1]) and 3 > -1 / stor3 * stor6.length * 10^ext_call.return_data[31 len 1] / 4:
                revert with 'NH{q', 17
            if stor6.length >= 10:
                if stor6.length >= 10:
                    if 3 * stor3 * stor6.length * 10^ext_call.return_data[31 len 1] / 4 / 10 and 10 > -1 / 3 * stor3 * stor6.length * 10^ext_call.return_data[31 len 1] / 4 / 10:
                        revert with 'NH{q', 17
                    mem[ceil32(return_data.size) + 100] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 10 * 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10:
                        revert with 0, 'Pool balance is no enough.'
                    idx = 0
                    while idx < stor5.length:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _914 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_914] == bool(mem[_914])
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[0] = 5
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor5[idx].field_0
                        mem[mem[64] + 68] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor5[idx].field_0, 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1071 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1071] == bool(mem[_1071])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if stor6.length <= 5:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _895 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _913 = mem[_895]
                        require mem[_895] == mem[_895]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _913
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), _913
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1023 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1023] == bool(mem[_1023])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1155 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1175 = mem[_1155]
                        require mem[_1155] == mem[_1155]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = owner
                        mem[mem[64] + 68] = _1175
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), owner, _1175
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1341 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1341] == bool(mem[_1341])
                    else:
                        if stor6.length >= 10:
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            _947 = mem[64]
                            mem[mem[64]] = 52
                            mem[64] = mem[64] + 84
                            idx = 0
                            s = 0
                            while idx < 5:
                                if stor6.length < 1:
                                    revert with 'NH{q', 17
                                if not stor6.length - 1:
                                    revert with 'NH{q', 18
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2082 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2082] == bool(mem[_2082])
                                if s + sha3(mem[_947 + 32 len mem[_947]]) % stor6.length - 1 >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = stor6[s + sha3(mem[_947 + 32 len mem[_947]]) % stor6.length - 1].field_0
                                mem[mem[64] + 68] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2350 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2350] == bool(mem[_2350])
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = Mask(248, 0, s) * 0.00390625
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1946 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1979 = mem[_1946]
                            require mem[_1946] == mem[_1946]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _1979
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _1979
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2154 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2154] == bool(mem[_2154])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2319 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2374 = mem[_2319]
                            require mem[_2319] == mem[_2319]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = owner
                            mem[mem[64] + 68] = _2374
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), owner, _2374
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2502 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2502] == bool(mem[_2502])
                        else:
                            if stor6.length < 5:
                                revert with 'NH{q', 17
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            _987 = mem[64]
                            mem[mem[64]] = 52
                            mem[64] = mem[64] + 84
                            idx = 0
                            s = 0
                            while idx < stor6.length - 5:
                                if stor6.length < 1:
                                    revert with 'NH{q', 17
                                if not stor6.length - 1:
                                    revert with 'NH{q', 18
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2081 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2081] == bool(mem[_2081])
                                if s + sha3(mem[_987 + 32 len mem[_987]]) % stor6.length - 1 >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = stor6[s + sha3(mem[_987 + 32 len mem[_987]]) % stor6.length - 1].field_0
                                mem[mem[64] + 68] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2349 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2349] == bool(mem[_2349])
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = Mask(248, 0, s) * 0.00390625
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1945 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1977 = mem[_1945]
                            require mem[_1945] == mem[_1945]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _1977
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _1977
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2153 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2153] == bool(mem[_2153])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2317 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2373 = mem[_2317]
                            require mem[_2317] == mem[_2317]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = owner
                            mem[mem[64] + 68] = _2373
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), owner, _2373
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2501 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2501] == bool(mem[_2501])
                else:
                    if 3 * stor3 * stor6.length * 10^ext_call.return_data[31 len 1] / 4 / 10 and stor6.length > -1 / 3 * stor3 * stor6.length * 10^ext_call.return_data[31 len 1] / 4 / 10:
                        revert with 'NH{q', 17
                    mem[ceil32(return_data.size) + 100] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10 * stor6.length:
                        revert with 0, 'Pool balance is no enough.'
                    idx = 0
                    while idx < stor5.length:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _916 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_916] == bool(mem[_916])
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[0] = 5
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor5[idx].field_0
                        mem[mem[64] + 68] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor5[idx].field_0, 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1072 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1072] == bool(mem[_1072])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if stor6.length <= 5:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _896 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _915 = mem[_896]
                        require mem[_896] == mem[_896]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _915
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), _915
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1024 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1024] == bool(mem[_1024])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1156 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1177 = mem[_1156]
                        require mem[_1156] == mem[_1156]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = owner
                        mem[mem[64] + 68] = _1177
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), owner, _1177
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1344 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1344] == bool(mem[_1344])
                    else:
                        if stor6.length >= 10:
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            _950 = mem[64]
                            mem[mem[64]] = 52
                            mem[64] = mem[64] + 84
                            idx = 0
                            s = 0
                            while idx < 5:
                                if stor6.length < 1:
                                    revert with 'NH{q', 17
                                if not stor6.length - 1:
                                    revert with 'NH{q', 18
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2084 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2084] == bool(mem[_2084])
                                if s + sha3(mem[_950 + 32 len mem[_950]]) % stor6.length - 1 >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = stor6[s + sha3(mem[_950 + 32 len mem[_950]]) % stor6.length - 1].field_0
                                mem[mem[64] + 68] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2352 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2352] == bool(mem[_2352])
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = Mask(248, 0, s) * 0.00390625
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1948 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1983 = mem[_1948]
                            require mem[_1948] == mem[_1948]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _1983
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _1983
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2156 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2156] == bool(mem[_2156])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2323 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2376 = mem[_2323]
                            require mem[_2323] == mem[_2323]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = owner
                            mem[mem[64] + 68] = _2376
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), owner, _2376
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2504 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2504] == bool(mem[_2504])
                        else:
                            if stor6.length < 5:
                                revert with 'NH{q', 17
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            _990 = mem[64]
                            mem[mem[64]] = 52
                            mem[64] = mem[64] + 84
                            idx = 0
                            s = 0
                            while idx < stor6.length - 5:
                                if stor6.length < 1:
                                    revert with 'NH{q', 17
                                if not stor6.length - 1:
                                    revert with 'NH{q', 18
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2083 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2083] == bool(mem[_2083])
                                if s + sha3(mem[_990 + 32 len mem[_990]]) % stor6.length - 1 >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = stor6[s + sha3(mem[_990 + 32 len mem[_990]]) % stor6.length - 1].field_0
                                mem[mem[64] + 68] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / 10
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2351 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2351] == bool(mem[_2351])
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = Mask(248, 0, s) * 0.00390625
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1947 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1981 = mem[_1947]
                            require mem[_1947] == mem[_1947]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _1981
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _1981
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2155 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2155] == bool(mem[_2155])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2321 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2375 = mem[_2321]
                            require mem[_2321] == mem[_2321]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = owner
                            mem[mem[64] + 68] = _2375
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), owner, _2375
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2503 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2503] == bool(mem[_2503])
            else:
                if not stor6.length:
                    revert with 'NH{q', 18
                if stor6.length >= 10:
                    if 3 * stor3 * stor6.length * 10^ext_call.return_data[31 len 1] / 4 / stor6.length and 10 > -1 / 3 * stor3 * stor6.length * 10^ext_call.return_data[31 len 1] / 4 / stor6.length:
                        revert with 'NH{q', 17
                    mem[ceil32(return_data.size) + 100] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 10 * 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length:
                        revert with 0, 'Pool balance is no enough.'
                    idx = 0
                    while idx < stor5.length:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _910 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_910] == bool(mem[_910])
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[0] = 5
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor5[idx].field_0
                        mem[mem[64] + 68] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor5[idx].field_0, 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1069 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1069] == bool(mem[_1069])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if stor6.length <= 5:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _893 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _909 = mem[_893]
                        require mem[_893] == mem[_893]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _909
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), _909
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1021 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1021] == bool(mem[_1021])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1153 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1171 = mem[_1153]
                        require mem[_1153] == mem[_1153]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = owner
                        mem[mem[64] + 68] = _1171
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), owner, _1171
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1335 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1335] == bool(mem[_1335])
                    else:
                        if stor6.length >= 10:
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            _941 = mem[64]
                            mem[mem[64]] = 52
                            mem[64] = mem[64] + 84
                            idx = 0
                            s = 0
                            while idx < 5:
                                if stor6.length < 1:
                                    revert with 'NH{q', 17
                                if not stor6.length - 1:
                                    revert with 'NH{q', 18
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2078 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2078] == bool(mem[_2078])
                                if s + sha3(mem[_941 + 32 len mem[_941]]) % stor6.length - 1 >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = stor6[s + sha3(mem[_941 + 32 len mem[_941]]) % stor6.length - 1].field_0
                                mem[mem[64] + 68] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2346 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2346] == bool(mem[_2346])
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = Mask(248, 0, s) * 0.00390625
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1942 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1971 = mem[_1942]
                            require mem[_1942] == mem[_1942]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _1971
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _1971
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2150 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2150] == bool(mem[_2150])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2311 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2370 = mem[_2311]
                            require mem[_2311] == mem[_2311]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = owner
                            mem[mem[64] + 68] = _2370
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), owner, _2370
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2498 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2498] == bool(mem[_2498])
                        else:
                            if stor6.length < 5:
                                revert with 'NH{q', 17
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            _981 = mem[64]
                            mem[mem[64]] = 52
                            mem[64] = mem[64] + 84
                            idx = 0
                            s = 0
                            while idx < stor6.length - 5:
                                if stor6.length < 1:
                                    revert with 'NH{q', 17
                                if not stor6.length - 1:
                                    revert with 'NH{q', 18
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2077 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2077] == bool(mem[_2077])
                                if s + sha3(mem[_981 + 32 len mem[_981]]) % stor6.length - 1 >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = stor6[s + sha3(mem[_981 + 32 len mem[_981]]) % stor6.length - 1].field_0
                                mem[mem[64] + 68] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2345 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2345] == bool(mem[_2345])
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = Mask(248, 0, s) * 0.00390625
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1941 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1969 = mem[_1941]
                            require mem[_1941] == mem[_1941]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _1969
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _1969
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2149 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2149] == bool(mem[_2149])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2309 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2369 = mem[_2309]
                            require mem[_2309] == mem[_2309]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = owner
                            mem[mem[64] + 68] = _2369
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), owner, _2369
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2497 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2497] == bool(mem[_2497])
                else:
                    if 3 * stor3 * stor6.length * 10^ext_call.return_data[31 len 1] / 4 / stor6.length and stor6.length > -1 / 3 * stor3 * stor6.length * 10^ext_call.return_data[31 len 1] / 4 / stor6.length:
                        revert with 'NH{q', 17
                    mem[ceil32(return_data.size) + 100] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length * stor6.length:
                        revert with 0, 'Pool balance is no enough.'
                    idx = 0
                    while idx < stor5.length:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _912 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_912] == bool(mem[_912])
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[0] = 5
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor5[idx].field_0
                        mem[mem[64] + 68] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor5[idx].field_0, 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1070 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1070] == bool(mem[_1070])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if stor6.length <= 5:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _894 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _911 = mem[_894]
                        require mem[_894] == mem[_894]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _911
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), _911
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1022 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1022] == bool(mem[_1022])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1154 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1173 = mem[_1154]
                        require mem[_1154] == mem[_1154]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = owner
                        mem[mem[64] + 68] = _1173
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), owner, _1173
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1338 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1338] == bool(mem[_1338])
                    else:
                        if stor6.length >= 10:
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            _944 = mem[64]
                            mem[mem[64]] = 52
                            mem[64] = mem[64] + 84
                            idx = 0
                            s = 0
                            while idx < 5:
                                if stor6.length < 1:
                                    revert with 'NH{q', 17
                                if not stor6.length - 1:
                                    revert with 'NH{q', 18
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2080 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2080] == bool(mem[_2080])
                                if s + sha3(mem[_944 + 32 len mem[_944]]) % stor6.length - 1 >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = stor6[s + sha3(mem[_944 + 32 len mem[_944]]) % stor6.length - 1].field_0
                                mem[mem[64] + 68] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2348 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2348] == bool(mem[_2348])
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = Mask(248, 0, s) * 0.00390625
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1944 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1975 = mem[_1944]
                            require mem[_1944] == mem[_1944]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _1975
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _1975
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2152 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2152] == bool(mem[_2152])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2315 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2372 = mem[_2315]
                            require mem[_2315] == mem[_2315]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = owner
                            mem[mem[64] + 68] = _2372
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), owner, _2372
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2500 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2500] == bool(mem[_2500])
                        else:
                            if stor6.length < 5:
                                revert with 'NH{q', 17
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            _984 = mem[64]
                            mem[mem[64]] = 52
                            mem[64] = mem[64] + 84
                            idx = 0
                            s = 0
                            while idx < stor6.length - 5:
                                if stor6.length < 1:
                                    revert with 'NH{q', 17
                                if not stor6.length - 1:
                                    revert with 'NH{q', 18
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2079 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2079] == bool(mem[_2079])
                                if s + sha3(mem[_984 + 32 len mem[_984]]) % stor6.length - 1 >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = stor6[s + sha3(mem[_984 + 32 len mem[_984]]) % stor6.length - 1].field_0
                                mem[mem[64] + 68] = 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length * 10^uint8(ext_call.return_data[0]) / 4 / stor6.length
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2347 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2347] == bool(mem[_2347])
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = Mask(248, 0, s) * 0.00390625
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1943 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1973 = mem[_1943]
                            require mem[_1943] == mem[_1943]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _1973
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _1973
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2151 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2151] == bool(mem[_2151])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2313 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2371 = mem[_2313]
                            require mem[_2313] == mem[_2313]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = owner
                            mem[mem[64] + 68] = _2371
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), owner, _2371
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2499 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2499] == bool(mem[_2499])
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if stor3 and stor6.length > -1 / stor3:
                revert with 'NH{q', 17
            if stor3 * stor6.length and t * s > -1 / stor3 * stor6.length:
                revert with 'NH{q', 17
            if Mask(254, 2, stor3 * stor6.length * t * s) and 3 > -1 / stor3 * stor6.length * t * s / 4:
                revert with 'NH{q', 17
            if stor6.length >= 10:
                if stor6.length >= 10:
                    if 3 * stor3 * stor6.length * t * s / 4 / 10 and 10 > -1 / 3 * stor3 * stor6.length * t * s / 4 / 10:
                        revert with 'NH{q', 17
                    mem[ceil32(return_data.size) + 100] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 10 * 3 * stor3 * stor6.length * t * s / 4 / 10:
                        revert with 0, 'Pool balance is no enough.'
                    idx = 0
                    while idx < stor5.length:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 3 * stor3 * stor6.length * t * s / 4 / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 3 * stor3 * stor6.length * t * s / 4 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1966 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1966] == bool(mem[_1966])
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[0] = 5
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor5[idx].field_0
                        mem[mem[64] + 68] = 3 * stor3 * stor6.length * t * s / 4 / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor5[idx].field_0, 3 * stor3 * stor6.length * t * s / 4 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2235 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2235] == bool(mem[_2235])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if stor6.length <= 5:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1939 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1965 = mem[_1939]
                        require mem[_1939] == mem[_1939]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _1965
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), _1965
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2147 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2147] == bool(mem[_2147])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2307 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2365 = mem[_2307]
                        require mem[_2307] == mem[_2307]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = owner
                        mem[mem[64] + 68] = _2365
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), owner, _2365
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2491 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2491] == bool(mem[_2491])
                    else:
                        if stor6.length >= 10:
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            _2039 = mem[64]
                            mem[mem[64]] = 52
                            mem[64] = mem[64] + 84
                            idx = 0
                            u = 0
                            while idx < 5:
                                if stor6.length < 1:
                                    revert with 'NH{q', 17
                                if not stor6.length - 1:
                                    revert with 'NH{q', 18
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 3 * stor3 * stor6.length * t * s / 4 / 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * stor3 * stor6.length * t * s / 4 / 10
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3006 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3006] == bool(mem[_3006])
                                if u + sha3(mem[_2039 + 32 len mem[_2039]]) % stor6.length - 1 >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = stor6[u + sha3(mem[_2039 + 32 len mem[_2039]]) % stor6.length - 1].field_0
                                mem[mem[64] + 68] = 3 * stor3 * stor6.length * t * s / 4 / 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length * t * s / 4 / 10
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3094 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3094] == bool(mem[_3094])
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = Mask(248, 0, u) * 0.00390625
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2910 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2923 = mem[_2910]
                            require mem[_2910] == mem[_2910]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _2923
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _2923
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3030 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3030] == bool(mem[_3030])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3083 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3102 = mem[_3083]
                            require mem[_3083] == mem[_3083]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = owner
                            mem[mem[64] + 68] = _3102
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), owner, _3102
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3134 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3134] == bool(mem[_3134])
                        else:
                            if stor6.length < 5:
                                revert with 'NH{q', 17
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            _2099 = mem[64]
                            mem[mem[64]] = 52
                            mem[64] = mem[64] + 84
                            idx = 0
                            u = 0
                            while idx < stor6.length - 5:
                                if stor6.length < 1:
                                    revert with 'NH{q', 17
                                if not stor6.length - 1:
                                    revert with 'NH{q', 18
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 3 * stor3 * stor6.length * t * s / 4 / 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * stor3 * stor6.length * t * s / 4 / 10
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3005 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3005] == bool(mem[_3005])
                                if u + sha3(mem[_2099 + 32 len mem[_2099]]) % stor6.length - 1 >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = stor6[u + sha3(mem[_2099 + 32 len mem[_2099]]) % stor6.length - 1].field_0
                                mem[mem[64] + 68] = 3 * stor3 * stor6.length * t * s / 4 / 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length * t * s / 4 / 10
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3093 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3093] == bool(mem[_3093])
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = Mask(248, 0, u) * 0.00390625
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2909 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2921 = mem[_2909]
                            require mem[_2909] == mem[_2909]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _2921
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _2921
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3029 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3029] == bool(mem[_3029])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3081 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3101 = mem[_3081]
                            require mem[_3081] == mem[_3081]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = owner
                            mem[mem[64] + 68] = _3101
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), owner, _3101
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3133 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3133] == bool(mem[_3133])
                else:
                    if 3 * stor3 * stor6.length * t * s / 4 / 10 and stor6.length > -1 / 3 * stor3 * stor6.length * t * s / 4 / 10:
                        revert with 'NH{q', 17
                    mem[ceil32(return_data.size) + 100] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 3 * stor3 * stor6.length * t * s / 4 / 10 * stor6.length:
                        revert with 0, 'Pool balance is no enough.'
                    idx = 0
                    while idx < stor5.length:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 3 * stor3 * stor6.length * t * s / 4 / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 3 * stor3 * stor6.length * t * s / 4 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1968 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1968] == bool(mem[_1968])
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[0] = 5
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor5[idx].field_0
                        mem[mem[64] + 68] = 3 * stor3 * stor6.length * t * s / 4 / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor5[idx].field_0, 3 * stor3 * stor6.length * t * s / 4 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2236 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2236] == bool(mem[_2236])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if stor6.length <= 5:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1940 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1967 = mem[_1940]
                        require mem[_1940] == mem[_1940]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _1967
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), _1967
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2148 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2148] == bool(mem[_2148])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2308 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2367 = mem[_2308]
                        require mem[_2308] == mem[_2308]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = owner
                        mem[mem[64] + 68] = _2367
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), owner, _2367
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2494 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2494] == bool(mem[_2494])
                    else:
                        if stor6.length >= 10:
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            _2042 = mem[64]
                            mem[mem[64]] = 52
                            mem[64] = mem[64] + 84
                            idx = 0
                            u = 0
                            while idx < 5:
                                if stor6.length < 1:
                                    revert with 'NH{q', 17
                                if not stor6.length - 1:
                                    revert with 'NH{q', 18
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 3 * stor3 * stor6.length * t * s / 4 / 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * stor3 * stor6.length * t * s / 4 / 10
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3008 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3008] == bool(mem[_3008])
                                if u + sha3(mem[_2042 + 32 len mem[_2042]]) % stor6.length - 1 >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = stor6[u + sha3(mem[_2042 + 32 len mem[_2042]]) % stor6.length - 1].field_0
                                mem[mem[64] + 68] = 3 * stor3 * stor6.length * t * s / 4 / 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length * t * s / 4 / 10
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3096 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3096] == bool(mem[_3096])
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = Mask(248, 0, u) * 0.00390625
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2912 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2927 = mem[_2912]
                            require mem[_2912] == mem[_2912]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _2927
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _2927
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3032 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3032] == bool(mem[_3032])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3087 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3104 = mem[_3087]
                            require mem[_3087] == mem[_3087]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = owner
                            mem[mem[64] + 68] = _3104
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), owner, _3104
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3136 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3136] == bool(mem[_3136])
                        else:
                            if stor6.length < 5:
                                revert with 'NH{q', 17
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            _2102 = mem[64]
                            mem[mem[64]] = 52
                            mem[64] = mem[64] + 84
                            idx = 0
                            u = 0
                            while idx < stor6.length - 5:
                                if stor6.length < 1:
                                    revert with 'NH{q', 17
                                if not stor6.length - 1:
                                    revert with 'NH{q', 18
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 3 * stor3 * stor6.length * t * s / 4 / 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * stor3 * stor6.length * t * s / 4 / 10
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3007 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3007] == bool(mem[_3007])
                                if u + sha3(mem[_2102 + 32 len mem[_2102]]) % stor6.length - 1 >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = stor6[u + sha3(mem[_2102 + 32 len mem[_2102]]) % stor6.length - 1].field_0
                                mem[mem[64] + 68] = 3 * stor3 * stor6.length * t * s / 4 / 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length * t * s / 4 / 10
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3095 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3095] == bool(mem[_3095])
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = Mask(248, 0, u) * 0.00390625
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2911 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2925 = mem[_2911]
                            require mem[_2911] == mem[_2911]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _2925
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _2925
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3031 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3031] == bool(mem[_3031])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3085 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3103 = mem[_3085]
                            require mem[_3085] == mem[_3085]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = owner
                            mem[mem[64] + 68] = _3103
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), owner, _3103
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3135 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3135] == bool(mem[_3135])
            else:
                if not stor6.length:
                    revert with 'NH{q', 18
                if stor6.length >= 10:
                    if 3 * stor3 * stor6.length * t * s / 4 / stor6.length and 10 > -1 / 3 * stor3 * stor6.length * t * s / 4 / stor6.length:
                        revert with 'NH{q', 17
                    mem[ceil32(return_data.size) + 100] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 10 * 3 * stor3 * stor6.length * t * s / 4 / stor6.length:
                        revert with 0, 'Pool balance is no enough.'
                    idx = 0
                    while idx < stor5.length:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1962 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1962] == bool(mem[_1962])
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[0] = 5
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor5[idx].field_0
                        mem[mem[64] + 68] = 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor5[idx].field_0, 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2233 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2233] == bool(mem[_2233])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if stor6.length <= 5:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1937 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1961 = mem[_1937]
                        require mem[_1937] == mem[_1937]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _1961
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), _1961
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2145 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2145] == bool(mem[_2145])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2305 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2361 = mem[_2305]
                        require mem[_2305] == mem[_2305]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = owner
                        mem[mem[64] + 68] = _2361
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), owner, _2361
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2485 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2485] == bool(mem[_2485])
                    else:
                        if stor6.length >= 10:
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            _2033 = mem[64]
                            mem[mem[64]] = 52
                            mem[64] = mem[64] + 84
                            idx = 0
                            u = 0
                            while idx < 5:
                                if stor6.length < 1:
                                    revert with 'NH{q', 17
                                if not stor6.length - 1:
                                    revert with 'NH{q', 18
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3002 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3002] == bool(mem[_3002])
                                if u + sha3(mem[_2033 + 32 len mem[_2033]]) % stor6.length - 1 >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = stor6[u + sha3(mem[_2033 + 32 len mem[_2033]]) % stor6.length - 1].field_0
                                mem[mem[64] + 68] = 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3090 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3090] == bool(mem[_3090])
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = Mask(248, 0, u) * 0.00390625
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2906 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2915 = mem[_2906]
                            require mem[_2906] == mem[_2906]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _2915
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _2915
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3026 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3026] == bool(mem[_3026])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3075 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3098 = mem[_3075]
                            require mem[_3075] == mem[_3075]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = owner
                            mem[mem[64] + 68] = _3098
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), owner, _3098
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3130 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3130] == bool(mem[_3130])
                        else:
                            if stor6.length < 5:
                                revert with 'NH{q', 17
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            _2093 = mem[64]
                            mem[mem[64]] = 52
                            mem[64] = mem[64] + 84
                            idx = 0
                            u = 0
                            while idx < stor6.length - 5:
                                if stor6.length < 1:
                                    revert with 'NH{q', 17
                                if not stor6.length - 1:
                                    revert with 'NH{q', 18
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3001 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3001] == bool(mem[_3001])
                                if u + sha3(mem[_2093 + 32 len mem[_2093]]) % stor6.length - 1 >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = stor6[u + sha3(mem[_2093 + 32 len mem[_2093]]) % stor6.length - 1].field_0
                                mem[mem[64] + 68] = 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3089 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3089] == bool(mem[_3089])
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = Mask(248, 0, u) * 0.00390625
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2905 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2913 = mem[_2905]
                            require mem[_2905] == mem[_2905]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _2913
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _2913
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3025 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3025] == bool(mem[_3025])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3073 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3097 = mem[_3073]
                            require mem[_3073] == mem[_3073]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = owner
                            mem[mem[64] + 68] = _3097
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), owner, _3097
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3129 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3129] == bool(mem[_3129])
                else:
                    if 3 * stor3 * stor6.length * t * s / 4 / stor6.length and stor6.length > -1 / 3 * stor3 * stor6.length * t * s / 4 / stor6.length:
                        revert with 'NH{q', 17
                    mem[ceil32(return_data.size) + 100] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 3 * stor3 * stor6.length * t * s / 4 / stor6.length * stor6.length:
                        revert with 0, 'Pool balance is no enough.'
                    idx = 0
                    while idx < stor5.length:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1964 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1964] == bool(mem[_1964])
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[0] = 5
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor5[idx].field_0
                        mem[mem[64] + 68] = 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), stor5[idx].field_0, 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2234 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2234] == bool(mem[_2234])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if stor6.length <= 5:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1938 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1963 = mem[_1938]
                        require mem[_1938] == mem[_1938]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = _1963
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), _1963
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2146 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2146] == bool(mem[_2146])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2306 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2363 = mem[_2306]
                        require mem[_2306] == mem[_2306]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = owner
                        mem[mem[64] + 68] = _2363
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), owner, _2363
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2488 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2488] == bool(mem[_2488])
                    else:
                        if stor6.length >= 10:
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            _2036 = mem[64]
                            mem[mem[64]] = 52
                            mem[64] = mem[64] + 84
                            idx = 0
                            u = 0
                            while idx < 5:
                                if stor6.length < 1:
                                    revert with 'NH{q', 17
                                if not stor6.length - 1:
                                    revert with 'NH{q', 18
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3004 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3004] == bool(mem[_3004])
                                if u + sha3(mem[_2036 + 32 len mem[_2036]]) % stor6.length - 1 >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = stor6[u + sha3(mem[_2036 + 32 len mem[_2036]]) % stor6.length - 1].field_0
                                mem[mem[64] + 68] = 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3092 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3092] == bool(mem[_3092])
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = Mask(248, 0, u) * 0.00390625
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2908 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2919 = mem[_2908]
                            require mem[_2908] == mem[_2908]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _2919
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _2919
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3028 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3028] == bool(mem[_3028])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3079 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3100 = mem[_3079]
                            require mem[_3079] == mem[_3079]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = owner
                            mem[mem[64] + 68] = _3100
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), owner, _3100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3132 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3132] == bool(mem[_3132])
                        else:
                            if stor6.length < 5:
                                revert with 'NH{q', 17
                            mem[mem[64] + 32] = block.timestamp
                            mem[mem[64] + 64] = address(msg.sender)
                            _2096 = mem[64]
                            mem[mem[64]] = 52
                            mem[64] = mem[64] + 84
                            idx = 0
                            u = 0
                            while idx < stor6.length - 5:
                                if stor6.length < 1:
                                    revert with 'NH{q', 17
                                if not stor6.length - 1:
                                    revert with 'NH{q', 18
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3003 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3003] == bool(mem[_3003])
                                if u + sha3(mem[_2096 + 32 len mem[_2096]]) % stor6.length - 1 >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = stor6[u + sha3(mem[_2096 + 32 len mem[_2096]]) % stor6.length - 1].field_0
                                mem[mem[64] + 68] = 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), mem[mem[64] + 36], 3 * stor3 * stor6.length * t * s / 4 / stor6.length
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3091 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3091] == bool(mem[_3091])
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = Mask(248, 0, u) * 0.00390625
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2907 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2917 = mem[_2907]
                            require mem[_2907] == mem[_2907]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = _2917
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), _2917
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3027 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3027] == bool(mem[_3027])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3077 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3099 = mem[_3077]
                            require mem[_3077] == mem[_3077]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = owner
                            mem[mem[64] + 68] = _3099
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), owner, _3099
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3131 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3131] == bool(mem[_3131])
    idx = 0
    while idx < stor6.length:
        stor7[stor6[idx].field_0] = 0
        mem[0] = stor6[idx].field_0
        mem[32] = 8
        sub_58214308[stor6[idx].field_0] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor5.length = 0
    idx = 0
    while 2 * stor5.length > idx:
        stor5[idx].field_0 = 0
        stor5[idx].field_256 = 0
        idx = idx + 2
        continue 
    stor6.length = 0
    idx = 0
    while 2 * stor6.length > idx:
        stor6[idx].field_0 = 0
        stor6[idx].field_256 = 0
        idx = idx + 2
        continue 
    sub_bbb89b25 = 0
    if block.timestamp > -86401:
        revert with 'NH{q', 17
    stor2 = block.timestamp + (24 * 3600)
    return 1
}



}
