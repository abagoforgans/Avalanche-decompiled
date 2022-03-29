contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
array of struct stor2;
array of struct stor3;
uint256 sPoolAmount;
uint256 mPoolAmount;
uint256 lPoolAmount;
uint256 xPoolAmount;
uint256 vaultAmount;
mapping of uint256 pendingWithdrawAmount;
uint256 sPoolNo;
uint256 mPoolNo;
uint256 lPoolNo;
uint256 xPoolNo;
address stor14;

function getSPoolNo() {
    return sPoolNo
}

function getLPoolNo() {
    return lPoolNo
}

function getXPoolNo() {
    return xPoolNo
}

function getXPoolAmount() {
    return xPoolAmount
}

function getMPoolNo() {
    return mPoolNo
}

function getPendingWithdrawAmount(address arg1) {
    require calldata.size - 4 >= 32
    return pendingWithdrawAmount[address(arg1)]
}

function getMPoolAmount() {
    return mPoolAmount
}

function getVaultAmount() {
    return vaultAmount
}

function getSPoolAmount() {
    return sPoolAmount
}

function getLPoolAmount() {
    return lPoolAmount
}

function destroyRandominoContract() payable {
    require msg.sender == stor14
    if stor0.length > 0:
        require stor0.length
        require sha3(block.difficulty, block.timestamp, stor0.length) % stor0.length < stor0.length
        call stor0[sha3(block.difficulty, block.timestamp, stor0.length) % stor0.length].field_0 with:
           value sPoolAmount wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sPoolAmount = 0
    if stor1.length > 0:
        require stor1.length
        require sha3(block.difficulty, block.timestamp, stor1.length) % stor1.length < stor1.length
        call stor1[sha3(block.difficulty, block.timestamp, stor1.length) % stor1.length].field_0 with:
           value mPoolAmount wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mPoolAmount = 0
    if stor2.length > 0:
        require stor2.length
        require sha3(block.difficulty, block.timestamp, stor2.length) % stor2.length < stor2.length
        call stor2[sha3(block.difficulty, block.timestamp, stor2.length) % stor2.length].field_0 with:
           value lPoolAmount wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        lPoolAmount = 0
    if stor3.length > 0:
        require stor3.length
        require sha3(block.difficulty, block.timestamp, stor3.length) % stor3.length < stor3.length
        call stor3[sha3(block.difficulty, block.timestamp, stor3.length) % stor3.length].field_0 with:
           value xPoolAmount wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        xPoolAmount = 0
    selfdestruct(stor14)
}

function _fallback() payable {
    revert
}

function vaultWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor14
    require arg1 <= vaultAmount
    call stor14 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    vaultAmount -= arg1
    return 1
}

