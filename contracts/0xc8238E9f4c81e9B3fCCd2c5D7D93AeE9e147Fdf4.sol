contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint8 productID; offset 160
uint8 sub_94ac4261; offset 168
address sub_dc3aaab5Address;
mapping of struct sub_e31ef12c;
array of struct sub_7ee41f73;
mapping of uint256 sub_6a989b04;

function getTokenAddress() {
    return tokenAddress
}

function sub_6a989b04(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_6a989b04[arg1][arg2]
}

function sub_7ee41f73(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_7ee41f73.length
    return sub_7ee41f73[arg1].field_0
}

function owner() {
    return owner
}

function sub_94ac4261(?) {
    return sub_94ac4261
}

function sub_dc3aaab5(?) {
    return sub_dc3aaab5Address
}

function sub_e31ef12c(?) {
    require calldata.size - 4 >= 32
    return sub_e31ef12c[arg1].field_0, 
           bool(sub_e31ef12c[arg1].field_160),
           sub_e31ef12c[arg1].field_256,
           sub_e31ef12c[arg1].field_512,
           sub_e31ef12c[arg1].field_768,
           sub_e31ef12c[arg1].field_1024,
           sub_e31ef12c[arg1].field_1280,
           sub_e31ef12c[arg1].field_1536,
           sub_e31ef12c[arg1].field_1792,
           sub_e31ef12c[arg1].field_2048,
           sub_e31ef12c[arg1].field_2560,
           bool(sub_e31ef12c[arg1].field_2720),
           bool(sub_e31ef12c[arg1].field_2728)
}

function productID() {
    return productID
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

function withdrawETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function sub_9e9f695d(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    productID = uint8(arg1)
}

function sub_4bc10ccb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = address(arg1)
}

function sub_7c0bf7bb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dc3aaab5Address = address(arg1)
}

function changeEntryFeePercentageCharge(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 100:
        revert with 0, 'Should be between 0 and 100.'
    sub_94ac4261 = arg1
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

function changeEndDate(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if sub_e31ef12c[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must be the raffle owner to change owner.'
    if sub_e31ef12c[arg1].field_2720:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Raffle has already been drawn and completed.'
    sub_e31ef12c[arg1].field_1024 = arg2
}

function changeRaffleOwner(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if sub_e31ef12c[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must be the raffle owner to change owner.'
    if sub_e31ef12c[arg1].field_2720:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Raffle has already been drawn and completed.'
    sub_e31ef12c[arg1].field_0 = arg2
}

function getAllRaffles() {
    if sub_7ee41f73.length:
        mem[128] = uint256(sub_7ee41f73.field_0)
        idx = 128
        s = 0
        while (32 * sub_7ee41f73.length) + 96 > idx:
            mem[idx + 32] = sub_7ee41f73[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_7ee41f73.length, data=mem[128 len 32 * sub_7ee41f73.length])
    mem[(32 * sub_7ee41f73.length) + 128] = 32
    mem[(32 * sub_7ee41f73.length) + 160] = sub_7ee41f73.length
    mem[(32 * sub_7ee41f73.length) + 192 len 32 * sub_7ee41f73.length] = mem[128 len 32 * sub_7ee41f73.length]
    return memory
      from (32 * sub_7ee41f73.length) + 128
       len (96 * sub_7ee41f73.length) + 64
}

function withdrawTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        if arg2 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'make sure there is a balance available to withdraw'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg2
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'make sure there is a balance available to withdraw'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getRaffleEntries(bytes32 arg1) {
    require calldata.size - 4 >= 32
    mem[64] = (32 * sub_e31ef12c[arg1].field_2304) + 128
    mem[96] = sub_e31ef12c[arg1].field_2304
    if not sub_e31ef12c[arg1].field_2304:
        mem[(32 * sub_e31ef12c[arg1].field_2304) + 128] = 32
        mem[(32 * sub_e31ef12c[arg1].field_2304) + 160] = sub_e31ef12c[arg1].field_2304
        idx = 0
        s = (32 * sub_e31ef12c[arg1].field_2304) + 192
        t = 128
        while idx < sub_e31ef12c[arg1].field_2304:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_e31ef12c[arg1].field_2304) + 128
           len (96 * sub_e31ef12c[arg1].field_2304) + 64
    mem[128] = sub_e31ef12c[arg1][9].field_0
    idx = 128
    s = 0
    while (32 * sub_e31ef12c[arg1].field_2304) + 96 > idx:
        mem[idx + 32] = sub_e31ef12c[arg1][s + 9].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_e31ef12c[arg1].field_2304) + 128] = 32
    mem[(32 * sub_e31ef12c[arg1].field_2304) + 160] = sub_e31ef12c[arg1].field_2304
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_e31ef12c[arg1].field_2304:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_e31ef12c[arg1].field_2304) + -mem[64] + 192
}

