contract main {




// =====================  Runtime code  =====================


uint8 paused; offset 160
uint32 sub_7ccfd7fc; offset 168
address owner;
uint256 ticketPrice;
uint256 lotteryID;
array of struct stor3;
mapping of uint256 sub_482e258f;
mapping of uint256 endTime;
array of address players;
address tokenAddress;
address stor8;
address burnAddress;
mapping of uint256 sub_233305f0;
uint256 sub_572e4f50;
uint256 shareDenominator;

function ticketPrice() payable {
    return ticketPrice
}

function sub_233305f0(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_233305f0[arg1][arg2]
}

function endTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return endTime[arg1]
}

function sub_482e258f(?) payable {
    require calldata.size - 4 >= 32
    return sub_482e258f[arg1]
}

function sub_572e4f50(?) payable {
    return sub_572e4f50
}

function paused() payable {
    return bool(paused)
}

function burnAddress() payable {
    return burnAddress
}

function sub_7ccfd7fc(?) payable {
    return sub_7ccfd7fc
}

function totalEntries() payable {
    return players.length
}

function owner() payable {
    return owner
}

function lotteryID() payable {
    return lotteryID
}

function tokenAddress() payable {
    return tokenAddress
}

function userEntries(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_233305f0[stor2][address(arg1)]
}

function shareDenominator() payable {
    return shareDenominator
}

function players(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < players.length
    return address(players[arg1])
}

function _fallback() payable {
    revert
}

function isActive() payable {
    if block.timestamp >= endTime[stor2]:
        return (block.timestamp < endTime[stor2])
    return not bool(paused)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTicketPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    ticketPrice = arg1
}

function closeLottery() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require players.length
    if block.timestamp < endTime[stor2]:
        revert with 0, 'Lottery is not over'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
    sub_482e258f[stor2] = players.length
}

function start(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= block.timestamp:
        revert with 0, 'End time must be in the future'
    endTime[stor2] = arg1
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
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

function enter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    if arg1 <= 0:
        revert with 0, 'Must make at least one entry'
    if block.timestamp >= endTime[stor2]:
        revert with 0, 'Lottery is over'
    if sub_233305f0[stor2][msg.sender] > !arg1:
        revert with 0, 17
    sub_233305f0[stor2][msg.sender] += arg1
    idx = 0
    while idx < arg1:
        players.length++
        mem[0] = 6
        uint256(players[players.length]) = msg.sender or Mask(96, 160, uint256(players[players.length]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if arg1 and ticketPrice > -1 / arg1:
        revert with 0, 17
    require ext_code.size(stor8)
    call stor8.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1 * ticketPrice
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_8140abef(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= lotteryID:
        revert with 0, 'No winners yet'
    mem[64] = (32 * stor3[arg1].field_0) + 128
    mem[96] = stor3[arg1].field_0
    if not stor3[arg1].field_0:
        mem[(32 * stor3[arg1].field_0) + 128] = 32
        mem[(32 * stor3[arg1].field_0) + 160] = stor3[arg1].field_0
        idx = 0
        s = (32 * stor3[arg1].field_0) + 192
        t = 128
        while idx < stor3[arg1].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor3[arg1].field_0) + 128
           len (96 * stor3[arg1].field_0) + 64
    mem[128] = stor3[arg1].field_0
    idx = 128
    s = 0
    while (32 * stor3[arg1].field_0) + 96 > idx:
        mem[idx + 32] = stor3[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3[arg1].field_0) + 128] = 32
    mem[(32 * stor3[arg1].field_0) + 160] = stor3[arg1].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor3[arg1].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor3[arg1].field_0) + -mem[64] + 192
}