function withdraw() payable {
    require 0 < pendingWithdrawAmount[address(msg.sender)]
    pendingWithdrawAmount[address(msg.sender)] = 0
    call msg.sender with:
       value pendingWithdrawAmount[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function getSPoolPlayers() {
    if not stor0.length:
        mem[(32 * stor0.length) + 128] = 32
        mem[(32 * stor0.length) + 160] = stor0.length
        mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
        return memory
          from (32 * stor0.length) + 128
           len (96 * stor0.length) + 64
    mem[128] = address(stor0.field_0)
    idx = 128
    s = 0
    while (32 * stor0.length) + 96 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
    return Array(len=stor0.length, data=mem[128 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 192 len (32 * stor0.length) - floor32(stor0.length)]), 
}

function getLPoolPlayers() {
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = address(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
    return Array(len=stor2.length, data=mem[128 len floor32(stor2.length)], mem[(32 * stor2.length) + floor32(stor2.length) + 192 len (32 * stor2.length) - floor32(stor2.length)]), 
}

function getMPoolPlayers() {
    if not stor1.length:
        mem[(32 * stor1.length) + 128] = 32
        mem[(32 * stor1.length) + 160] = stor1.length
        mem[(32 * stor1.length) + 192 len floor32(stor1.length)] = mem[128 len floor32(stor1.length)]
        return memory
          from (32 * stor1.length) + 128
           len (96 * stor1.length) + 64
    mem[128] = address(stor1.field_0)
    idx = 128
    s = 0
    while (32 * stor1.length) + 96 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1.length) + 192 len floor32(stor1.length)] = mem[128 len floor32(stor1.length)]
    return Array(len=stor1.length, data=mem[128 len floor32(stor1.length)], mem[(32 * stor1.length) + floor32(stor1.length) + 192 len (32 * stor1.length) - floor32(stor1.length)]), 
}

function getXPoolPlayers() {
    if not stor3.length:
        mem[(32 * stor3.length) + 128] = 32
        mem[(32 * stor3.length) + 160] = stor3.length
        mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
        return memory
          from (32 * stor3.length) + 128
           len (96 * stor3.length) + 64
    mem[128] = address(stor3.field_0)
    idx = 128
    s = 0
    while (32 * stor3.length) + 96 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
    return Array(len=stor3.length, data=mem[128 len floor32(stor3.length)], mem[(32 * stor3.length) + floor32(stor3.length) + 192 len (32 * stor3.length) - floor32(stor3.length)]), 
}

function sub_94200de8(?) payable {
    if sPoolAmount >= 10 * 10^18:
        require stor0.length
        require sha3(block.difficulty, block.timestamp, stor0.length) % stor0.length < stor0.length
        pendingWithdrawAmount[stor0[sha3(block.difficulty, block.timestamp, stor0.length) % stor0.length].field_0] += 8 * 10^18
        emit 0xd3bdb6cd: 8 * 10^18, stor0[sha3(block.difficulty, block.timestamp, stor0.length) % stor0.length].field_0, sPoolNo, 0
        vaultAmount += 10^18
        mPoolAmount += 10^18
        sPoolAmount = 0
        stor0.length = 0
        idx = 0
        while stor0.length > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
        sPoolNo++
        if mPoolAmount >= 25 * 10^18:
            require stor1.length
            require sha3(block.difficulty, block.timestamp, stor1.length) % stor1.length < stor1.length
            pendingWithdrawAmount[stor1[sha3(block.difficulty, block.timestamp, stor1.length) % stor1.length].field_0] += 20 * 10^18
            emit 0xd3bdb6cd: 20 * 10^18, stor1[sha3(block.difficulty, block.timestamp, stor1.length) % stor1.length].field_0, mPoolNo, 1
            lPoolAmount += 5 * 10^18
            mPoolAmount = 0
            stor1.length = 0
            idx = 0
            while stor1.length > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
            mPoolNo++
            if lPoolAmount >= 60 * 10^18:
                require stor2.length
                require sha3(block.difficulty, block.timestamp, stor2.length) % stor2.length < stor2.length
                pendingWithdrawAmount[stor2[sha3(block.difficulty, block.timestamp, stor2.length) % stor2.length].field_0] += 50 * 10^18
                emit 0xd3bdb6cd: 50 * 10^18, stor2[sha3(block.difficulty, block.timestamp, stor2.length) % stor2.length].field_0, lPoolNo, 2
                xPoolAmount += 10 * 10^18
                lPoolAmount = 0
                stor2.length = 0
                idx = 0
                while stor2.length > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                lPoolNo++
                if xPoolAmount >= 100 * 10^18:
                    require stor3.length
                    require sha3(block.difficulty, block.timestamp, stor3.length) % stor3.length < stor3.length
                    pendingWithdrawAmount[stor3[sha3(block.difficulty, block.timestamp, stor3.length) % stor3.length].field_0] += 100 * 10^18
                    emit 0xd3bdb6cd: 100 * 10^18, stor3[sha3(block.difficulty, block.timestamp, stor3.length) % stor3.length].field_0, xPoolNo, 3
                    xPoolAmount = 0
                    stor3.length = 0
                    idx = 0
                    while stor3.length > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    xPoolNo++
}

function buyTicket() payable {
    require msg.value == 10^18
    sPoolAmount += msg.value
    stor0.length++
    stor0[stor0.length].field_0 = msg.sender
    stor1.length++
    stor1[stor1.length].field_0 = msg.sender
    stor2.length++
    stor2[stor2.length].field_0 = msg.sender
    stor3.length++
    stor3[stor3.length].field_0 = msg.sender
    emit TicketPurchased(sPoolNo, mPoolNo, lPoolNo, xPoolNo, msg.sender);
    emit 0x3a432d20: msg.sender, sPoolNo
    emit 0x3ff3f7c1: msg.sender, mPoolNo
    emit 0x2bd2a68f: msg.sender, lPoolNo
    emit 0xe61bdc4f: msg.sender, xPoolNo
    if sPoolAmount >= 10 * 10^18:
        require stor0.length
        require sha3(block.difficulty, block.timestamp, stor0.length) % stor0.length < stor0.length
        pendingWithdrawAmount[stor0[sha3(block.difficulty, block.timestamp, stor0.length) % stor0.length].field_0] += 8 * 10^18
        emit 0xd3bdb6cd: 8 * 10^18, stor0[sha3(block.difficulty, block.timestamp, stor0.length) % stor0.length].field_0, sPoolNo, 0
        vaultAmount += 10^18
        mPoolAmount += 10^18
        sPoolAmount = 0
        stor0.length = 0
        idx = 0
        while stor0.length > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
        sPoolNo++
        if mPoolAmount >= 25 * 10^18:
            require stor1.length
            require sha3(block.difficulty, block.timestamp, stor1.length) % stor1.length < stor1.length
            pendingWithdrawAmount[stor1[sha3(block.difficulty, block.timestamp, stor1.length) % stor1.length].field_0] += 20 * 10^18
            emit 0xd3bdb6cd: 20 * 10^18, stor1[sha3(block.difficulty, block.timestamp, stor1.length) % stor1.length].field_0, mPoolNo, 1
            lPoolAmount += 5 * 10^18
            mPoolAmount = 0
            stor1.length = 0
            idx = 0
            while stor1.length > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
            mPoolNo++
            if lPoolAmount >= 60 * 10^18:
                require stor2.length
                require sha3(block.difficulty, block.timestamp, stor2.length) % stor2.length < stor2.length
                pendingWithdrawAmount[stor2[sha3(block.difficulty, block.timestamp, stor2.length) % stor2.length].field_0] += 50 * 10^18
                emit 0xd3bdb6cd: 50 * 10^18, stor2[sha3(block.difficulty, block.timestamp, stor2.length) % stor2.length].field_0, lPoolNo, 2
                xPoolAmount += 10 * 10^18
                lPoolAmount = 0
                stor2.length = 0
                idx = 0
                while stor2.length > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                lPoolNo++
                if xPoolAmount >= 100 * 10^18:
                    require stor3.length
                    require sha3(block.difficulty, block.timestamp, stor3.length) % stor3.length < stor3.length
                    pendingWithdrawAmount[stor3[sha3(block.difficulty, block.timestamp, stor3.length) % stor3.length].field_0] += 100 * 10^18
                    emit 0xd3bdb6cd: 100 * 10^18, stor3[sha3(block.difficulty, block.timestamp, stor3.length) % stor3.length].field_0, xPoolNo, 3
                    xPoolAmount = 0
                    stor3.length = 0
                    idx = 0
                    while stor3.length > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    xPoolNo++
}



}
