contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct sub_4251ea3c;
address stor2;
array of struct stor3;
mapping of uint256 stor4;
uint256 treasuryPercent;
address treasuryAddress;
uint256 sub_a06594d3;
uint256 totalRevenue;
uint256 isPaused;
uint256 totalWinners;
uint256 totalLosers;
uint256 sub_5b63ed8a;
uint256 sub_be6fe7e6;
uint256 sub_90191343;
uint256 sub_e02f7f9d;
uint256 sub_d2eb5553;
uint256 sub_71781bb8;

function treasuryPercent() {
    return treasuryPercent
}

function totalLosers() {
    return totalLosers
}

function sub_4251ea3c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4251ea3c[arg1].field_0, 
           sub_4251ea3c[arg1].field_256,
           sub_4251ea3c[arg1].field_512,
           sub_4251ea3c[arg1].field_768,
           sub_4251ea3c[arg1].field_1024,
           sub_4251ea3c[arg1].field_1280
}

function sub_5b63ed8a(?) {
    return sub_5b63ed8a
}

function sub_71781bb8(?) {
    return sub_71781bb8
}

function owner() {
    return owner
}

function sub_90191343(?) {
    return sub_90191343
}

function sub_a06594d3(?) {
    return sub_a06594d3
}

function isPaused() {
    return isPaused
}

function totalWinners() {
    return totalWinners
}

function sub_be6fe7e6(?) {
    return sub_be6fe7e6
}

function totalRevenue() {
    return totalRevenue
}

function sub_c137d643(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4251ea3c[address(arg1)].field_0, 
           sub_4251ea3c[address(arg1)].field_256,
           sub_4251ea3c[address(arg1)].field_512,
           sub_4251ea3c[address(arg1)].field_768,
           sub_4251ea3c[address(arg1)].field_1024,
           sub_4251ea3c[address(arg1)].field_1280
}

function treasuryAddress() {
    return treasuryAddress
}

function sub_d2eb5553(?) {
    return sub_d2eb5553
}

function sub_e02f7f9d(?) {
    return sub_e02f7f9d
}

function _fallback() payable {
    revert
}

function getBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return eth.balance(this.address)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_285b558f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isPaused = arg1
}

function sub_18e21d49(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5b63ed8a = arg1
}

function sub_249e87e3(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_71781bb8 = arg1
}

function sub_3870630f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_90191343 = arg1
}

function sub_b3761358(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d2eb5553 = arg1
}

function sub_e2084a10(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e02f7f9d = arg1
}

function sub_f741fed0(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be6fe7e6 = arg1
}

function setTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function setTreasuryAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function setTreasuryPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryPercent = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function joinGame(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != 1:
        if arg2 != 2:
            revert with 0, 'Can only play with 1 or 2 dice.'
    if isPaused:
        revert with 0, 'Game is currently paused.'
    if arg2 == 1:
        if arg1 != 1:
            if arg1 != 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Type of bet can only be 1 or 2 if playing with 1 dice.'
        if msg.value < sub_90191343:
            revert with 0, 'Cannot place a bet this Low.'
        if msg.value > sub_e02f7f9d:
            revert with 0, 'Cannot place a bet this High.'
    else:
        if arg2 == 2:
            if arg1 != 1:
                if arg1 != 2:
                    if arg1 != 3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Type of bet can only be 1,2 or 3 if playing with 2 dice.'
            if msg.value < sub_d2eb5553:
                revert with 0, 'Cannot place a bet this Low.'
            if msg.value > sub_71781bb8:
                revert with 0, 'Cannot place a bet this High.'
    if sub_4251ea3c[address(msg.sender)].field_768 == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot have multiple bets going at once.'
    sub_4251ea3c[address(msg.sender)].field_768 = 1
    sub_4251ea3c[address(msg.sender)].field_512 = msg.value
    sub_4251ea3c[address(msg.sender)].field_256 = arg1
    sub_4251ea3c[address(msg.sender)].field_0 = arg2
    if not stor4[address(msg.sender)]:
        stor3.length++
        stor3[stor3.length].field_0 = msg.sender
        stor3[stor3.length].field_160 = 0
        stor4[address(msg.sender)] = stor3.length
}

function sub_e7cda31c(?) {
    if stor3.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor3.length
    mem[64] = (32 * stor3.length) + 128
    if not stor3.length:
        if var35002 >= stor3.length:
            mem[(32 * stor3.length) + 128] = 32
            mem[(32 * stor3.length) + 160] = stor3.length
            idx = 0
            s = 128
            t = (32 * stor3.length) + 192
            while idx < stor3.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor3.length) + 128
               len (96 * stor3.length) + 64
        if var41001 >= stor3.length:
            revert with 'NH{q', 50
        mem[0] = 3
        if var47002 >= stor3.length:
            revert with 'NH{q', 50
        mem[(32 * var47002) + 128] = address(var47001)
        s = var47002
        t = var47001
        idx = var47002
        while idx != -1:
            if idx + 1 >= stor3.length:
                mem[(32 * stor3.length) + 128] = 32
                mem[(32 * stor3.length) + 160] = stor3.length
                idx = 0
                u = 128
                v = (32 * stor3.length) + 192
                while idx < stor3.length:
                    mem[v] = mem[u + 12 len 20]
                    mem[(32 * s) + 128] = address(t)
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from (32 * stor3.length) + 128
                   len (96 * stor3.length) + 64
            mem[0] = 3
            if idx + 1 >= stor3.length:
                revert with 'NH{q', 50
            mem[(32 * idx + 2) + 128] = stor3[idx].field_512
            s = idx + 1
            t = stor3[idx].field_256
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * stor3.length] = call.data[calldata.size len 32 * stor3.length]
        if var36002 >= stor3.length:
            mem[(32 * stor3.length) + 128] = 32
            mem[(32 * stor3.length) + 160] = stor3.length
            idx = 0
            s = 128
            t = (32 * stor3.length) + 192
            while idx < stor3.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor3.length) + 128
               len (96 * stor3.length) + 64
        if var42001 >= stor3.length:
            revert with 'NH{q', 50
        mem[0] = 3
        if var48002 >= stor3.length:
            revert with 'NH{q', 50
        mem[(32 * var48002) + 128] = address(var48001)
        s = var48002
        t = var48001
        idx = var48002
        while idx != -1:
            if idx + 1 >= stor3.length:
                mem[(32 * stor3.length) + 128] = 32
                mem[(32 * stor3.length) + 160] = stor3.length
                idx = 0
                u = 128
                v = (32 * stor3.length) + 192
                while idx < stor3.length:
                    mem[v] = mem[u + 12 len 20]
                    mem[(32 * s) + 128] = address(t)
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from (32 * stor3.length) + 128
                   len (96 * stor3.length) + 64
            mem[0] = 3
            if idx + 1 >= stor3.length:
                revert with 'NH{q', 50
            mem[(32 * idx + 2) + 128] = stor3[idx].field_512
            s = idx + 1
            t = stor3[idx].field_256
            idx = idx + 1
            continue 
    revert with 'NH{q', 17
}

