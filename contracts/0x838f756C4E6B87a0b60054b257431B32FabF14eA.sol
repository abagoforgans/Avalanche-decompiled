contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
mapping of struct sub_0ac46b88;
mapping of uint256 sub_c0f7381d;
uint256 sub_f315f553;
uint256 feePercentage;
uint256 collectedFee;

function sub_0ac46b88(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return address(sub_0ac46b88[arg1][17][arg2].field_0)
}

function sub_13f89c07(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    return sub_0ac46b88[arg1][9][address(arg2)].field_0
}

function sub_1d8a1679(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    return sub_0ac46b88[arg1][10][address(arg2)].field_0
}

function paused() {
    return bool(paused)
}

function sub_6708de85(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return address(sub_0ac46b88[arg1][15][arg2].field_0)
}

function owner() {
    return owner
}

function feePercentage() {
    return feePercentage
}

function sub_c0f7381d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_c0f7381d[arg1]
}

function collectedFee() {
    return collectedFee
}

function sub_eb05db20(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return address(sub_0ac46b88[arg1][16][arg2].field_0)
}

function sub_f315f553(?) {
    return sub_f315f553
}

function sub_fc1869fe(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    return sub_0ac46b88[arg1][8][address(arg2)].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function isClaimed(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return (sub_0ac46b88[arg1][13][Mask(248, 8, arg2)].field_0 and 1 << uint8(arg2) == 1 << uint8(arg2))
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

function sub_8c4b47a1(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    if collectedFee <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need the collected fee to be greater than 0'
    collectedFee = 0
    call msg.sender with:
       value collectedFee wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd46f7fca: collectedFee, msg.sender
}

function sub_1f6cf1b7(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    if not uint8(sub_0ac46b88[arg1].field_2816):
        revert with 0, 'Topic does not exist.'
    if uint8(sub_0ac46b88[arg1].field_2824):
        revert with 0, 'Topic already settled!'
    if block.timestamp <= sub_0ac46b88[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not allowed to settle a topic before it has ended.'
    Mask(248, 0, sub_0ac46b88[arg1].field_2824) = 1
    sub_0ac46b88[arg1].field_3072 = arg2
    emit 0xf107a15f: arg2, arg1
}

function sub_9c952988(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = sha3(arg1, 1) + 14
    mem[ceil32(ceil32(arg2.length)) + 97] = stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]
    return memory
      from ceil32(ceil32(arg2.length)) + 97
       len 32
}

function sub_80740613(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if paused:
        revert with 0, 'Pausable: paused'
    if not uint8(sub_0ac46b88[arg1].field_2816):
        revert with 0, 'Topic does not exist.'
    if block.timestamp >= sub_0ac46b88[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Not allowed to add sponsorship to a topic that has already ended.'
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need to enter a positive sponsorship amount.'
    if msg.value and feePercentage > -1 / msg.value:
        revert with 'NH{q', 17
    if collectedFee > -(msg.value * feePercentage / 100) - 1:
        revert with 'NH{q', 17
    collectedFee += msg.value * feePercentage / 100
    if not sub_0ac46b88[arg1][10][address(msg.sender)].field_0:
        if sub_0ac46b88[arg1][14]['userSponsorCount'].field_0 > -2:
            revert with 'NH{q', 17
        sub_0ac46b88[arg1][14]['userSponsorCount'].field_0++
        address(sub_0ac46b88[arg1][17][sub_0ac46b88[arg1][14]['userSponsorCount'].field_0].field_0) = msg.sender
    if sub_0ac46b88[arg1][10][address(msg.sender)].field_0 > -msg.value - 1:
        revert with 'NH{q', 17
    sub_0ac46b88[arg1][10][address(msg.sender)].field_0 += msg.value
    if sub_0ac46b88[arg1].field_1024 > -msg.value - 1:
        revert with 'NH{q', 17
    sub_0ac46b88[arg1].field_1024 += msg.value
    if sub_0ac46b88[arg1].field_1792 > -msg.value - 1:
        revert with 'NH{q', 17
    sub_0ac46b88[arg1].field_1792 += msg.value
    emit 0xcf1d9dd3: msg.value, msg.sender, arg1
}

function placeBid(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if paused:
        revert with 0, 'Pausable: paused'
    if not uint8(sub_0ac46b88[arg1].field_2816):
        revert with 0, 'Topic does not exist.'
    if block.timestamp <= sub_0ac46b88[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Not allowed to bid on a topic that hasn't started yet.'
    if block.timestamp >= sub_0ac46b88[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Not allowed to bid on a topic that has already ended.'
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need to enter a positive bid amount.'
    if msg.value < sub_0ac46b88[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Need to enter a bid amount equal to/greater than the minimum bid.'
    if msg.value and feePercentage > -1 / msg.value:
        revert with 'NH{q', 17
    if collectedFee > -(msg.value * feePercentage / 100) - 1:
        revert with 'NH{q', 17
    collectedFee += msg.value * feePercentage / 100
    if not sub_0ac46b88[arg1][8][address(msg.sender)].field_0:
        if sub_0ac46b88[arg1][14]['userCount'].field_0 > -2:
            revert with 'NH{q', 17
        sub_0ac46b88[arg1][14]['userCount'].field_0++
        address(sub_0ac46b88[arg1][15][sub_0ac46b88[arg1][14]['userCount'].field_0].field_0) = msg.sender
    if sub_0ac46b88[arg1][8][address(msg.sender)].field_0 > -msg.value - 1:
        revert with 'NH{q', 17
    sub_0ac46b88[arg1][8][address(msg.sender)].field_0 += msg.value
    if sub_0ac46b88[arg1].field_1024 > -msg.value - 1:
        revert with 'NH{q', 17
    sub_0ac46b88[arg1].field_1024 += msg.value
    if sub_0ac46b88[arg1].field_1280 > -2:
        revert with 'NH{q', 17
    sub_0ac46b88[arg1].field_1280++
    emit 0x191deea0: msg.value, msg.sender, arg1
}

function sub_59fe5a92(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if paused:
        revert with 0, 'Pausable: paused'
    if not uint8(sub_0ac46b88[arg1].field_2816):
        revert with 0, 'Topic does not exist.'
    if block.timestamp <= sub_0ac46b88[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Not allowed to add liquidity on a topic that hasn't started yet.'
    if block.timestamp >= sub_0ac46b88[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Not allowed to add liquidity on a topic that has already ended.'
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need to enter a positive liquidity amount.'
    if msg.value < sub_0ac46b88[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Need to enter a liquidity amount equal to/greater than the minimum bid.'
    if msg.value and feePercentage > -1 / msg.value:
        revert with 'NH{q', 17
    if collectedFee > -(msg.value * feePercentage / 100) - 1:
        revert with 'NH{q', 17
    collectedFee += msg.value * feePercentage / 100
    if not sub_0ac46b88[arg1][9][address(msg.sender)].field_0:
        if sub_0ac46b88[arg1][14]['userLiquidityCount'].field_0 > -2:
            revert with 'NH{q', 17
        sub_0ac46b88[arg1][14]['userLiquidityCount'].field_0++
        address(sub_0ac46b88[arg1][16][sub_0ac46b88[arg1][14]['userLiquidityCount'].field_0].field_0) = msg.sender
    if sub_0ac46b88[arg1][9][address(msg.sender)].field_0 > -msg.value - 1:
        revert with 'NH{q', 17
    sub_0ac46b88[arg1][9][address(msg.sender)].field_0 += msg.value
    if sub_0ac46b88[arg1].field_1024 > -msg.value - 1:
        revert with 'NH{q', 17
    sub_0ac46b88[arg1].field_1024 += msg.value
    if sub_0ac46b88[arg1].field_1536 > -msg.value - 1:
        revert with 'NH{q', 17
    sub_0ac46b88[arg1].field_1536 += msg.value
    emit 0xff0d7c7e: msg.value, msg.sender, arg1
}

function sub_aab00d76(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    if paused:
        revert with 0, 'Pausable: paused'
    if not uint8(sub_0ac46b88[arg1].field_2816):
        revert with 0, 'Topic does not exist.'
    if not uint8(sub_0ac46b88[arg1].field_2824):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Topic has still not been settled.'
    if sub_0ac46b88[arg1][13][Mask(248, 8, arg2)].field_0 and 1 << uint8(arg2) == 1 << uint8(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MerkleDistributor: Returns already claimed!'
    mem[128] = arg2
    mem[160] = address(arg3)
    mem[180] = arg4
    mem[96] = 84
    mem[64] = (32 * arg5.length) + 244
    mem[212] = arg5.length
    mem[244 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + 244] = 0
    mem[0] = arg1
    mem[32] = 1
    idx = 0
    s = 0
    while idx < arg5.length:
        if idx >= mem[212]:
            revert with 'NH{q', 50
        _42 = mem[(32 * idx) + 244]
        if s + sha3(mem[128 len 84]) > mem[(32 * idx) + 244]:
            mem[mem[64] + 32] = mem[(32 * idx) + 244]
            mem[mem[64] + 64] = s + sha3(mem[128 len 84])
            _47 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = sha3(mem[_47 + 32 len mem[_47]])
            continue 
        mem[mem[64] + 32] = s + sha3(mem[128 len 84])
        mem[mem[64] + 64] = _42
        _50 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = sha3(mem[_50 + 32 len mem[_50]])
        continue 
    if s != sub_0ac46b88[arg1].field_3072:
        revert with 0, 'MerkleDistributor: Invalid proof.'
    sub_0ac46b88[arg1][13][Mask(248, 8, arg2)].field_0 = 1
    idx = arg4
    s = 1
    t = 0
    while idx:
        if s and idx % 16 > -1 / s:
            revert with 'NH{q', 17
        if t > (-1 * s * idx % 16) - 1:
            revert with 'NH{q', 17
        if s and 10 > -1 / s:
            revert with 'NH{q', 17
        idx = idx / 16
        s = 10 * s
        t = t + (s * idx % 16)
        continue 
    call address(arg3) with:
       value t wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xb0fcac92: t, address(arg3), arg1
}

function sub_296b40f9(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp >= arg3:
        revert with 0, 'Competition needs to start in the future...'
    if arg3 >= arg4:
        revert with 0, 'Start time needs to be before the end time.'
    if arg2 < 10^9:
        revert with 0, 'Minimum bid amount needs to be equal to/greater than 1 gwei.'
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(ceil32(arg1.length)) + arg1.length + 129] = 0
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(ceil32(arg1.length)) + (2 * arg1.length) + 129] = 0
    hash = sha256hash(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require hash == hash
    if uint8(sub_0ac46b88[hash].field_2816):
        revert with 0, 'Topic has already been set.'
    if bool(sub_0ac46b88[hash].field_0):
        if bool(sub_0ac46b88[hash].field_0) == uint255(sub_0ac46b88[hash].field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            sub_0ac46b88[hash][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            sub_0ac46b88[hash].field_0 = 0
            idx = 0
            while uint255(sub_0ac46b88[hash].field_1) + 31 / 32 > idx:
                sub_0ac46b88[hash][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(sub_0ac46b88[hash].field_0) == sub_0ac46b88[hash].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            sub_0ac46b88[hash][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            sub_0ac46b88[hash].field_0 = 0
            idx = 0
            while sub_0ac46b88[hash].field_1 % 128 + 31 / 32 > idx:
                sub_0ac46b88[hash][idx].field_0 = 0
                idx = idx + 1
                continue 
    sub_0ac46b88[hash].field_256 = arg2
    sub_0ac46b88[hash].field_512 = arg3
    sub_0ac46b88[hash].field_768 = arg4
    uint8(sub_0ac46b88[hash].field_2816) = 1
    sub_c0f7381d[stor3] = hash
    if sub_f315f553 > -2:
        revert with 'NH{q', 17
    sub_f315f553++
    emit 0xd1d0b182: Array(len=arg1.length, data=arg1[all]), arg2, arg3, arg4, hash
}

function sub_53b50041(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(sub_0ac46b88[arg1].field_0):
        if bool(sub_0ac46b88[arg1].field_0) == uint255(sub_0ac46b88[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(sub_0ac46b88[arg1].field_0):
            if bool(sub_0ac46b88[arg1].field_0) == uint255(sub_0ac46b88[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(sub_0ac46b88[arg1].field_1):
                if 31 >= uint255(sub_0ac46b88[arg1].field_1):
                    mem[128] = 256 * Mask(248, 0, sub_0ac46b88[arg1].field_8)
                else:
                    mem[128] = sub_0ac46b88[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(sub_0ac46b88[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = sub_0ac46b88[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(sub_0ac46b88[arg1].field_0) == sub_0ac46b88[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if sub_0ac46b88[arg1].field_1 % 128:
                if 31 >= sub_0ac46b88[arg1].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, sub_0ac46b88[arg1].field_8)
                else:
                    mem[128] = sub_0ac46b88[arg1].field_0
                    idx = 128
                    s = 0
                    while sub_0ac46b88[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = sub_0ac46b88[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, uint255(sub_0ac46b88[arg1].field_1)), data=mem[128 len ceil32(uint255(sub_0ac46b88[arg1].field_1))]), 
               sub_0ac46b88[arg1].field_256,
               sub_0ac46b88[arg1].field_512,
               sub_0ac46b88[arg1].field_768,
               sub_0ac46b88[arg1].field_1024,
               sub_0ac46b88[arg1].field_1280,
               sub_0ac46b88[arg1].field_1536,
               sub_0ac46b88[arg1].field_1792,
               bool(uint8(sub_0ac46b88[arg1].field_2816)),
               bool(uint8(sub_0ac46b88[arg1].field_2824)),
               sub_0ac46b88[arg1].field_3072
    if bool(sub_0ac46b88[arg1].field_0) == sub_0ac46b88[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(sub_0ac46b88[arg1].field_0):
        if bool(sub_0ac46b88[arg1].field_0) == uint255(sub_0ac46b88[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(sub_0ac46b88[arg1].field_1):
            if 31 >= uint255(sub_0ac46b88[arg1].field_1):
                mem[128] = 256 * Mask(248, 0, sub_0ac46b88[arg1].field_8)
            else:
                mem[128] = sub_0ac46b88[arg1].field_0
                idx = 128
                s = 0
                while uint255(sub_0ac46b88[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = sub_0ac46b88[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(sub_0ac46b88[arg1].field_0) == sub_0ac46b88[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if sub_0ac46b88[arg1].field_1 % 128:
            if 31 >= sub_0ac46b88[arg1].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, sub_0ac46b88[arg1].field_8)
            else:
                mem[128] = sub_0ac46b88[arg1].field_0
                idx = 128
                s = 0
                while sub_0ac46b88[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = sub_0ac46b88[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=sub_0ac46b88[arg1].field_0 % 128, data=mem[128 len ceil32(sub_0ac46b88[arg1].field_1 % 128)]), 
           sub_0ac46b88[arg1].field_256,
           sub_0ac46b88[arg1].field_512,
           sub_0ac46b88[arg1].field_768,
           sub_0ac46b88[arg1].field_1024,
           sub_0ac46b88[arg1].field_1280,
           sub_0ac46b88[arg1].field_1536,
           sub_0ac46b88[arg1].field_1792,
           bool(uint8(sub_0ac46b88[arg1].field_2816)),
           bool(uint8(sub_0ac46b88[arg1].field_2824)),
           sub_0ac46b88[arg1].field_3072
}



}
