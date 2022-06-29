contract main {




// =====================  Runtime code  =====================


#
#  - sub_ce63c5d9(?)
#
address owner;
address stor1;
array of struct stor2;
mapping of uint256 stor3;
address treasuryAddress;
uint256 gameId;
uint256 sub_3426acc3;
uint256 entryFee;
uint256 treasuryPercent;
uint256 sub_27bd4ed0;
uint256 sub_3951be87;
uint256 sub_7441decc;
uint256 sub_4d2104a2;
uint256 sub_c0a35854;
uint256 currentRound;
uint256 sub_d88956bd;
array of address sub_a79a1616;
uint256 sub_4c05c2e9;
uint256 sub_e2905d4f;
uint256 totalWinners;
uint256 totalWithdrawn;
uint256 totalRevenue;
uint256 sub_db11fd30;

function treasuryPercent() {
    return treasuryPercent
}

function entryFee() {
    return entryFee
}

function sub_27bd4ed0(?) {
    return sub_27bd4ed0
}

function sub_3426acc3(?) {
    return sub_3426acc3
}

function sub_3951be87(?) {
    return sub_3951be87
}

function totalWithdrawn() {
    return totalWithdrawn
}

function sub_4c05c2e9(?) {
    return sub_4c05c2e9
}

function sub_4d2104a2(?) {
    return sub_4d2104a2
}

function sub_6275804d(?) {
    return sub_a79a1616.length
}

function prizePool() {
    return sub_7441decc
}

function sub_7441decc(?) {
    return sub_7441decc
}

function currentRound() {
    return currentRound
}

function owner() {
    return owner
}

function sub_a79a1616(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_a79a1616.length
    return address(sub_a79a1616[arg1])
}

function totalWinners() {
    return totalWinners
}

function totalRevenue() {
    return totalRevenue
}

function sub_c0a35854(?) {
    return sub_c0a35854
}

function treasuryAddress() {
    return treasuryAddress
}

function gameId() {
    return gameId
}

function sub_d88956bd(?) {
    return sub_d88956bd
}

function sub_db11fd30(?) {
    return sub_db11fd30
}

function sub_e2905d4f(?) {
    return sub_e2905d4f
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

function sub_03ea9b61(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3951be87 = arg1
}

function sub_4c305a7e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_db11fd30 = arg1
}

function sub_5ff0d614(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4d2104a2 = arg1
}

function sub_b1fa80c8(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3426acc3 = arg1
}

function sub_cc6ca93b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c0a35854 = arg1
}

function sub_e606254e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d88956bd = arg1
}

function sub_fbbb98bb(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_27bd4ed0 = arg1
}

function setTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function setEntryFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    entryFee = arg1
}

function setTreasuryPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryPercent = arg1
}