function sub_cf20388e(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_4251ea3c[address(arg3)].field_768 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Game must be active in order to progress.'
    if sub_4251ea3c[address(arg3)].field_0 == 1:
        if arg1 <= 3:
            if sub_4251ea3c[address(arg3)].field_512 / 100 and treasuryPercent > -1 / sub_4251ea3c[address(arg3)].field_512 / 100:
                revert with 'NH{q', 17
            if sub_4251ea3c[address(arg3)].field_0 == 1:
                require ext_code.size(stor2)
                call stor2.0xa6a91d55 with:
                   value sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent wei
                     gas gas_remaining wei
                    args 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if sub_4251ea3c[address(arg3)].field_0 == 2:
                    require ext_code.size(stor2)
                    call stor2.0xa6a91d55 with:
                       value sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent wei
                         gas gas_remaining wei
                        args 3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if sub_4251ea3c[address(arg3)].field_256 != 1:
                emit 0x891374be: arg1, 0, sub_4251ea3c[address(arg3)].field_512, address(arg3), sub_4251ea3c[address(arg3)].field_256
                if stor4[address(arg3)]:
                    if stor4[address(arg3)] < 1:
                        revert with 'NH{q', 17
                    if stor3.length < 1:
                        revert with 'NH{q', 17
                    if stor3.length - 1 != stor4[address(arg3)] - 1:
                        if stor3.length - 1 >= stor3.length:
                            revert with 'NH{q', 50
                        if stor4[address(arg3)] - 1 >= stor3.length:
                            revert with 'NH{q', 50
                        stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                        stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                    if not stor3.length:
                        revert with 'NH{q', 49
                    stor3[stor3.length].field_0 = 0
                    stor3.length--
                    stor4[address(arg3)] = 0
                sub_4251ea3c[address(arg3)].field_256 = 0
                sub_4251ea3c[address(arg3)].field_512 = 0
                sub_4251ea3c[address(arg3)].field_768 = 0
                sub_4251ea3c[address(arg3)].field_1024 = 0
                sub_4251ea3c[address(arg3)].field_0 = 0
                if sub_4251ea3c[address(arg3)].field_1280 == -1:
                    revert with 'NH{q', 17
                sub_4251ea3c[address(arg3)].field_1280++
                if sub_a06594d3 == -1:
                    revert with 'NH{q', 17
                sub_a06594d3++
                if totalLosers == -1:
                    revert with 'NH{q', 17
                totalLosers++
                if totalRevenue > (-1 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                    revert with 'NH{q', 17
                totalRevenue += sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
            else:
                if sub_4251ea3c[address(arg3)].field_256 == 1:
                    if sub_4251ea3c[address(arg3)].field_512 and 2 > -1 / sub_4251ea3c[address(arg3)].field_512:
                        revert with 'NH{q', 17
                    if sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent and 2 > -1 / sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                        revert with 'NH{q', 17
                    if 2 * sub_4251ea3c[address(arg3)].field_512 < 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                        revert with 'NH{q', 17
                    call address(arg3) with:
                       value (2 * sub_4251ea3c[address(arg3)].field_512) - (2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 2 * sub_4251ea3c[address(arg3)].field_512 < 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                        revert with 'NH{q', 17
                    emit 0x40f7e736: arg1, 0, (2 * sub_4251ea3c[address(arg3)].field_512) - (2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent), address(arg3), sub_4251ea3c[address(arg3)].field_256
                    if stor4[address(arg3)]:
                        if stor4[address(arg3)] < 1:
                            revert with 'NH{q', 17
                        if stor3.length < 1:
                            revert with 'NH{q', 17
                        if stor3.length - 1 != stor4[address(arg3)] - 1:
                            if stor3.length - 1 >= stor3.length:
                                revert with 'NH{q', 50
                            if stor4[address(arg3)] - 1 >= stor3.length:
                                revert with 'NH{q', 50
                            stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                            stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                        if not stor3.length:
                            revert with 'NH{q', 49
                        stor3[stor3.length].field_0 = 0
                        stor3.length--
                        stor4[address(arg3)] = 0
                    sub_4251ea3c[address(arg3)].field_256 = 0
                    sub_4251ea3c[address(arg3)].field_512 = 0
                    sub_4251ea3c[address(arg3)].field_768 = 0
                    sub_4251ea3c[address(arg3)].field_1280 = 0
                    sub_4251ea3c[address(arg3)].field_0 = 0
                    if sub_4251ea3c[address(arg3)].field_1024 == -1:
                        revert with 'NH{q', 17
                    sub_4251ea3c[address(arg3)].field_1024++
                    if sub_a06594d3 == -1:
                        revert with 'NH{q', 17
                    sub_a06594d3++
                    if totalWinners == -1:
                        revert with 'NH{q', 17
                    totalWinners++
                    if totalRevenue > -(2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                        revert with 'NH{q', 17
                    totalRevenue += 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
                else:
                    if sub_4251ea3c[address(arg3)].field_256 == 2:
                        if sub_4251ea3c[address(arg3)].field_512 and 2 > -1 / sub_4251ea3c[address(arg3)].field_512:
                            revert with 'NH{q', 17
                        if sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent and 2 > -1 / sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                            revert with 'NH{q', 17
                        if 2 * sub_4251ea3c[address(arg3)].field_512 < 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                            revert with 'NH{q', 17
                        call address(arg3) with:
                           value (2 * sub_4251ea3c[address(arg3)].field_512) - (2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 2 * sub_4251ea3c[address(arg3)].field_512 < 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                            revert with 'NH{q', 17
                        emit 0x40f7e736: arg1, 0, (2 * sub_4251ea3c[address(arg3)].field_512) - (2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent), address(arg3), sub_4251ea3c[address(arg3)].field_256
                        if stor4[address(arg3)]:
                            if stor4[address(arg3)] < 1:
                                revert with 'NH{q', 17
                            if stor3.length < 1:
                                revert with 'NH{q', 17
                            if stor3.length - 1 != stor4[address(arg3)] - 1:
                                if stor3.length - 1 >= stor3.length:
                                    revert with 'NH{q', 50
                                if stor4[address(arg3)] - 1 >= stor3.length:
                                    revert with 'NH{q', 50
                                stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                                stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                            if not stor3.length:
                                revert with 'NH{q', 49
                            stor3[stor3.length].field_0 = 0
                            stor3.length--
                            stor4[address(arg3)] = 0
                        sub_4251ea3c[address(arg3)].field_256 = 0
                        sub_4251ea3c[address(arg3)].field_512 = 0
                        sub_4251ea3c[address(arg3)].field_768 = 0
                        sub_4251ea3c[address(arg3)].field_1280 = 0
                        sub_4251ea3c[address(arg3)].field_0 = 0
                        if sub_4251ea3c[address(arg3)].field_1024 == -1:
                            revert with 'NH{q', 17
                        sub_4251ea3c[address(arg3)].field_1024++
                        if sub_a06594d3 == -1:
                            revert with 'NH{q', 17
                        sub_a06594d3++
                        if totalWinners == -1:
                            revert with 'NH{q', 17
                        totalWinners++
                        if totalRevenue > -(2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                            revert with 'NH{q', 17
                        totalRevenue += 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
                    else:
                        if sub_4251ea3c[address(arg3)].field_256 != 3:
                            if 0 < sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                revert with 'NH{q', 17
                            call address(arg3) with:
                               value -1 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 < sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                revert with 'NH{q', 17
                            emit 0x40f7e736: arg1, 0, -1 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent, address(arg3), sub_4251ea3c[address(arg3)].field_256
                            if stor4[address(arg3)]:
                                if stor4[address(arg3)] < 1:
                                    revert with 'NH{q', 17
                                if stor3.length < 1:
                                    revert with 'NH{q', 17
                                if stor3.length - 1 != stor4[address(arg3)] - 1:
                                    if stor3.length - 1 >= stor3.length:
                                        revert with 'NH{q', 50
                                    if stor4[address(arg3)] - 1 >= stor3.length:
                                        revert with 'NH{q', 50
                                    stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                                    stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                                if not stor3.length:
                                    revert with 'NH{q', 49
                                stor3[stor3.length].field_0 = 0
                                stor3.length--
                                stor4[address(arg3)] = 0
                            sub_4251ea3c[address(arg3)].field_256 = 0
                            sub_4251ea3c[address(arg3)].field_512 = 0
                            sub_4251ea3c[address(arg3)].field_768 = 0
                            sub_4251ea3c[address(arg3)].field_1280 = 0
                            sub_4251ea3c[address(arg3)].field_0 = 0
                            if sub_4251ea3c[address(arg3)].field_1024 == -1:
                                revert with 'NH{q', 17
                            sub_4251ea3c[address(arg3)].field_1024++
                            if sub_a06594d3 == -1:
                                revert with 'NH{q', 17
                            sub_a06594d3++
                            if totalWinners == -1:
                                revert with 'NH{q', 17
                            totalWinners++
                            if totalRevenue > (-1 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                                revert with 'NH{q', 17
                            totalRevenue += sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
                        else:
                            if sub_4251ea3c[address(arg3)].field_512 and 4 > -1 / sub_4251ea3c[address(arg3)].field_512:
                                revert with 'NH{q', 17
                            if sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent and 4 > -1 / sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                revert with 'NH{q', 17
                            if 4 * sub_4251ea3c[address(arg3)].field_512 < 4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                revert with 'NH{q', 17
                            call address(arg3) with:
                               value (4 * sub_4251ea3c[address(arg3)].field_512) - (4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 4 * sub_4251ea3c[address(arg3)].field_512 < 4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                revert with 'NH{q', 17
                            emit 0x40f7e736: arg1, 0, (4 * sub_4251ea3c[address(arg3)].field_512) - (4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent), address(arg3), sub_4251ea3c[address(arg3)].field_256
                            if stor4[address(arg3)]:
                                if stor4[address(arg3)] < 1:
                                    revert with 'NH{q', 17
                                if stor3.length < 1:
                                    revert with 'NH{q', 17
                                if stor3.length - 1 != stor4[address(arg3)] - 1:
                                    if stor3.length - 1 >= stor3.length:
                                        revert with 'NH{q', 50
                                    if stor4[address(arg3)] - 1 >= stor3.length:
                                        revert with 'NH{q', 50
                                    stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                                    stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                                if not stor3.length:
                                    revert with 'NH{q', 49
                                stor3[stor3.length].field_0 = 0
                                stor3.length--
                                stor4[address(arg3)] = 0
                            sub_4251ea3c[address(arg3)].field_256 = 0
                            sub_4251ea3c[address(arg3)].field_512 = 0
                            sub_4251ea3c[address(arg3)].field_768 = 0
                            sub_4251ea3c[address(arg3)].field_1280 = 0
                            sub_4251ea3c[address(arg3)].field_0 = 0
                            if sub_4251ea3c[address(arg3)].field_1024 == -1:
                                revert with 'NH{q', 17
                            sub_4251ea3c[address(arg3)].field_1024++
                            if sub_a06594d3 == -1:
                                revert with 'NH{q', 17
                            sub_a06594d3++
                            if totalWinners == -1:
                                revert with 'NH{q', 17
                            totalWinners++
                            if totalRevenue > -(4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                                revert with 'NH{q', 17
                            totalRevenue += 4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
        else:
            if arg1 >= 4:
                if sub_4251ea3c[address(arg3)].field_512 / 100 and treasuryPercent > -1 / sub_4251ea3c[address(arg3)].field_512 / 100:
                    revert with 'NH{q', 17
                if sub_4251ea3c[address(arg3)].field_0 == 1:
                    require ext_code.size(stor2)
                    call stor2.0xa6a91d55 with:
                       value sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent wei
                         gas gas_remaining wei
                        args 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if sub_4251ea3c[address(arg3)].field_0 == 2:
                        require ext_code.size(stor2)
                        call stor2.0xa6a91d55 with:
                           value sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent wei
                             gas gas_remaining wei
                            args 3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if sub_4251ea3c[address(arg3)].field_256 != 2:
                    emit 0x891374be: arg1, 0, sub_4251ea3c[address(arg3)].field_512, address(arg3), sub_4251ea3c[address(arg3)].field_256
                    if stor4[address(arg3)]:
                        if stor4[address(arg3)] < 1:
                            revert with 'NH{q', 17
                        if stor3.length < 1:
                            revert with 'NH{q', 17
                        if stor3.length - 1 != stor4[address(arg3)] - 1:
                            if stor3.length - 1 >= stor3.length:
                                revert with 'NH{q', 50
                            if stor4[address(arg3)] - 1 >= stor3.length:
                                revert with 'NH{q', 50
                            stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                            stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                        if not stor3.length:
                            revert with 'NH{q', 49
                        stor3[stor3.length].field_0 = 0
                        stor3.length--
                        stor4[address(arg3)] = 0
                    sub_4251ea3c[address(arg3)].field_256 = 0
                    sub_4251ea3c[address(arg3)].field_512 = 0
                    sub_4251ea3c[address(arg3)].field_768 = 0
                    sub_4251ea3c[address(arg3)].field_1024 = 0
                    sub_4251ea3c[address(arg3)].field_0 = 0
                    if sub_4251ea3c[address(arg3)].field_1280 == -1:
                        revert with 'NH{q', 17
                    sub_4251ea3c[address(arg3)].field_1280++
                    if sub_a06594d3 == -1:
                        revert with 'NH{q', 17
                    sub_a06594d3++
                    if totalLosers == -1:
                        revert with 'NH{q', 17
                    totalLosers++
                    if totalRevenue > (-1 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                        revert with 'NH{q', 17
                    totalRevenue += sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
                else:
                    if sub_4251ea3c[address(arg3)].field_256 == 1:
                        if sub_4251ea3c[address(arg3)].field_512 and 2 > -1 / sub_4251ea3c[address(arg3)].field_512:
                            revert with 'NH{q', 17
                        if sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent and 2 > -1 / sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                            revert with 'NH{q', 17
                        if 2 * sub_4251ea3c[address(arg3)].field_512 < 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                            revert with 'NH{q', 17
                        call address(arg3) with:
                           value (2 * sub_4251ea3c[address(arg3)].field_512) - (2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 2 * sub_4251ea3c[address(arg3)].field_512 < 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                            revert with 'NH{q', 17
                        emit 0x40f7e736: arg1, 0, (2 * sub_4251ea3c[address(arg3)].field_512) - (2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent), address(arg3), sub_4251ea3c[address(arg3)].field_256
                        if stor4[address(arg3)]:
                            if stor4[address(arg3)] < 1:
                                revert with 'NH{q', 17
                            if stor3.length < 1:
                                revert with 'NH{q', 17
                            if stor3.length - 1 != stor4[address(arg3)] - 1:
                                if stor3.length - 1 >= stor3.length:
                                    revert with 'NH{q', 50
                                if stor4[address(arg3)] - 1 >= stor3.length:
                                    revert with 'NH{q', 50
                                stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                                stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                            if not stor3.length:
                                revert with 'NH{q', 49
                            stor3[stor3.length].field_0 = 0
                            stor3.length--
                            stor4[address(arg3)] = 0
                        sub_4251ea3c[address(arg3)].field_256 = 0
                        sub_4251ea3c[address(arg3)].field_512 = 0
                        sub_4251ea3c[address(arg3)].field_768 = 0
                        sub_4251ea3c[address(arg3)].field_1280 = 0
                        sub_4251ea3c[address(arg3)].field_0 = 0
                        if sub_4251ea3c[address(arg3)].field_1024 == -1:
                            revert with 'NH{q', 17
                        sub_4251ea3c[address(arg3)].field_1024++
                        if sub_a06594d3 == -1:
                            revert with 'NH{q', 17
                        sub_a06594d3++
                        if totalWinners == -1:
                            revert with 'NH{q', 17
                        totalWinners++
                        if totalRevenue > -(2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                            revert with 'NH{q', 17
                        totalRevenue += 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
                    else:
                        if sub_4251ea3c[address(arg3)].field_256 == 2:
                            if sub_4251ea3c[address(arg3)].field_512 and 2 > -1 / sub_4251ea3c[address(arg3)].field_512:
                                revert with 'NH{q', 17
                            if sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent and 2 > -1 / sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                revert with 'NH{q', 17
                            if 2 * sub_4251ea3c[address(arg3)].field_512 < 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                revert with 'NH{q', 17
                            call address(arg3) with:
                               value (2 * sub_4251ea3c[address(arg3)].field_512) - (2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 2 * sub_4251ea3c[address(arg3)].field_512 < 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                revert with 'NH{q', 17
                            emit 0x40f7e736: arg1, 0, (2 * sub_4251ea3c[address(arg3)].field_512) - (2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent), address(arg3), sub_4251ea3c[address(arg3)].field_256
                            if stor4[address(arg3)]:
                                if stor4[address(arg3)] < 1:
                                    revert with 'NH{q', 17
                                if stor3.length < 1:
                                    revert with 'NH{q', 17
                                if stor3.length - 1 != stor4[address(arg3)] - 1:
                                    if stor3.length - 1 >= stor3.length:
                                        revert with 'NH{q', 50
                                    if stor4[address(arg3)] - 1 >= stor3.length:
                                        revert with 'NH{q', 50
                                    stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                                    stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                                if not stor3.length:
                                    revert with 'NH{q', 49
                                stor3[stor3.length].field_0 = 0
                                stor3.length--
                                stor4[address(arg3)] = 0
                            sub_4251ea3c[address(arg3)].field_256 = 0
                            sub_4251ea3c[address(arg3)].field_512 = 0
                            sub_4251ea3c[address(arg3)].field_768 = 0
                            sub_4251ea3c[address(arg3)].field_1280 = 0
                            sub_4251ea3c[address(arg3)].field_0 = 0
                            if sub_4251ea3c[address(arg3)].field_1024 == -1:
                                revert with 'NH{q', 17
                            sub_4251ea3c[address(arg3)].field_1024++
                            if sub_a06594d3 == -1:
                                revert with 'NH{q', 17
                            sub_a06594d3++
                            if totalWinners == -1:
                                revert with 'NH{q', 17
                            totalWinners++
                            if totalRevenue > -(2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                                revert with 'NH{q', 17
                            totalRevenue += 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
                        else:
                            if sub_4251ea3c[address(arg3)].field_256 != 3:
                                if 0 < sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                    revert with 'NH{q', 17
                                call address(arg3) with:
                                   value -1 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 < sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                    revert with 'NH{q', 17
                                emit 0x40f7e736: arg1, 0, -1 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent, address(arg3), sub_4251ea3c[address(arg3)].field_256
                                if stor4[address(arg3)]:
                                    if stor4[address(arg3)] < 1:
                                        revert with 'NH{q', 17
                                    if stor3.length < 1:
                                        revert with 'NH{q', 17
                                    if stor3.length - 1 != stor4[address(arg3)] - 1:
                                        if stor3.length - 1 >= stor3.length:
                                            revert with 'NH{q', 50
                                        if stor4[address(arg3)] - 1 >= stor3.length:
                                            revert with 'NH{q', 50
                                        stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                                        stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                                    if not stor3.length:
                                        revert with 'NH{q', 49
                                    stor3[stor3.length].field_0 = 0
                                    stor3.length--
                                    stor4[address(arg3)] = 0
                                sub_4251ea3c[address(arg3)].field_256 = 0
                                sub_4251ea3c[address(arg3)].field_512 = 0
                                sub_4251ea3c[address(arg3)].field_768 = 0
                                sub_4251ea3c[address(arg3)].field_1280 = 0
                                sub_4251ea3c[address(arg3)].field_0 = 0
                                if sub_4251ea3c[address(arg3)].field_1024 == -1:
                                    revert with 'NH{q', 17
                                sub_4251ea3c[address(arg3)].field_1024++
                                if sub_a06594d3 == -1:
                                    revert with 'NH{q', 17
                                sub_a06594d3++
                                if totalWinners == -1:
                                    revert with 'NH{q', 17
                                totalWinners++
                                if totalRevenue > (-1 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                                    revert with 'NH{q', 17
                                totalRevenue += sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
                            else:
                                if sub_4251ea3c[address(arg3)].field_512 and 4 > -1 / sub_4251ea3c[address(arg3)].field_512:
                                    revert with 'NH{q', 17
                                if sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent and 4 > -1 / sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                    revert with 'NH{q', 17
                                if 4 * sub_4251ea3c[address(arg3)].field_512 < 4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                    revert with 'NH{q', 17
                                call address(arg3) with:
                                   value (4 * sub_4251ea3c[address(arg3)].field_512) - (4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 4 * sub_4251ea3c[address(arg3)].field_512 < 4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                    revert with 'NH{q', 17
                                emit 0x40f7e736: arg1, 0, (4 * sub_4251ea3c[address(arg3)].field_512) - (4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent), address(arg3), sub_4251ea3c[address(arg3)].field_256
                                if stor4[address(arg3)]:
                                    if stor4[address(arg3)] < 1:
                                        revert with 'NH{q', 17
                                    if stor3.length < 1:
                                        revert with 'NH{q', 17
                                    if stor3.length - 1 != stor4[address(arg3)] - 1:
                                        if stor3.length - 1 >= stor3.length:
                                            revert with 'NH{q', 50
                                        if stor4[address(arg3)] - 1 >= stor3.length:
                                            revert with 'NH{q', 50
                                        stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                                        stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                                    if not stor3.length:
                                        revert with 'NH{q', 49
                                    stor3[stor3.length].field_0 = 0
                                    stor3.length--
                                    stor4[address(arg3)] = 0
                                sub_4251ea3c[address(arg3)].field_256 = 0
                                sub_4251ea3c[address(arg3)].field_512 = 0
                                sub_4251ea3c[address(arg3)].field_768 = 0
                                sub_4251ea3c[address(arg3)].field_1280 = 0
                                sub_4251ea3c[address(arg3)].field_0 = 0
                                if sub_4251ea3c[address(arg3)].field_1024 == -1:
                                    revert with 'NH{q', 17
                                sub_4251ea3c[address(arg3)].field_1024++
                                if sub_a06594d3 == -1:
                                    revert with 'NH{q', 17
                                sub_a06594d3++
                                if totalWinners == -1:
                                    revert with 'NH{q', 17
                                totalWinners++
                                if totalRevenue > -(4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                                    revert with 'NH{q', 17
                                totalRevenue += 4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
    else:
        if arg1 > -arg2 - 1:
            revert with 'NH{q', 17
        if arg1 + arg2 <= 6:
            if sub_4251ea3c[address(arg3)].field_512 / 100 and treasuryPercent > -1 / sub_4251ea3c[address(arg3)].field_512 / 100:
                revert with 'NH{q', 17
            if sub_4251ea3c[address(arg3)].field_0 == 1:
                require ext_code.size(stor2)
                call stor2.0xa6a91d55 with:
                   value sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent wei
                     gas gas_remaining wei
                    args 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if sub_4251ea3c[address(arg3)].field_0 == 2:
                    require ext_code.size(stor2)
                    call stor2.0xa6a91d55 with:
                       value sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent wei
                         gas gas_remaining wei
                        args 3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if sub_4251ea3c[address(arg3)].field_256 != 1:
                emit 0x891374be: arg1, arg2, sub_4251ea3c[address(arg3)].field_512, address(arg3), sub_4251ea3c[address(arg3)].field_256
                if stor4[address(arg3)]:
                    if stor4[address(arg3)] < 1:
                        revert with 'NH{q', 17
                    if stor3.length < 1:
                        revert with 'NH{q', 17
                    if stor3.length - 1 != stor4[address(arg3)] - 1:
                        if stor3.length - 1 >= stor3.length:
                            revert with 'NH{q', 50
                        if stor4[address(arg3)] - 1 >= stor3.length:
                            revert with 'NH{q', 50
                        stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                        stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                    if not stor3.length:
                        revert with 'NH{q', 49
                    stor3[stor3.length].field_0 = 0
                    stor3.length--
                    stor4[address(arg3)] = 0
                sub_4251ea3c[address(arg3)].field_256 = 0
                sub_4251ea3c[address(arg3)].field_512 = 0
                sub_4251ea3c[address(arg3)].field_768 = 0
                sub_4251ea3c[address(arg3)].field_1024 = 0
                sub_4251ea3c[address(arg3)].field_0 = 0
                if sub_4251ea3c[address(arg3)].field_1280 == -1:
                    revert with 'NH{q', 17
                sub_4251ea3c[address(arg3)].field_1280++
                if sub_a06594d3 == -1:
                    revert with 'NH{q', 17
                sub_a06594d3++
                if totalLosers == -1:
                    revert with 'NH{q', 17
                totalLosers++
                if totalRevenue > (-1 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                    revert with 'NH{q', 17
                totalRevenue += sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
            else:
                if sub_4251ea3c[address(arg3)].field_256 == 1:
                    if sub_4251ea3c[address(arg3)].field_512 and 2 > -1 / sub_4251ea3c[address(arg3)].field_512:
                        revert with 'NH{q', 17
                    if sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent and 2 > -1 / sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                        revert with 'NH{q', 17
                    if 2 * sub_4251ea3c[address(arg3)].field_512 < 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                        revert with 'NH{q', 17
                    call address(arg3) with:
                       value (2 * sub_4251ea3c[address(arg3)].field_512) - (2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 2 * sub_4251ea3c[address(arg3)].field_512 < 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                        revert with 'NH{q', 17
                    emit 0x40f7e736: arg1, arg2, (2 * sub_4251ea3c[address(arg3)].field_512) - (2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent), address(arg3), sub_4251ea3c[address(arg3)].field_256
                    if stor4[address(arg3)]:
                        if stor4[address(arg3)] < 1:
                            revert with 'NH{q', 17
                        if stor3.length < 1:
                            revert with 'NH{q', 17
                        if stor3.length - 1 != stor4[address(arg3)] - 1:
                            if stor3.length - 1 >= stor3.length:
                                revert with 'NH{q', 50
                            if stor4[address(arg3)] - 1 >= stor3.length:
                                revert with 'NH{q', 50
                            stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                            stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                        if not stor3.length:
                            revert with 'NH{q', 49
                        stor3[stor3.length].field_0 = 0
                        stor3.length--
                        stor4[address(arg3)] = 0
                    sub_4251ea3c[address(arg3)].field_256 = 0
                    sub_4251ea3c[address(arg3)].field_512 = 0
                    sub_4251ea3c[address(arg3)].field_768 = 0
                    sub_4251ea3c[address(arg3)].field_1280 = 0
                    sub_4251ea3c[address(arg3)].field_0 = 0
                    if sub_4251ea3c[address(arg3)].field_1024 == -1:
                        revert with 'NH{q', 17
                    sub_4251ea3c[address(arg3)].field_1024++
                    if sub_a06594d3 == -1:
                        revert with 'NH{q', 17
                    sub_a06594d3++
                    if totalWinners == -1:
                        revert with 'NH{q', 17
                    totalWinners++
                    if totalRevenue > -(2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                        revert with 'NH{q', 17
                    totalRevenue += 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
                else:
                    if sub_4251ea3c[address(arg3)].field_256 == 2:
                        if sub_4251ea3c[address(arg3)].field_512 and 2 > -1 / sub_4251ea3c[address(arg3)].field_512:
                            revert with 'NH{q', 17
                        if sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent and 2 > -1 / sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                            revert with 'NH{q', 17
                        if 2 * sub_4251ea3c[address(arg3)].field_512 < 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                            revert with 'NH{q', 17
                        call address(arg3) with:
                           value (2 * sub_4251ea3c[address(arg3)].field_512) - (2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 2 * sub_4251ea3c[address(arg3)].field_512 < 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                            revert with 'NH{q', 17
                        emit 0x40f7e736: arg1, arg2, (2 * sub_4251ea3c[address(arg3)].field_512) - (2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent), address(arg3), sub_4251ea3c[address(arg3)].field_256
                        if stor4[address(arg3)]:
                            if stor4[address(arg3)] < 1:
                                revert with 'NH{q', 17
                            if stor3.length < 1:
                                revert with 'NH{q', 17
                            if stor3.length - 1 != stor4[address(arg3)] - 1:
                                if stor3.length - 1 >= stor3.length:
                                    revert with 'NH{q', 50
                                if stor4[address(arg3)] - 1 >= stor3.length:
                                    revert with 'NH{q', 50
                                stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                                stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                            if not stor3.length:
                                revert with 'NH{q', 49
                            stor3[stor3.length].field_0 = 0
                            stor3.length--
                            stor4[address(arg3)] = 0
                        sub_4251ea3c[address(arg3)].field_256 = 0
                        sub_4251ea3c[address(arg3)].field_512 = 0
                        sub_4251ea3c[address(arg3)].field_768 = 0
                        sub_4251ea3c[address(arg3)].field_1280 = 0
                        sub_4251ea3c[address(arg3)].field_0 = 0
                        if sub_4251ea3c[address(arg3)].field_1024 == -1:
                            revert with 'NH{q', 17
                        sub_4251ea3c[address(arg3)].field_1024++
                        if sub_a06594d3 == -1:
                            revert with 'NH{q', 17
                        sub_a06594d3++
                        if totalWinners == -1:
                            revert with 'NH{q', 17
                        totalWinners++
                        if totalRevenue > -(2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                            revert with 'NH{q', 17
                        totalRevenue += 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
                    else:
                        if sub_4251ea3c[address(arg3)].field_256 != 3:
                            if 0 < sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                revert with 'NH{q', 17
                            call address(arg3) with:
                               value -1 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 < sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                revert with 'NH{q', 17
                            emit 0x40f7e736: arg1, arg2, -1 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent, address(arg3), sub_4251ea3c[address(arg3)].field_256
                            if stor4[address(arg3)]:
                                if stor4[address(arg3)] < 1:
                                    revert with 'NH{q', 17
                                if stor3.length < 1:
                                    revert with 'NH{q', 17
                                if stor3.length - 1 != stor4[address(arg3)] - 1:
                                    if stor3.length - 1 >= stor3.length:
                                        revert with 'NH{q', 50
                                    if stor4[address(arg3)] - 1 >= stor3.length:
                                        revert with 'NH{q', 50
                                    stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                                    stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                                if not stor3.length:
                                    revert with 'NH{q', 49
                                stor3[stor3.length].field_0 = 0
                                stor3.length--
                                stor4[address(arg3)] = 0
                            sub_4251ea3c[address(arg3)].field_256 = 0
                            sub_4251ea3c[address(arg3)].field_512 = 0
                            sub_4251ea3c[address(arg3)].field_768 = 0
                            sub_4251ea3c[address(arg3)].field_1280 = 0
                            sub_4251ea3c[address(arg3)].field_0 = 0
                            if sub_4251ea3c[address(arg3)].field_1024 == -1:
                                revert with 'NH{q', 17
                            sub_4251ea3c[address(arg3)].field_1024++
                            if sub_a06594d3 == -1:
                                revert with 'NH{q', 17
                            sub_a06594d3++
                            if totalWinners == -1:
                                revert with 'NH{q', 17
                            totalWinners++
                            if totalRevenue > (-1 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                                revert with 'NH{q', 17
                            totalRevenue += sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
                        else:
                            if sub_4251ea3c[address(arg3)].field_512 and 4 > -1 / sub_4251ea3c[address(arg3)].field_512:
                                revert with 'NH{q', 17
                            if sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent and 4 > -1 / sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                revert with 'NH{q', 17
                            if 4 * sub_4251ea3c[address(arg3)].field_512 < 4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                revert with 'NH{q', 17
                            call address(arg3) with:
                               value (4 * sub_4251ea3c[address(arg3)].field_512) - (4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 4 * sub_4251ea3c[address(arg3)].field_512 < 4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                revert with 'NH{q', 17
                            emit 0x40f7e736: arg1, arg2, (4 * sub_4251ea3c[address(arg3)].field_512) - (4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent), address(arg3), sub_4251ea3c[address(arg3)].field_256
                            if stor4[address(arg3)]:
                                if stor4[address(arg3)] < 1:
                                    revert with 'NH{q', 17
                                if stor3.length < 1:
                                    revert with 'NH{q', 17
                                if stor3.length - 1 != stor4[address(arg3)] - 1:
                                    if stor3.length - 1 >= stor3.length:
                                        revert with 'NH{q', 50
                                    if stor4[address(arg3)] - 1 >= stor3.length:
                                        revert with 'NH{q', 50
                                    stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                                    stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                                if not stor3.length:
                                    revert with 'NH{q', 49
                                stor3[stor3.length].field_0 = 0
                                stor3.length--
                                stor4[address(arg3)] = 0
                            sub_4251ea3c[address(arg3)].field_256 = 0
                            sub_4251ea3c[address(arg3)].field_512 = 0
                            sub_4251ea3c[address(arg3)].field_768 = 0
                            sub_4251ea3c[address(arg3)].field_1280 = 0
                            sub_4251ea3c[address(arg3)].field_0 = 0
                            if sub_4251ea3c[address(arg3)].field_1024 == -1:
                                revert with 'NH{q', 17
                            sub_4251ea3c[address(arg3)].field_1024++
                            if sub_a06594d3 == -1:
                                revert with 'NH{q', 17
                            sub_a06594d3++
                            if totalWinners == -1:
                                revert with 'NH{q', 17
                            totalWinners++
                            if totalRevenue > -(4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                                revert with 'NH{q', 17
                            totalRevenue += 4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
        else:
            if arg1 > -arg2 - 1:
                revert with 'NH{q', 17
            if arg1 + arg2 >= 8:
                if sub_4251ea3c[address(arg3)].field_512 / 100 and treasuryPercent > -1 / sub_4251ea3c[address(arg3)].field_512 / 100:
                    revert with 'NH{q', 17
                if sub_4251ea3c[address(arg3)].field_0 == 1:
                    require ext_code.size(stor2)
                    call stor2.0xa6a91d55 with:
                       value sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent wei
                         gas gas_remaining wei
                        args 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if sub_4251ea3c[address(arg3)].field_0 == 2:
                        require ext_code.size(stor2)
                        call stor2.0xa6a91d55 with:
                           value sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent wei
                             gas gas_remaining wei
                            args 3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if sub_4251ea3c[address(arg3)].field_256 != 2:
                    emit 0x891374be: arg1, arg2, sub_4251ea3c[address(arg3)].field_512, address(arg3), sub_4251ea3c[address(arg3)].field_256
                    if stor4[address(arg3)]:
                        if stor4[address(arg3)] < 1:
                            revert with 'NH{q', 17
                        if stor3.length < 1:
                            revert with 'NH{q', 17
                        if stor3.length - 1 != stor4[address(arg3)] - 1:
                            if stor3.length - 1 >= stor3.length:
                                revert with 'NH{q', 50
                            if stor4[address(arg3)] - 1 >= stor3.length:
                                revert with 'NH{q', 50
                            stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                            stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                        if not stor3.length:
                            revert with 'NH{q', 49
                        stor3[stor3.length].field_0 = 0
                        stor3.length--
                        stor4[address(arg3)] = 0
                    sub_4251ea3c[address(arg3)].field_256 = 0
                    sub_4251ea3c[address(arg3)].field_512 = 0
                    sub_4251ea3c[address(arg3)].field_768 = 0
                    sub_4251ea3c[address(arg3)].field_1024 = 0
                    sub_4251ea3c[address(arg3)].field_0 = 0
                    if sub_4251ea3c[address(arg3)].field_1280 == -1:
                        revert with 'NH{q', 17
                    sub_4251ea3c[address(arg3)].field_1280++
                    if sub_a06594d3 == -1:
                        revert with 'NH{q', 17
                    sub_a06594d3++
                    if totalLosers == -1:
                        revert with 'NH{q', 17
                    totalLosers++
                    if totalRevenue > (-1 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                        revert with 'NH{q', 17
                    totalRevenue += sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
                else:
                    if sub_4251ea3c[address(arg3)].field_256 == 1:
                        if sub_4251ea3c[address(arg3)].field_512 and 2 > -1 / sub_4251ea3c[address(arg3)].field_512:
                            revert with 'NH{q', 17
                        if sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent and 2 > -1 / sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                            revert with 'NH{q', 17
                        if 2 * sub_4251ea3c[address(arg3)].field_512 < 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                            revert with 'NH{q', 17
                        call address(arg3) with:
                           value (2 * sub_4251ea3c[address(arg3)].field_512) - (2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 2 * sub_4251ea3c[address(arg3)].field_512 < 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                            revert with 'NH{q', 17
                        emit 0x40f7e736: arg1, arg2, (2 * sub_4251ea3c[address(arg3)].field_512) - (2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent), address(arg3), sub_4251ea3c[address(arg3)].field_256
                        if stor4[address(arg3)]:
                            if stor4[address(arg3)] < 1:
                                revert with 'NH{q', 17
                            if stor3.length < 1:
                                revert with 'NH{q', 17
                            if stor3.length - 1 != stor4[address(arg3)] - 1:
                                if stor3.length - 1 >= stor3.length:
                                    revert with 'NH{q', 50
                                if stor4[address(arg3)] - 1 >= stor3.length:
                                    revert with 'NH{q', 50
                                stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                                stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                            if not stor3.length:
                                revert with 'NH{q', 49
                            stor3[stor3.length].field_0 = 0
                            stor3.length--
                            stor4[address(arg3)] = 0
                        sub_4251ea3c[address(arg3)].field_256 = 0
                        sub_4251ea3c[address(arg3)].field_512 = 0
                        sub_4251ea3c[address(arg3)].field_768 = 0
                        sub_4251ea3c[address(arg3)].field_1280 = 0
                        sub_4251ea3c[address(arg3)].field_0 = 0
                        if sub_4251ea3c[address(arg3)].field_1024 == -1:
                            revert with 'NH{q', 17
                        sub_4251ea3c[address(arg3)].field_1024++
                        if sub_a06594d3 == -1:
                            revert with 'NH{q', 17
                        sub_a06594d3++
                        if totalWinners == -1:
                            revert with 'NH{q', 17
                        totalWinners++
                        if totalRevenue > -(2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                            revert with 'NH{q', 17
                        totalRevenue += 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
                    else:
                        if sub_4251ea3c[address(arg3)].field_256 == 2:
                            if sub_4251ea3c[address(arg3)].field_512 and 2 > -1 / sub_4251ea3c[address(arg3)].field_512:
                                revert with 'NH{q', 17
                            if sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent and 2 > -1 / sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                revert with 'NH{q', 17
                            if 2 * sub_4251ea3c[address(arg3)].field_512 < 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                revert with 'NH{q', 17
                            call address(arg3) with:
                               value (2 * sub_4251ea3c[address(arg3)].field_512) - (2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 2 * sub_4251ea3c[address(arg3)].field_512 < 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                revert with 'NH{q', 17
                            emit 0x40f7e736: arg1, arg2, (2 * sub_4251ea3c[address(arg3)].field_512) - (2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent), address(arg3), sub_4251ea3c[address(arg3)].field_256
                            if stor4[address(arg3)]:
                                if stor4[address(arg3)] < 1:
                                    revert with 'NH{q', 17
                                if stor3.length < 1:
                                    revert with 'NH{q', 17
                                if stor3.length - 1 != stor4[address(arg3)] - 1:
                                    if stor3.length - 1 >= stor3.length:
                                        revert with 'NH{q', 50
                                    if stor4[address(arg3)] - 1 >= stor3.length:
                                        revert with 'NH{q', 50
                                    stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                                    stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                                if not stor3.length:
                                    revert with 'NH{q', 49
                                stor3[stor3.length].field_0 = 0
                                stor3.length--
                                stor4[address(arg3)] = 0
                            sub_4251ea3c[address(arg3)].field_256 = 0
                            sub_4251ea3c[address(arg3)].field_512 = 0
                            sub_4251ea3c[address(arg3)].field_768 = 0
                            sub_4251ea3c[address(arg3)].field_1280 = 0
                            sub_4251ea3c[address(arg3)].field_0 = 0
                            if sub_4251ea3c[address(arg3)].field_1024 == -1:
                                revert with 'NH{q', 17
                            sub_4251ea3c[address(arg3)].field_1024++
                            if sub_a06594d3 == -1:
                                revert with 'NH{q', 17
                            sub_a06594d3++
                            if totalWinners == -1:
                                revert with 'NH{q', 17
                            totalWinners++
                            if totalRevenue > -(2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                                revert with 'NH{q', 17
                            totalRevenue += 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
                        else:
                            if sub_4251ea3c[address(arg3)].field_256 != 3:
                                if 0 < sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                    revert with 'NH{q', 17
                                call address(arg3) with:
                                   value -1 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 < sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                    revert with 'NH{q', 17
                                emit 0x40f7e736: arg1, arg2, -1 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent, address(arg3), sub_4251ea3c[address(arg3)].field_256
                                if stor4[address(arg3)]:
                                    if stor4[address(arg3)] < 1:
                                        revert with 'NH{q', 17
                                    if stor3.length < 1:
                                        revert with 'NH{q', 17
                                    if stor3.length - 1 != stor4[address(arg3)] - 1:
                                        if stor3.length - 1 >= stor3.length:
                                            revert with 'NH{q', 50
                                        if stor4[address(arg3)] - 1 >= stor3.length:
                                            revert with 'NH{q', 50
                                        stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                                        stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                                    if not stor3.length:
                                        revert with 'NH{q', 49
                                    stor3[stor3.length].field_0 = 0
                                    stor3.length--
                                    stor4[address(arg3)] = 0
                                sub_4251ea3c[address(arg3)].field_256 = 0
                                sub_4251ea3c[address(arg3)].field_512 = 0
                                sub_4251ea3c[address(arg3)].field_768 = 0
                                sub_4251ea3c[address(arg3)].field_1280 = 0
                                sub_4251ea3c[address(arg3)].field_0 = 0
                                if sub_4251ea3c[address(arg3)].field_1024 == -1:
                                    revert with 'NH{q', 17
                                sub_4251ea3c[address(arg3)].field_1024++
                                if sub_a06594d3 == -1:
                                    revert with 'NH{q', 17
                                sub_a06594d3++
                                if totalWinners == -1:
                                    revert with 'NH{q', 17
                                totalWinners++
                                if totalRevenue > (-1 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                                    revert with 'NH{q', 17
                                totalRevenue += sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
                            else:
                                if sub_4251ea3c[address(arg3)].field_512 and 4 > -1 / sub_4251ea3c[address(arg3)].field_512:
                                    revert with 'NH{q', 17
                                if sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent and 4 > -1 / sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                    revert with 'NH{q', 17
                                if 4 * sub_4251ea3c[address(arg3)].field_512 < 4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                    revert with 'NH{q', 17
                                call address(arg3) with:
                                   value (4 * sub_4251ea3c[address(arg3)].field_512) - (4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 4 * sub_4251ea3c[address(arg3)].field_512 < 4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                    revert with 'NH{q', 17
                                emit 0x40f7e736: arg1, arg2, (4 * sub_4251ea3c[address(arg3)].field_512) - (4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent), address(arg3), sub_4251ea3c[address(arg3)].field_256
                                if stor4[address(arg3)]:
                                    if stor4[address(arg3)] < 1:
                                        revert with 'NH{q', 17
                                    if stor3.length < 1:
                                        revert with 'NH{q', 17
                                    if stor3.length - 1 != stor4[address(arg3)] - 1:
                                        if stor3.length - 1 >= stor3.length:
                                            revert with 'NH{q', 50
                                        if stor4[address(arg3)] - 1 >= stor3.length:
                                            revert with 'NH{q', 50
                                        stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                                        stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                                    if not stor3.length:
                                        revert with 'NH{q', 49
                                    stor3[stor3.length].field_0 = 0
                                    stor3.length--
                                    stor4[address(arg3)] = 0
                                sub_4251ea3c[address(arg3)].field_256 = 0
                                sub_4251ea3c[address(arg3)].field_512 = 0
                                sub_4251ea3c[address(arg3)].field_768 = 0
                                sub_4251ea3c[address(arg3)].field_1280 = 0
                                sub_4251ea3c[address(arg3)].field_0 = 0
                                if sub_4251ea3c[address(arg3)].field_1024 == -1:
                                    revert with 'NH{q', 17
                                sub_4251ea3c[address(arg3)].field_1024++
                                if sub_a06594d3 == -1:
                                    revert with 'NH{q', 17
                                sub_a06594d3++
                                if totalWinners == -1:
                                    revert with 'NH{q', 17
                                totalWinners++
                                if totalRevenue > -(4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                                    revert with 'NH{q', 17
                                totalRevenue += 4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
            else:
                if arg1 > -arg2 - 1:
                    revert with 'NH{q', 17
                if arg1 + arg2 == 7:
                    if sub_4251ea3c[address(arg3)].field_512 / 100 and treasuryPercent > -1 / sub_4251ea3c[address(arg3)].field_512 / 100:
                        revert with 'NH{q', 17
                    if sub_4251ea3c[address(arg3)].field_0 == 1:
                        require ext_code.size(stor2)
                        call stor2.0xa6a91d55 with:
                           value sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent wei
                             gas gas_remaining wei
                            args 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if sub_4251ea3c[address(arg3)].field_0 == 2:
                            require ext_code.size(stor2)
                            call stor2.0xa6a91d55 with:
                               value sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent wei
                                 gas gas_remaining wei
                                args 3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if sub_4251ea3c[address(arg3)].field_256 != 3:
                        emit 0x891374be: arg1, arg2, sub_4251ea3c[address(arg3)].field_512, address(arg3), sub_4251ea3c[address(arg3)].field_256
                        if stor4[address(arg3)]:
                            if stor4[address(arg3)] < 1:
                                revert with 'NH{q', 17
                            if stor3.length < 1:
                                revert with 'NH{q', 17
                            if stor3.length - 1 != stor4[address(arg3)] - 1:
                                if stor3.length - 1 >= stor3.length:
                                    revert with 'NH{q', 50
                                if stor4[address(arg3)] - 1 >= stor3.length:
                                    revert with 'NH{q', 50
                                stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                                stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                            if not stor3.length:
                                revert with 'NH{q', 49
                            stor3[stor3.length].field_0 = 0
                            stor3.length--
                            stor4[address(arg3)] = 0
                        sub_4251ea3c[address(arg3)].field_256 = 0
                        sub_4251ea3c[address(arg3)].field_512 = 0
                        sub_4251ea3c[address(arg3)].field_768 = 0
                        sub_4251ea3c[address(arg3)].field_1024 = 0
                        sub_4251ea3c[address(arg3)].field_0 = 0
                        if sub_4251ea3c[address(arg3)].field_1280 == -1:
                            revert with 'NH{q', 17
                        sub_4251ea3c[address(arg3)].field_1280++
                        if sub_a06594d3 == -1:
                            revert with 'NH{q', 17
                        sub_a06594d3++
                        if totalLosers == -1:
                            revert with 'NH{q', 17
                        totalLosers++
                        if totalRevenue > (-1 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                            revert with 'NH{q', 17
                        totalRevenue += sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
                    else:
                        if sub_4251ea3c[address(arg3)].field_256 == 1:
                            if sub_4251ea3c[address(arg3)].field_512 and 2 > -1 / sub_4251ea3c[address(arg3)].field_512:
                                revert with 'NH{q', 17
                            if sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent and 2 > -1 / sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                revert with 'NH{q', 17
                            if 2 * sub_4251ea3c[address(arg3)].field_512 < 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                revert with 'NH{q', 17
                            call address(arg3) with:
                               value (2 * sub_4251ea3c[address(arg3)].field_512) - (2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 2 * sub_4251ea3c[address(arg3)].field_512 < 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                revert with 'NH{q', 17
                            emit 0x40f7e736: arg1, arg2, (2 * sub_4251ea3c[address(arg3)].field_512) - (2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent), address(arg3), sub_4251ea3c[address(arg3)].field_256
                            if stor4[address(arg3)]:
                                if stor4[address(arg3)] < 1:
                                    revert with 'NH{q', 17
                                if stor3.length < 1:
                                    revert with 'NH{q', 17
                                if stor3.length - 1 != stor4[address(arg3)] - 1:
                                    if stor3.length - 1 >= stor3.length:
                                        revert with 'NH{q', 50
                                    if stor4[address(arg3)] - 1 >= stor3.length:
                                        revert with 'NH{q', 50
                                    stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                                    stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                                if not stor3.length:
                                    revert with 'NH{q', 49
                                stor3[stor3.length].field_0 = 0
                                stor3.length--
                                stor4[address(arg3)] = 0
                            sub_4251ea3c[address(arg3)].field_256 = 0
                            sub_4251ea3c[address(arg3)].field_512 = 0
                            sub_4251ea3c[address(arg3)].field_768 = 0
                            sub_4251ea3c[address(arg3)].field_1280 = 0
                            sub_4251ea3c[address(arg3)].field_0 = 0
                            if sub_4251ea3c[address(arg3)].field_1024 == -1:
                                revert with 'NH{q', 17
                            sub_4251ea3c[address(arg3)].field_1024++
                            if sub_a06594d3 == -1:
                                revert with 'NH{q', 17
                            sub_a06594d3++
                            if totalWinners == -1:
                                revert with 'NH{q', 17
                            totalWinners++
                            if totalRevenue > -(2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                                revert with 'NH{q', 17
                            totalRevenue += 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
                        else:
                            if sub_4251ea3c[address(arg3)].field_256 == 2:
                                if sub_4251ea3c[address(arg3)].field_512 and 2 > -1 / sub_4251ea3c[address(arg3)].field_512:
                                    revert with 'NH{q', 17
                                if sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent and 2 > -1 / sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                    revert with 'NH{q', 17
                                if 2 * sub_4251ea3c[address(arg3)].field_512 < 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                    revert with 'NH{q', 17
                                call address(arg3) with:
                                   value (2 * sub_4251ea3c[address(arg3)].field_512) - (2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 2 * sub_4251ea3c[address(arg3)].field_512 < 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                    revert with 'NH{q', 17
                                emit 0x40f7e736: arg1, arg2, (2 * sub_4251ea3c[address(arg3)].field_512) - (2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent), address(arg3), sub_4251ea3c[address(arg3)].field_256
                                if stor4[address(arg3)]:
                                    if stor4[address(arg3)] < 1:
                                        revert with 'NH{q', 17
                                    if stor3.length < 1:
                                        revert with 'NH{q', 17
                                    if stor3.length - 1 != stor4[address(arg3)] - 1:
                                        if stor3.length - 1 >= stor3.length:
                                            revert with 'NH{q', 50
                                        if stor4[address(arg3)] - 1 >= stor3.length:
                                            revert with 'NH{q', 50
                                        stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                                        stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                                    if not stor3.length:
                                        revert with 'NH{q', 49
                                    stor3[stor3.length].field_0 = 0
                                    stor3.length--
                                    stor4[address(arg3)] = 0
                                sub_4251ea3c[address(arg3)].field_256 = 0
                                sub_4251ea3c[address(arg3)].field_512 = 0
                                sub_4251ea3c[address(arg3)].field_768 = 0
                                sub_4251ea3c[address(arg3)].field_1280 = 0
                                sub_4251ea3c[address(arg3)].field_0 = 0
                                if sub_4251ea3c[address(arg3)].field_1024 == -1:
                                    revert with 'NH{q', 17
                                sub_4251ea3c[address(arg3)].field_1024++
                                if sub_a06594d3 == -1:
                                    revert with 'NH{q', 17
                                sub_a06594d3++
                                if totalWinners == -1:
                                    revert with 'NH{q', 17
                                totalWinners++
                                if totalRevenue > -(2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                                    revert with 'NH{q', 17
                                totalRevenue += 2 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
                            else:
                                if sub_4251ea3c[address(arg3)].field_256 != 3:
                                    if 0 < sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                        revert with 'NH{q', 17
                                    call address(arg3) with:
                                       value -1 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 < sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                        revert with 'NH{q', 17
                                    emit 0x40f7e736: arg1, arg2, -1 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent, address(arg3), sub_4251ea3c[address(arg3)].field_256
                                    if stor4[address(arg3)]:
                                        if stor4[address(arg3)] < 1:
                                            revert with 'NH{q', 17
                                        if stor3.length < 1:
                                            revert with 'NH{q', 17
                                        if stor3.length - 1 != stor4[address(arg3)] - 1:
                                            if stor3.length - 1 >= stor3.length:
                                                revert with 'NH{q', 50
                                            if stor4[address(arg3)] - 1 >= stor3.length:
                                                revert with 'NH{q', 50
                                            stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                                            stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                                        if not stor3.length:
                                            revert with 'NH{q', 49
                                        stor3[stor3.length].field_0 = 0
                                        stor3.length--
                                        stor4[address(arg3)] = 0
                                    sub_4251ea3c[address(arg3)].field_256 = 0
                                    sub_4251ea3c[address(arg3)].field_512 = 0
                                    sub_4251ea3c[address(arg3)].field_768 = 0
                                    sub_4251ea3c[address(arg3)].field_1280 = 0
                                    sub_4251ea3c[address(arg3)].field_0 = 0
                                    if sub_4251ea3c[address(arg3)].field_1024 == -1:
                                        revert with 'NH{q', 17
                                    sub_4251ea3c[address(arg3)].field_1024++
                                    if sub_a06594d3 == -1:
                                        revert with 'NH{q', 17
                                    sub_a06594d3++
                                    if totalWinners == -1:
                                        revert with 'NH{q', 17
                                    totalWinners++
                                    if totalRevenue > (-1 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                                        revert with 'NH{q', 17
                                    totalRevenue += sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
                                else:
                                    if sub_4251ea3c[address(arg3)].field_512 and 4 > -1 / sub_4251ea3c[address(arg3)].field_512:
                                        revert with 'NH{q', 17
                                    if sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent and 4 > -1 / sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                        revert with 'NH{q', 17
                                    if 4 * sub_4251ea3c[address(arg3)].field_512 < 4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                        revert with 'NH{q', 17
                                    call address(arg3) with:
                                       value (4 * sub_4251ea3c[address(arg3)].field_512) - (4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 4 * sub_4251ea3c[address(arg3)].field_512 < 4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent:
                                        revert with 'NH{q', 17
                                    emit 0x40f7e736: arg1, arg2, (4 * sub_4251ea3c[address(arg3)].field_512) - (4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent), address(arg3), sub_4251ea3c[address(arg3)].field_256
                                    if stor4[address(arg3)]:
                                        if stor4[address(arg3)] < 1:
                                            revert with 'NH{q', 17
                                        if stor3.length < 1:
                                            revert with 'NH{q', 17
                                        if stor3.length - 1 != stor4[address(arg3)] - 1:
                                            if stor3.length - 1 >= stor3.length:
                                                revert with 'NH{q', 50
                                            if stor4[address(arg3)] - 1 >= stor3.length:
                                                revert with 'NH{q', 50
                                            stor3[stor4[address(arg3)]].field_0 = stor3[stor3.length].field_0
                                            stor4[stor3[stor3.length].field_0] = stor4[address(arg3)]
                                        if not stor3.length:
                                            revert with 'NH{q', 49
                                        stor3[stor3.length].field_0 = 0
                                        stor3.length--
                                        stor4[address(arg3)] = 0
                                    sub_4251ea3c[address(arg3)].field_256 = 0
                                    sub_4251ea3c[address(arg3)].field_512 = 0
                                    sub_4251ea3c[address(arg3)].field_768 = 0
                                    sub_4251ea3c[address(arg3)].field_1280 = 0
                                    sub_4251ea3c[address(arg3)].field_0 = 0
                                    if sub_4251ea3c[address(arg3)].field_1024 == -1:
                                        revert with 'NH{q', 17
                                    sub_4251ea3c[address(arg3)].field_1024++
                                    if sub_a06594d3 == -1:
                                        revert with 'NH{q', 17
                                    sub_a06594d3++
                                    if totalWinners == -1:
                                        revert with 'NH{q', 17
                                    totalWinners++
                                    if totalRevenue > -(4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent) - 1:
                                        revert with 'NH{q', 17
                                    totalRevenue += 4 * sub_4251ea3c[address(arg3)].field_512 / 100 * treasuryPercent
}



}