function closeRaffleAndRefund(bytes32 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 3
    if sub_e31ef12c[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must be the raffle owner to draw winner.'
    if sub_e31ef12c[arg1].field_2720:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Raffle cannot be closed if it is completed already.'
    idx = 0
    while idx < sub_e31ef12c[arg1].field_2304:
        mem[0] = sha3(arg1, 3) + 9
        mem[mem[64] + 4] = sub_e31ef12c[arg1][idx + 9].field_0
        mem[mem[64] + 36] = sub_e31ef12c[arg1].field_1536
        require ext_code.size(sub_e31ef12c[arg1].field_1280)
        call sub_e31ef12c[arg1].field_1280.0xa9059cbb with:
             gas gas_remaining wei
            args sub_e31ef12c[arg1][idx + 9].field_0, sub_e31ef12c[arg1].field_1536
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_27] == bool(mem[_27])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if sub_e31ef12c[arg1].field_160:
        require ext_code.size(sub_e31ef12c[arg1].field_256)
        call sub_e31ef12c[arg1].field_256.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, sub_e31ef12c[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = sub_e31ef12c[arg1].field_512
        require ext_code.size(sub_e31ef12c[arg1].field_256)
        call sub_e31ef12c[arg1].field_256.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_e31ef12c[arg1].field_512
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_25] == bool(mem[_25])
    sub_e31ef12c[arg1].field_2720 = 257
    emit CloseRaffle(arg1);
}

function enterRaffle(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not sub_e31ef12c[arg1].field_0:
        revert with 0, 'We do not recognize this raffle.'
    if sub_e31ef12c[arg1].field_768 > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'It must be after the start time to enter the raffle.'
    if sub_e31ef12c[arg1].field_1024:
        if sub_e31ef12c[arg1].field_1024 < block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'It must be before the end time to enter the raffle.'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You have entered the maximum number of times you are allowed.'
    if sub_e31ef12c[arg1].field_2048:
        if sub_6a989b04[arg1][msg.sender] > !arg2:
            revert with 0, 17
        if sub_6a989b04[arg1][msg.sender] + arg2 > sub_e31ef12c[arg1].field_2048:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'You have entered the maximum number of times you are allowed.'
    if sub_e31ef12c[arg1].field_2720:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Raffle cannot be complete to be entered.'
    if sub_e31ef12c[arg1].field_1536:
        if sub_e31ef12c[arg1].field_1536 and arg2 > -1 / sub_e31ef12c[arg1].field_1536:
            revert with 0, 17
        require ext_code.size(sub_e31ef12c[arg1].field_1280)
        call sub_e31ef12c[arg1].field_1280.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), sub_e31ef12c[arg1].field_1536 * arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if sub_e31ef12c[arg1].field_1536 and arg2 > -1 / sub_e31ef12c[arg1].field_1536:
            revert with 0, 17
        if sub_e31ef12c[arg1].field_1792 > !(sub_e31ef12c[arg1].field_1536 * arg2):
            revert with 0, 17
        sub_e31ef12c[arg1].field_1792 += sub_e31ef12c[arg1].field_1536 * arg2
    idx = 0
    while idx < arg2:
        sub_e31ef12c[arg1].field_2304++
        mem[0] = sha3(arg1, 3) + 9
        stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_e31ef12c', 3))) + sub_e31ef12c[arg1].field_2304].field_0 = msg.sender or Mask(96, 160, stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_e31ef12c', 3))) + sub_e31ef12c[arg1].field_2304].field_0)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if sub_6a989b04[arg1][msg.sender] > !arg2:
        revert with 0, 17
    sub_6a989b04[arg1][msg.sender] += arg2
    emit EnterRaffle(msg.sender, arg2, arg1);
}