function sub_5c6059ee(?) payable {
    if lotteryID <= 1:
        revert with 0, 'No winners yet'
    if lotteryID < 1:
        revert with 0, 17
    mem[64] = (32 * stor3[stor2 - 1].field_0) + 128
    mem[96] = stor3[stor2 - 1].field_0
    if not stor3[stor2 - 1].field_0:
        mem[(32 * stor3[stor2 - 1].field_0) + 128] = 32
        mem[(32 * stor3[stor2 - 1].field_0) + 160] = stor3[stor2 - 1].field_0
        idx = 0
        s = (32 * stor3[stor2 - 1].field_0) + 192
        t = 128
        while idx < stor3[stor2 - 1].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor3[stor2 - 1].field_0) + 128
           len (96 * stor3[stor2 - 1].field_0) + 64
    mem[128] = stor3[stor2 - 1].field_0
    idx = 128
    s = 0
    while (32 * stor3[stor2 - 1].field_0) + 96 > idx:
        mem[idx + 32] = stor3[stor2 - 1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3[stor2 - 1].field_0) + 128] = 32
    mem[(32 * stor3[stor2 - 1].field_0) + 160] = stor3[stor2 - 1].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor3[stor2 - 1].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor3[stor2 - 1].field_0) + -mem[64] + 192
}

function sub_7deb6217(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < sub_7ccfd7fc:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if mem[(32 * idx) + 128] <= 0:
            revert with 0, 'Randomness not set'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not players.length:
        if lotteryID == -1:
            revert with 0, 17
        lotteryID++
        players.length = 0
        idx = 0
        while players.length > idx:
            uint256(players[idx]) = 0
            idx = idx + 1
            continue 
    else:
        if players.length and ticketPrice > -1 / players.length:
            revert with 0, 17
        if players.length * ticketPrice and sub_572e4f50 > -1 / players.length * ticketPrice:
            revert with 0, 17
        if not shareDenominator:
            revert with 0, 18
        if not sub_7ccfd7fc:
            revert with 0, 18
        if players.length * ticketPrice * sub_572e4f50 / shareDenominator / sub_7ccfd7fc and sub_7ccfd7fc > -1 / players.length * ticketPrice * sub_572e4f50 / shareDenominator / sub_7ccfd7fc:
            revert with 0, 17
        if players.length * ticketPrice < players.length * ticketPrice * sub_572e4f50 / shareDenominator / sub_7ccfd7fc * sub_7ccfd7fc:
            revert with 0, 17
        idx = 0
        while idx < sub_7ccfd7fc:
            if idx >= mem[96]:
                revert with 0, 50
            if not players.length:
                revert with 0, 18
            mem[32] = 3
            if mem[(32 * idx) + 128] % players.length >= players.length:
                revert with 0, 50
            stor3[stor2].field_0++
            stor3[stor2][stor3[stor2].field_0].field_0 = address(players[mem[(32 * idx) + 128] % players.length])
            mem[0] = 6
            mem[mem[64] + 4] = address(players[mem[(32 * idx) + 128] % players.length])
            mem[mem[64] + 36] = players.length * ticketPrice * sub_572e4f50 / shareDenominator / sub_7ccfd7fc
            require ext_code.size(stor8)
            call stor8.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], players.length * ticketPrice * sub_572e4f50 / shareDenominator / sub_7ccfd7fc
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _97 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_97] == bool(mem[_97])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = burnAddress
        mem[mem[64] + 36] = (players.length * ticketPrice) - (players.length * ticketPrice * sub_572e4f50 / shareDenominator / sub_7ccfd7fc * sub_7ccfd7fc)
        require ext_code.size(stor8)
        call stor8.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args burnAddress, (players.length * ticketPrice) - (players.length * ticketPrice * sub_572e4f50 / shareDenominator / sub_7ccfd7fc * sub_7ccfd7fc)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _89 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_89] == bool(mem[_89])
        if lotteryID == -1:
            revert with 0, 17
        lotteryID++
        _98 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        players.length = mem[_98]
        if not mem[_98]:
            idx = 0
            while players.length > idx:
                uint256(players[idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = _98 + 32
            while _98 + (32 * mem[_98]) + 32 > idx:
                address(players[s]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * mem[_98]) + 31) >> 5
            while players.length > idx:
                uint256(players[idx]) = 0
                idx = idx + 1
                continue 
}



}