function sub_4dd4c789(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var58002 >= stor2.length:
    if var64001 >= stor2.length:
        revert with 'NH{q', 50
    if not stor3[var74001]:
        # nil
    else:
        if var86003 < 1:
            revert with 'NH{q', 17
        # nil
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

function joinGame() payable {
    if stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Player is already in the current game'
    if sub_3951be87:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only join the game during the sign-up phase'
    if sub_d88956bd:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't join game while it is paused'
    if entryFee / 100 and treasuryPercent > -1 / entryFee / 100:
        revert with 'NH{q', 17
    if entryFee > (-1 * entryFee / 100 * treasuryPercent) - 1:
        revert with 'NH{q', 17
    if msg.value < entryFee + (entryFee / 100 * treasuryPercent):
        revert with 0, 'Incorrect entry fee provided'
    require ext_code.size(stor1)
    call stor1.0xa6a91d55 with:
       value entryFee / 100 * treasuryPercent wei
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if totalRevenue > (-1 * entryFee / 100 * treasuryPercent) - 1:
        revert with 'NH{q', 17
    totalRevenue += entryFee / 100 * treasuryPercent
    if not stor3[address(msg.sender)]:
        stor2.length++
        stor2[stor2.length].field_0 = msg.sender
        stor2[stor2.length].field_160 = 0
        stor3[address(msg.sender)] = stor2.length
    if sub_7441decc > -entryFee - 1:
        revert with 'NH{q', 17
    sub_7441decc += entryFee
    if stor2.length > 1:
        if sub_4c05c2e9 == 1:
            sub_4c05c2e9 = 0
    if block.timestamp > -61:
        revert with 'NH{q', 17
    if sub_c0a35854 < block.timestamp + 60:
        if block.timestamp > -sub_db11fd30 - 1:
            revert with 'NH{q', 17
        sub_c0a35854 = block.timestamp + sub_db11fd30
    emit 0xd5b030fc: gameId, msg.sender, entryFee
}

function sub_e7cda31c(?) {
    if stor2.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor2.length
    mem[64] = (32 * stor2.length) + 128
    if not stor2.length:
        if var35002 >= stor2.length:
            mem[(32 * stor2.length) + 128] = 32
            mem[(32 * stor2.length) + 160] = stor2.length
            idx = 0
            s = 128
            t = (32 * stor2.length) + 192
            while idx < stor2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor2.length) + 128
               len (96 * stor2.length) + 64
        if var41001 >= stor2.length:
            revert with 'NH{q', 50
        mem[0] = 2
        if var47002 >= stor2.length:
            revert with 'NH{q', 50
        mem[(32 * var47002) + 128] = address(var47001)
        s = var47002
        t = var47001
        idx = var47002
        while idx != -1:
            if idx + 1 >= stor2.length:
                mem[(32 * stor2.length) + 128] = 32
                mem[(32 * stor2.length) + 160] = stor2.length
                idx = 0
                u = 128
                v = (32 * stor2.length) + 192
                while idx < stor2.length:
                    mem[v] = mem[u + 12 len 20]
                    mem[(32 * s) + 128] = address(t)
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from (32 * stor2.length) + 128
                   len (96 * stor2.length) + 64
            mem[0] = 2
            if idx + 1 >= stor2.length:
                revert with 'NH{q', 50
            mem[(32 * idx + 2) + 128] = stor2[idx].field_512
            s = idx + 1
            t = stor2[idx].field_256
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        if var36002 >= stor2.length:
            mem[(32 * stor2.length) + 128] = 32
            mem[(32 * stor2.length) + 160] = stor2.length
            idx = 0
            s = 128
            t = (32 * stor2.length) + 192
            while idx < stor2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor2.length) + 128
               len (96 * stor2.length) + 64
        if var42001 >= stor2.length:
            revert with 'NH{q', 50
        mem[0] = 2
        if var48002 >= stor2.length:
            revert with 'NH{q', 50
        mem[(32 * var48002) + 128] = address(var48001)
        s = var48002
        t = var48001
        idx = var48002
        while idx != -1:
            if idx + 1 >= stor2.length:
                mem[(32 * stor2.length) + 128] = 32
                mem[(32 * stor2.length) + 160] = stor2.length
                idx = 0
                u = 128
                v = (32 * stor2.length) + 192
                while idx < stor2.length:
                    mem[v] = mem[u + 12 len 20]
                    mem[(32 * s) + 128] = address(t)
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from (32 * stor2.length) + 128
                   len (96 * stor2.length) + 64
            mem[0] = 2
            if idx + 1 >= stor2.length:
                revert with 'NH{q', 50
            mem[(32 * idx + 2) + 128] = stor2[idx].field_512
            s = idx + 1
            t = stor2[idx].field_256
            idx = idx + 1
            continue 
    revert with 'NH{q', 17
}