function createRaffle(address arg1, uint256 arg2, bool arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7, uint256 arg8) payable {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg3 == arg3
    require arg6 == arg6
    if arg4:
        if arg4 < block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'start time should be 0 or after the current time'
    if arg5:
        if arg5 <= block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'end time should be 0 or after the current time'
    if arg4:
        if arg5:
            if arg4 >= arg5:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'start time must be before end time'
    if msg.value < 0:
        revert with 0, 17
    require ext_code.size(sub_dc3aaab5Address)
    call sub_dc3aaab5Address.0xd9e30e55 with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender, productID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3:
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[128] = address(msg.sender)
        mem[148] = block.number
        mem[180 len 64] = msg.sender, block.number, Mask(96, 32, arg2) >> 32
        mem[232] = 0
        hash = sha256hash(msg.sender, block.number, Mask(96, 32, arg2) >> 32 >> 160) 
        mem[180] = hash
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 180] = msg.sender
        mem[ceil32(return_data.size) + 212] = arg3
        mem[ceil32(return_data.size) + 244] = arg1
        mem[ceil32(return_data.size) + 276] = arg2
        mem[ceil32(return_data.size) + 308] = arg4
        mem[ceil32(return_data.size) + 340] = arg5
        mem[ceil32(return_data.size) + 372] = arg6
        mem[ceil32(return_data.size) + 404] = arg7
        mem[ceil32(return_data.size) + 436] = 0
        mem[ceil32(return_data.size) + 468] = arg8
        mem[ceil32(return_data.size) + 500] = 96
        mem[ceil32(return_data.size) + 532] = 0
        mem[ceil32(return_data.size) + 564] = 0
        mem[ceil32(return_data.size) + 596] = 0
        sub_e31ef12c[hash].field_0 = msg.sender
        sub_e31ef12c[hash].field_160 = Mask(96, 0, arg3)
        sub_e31ef12c[hash].field_256 = arg1
        sub_e31ef12c[hash].field_512 = arg2
        sub_e31ef12c[hash].field_768 = arg4
        sub_e31ef12c[hash].field_1024 = arg5
        sub_e31ef12c[hash].field_1280 = arg6
        sub_e31ef12c[hash].field_1536 = arg7
        sub_e31ef12c[hash].field_1792 = 0
        sub_e31ef12c[hash].field_2048 = arg8
        sub_e31ef12c[hash].field_2304 = 52
        s = 0
        idx = 128
        while 1792 > idx:
            sub_e31ef12c[hash][s + 9].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 52
        while sub_e31ef12c[hash].field_2304 > idx:
            sub_e31ef12c[hash][idx + 9].field_0 = 0
            idx = idx + 1
            continue 
    else:
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = arg2
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 128] = address(msg.sender)
        mem[ceil32(return_data.size) + 148] = block.number
        mem[ceil32(return_data.size) + 96] = 52
        mem[ceil32(return_data.size) + 180 len 64] = msg.sender, block.number, mem[ceil32(return_data.size) + 180 len 12]
        mem[ceil32(return_data.size) + 232] = 0
        hash = sha256hash(mem[ceil32(return_data.size) + 180 len 52]) 
        mem[ceil32(return_data.size) + 180] = hash
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 180] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 212] = arg3
        mem[(2 * ceil32(return_data.size)) + 244] = arg1
        mem[(2 * ceil32(return_data.size)) + 276] = arg2
        mem[(2 * ceil32(return_data.size)) + 308] = arg4
        mem[(2 * ceil32(return_data.size)) + 340] = arg5
        mem[(2 * ceil32(return_data.size)) + 372] = arg6
        mem[(2 * ceil32(return_data.size)) + 404] = arg7
        mem[(2 * ceil32(return_data.size)) + 436] = 0
        mem[(2 * ceil32(return_data.size)) + 468] = arg8
        mem[(2 * ceil32(return_data.size)) + 500] = 96
        mem[(2 * ceil32(return_data.size)) + 532] = 0
        mem[(2 * ceil32(return_data.size)) + 564] = 0
        mem[(2 * ceil32(return_data.size)) + 596] = 0
        sub_e31ef12c[hash].field_0 = msg.sender
        sub_e31ef12c[hash].field_160 = Mask(96, 0, arg3)
        sub_e31ef12c[hash].field_256 = arg1
        sub_e31ef12c[hash].field_512 = arg2
        sub_e31ef12c[hash].field_768 = arg4
        sub_e31ef12c[hash].field_1024 = arg5
        sub_e31ef12c[hash].field_1280 = arg6
        sub_e31ef12c[hash].field_1536 = arg7
        sub_e31ef12c[hash].field_1792 = 0
        sub_e31ef12c[hash].field_2048 = arg8
        sub_e31ef12c[hash].field_2304 = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            idx = 0
            while sub_e31ef12c[hash].field_2304 > idx:
                sub_e31ef12c[hash][idx + 9].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * ext_call.return_data[0]) + 128 > idx:
                sub_e31ef12c[hash][s + 9].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ext_call.return_data[0]) + 31) >> 5
            while sub_e31ef12c[hash].field_2304 > idx:
                sub_e31ef12c[hash][idx + 9].field_0 = 0
                idx = idx + 1
                continue 
    sub_e31ef12c[hash].field_2560 = 0
    sub_e31ef12c[hash].field_2720 = 0
    sub_e31ef12c[hash].field_2728 = 0
    sub_e31ef12c[hash].field_2736 = 0
    sub_e31ef12c[hash].field_2816 = 0
    sub_7ee41f73.length++
    sub_7ee41f73[sub_7ee41f73.length].field_0 = hash
    emit CreateRaffle(hash, msg.sender);
}