function sub_a40f921b(?) {
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot withdraw as you are not currently in the game.'
    if not stor2.length:
        revert with 'NH{q', 18
    call msg.sender with:
       value sub_7441decc / stor2.length wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_7441decc < sub_7441decc / stor2.length:
        revert with 'NH{q', 17
    sub_7441decc -= sub_7441decc / stor2.length
    if not stor3[address(msg.sender)]:
        if totalWithdrawn == -1:
            revert with 'NH{q', 17
        totalWithdrawn++
        emit Withdraw((sub_7441decc / stor2.length), gameId, msg.sender);
        if stor2.length != 1:
        if 0 >= stor2.length:
            revert with 'NH{q', 50
        call address(stor2.field_0) with:
           value sub_7441decc wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 >= stor2.length:
            revert with 'NH{q', 50
        emit Winner(sub_7441decc, gameId, address(stor2.field_0));
        if gameId == -1:
            revert with 'NH{q', 17
        gameId++
        if totalWinners == -1:
            revert with 'NH{q', 17
        totalWinners++
        if var148002 < stor2.length:
            if var154001 >= stor2.length:
                revert with 'NH{q', 50
            if not stor3[var164001]:
                # nil
            else:
                if var176003 < 1:
                    revert with 'NH{q', 17
                # nil
        else:
            sub_a79a1616.length = 0
            idx = 0
            while sub_a79a1616.length > idx:
                uint256(sub_a79a1616[idx]) = 0
                idx = idx + 1
                continue 
            currentRound = 0
            sub_7441decc = 0
            sub_3951be87 = 0
            if block.timestamp > -sub_4d2104a2 - 1:
                revert with 'NH{q', 17
            sub_c0a35854 = block.timestamp + sub_4d2104a2
    else:
        if stor3[address(msg.sender)] < 1:
            revert with 'NH{q', 17
        if stor2.length < 1:
            revert with 'NH{q', 17
        if stor2.length - 1 == stor3[address(msg.sender)] - 1:
            if not stor2.length:
                revert with 'NH{q', 49
            stor2[stor2.length].field_0 = 0
            stor2.length--
            stor3[address(msg.sender)] = 0
            if totalWithdrawn == -1:
                revert with 'NH{q', 17
            totalWithdrawn++
            emit Withdraw((sub_7441decc / stor2.length), gameId, msg.sender);
            if stor2.length != 1:
            if 0 >= stor2.length:
                revert with 'NH{q', 50
            call address(stor2.field_0) with:
               value sub_7441decc wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= stor2.length:
                revert with 'NH{q', 50
            emit Winner(sub_7441decc, gameId, address(stor2.field_0));
            if gameId == -1:
                revert with 'NH{q', 17
            gameId++
            if totalWinners == -1:
                revert with 'NH{q', 17
            totalWinners++
            if var164002 < stor2.length:
                if var170001 >= stor2.length:
                    revert with 'NH{q', 50
                if not stor3[var180001]:
                    # nil
                else:
                    if var192003 < 1:
                        revert with 'NH{q', 17
                    # nil
            else:
                sub_a79a1616.length = 0
                idx = 0
                while sub_a79a1616.length > idx:
                    uint256(sub_a79a1616[idx]) = 0
                    idx = idx + 1
                    continue 
                currentRound = 0
                sub_7441decc = 0
                sub_3951be87 = 0
                if block.timestamp > -sub_4d2104a2 - 1:
                    revert with 'NH{q', 17
                sub_c0a35854 = block.timestamp + sub_4d2104a2
        else:
            if stor2.length - 1 >= stor2.length:
                revert with 'NH{q', 50
            if stor3[address(msg.sender)] - 1 >= stor2.length:
                revert with 'NH{q', 50
            stor2[stor3[address(msg.sender)]].field_0 = stor2[stor2.length].field_0
            stor3[stor2[stor2.length].field_0] = stor3[address(msg.sender)]
            if not stor2.length:
                revert with 'NH{q', 49
            stor2[stor2.length].field_0 = 0
            stor2.length--
            stor3[address(msg.sender)] = 0
            if totalWithdrawn == -1:
                revert with 'NH{q', 17
            totalWithdrawn++
            emit Withdraw((sub_7441decc / stor2.length), gameId, msg.sender);
            if stor2.length != 1:
            if 0 >= stor2.length:
                revert with 'NH{q', 50
            call address(stor2.field_0) with:
               value sub_7441decc wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= stor2.length:
                revert with 'NH{q', 50
            emit Winner(sub_7441decc, gameId, address(stor2.field_0));
            if gameId == -1:
                revert with 'NH{q', 17
            gameId++
            if totalWinners == -1:
                revert with 'NH{q', 17
            totalWinners++
            if var167002 < stor2.length:
                if var173001 >= stor2.length:
                    revert with 'NH{q', 50
                if not stor3[var183001]:
                    # nil
                else:
                    if var195003 < 1:
                        revert with 'NH{q', 17
                    # nil
            else:
                sub_a79a1616.length = 0
                idx = 0
                while sub_a79a1616.length > idx:
                    uint256(sub_a79a1616[idx]) = 0
                    idx = idx + 1
                    continue 
                currentRound = 0
                sub_7441decc = 0
                sub_3951be87 = 0
                if block.timestamp > -sub_4d2104a2 - 1:
                    revert with 'NH{q', 17
                sub_c0a35854 = block.timestamp + sub_4d2104a2
}



}