function drawWinner(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if sub_e31ef12c[arg1].field_1024:
        if block.timestamp <= sub_e31ef12c[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Raffle entry period is not over yet.'
    if sub_e31ef12c[arg1].field_2720:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Raffle has already been drawn and completed.'
    if not sub_e31ef12c[arg1].field_1792:
        if not sub_e31ef12c[arg1].field_2304:
            revert with 0, 18
        if sha3(block.difficulty, block.timestamp, sub_e31ef12c[arg1].field_2304) % sub_e31ef12c[arg1].field_2304 >= sub_e31ef12c[arg1].field_2304:
            revert with 0, 50
        sub_e31ef12c[arg1].field_2560 = stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_e31ef12c', 3))) + (sha3(block.difficulty, block.timestamp, sub_e31ef12c[arg1].field_2304) % sub_e31ef12c[arg1].field_2304)].field_0
        require ext_code.size(sub_e31ef12c[arg1].field_256)
        if sub_e31ef12c[arg1].field_160:
            call sub_e31ef12c[arg1].field_256.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_e31ef12c', 3))) + (sha3(block.difficulty, block.timestamp, sub_e31ef12c[arg1].field_2304) % sub_e31ef12c[arg1].field_2304)].field_0, sub_e31ef12c[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            call sub_e31ef12c[arg1].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_e31ef12c', 3))) + (sha3(block.difficulty, block.timestamp, sub_e31ef12c[arg1].field_2304) % sub_e31ef12c[arg1].field_2304)].field_0, sub_e31ef12c[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        sub_e31ef12c[arg1].field_2720 = 1
        emit 0xba747720: stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_e31ef12c', 3))) + (sha3(block.difficulty, block.timestamp, sub_e31ef12c[arg1].field_2304) % sub_e31ef12c[arg1].field_2304)].field_0, sub_e31ef12c[arg1].field_512, arg1
    else:
        if not sub_94ac4261:
            require ext_code.size(sub_e31ef12c[arg1].field_1280)
            call sub_e31ef12c[arg1].field_1280.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_e31ef12c[arg1].field_0, sub_e31ef12c[arg1].field_1792
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not sub_e31ef12c[arg1].field_2304:
                revert with 0, 18
            if sha3(block.difficulty, block.timestamp, sub_e31ef12c[arg1].field_2304) % sub_e31ef12c[arg1].field_2304 >= sub_e31ef12c[arg1].field_2304:
                revert with 0, 50
            sub_e31ef12c[arg1].field_2560 = stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_e31ef12c', 3))) + (sha3(block.difficulty, block.timestamp, sub_e31ef12c[arg1].field_2304) % sub_e31ef12c[arg1].field_2304)].field_0
            if sub_e31ef12c[arg1].field_160:
                require ext_code.size(sub_e31ef12c[arg1].field_256)
                call sub_e31ef12c[arg1].field_256.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_e31ef12c', 3))) + (sha3(block.difficulty, block.timestamp, sub_e31ef12c[arg1].field_2304) % sub_e31ef12c[arg1].field_2304)].field_0, sub_e31ef12c[arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_e31ef12c[arg1].field_2720 = 1
                emit 0xba747720: stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_e31ef12c', 3))) + (sha3(block.difficulty, block.timestamp, sub_e31ef12c[arg1].field_2304) % sub_e31ef12c[arg1].field_2304)].field_0, sub_e31ef12c[arg1].field_512, arg1
            else:
                mem[ceil32(return_data.size) + 228] = stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_e31ef12c', 3))) + (sha3(block.difficulty, block.timestamp, sub_e31ef12c[arg1].field_2304) % sub_e31ef12c[arg1].field_2304)].field_0
                mem[ceil32(return_data.size) + 260] = sub_e31ef12c[arg1].field_512
                require ext_code.size(sub_e31ef12c[arg1].field_256)
                call sub_e31ef12c[arg1].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_e31ef12c', 3))) + (sha3(block.difficulty, block.timestamp, sub_e31ef12c[arg1].field_2304) % sub_e31ef12c[arg1].field_2304)].field_0, sub_e31ef12c[arg1].field_512
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                sub_e31ef12c[arg1].field_2720 = 1
                mem[(2 * ceil32(return_data.size)) + 224] = stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_e31ef12c', 3))) + (sha3(block.difficulty, block.timestamp, sub_e31ef12c[arg1].field_2304) % sub_e31ef12c[arg1].field_2304)].field_0
                mem[(2 * ceil32(return_data.size)) + 256] = sub_e31ef12c[arg1].field_512
                emit 0xba747720: mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 64], arg1
        else:
            if sub_e31ef12c[arg1].field_1792 and sub_94ac4261 > -1 / sub_e31ef12c[arg1].field_1792:
                revert with 0, 17
            require ext_code.size(sub_e31ef12c[arg1].field_1280)
            call sub_e31ef12c[arg1].field_1280.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, sub_e31ef12c[arg1].field_1792 * sub_94ac4261 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if sub_e31ef12c[arg1].field_1792 < sub_e31ef12c[arg1].field_1792 * sub_94ac4261 / 100:
                revert with 0, 17
            require ext_code.size(sub_e31ef12c[arg1].field_1280)
            call sub_e31ef12c[arg1].field_1280.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_e31ef12c[arg1].field_0, sub_e31ef12c[arg1].field_1792 - (sub_e31ef12c[arg1].field_1792 * sub_94ac4261 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not sub_e31ef12c[arg1].field_2304:
                revert with 0, 18
            if sha3(block.difficulty, block.timestamp, sub_e31ef12c[arg1].field_2304) % sub_e31ef12c[arg1].field_2304 >= sub_e31ef12c[arg1].field_2304:
                revert with 0, 50
            sub_e31ef12c[arg1].field_2560 = stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_e31ef12c', 3))) + (sha3(block.difficulty, block.timestamp, sub_e31ef12c[arg1].field_2304) % sub_e31ef12c[arg1].field_2304)].field_0
            if sub_e31ef12c[arg1].field_160:
                require ext_code.size(sub_e31ef12c[arg1].field_256)
                call sub_e31ef12c[arg1].field_256.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_e31ef12c', 3))) + (sha3(block.difficulty, block.timestamp, sub_e31ef12c[arg1].field_2304) % sub_e31ef12c[arg1].field_2304)].field_0, sub_e31ef12c[arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_e31ef12c[arg1].field_2720 = 1
                emit 0xba747720: stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_e31ef12c', 3))) + (sha3(block.difficulty, block.timestamp, sub_e31ef12c[arg1].field_2304) % sub_e31ef12c[arg1].field_2304)].field_0, sub_e31ef12c[arg1].field_512, arg1
            else:
                mem[(2 * ceil32(return_data.size)) + 228] = stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_e31ef12c', 3))) + (sha3(block.difficulty, block.timestamp, sub_e31ef12c[arg1].field_2304) % sub_e31ef12c[arg1].field_2304)].field_0
                mem[(2 * ceil32(return_data.size)) + 260] = sub_e31ef12c[arg1].field_512
                require ext_code.size(sub_e31ef12c[arg1].field_256)
                call sub_e31ef12c[arg1].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_e31ef12c', 3))) + (sha3(block.difficulty, block.timestamp, sub_e31ef12c[arg1].field_2304) % sub_e31ef12c[arg1].field_2304)].field_0, sub_e31ef12c[arg1].field_512
                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                sub_e31ef12c[arg1].field_2720 = 1
                mem[(4 * ceil32(return_data.size)) + 224] = stor[('array', 9, ('map', ('param', 'arg1'), ('name', 'sub_e31ef12c', 3))) + (sha3(block.difficulty, block.timestamp, sub_e31ef12c[arg1].field_2304) % sub_e31ef12c[arg1].field_2304)].field_0
                mem[(4 * ceil32(return_data.size)) + 256] = sub_e31ef12c[arg1].field_512
                emit 0xba747720: mem[(4 * ceil32(return_data.size)) + 224 len (5 * ceil32(return_data.size)) + 64], arg1
}



}
