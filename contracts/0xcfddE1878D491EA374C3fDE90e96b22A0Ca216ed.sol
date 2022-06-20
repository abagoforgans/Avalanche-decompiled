contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint8 paused;
uint256 depositId;
array of struct allDepositIds;
array of struct depositsByWithdrawal;
mapping of struct lockedToken;
mapping of uint256 tokenBalanceBy;
uint256 sub_76743b6b;
address companyWalletAddress;

function companyWallet() {
    return companyWalletAddress
}

function getTokenBalanceByAddress(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return tokenBalanceBy[address(arg1)][address(arg2)]
}

function depositsByWithdrawalAddress(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < depositsByWithdrawal[arg1].field_0
    return depositsByWithdrawal[arg1][arg2].field_0
}

function paused() {
    return bool(paused)
}

function sub_76743b6b(?) {
    return sub_76743b6b
}

function getDepositDetails(uint256 arg1) {
    require calldata.size - 4 >= 32
    return lockedToken[arg1].field_0, 
           lockedToken[arg1].field_256,
           lockedToken[arg1].field_512,
           lockedToken[arg1].field_768,
           bool(lockedToken[arg1].field_1024)
}

function owner() {
    return owner
}

function depositId() {
    return depositId
}

function walletTokenBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return tokenBalanceBy[arg1][arg2]
}

function lockedToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    return lockedToken[arg1].field_0, 
           lockedToken[arg1].field_256,
           lockedToken[arg1].field_512,
           lockedToken[arg1].field_768,
           bool(lockedToken[arg1].field_1024)
}

function allDepositIds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allDepositIds.length
    return allDepositIds[arg1].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_5e41ea56(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_76743b6b = arg1
    emit FeesChanged(arg1);
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setCompanyWallet(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid wallet address'
    companyWalletAddress = arg1
}

function extendLockDuration(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < 10^10
    require arg2 > lockedToken[arg1].field_768
    require not lockedToken[arg1].field_1024
    require msg.sender == lockedToken[arg1].field_256
    lockedToken[arg1].field_768 = arg2
}

function getTotalTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getAllDepositIds() {
    if not allDepositIds.length:
        mem[(32 * allDepositIds.length) + 128] = 32
        mem[(32 * allDepositIds.length) + 160] = allDepositIds.length
        mem[(32 * allDepositIds.length) + 192 len floor32(allDepositIds.length)] = mem[128 len floor32(allDepositIds.length)]
        return memory
          from (32 * allDepositIds.length) + 128
           len (96 * allDepositIds.length) + 64
    mem[128] = uint256(allDepositIds.field_0)
    idx = 128
    s = 0
    while (32 * allDepositIds.length) + 96 > idx:
        mem[idx + 32] = allDepositIds[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allDepositIds.length) + 192 len floor32(allDepositIds.length)] = mem[128 len floor32(allDepositIds.length)]
    return Array(len=allDepositIds.length, data=mem[128 len floor32(allDepositIds.length)], mem[(32 * allDepositIds.length) + floor32(allDepositIds.length) + 192 len (32 * allDepositIds.length) - floor32(allDepositIds.length)]), 
}

function getDepositsByWithdrawalAddress(address arg1) {
    require calldata.size - 4 >= 32
    if not depositsByWithdrawal[address(arg1)].field_0:
        mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 128] = 32
        mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 160] = depositsByWithdrawal[address(arg1)].field_0
        mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 192 len floor32(depositsByWithdrawal[address(arg1)].field_0)] = mem[128 len floor32(depositsByWithdrawal[address(arg1)].field_0)]
        return memory
          from (32 * depositsByWithdrawal[address(arg1)].field_0) + 128
           len (96 * depositsByWithdrawal[address(arg1)].field_0) + 64
    mem[128] = depositsByWithdrawal[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * depositsByWithdrawal[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = depositsByWithdrawal[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 192 len floor32(depositsByWithdrawal[address(arg1)].field_0)] = mem[128 len floor32(depositsByWithdrawal[address(arg1)].field_0)]
    return Array(len=depositsByWithdrawal[address(arg1)].field_0, data=mem[128 len floor32(depositsByWithdrawal[address(arg1)].field_0)], mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + floor32(depositsByWithdrawal[address(arg1)].field_0) + 192 len (32 * depositsByWithdrawal[address(arg1)].field_0) - floor32(depositsByWithdrawal[address(arg1)].field_0)]), 
}

function transferLocks(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require not lockedToken[arg1].field_1024
    require msg.sender == lockedToken[arg1].field_256
    if lockedToken[arg1].field_512 > tokenBalanceBy[stor204[arg1].field_0][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    tokenBalanceBy[stor204[arg1].field_0][address(msg.sender)] -= lockedToken[arg1].field_512
    if tokenBalanceBy[stor204[arg1].field_0][address(arg2)] + lockedToken[arg1].field_512 < tokenBalanceBy[stor204[arg1].field_0][address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    tokenBalanceBy[stor204[arg1].field_0][address(arg2)] += lockedToken[arg1].field_512
    idx = 0
    while idx < depositsByWithdrawal[stor204[arg1].field_256].field_0:
        mem[32] = 203
        require idx < depositsByWithdrawal[stor204[arg1].field_256].field_0
        mem[0] = sha3(lockedToken[arg1].field_256, 203)
        if depositsByWithdrawal[stor204[arg1].field_256][idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require depositsByWithdrawal[stor204[arg1].field_256].field_0 - 1 < depositsByWithdrawal[stor204[arg1].field_256].field_0
        require idx < depositsByWithdrawal[stor204[arg1].field_256].field_0
        depositsByWithdrawal[stor204[arg1].field_256][idx].field_0 = depositsByWithdrawal[stor204[arg1].field_256][depositsByWithdrawal[stor204[arg1].field_256].field_0].field_0
        require depositsByWithdrawal[stor204[arg1].field_256].field_0
        depositsByWithdrawal[stor204[arg1].field_256][depositsByWithdrawal[stor204[arg1].field_256].field_0].field_0 = 0
        depositsByWithdrawal[stor204[arg1].field_256].field_0--
        lockedToken[arg1].field_256 = arg2
        depositsByWithdrawal[address(arg2)].field_0++
        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = arg1
    lockedToken[arg1].field_256 = arg2
    depositsByWithdrawal[address(arg2)].field_0++
    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = arg1
}

function withdrawTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require block.timestamp >= lockedToken[arg1].field_768
    require msg.sender == lockedToken[arg1].field_256
    require not lockedToken[arg1].field_1024
    lockedToken[arg1].field_1024 = 1
    if lockedToken[arg1].field_512 > tokenBalanceBy[stor204[arg1].field_0][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    tokenBalanceBy[stor204[arg1].field_0][address(msg.sender)] -= lockedToken[arg1].field_512
    idx = 0
    while idx < depositsByWithdrawal[stor204[arg1].field_256].field_0:
        mem[32] = 203
        require idx < depositsByWithdrawal[stor204[arg1].field_256].field_0
        mem[0] = sha3(lockedToken[arg1].field_256, 203)
        if depositsByWithdrawal[stor204[arg1].field_256][idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require depositsByWithdrawal[stor204[arg1].field_256].field_0 - 1 < depositsByWithdrawal[stor204[arg1].field_256].field_0
        require idx < depositsByWithdrawal[stor204[arg1].field_256].field_0
        depositsByWithdrawal[stor204[arg1].field_256][idx].field_0 = depositsByWithdrawal[stor204[arg1].field_256][depositsByWithdrawal[stor204[arg1].field_256].field_0].field_0
        require depositsByWithdrawal[stor204[arg1].field_256].field_0
        depositsByWithdrawal[stor204[arg1].field_256][depositsByWithdrawal[stor204[arg1].field_256].field_0].field_0 = 0
        depositsByWithdrawal[stor204[arg1].field_256].field_0--
        require ext_code.size(lockedToken[arg1].field_0)
        call lockedToken[arg1].field_0.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, lockedToken[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit LogWithdrawal(arg1, msg.sender, lockedToken[arg1].field_512);
    require ext_code.size(lockedToken[arg1].field_0)
    call lockedToken[arg1].field_0.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, lockedToken[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit LogWithdrawal(arg1, msg.sender, lockedToken[arg1].field_512);
}

function lockTokens(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if paused:
        revert with 0, 'Pausable: paused'
    require arg3 > 0
    require arg4 < 10^10
    if sub_76743b6b > 0:
        if not sub_76743b6b:
            if msg.value < 0:
                revert with 0, 'Low fee amount'
            call companyWalletAddress with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Fee transfer failed'
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas gas_remaining wei
        else:
            require sub_76743b6b
            if 10^18 * sub_76743b6b / sub_76743b6b != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if msg.value < 10^18 * sub_76743b6b:
                revert with 0, 'Low fee amount'
            call companyWalletAddress with:
               value 10^18 * sub_76743b6b wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Fee transfer failed'
            if msg.value - (10^18 * sub_76743b6b) > 0:
                call msg.sender with:
                   value msg.value - (10^18 * sub_76743b6b) wei
                     gas gas_remaining wei
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    depositId++
    lockedToken[stor201 + 1].field_0 = arg1
    lockedToken[stor201 + 1].field_256 = arg2
    lockedToken[stor201 + 1].field_512 = 0
    lockedToken[stor201 + 1].field_768 = arg4
    lockedToken[stor201 + 1].field_1024 = 0
    allDepositIds.length++
    allDepositIds[allDepositIds.length].field_0 = depositId + 1
    depositsByWithdrawal[address(arg2)].field_0++
    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
    emit 0xd9b31b2c: depositId + 1, address(arg2), arg3
    return (depositId + 1)
}

function initialize() {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        paused = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            paused = 0
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                paused = 0
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    paused = 0
                else:
                    Mask(248, 0, stor0.field_8) = 1
                    uint8(stor0.field_0) = 1
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    Mask(248, 0, stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        paused = 0
                    else:
                        Mask(248, 0, stor0.field_8) = 1
                        uint8(stor0.field_0) = 1
                        paused = 0
                        Mask(248, 0, stor0.field_8) = 0
                        Mask(248, 0, stor0.field_8) = 0
}

function createMultipleLocks(address arg1, address arg2, uint256[] arg3, uint256[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 0
    if paused:
        revert with 0, 'Pausable: paused'
    require arg3.length > 0
    require arg3.length == arg4.length
    if sub_76743b6b <= 0:
        idx = 0
        s = 0
        while idx < arg3.length:
            require idx < mem[96]
            require mem[(32 * idx) + 128] > 0
            require idx < mem[(32 * arg3.length) + 128]
            require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            _2889 = mem[(32 * idx) + 128]
            _2908 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = _2889
            _2909 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_2909 + 32] = mem[_2909 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
            if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(arg1):
                revert with 0, 'SafeERC20: call to non-contract'
            _3004 = mem[_2909]
            t = _2909 + 32
            u = mem[64]
            s = mem[_2909]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_2909])] = mem[_2909 + floor32(mem[_2909]) + -(mem[_2909] % 32) + 64 len mem[_2909] % 32] or Mask(8 * -(mem[_2909] % 32) + 32, -(8 * -(mem[_2909] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2909])])
            call arg1.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _3004 + _2908 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96] <= 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    depositId++
                    lockedToken[stor201 + 1].field_0 = arg1
                    lockedToken[stor201 + 1].field_256 = arg2
                    lockedToken[stor201 + 1].field_512 = 0
                    require idx < mem[(32 * arg3.length) + 128]
                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    lockedToken[stor201 + 1].field_1024 = 0
                    allDepositIds.length++
                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                    mem[32] = 203
                    depositsByWithdrawal[address(arg2)].field_0++
                    mem[0] = sha3(address(arg2), 203)
                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                    require idx < mem[96]
                    _6651 = mem[(32 * idx) + 128]
                    mem[mem[64]] = depositId + 1
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = _6651
                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6651
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    depositId++
                    lockedToken[stor201 + 1].field_0 = arg1
                    lockedToken[stor201 + 1].field_256 = arg2
                    lockedToken[stor201 + 1].field_512 = 0
                    require idx < mem[(32 * arg3.length) + 128]
                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    lockedToken[stor201 + 1].field_1024 = 0
                    allDepositIds.length++
                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                    mem[32] = 203
                    depositsByWithdrawal[address(arg2)].field_0++
                    mem[0] = sha3(address(arg2), 203)
                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                    require idx < mem[96]
                    _7335 = mem[(32 * idx) + 128]
                    mem[mem[64]] = depositId + 1
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = _7335
                    emit 0xd9b31b2c: depositId + 1, address(arg2), _7335
            else:
                _5340 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_5340] = return_data.size
                mem[_5340 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    depositId++
                    lockedToken[stor201 + 1].field_0 = arg1
                    lockedToken[stor201 + 1].field_256 = arg2
                    lockedToken[stor201 + 1].field_512 = 0
                    require idx < mem[(32 * arg3.length) + 128]
                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    lockedToken[stor201 + 1].field_1024 = 0
                    allDepositIds.length++
                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                    mem[32] = 203
                    depositsByWithdrawal[address(arg2)].field_0++
                    mem[0] = sha3(address(arg2), 203)
                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                    require idx < mem[96]
                    _6656 = mem[(32 * idx) + 128]
                    mem[mem[64]] = depositId + 1
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = _6656
                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6656
                else:
                    require return_data.size >= 32
                    if not mem[_5340 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    depositId++
                    lockedToken[stor201 + 1].field_0 = arg1
                    lockedToken[stor201 + 1].field_256 = arg2
                    lockedToken[stor201 + 1].field_512 = 0
                    require idx < mem[(32 * arg3.length) + 128]
                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    lockedToken[stor201 + 1].field_1024 = 0
                    allDepositIds.length++
                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                    mem[32] = 203
                    depositsByWithdrawal[address(arg2)].field_0++
                    mem[0] = sha3(address(arg2), 203)
                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                    require idx < mem[96]
                    _7338 = mem[(32 * idx) + 128]
                    mem[mem[64]] = depositId + 1
                    mem[mem[64] + 32] = arg2
                    mem[mem[64] + 64] = _7338
                    emit 0xd9b31b2c: depositId + 1, address(arg2), _7338
            idx = idx + 1
            s = depositId + 1
            continue 
    else:
        if not sub_76743b6b:
            if msg.value < 0:
                revert with 0, 'Low fee amount'
            call companyWalletAddress with:
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Fee transfer failed'
                if msg.value <= 0:
                    idx = 0
                    s = 0
                    while idx < arg3.length:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] > 0
                        require idx < mem[(32 * arg3.length) + 128]
                        require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        _2902 = mem[(32 * idx) + 128]
                        _2947 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = _2902
                        _2948 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_2948 + 32] = mem[_2948 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        _3056 = mem[_2948]
                        t = _2948 + 32
                        u = mem[64]
                        s = mem[_2948]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_2948])] = mem[_2948 + floor32(mem[_2948]) + -(mem[_2948] % 32) + 64 len mem[_2948] % 32] or Mask(8 * -(mem[_2948] % 32) + 32, -(8 * -(mem[_2948] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2948])])
                        call arg1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3056 + _2947 + -mem[64] + 128]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                depositId++
                                lockedToken[stor201 + 1].field_0 = arg1
                                lockedToken[stor201 + 1].field_256 = arg2
                                lockedToken[stor201 + 1].field_512 = 0
                                require idx < mem[(32 * arg3.length) + 128]
                                lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                lockedToken[stor201 + 1].field_1024 = 0
                                allDepositIds.length++
                                allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                mem[32] = 203
                                depositsByWithdrawal[address(arg2)].field_0++
                                mem[0] = sha3(address(arg2), 203)
                                depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                require idx < mem[96]
                                _6781 = mem[(32 * idx) + 128]
                                mem[mem[64]] = depositId + 1
                                mem[mem[64] + 32] = arg2
                                mem[mem[64] + 64] = _6781
                                emit 0xd9b31b2c: depositId + 1, address(arg2), _6781
                            else:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                depositId++
                                lockedToken[stor201 + 1].field_0 = arg1
                                lockedToken[stor201 + 1].field_256 = arg2
                                lockedToken[stor201 + 1].field_512 = 0
                                require idx < mem[(32 * arg3.length) + 128]
                                lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                lockedToken[stor201 + 1].field_1024 = 0
                                allDepositIds.length++
                                allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                mem[32] = 203
                                depositsByWithdrawal[address(arg2)].field_0++
                                mem[0] = sha3(address(arg2), 203)
                                depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                require idx < mem[96]
                                _7413 = mem[(32 * idx) + 128]
                                mem[mem[64]] = depositId + 1
                                mem[mem[64] + 32] = arg2
                                mem[mem[64] + 64] = _7413
                                emit 0xd9b31b2c: depositId + 1, address(arg2), _7413
                        else:
                            _5353 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_5353] = return_data.size
                            mem[_5353 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                depositId++
                                lockedToken[stor201 + 1].field_0 = arg1
                                lockedToken[stor201 + 1].field_256 = arg2
                                lockedToken[stor201 + 1].field_512 = 0
                                require idx < mem[(32 * arg3.length) + 128]
                                lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                lockedToken[stor201 + 1].field_1024 = 0
                                allDepositIds.length++
                                allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                mem[32] = 203
                                depositsByWithdrawal[address(arg2)].field_0++
                                mem[0] = sha3(address(arg2), 203)
                                depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                require idx < mem[96]
                                _6786 = mem[(32 * idx) + 128]
                                mem[mem[64]] = depositId + 1
                                mem[mem[64] + 32] = arg2
                                mem[mem[64] + 64] = _6786
                                emit 0xd9b31b2c: depositId + 1, address(arg2), _6786
                            else:
                                require return_data.size >= 32
                                if not mem[_5353 + 32]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                depositId++
                                lockedToken[stor201 + 1].field_0 = arg1
                                lockedToken[stor201 + 1].field_256 = arg2
                                lockedToken[stor201 + 1].field_512 = 0
                                require idx < mem[(32 * arg3.length) + 128]
                                lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                lockedToken[stor201 + 1].field_1024 = 0
                                allDepositIds.length++
                                allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                mem[32] = 203
                                depositsByWithdrawal[address(arg2)].field_0++
                                mem[0] = sha3(address(arg2), 203)
                                depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                require idx < mem[96]
                                _7416 = mem[(32 * idx) + 128]
                                mem[mem[64]] = depositId + 1
                                mem[mem[64] + 32] = arg2
                                mem[mem[64] + 64] = _7416
                                emit 0xd9b31b2c: depositId + 1, address(arg2), _7416
                        idx = idx + 1
                        s = depositId + 1
                        continue 
                else:
                    call msg.sender with:
                       value msg.value wei
                         gas gas_remaining wei
                    if not return_data.size:
                        idx = 0
                        s = 0
                        while idx < arg3.length:
                            require idx < mem[96]
                            require mem[(32 * idx) + 128] > 0
                            require idx < mem[(32 * arg3.length) + 128]
                            require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            _2903 = mem[(32 * idx) + 128]
                            _2950 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = _2903
                            _2951 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_2951 + 32] = mem[_2951 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _3060 = mem[_2951]
                            t = _2951 + 32
                            u = mem[64]
                            s = mem[_2951]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_2951])] = mem[_2951 + floor32(mem[_2951]) + -(mem[_2951] % 32) + 64 len mem[_2951] % 32] or Mask(8 * -(mem[_2951] % 32) + 32, -(8 * -(mem[_2951] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2951])])
                            call arg1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3060 + _2950 + -mem[64] + 128]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96] <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6791 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6791
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6791
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _7419 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _7419
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _7419
                            else:
                                _5354 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_5354] = return_data.size
                                mem[_5354 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6796 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6796
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6796
                                else:
                                    require return_data.size >= 32
                                    if not mem[_5354 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _7422 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _7422
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _7422
                            idx = idx + 1
                            s = depositId + 1
                            continue 
                    else:
                        mem[64] = (32 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 161
                        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = return_data.size
                        mem[(32 * arg3.length) + (32 * arg4.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        idx = 0
                        s = 0
                        while idx < arg3.length:
                            require idx < mem[96]
                            require mem[(32 * idx) + 128] > 0
                            require idx < mem[(32 * arg3.length) + 128]
                            require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            _2904 = mem[(32 * idx) + 128]
                            _2953 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = _2904
                            _2954 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_2954 + 32] = mem[_2954 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _3064 = mem[_2954]
                            t = _2954 + 32
                            u = mem[64]
                            s = mem[_2954]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_2954])] = mem[_2954 + floor32(mem[_2954]) + -(mem[_2954] % 32) + 64 len mem[_2954] % 32] or Mask(8 * -(mem[_2954] % 32) + 32, -(8 * -(mem[_2954] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2954])])
                            call arg1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3064 + _2953 + -mem[64] + 128]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96] <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6801 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6801
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6801
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _7425 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _7425
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _7425
                            else:
                                _5355 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_5355] = return_data.size
                                mem[_5355 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6806 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6806
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6806
                                else:
                                    require return_data.size >= 32
                                    if not mem[_5355 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _7428 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _7428
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _7428
                            idx = idx + 1
                            s = depositId + 1
                            continue 
            else:
                mem[64] = (32 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 161
                mem[(32 * arg3.length) + (32 * arg4.length) + 160] = return_data.size
                mem[(32 * arg3.length) + (32 * arg4.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Fee transfer failed'
                if msg.value <= 0:
                    idx = 0
                    s = 0
                    while idx < arg3.length:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] > 0
                        require idx < mem[(32 * arg3.length) + 128]
                        require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        _2905 = mem[(32 * idx) + 128]
                        _2956 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = _2905
                        _2957 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_2957 + 32] = mem[_2957 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        _3068 = mem[_2957]
                        t = _2957 + 32
                        u = mem[64]
                        s = mem[_2957]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_2957])] = mem[_2957 + floor32(mem[_2957]) + -(mem[_2957] % 32) + 64 len mem[_2957] % 32] or Mask(8 * -(mem[_2957] % 32) + 32, -(8 * -(mem[_2957] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2957])])
                        call arg1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3068 + _2956 + -mem[64] + 128]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                depositId++
                                lockedToken[stor201 + 1].field_0 = arg1
                                lockedToken[stor201 + 1].field_256 = arg2
                                lockedToken[stor201 + 1].field_512 = 0
                                require idx < mem[(32 * arg3.length) + 128]
                                lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                lockedToken[stor201 + 1].field_1024 = 0
                                allDepositIds.length++
                                allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                mem[32] = 203
                                depositsByWithdrawal[address(arg2)].field_0++
                                mem[0] = sha3(address(arg2), 203)
                                depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                require idx < mem[96]
                                _6811 = mem[(32 * idx) + 128]
                                mem[mem[64]] = depositId + 1
                                mem[mem[64] + 32] = arg2
                                mem[mem[64] + 64] = _6811
                                emit 0xd9b31b2c: depositId + 1, address(arg2), _6811
                            else:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                depositId++
                                lockedToken[stor201 + 1].field_0 = arg1
                                lockedToken[stor201 + 1].field_256 = arg2
                                lockedToken[stor201 + 1].field_512 = 0
                                require idx < mem[(32 * arg3.length) + 128]
                                lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                lockedToken[stor201 + 1].field_1024 = 0
                                allDepositIds.length++
                                allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                mem[32] = 203
                                depositsByWithdrawal[address(arg2)].field_0++
                                mem[0] = sha3(address(arg2), 203)
                                depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                require idx < mem[96]
                                _7431 = mem[(32 * idx) + 128]
                                mem[mem[64]] = depositId + 1
                                mem[mem[64] + 32] = arg2
                                mem[mem[64] + 64] = _7431
                                emit 0xd9b31b2c: depositId + 1, address(arg2), _7431
                        else:
                            _5356 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_5356] = return_data.size
                            mem[_5356 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                depositId++
                                lockedToken[stor201 + 1].field_0 = arg1
                                lockedToken[stor201 + 1].field_256 = arg2
                                lockedToken[stor201 + 1].field_512 = 0
                                require idx < mem[(32 * arg3.length) + 128]
                                lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                lockedToken[stor201 + 1].field_1024 = 0
                                allDepositIds.length++
                                allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                mem[32] = 203
                                depositsByWithdrawal[address(arg2)].field_0++
                                mem[0] = sha3(address(arg2), 203)
                                depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                require idx < mem[96]
                                _6816 = mem[(32 * idx) + 128]
                                mem[mem[64]] = depositId + 1
                                mem[mem[64] + 32] = arg2
                                mem[mem[64] + 64] = _6816
                                emit 0xd9b31b2c: depositId + 1, address(arg2), _6816
                            else:
                                require return_data.size >= 32
                                if not mem[_5356 + 32]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                depositId++
                                lockedToken[stor201 + 1].field_0 = arg1
                                lockedToken[stor201 + 1].field_256 = arg2
                                lockedToken[stor201 + 1].field_512 = 0
                                require idx < mem[(32 * arg3.length) + 128]
                                lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                lockedToken[stor201 + 1].field_1024 = 0
                                allDepositIds.length++
                                allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                mem[32] = 203
                                depositsByWithdrawal[address(arg2)].field_0++
                                mem[0] = sha3(address(arg2), 203)
                                depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                require idx < mem[96]
                                _7434 = mem[(32 * idx) + 128]
                                mem[mem[64]] = depositId + 1
                                mem[mem[64] + 32] = arg2
                                mem[mem[64] + 64] = _7434
                                emit 0xd9b31b2c: depositId + 1, address(arg2), _7434
                        idx = idx + 1
                        s = depositId + 1
                        continue 
                else:
                    call msg.sender with:
                       value msg.value wei
                         gas gas_remaining wei
                    if not return_data.size:
                        idx = 0
                        s = 0
                        while idx < arg3.length:
                            require idx < mem[96]
                            require mem[(32 * idx) + 128] > 0
                            require idx < mem[(32 * arg3.length) + 128]
                            require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            _2906 = mem[(32 * idx) + 128]
                            _2959 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = _2906
                            _2960 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_2960 + 32] = mem[_2960 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _3072 = mem[_2960]
                            t = _2960 + 32
                            u = mem[64]
                            s = mem[_2960]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_2960])] = mem[_2960 + floor32(mem[_2960]) + -(mem[_2960] % 32) + 64 len mem[_2960] % 32] or Mask(8 * -(mem[_2960] % 32) + 32, -(8 * -(mem[_2960] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2960])])
                            call arg1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3072 + _2959 + -mem[64] + 128]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96] <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6821 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6821
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6821
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _7437 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _7437
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _7437
                            else:
                                _5357 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_5357] = return_data.size
                                mem[_5357 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6826 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6826
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6826
                                else:
                                    require return_data.size >= 32
                                    if not mem[_5357 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _7440 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _7440
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _7440
                            idx = idx + 1
                            s = depositId + 1
                            continue 
                    else:
                        mem[64] = (32 * arg3.length) + (32 * arg4.length) + (2 * ceil32(return_data.size)) + 162
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 161] = return_data.size
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        idx = 0
                        s = 0
                        while idx < arg3.length:
                            require idx < mem[96]
                            require mem[(32 * idx) + 128] > 0
                            require idx < mem[(32 * arg3.length) + 128]
                            require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            _2907 = mem[(32 * idx) + 128]
                            _2962 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = _2907
                            _2963 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_2963 + 32] = mem[_2963 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _3076 = mem[_2963]
                            t = _2963 + 32
                            u = mem[64]
                            s = mem[_2963]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_2963])] = mem[_2963 + floor32(mem[_2963]) + -(mem[_2963] % 32) + 64 len mem[_2963] % 32] or Mask(8 * -(mem[_2963] % 32) + 32, -(8 * -(mem[_2963] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2963])])
                            call arg1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3076 + _2962 + -mem[64] + 128]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96] <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6831 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6831
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6831
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _7443 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _7443
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _7443
                            else:
                                _5358 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_5358] = return_data.size
                                mem[_5358 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6836 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6836
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6836
                                else:
                                    require return_data.size >= 32
                                    if not mem[_5358 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _7446 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _7446
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _7446
                            idx = idx + 1
                            s = depositId + 1
                            continue 
        else:
            require sub_76743b6b
            if 10^18 * sub_76743b6b / sub_76743b6b != 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * arg3.length) + (32 * arg4.length) + 261 len 31]
            if not 10^18 * sub_76743b6b:
                if msg.value < 0:
                    revert with 0, 'Low fee amount'
                call companyWalletAddress with:
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Fee transfer failed'
                    if msg.value <= 0:
                        idx = 0
                        s = 0
                        while idx < arg3.length:
                            require idx < mem[96]
                            require mem[(32 * idx) + 128] > 0
                            require idx < mem[(32 * arg3.length) + 128]
                            require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            _2896 = mem[(32 * idx) + 128]
                            _2929 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = _2896
                            _2930 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_2930 + 32] = mem[_2930 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _3032 = mem[_2930]
                            t = _2930 + 32
                            u = _2929 + 132
                            s = mem[_2930]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_2929 + floor32(mem[_2930]) + 132] = mem[_2930 + -(mem[_2930] % 32) + floor32(mem[_2930]) + 64 len mem[_2930] % 32] or Mask(8 * -(mem[_2930] % 32) + 32, -(8 * -(mem[_2930] % 32) + 32) + 256, mem[_2929 + floor32(mem[_2930]) + 132])
                            call arg1.mem[_2929 + 132 len 4] with:
                                 gas gas_remaining wei
                                args mem[_2929 + 136 len _3032 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96] <= 0:
                                    mem[_2929 + 136] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2929 + 132] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6721 = mem[(32 * idx) + 128]
                                    mem[_2929 + 132] = depositId + 1
                                    mem[_2929 + 164] = arg2
                                    mem[_2929 + 196] = _6721
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6721
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_2929 + 242 len 22]
                                    mem[_2929 + 136] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2929 + 132] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _7377 = mem[(32 * idx) + 128]
                                    mem[_2929 + 132] = depositId + 1
                                    mem[_2929 + 164] = arg2
                                    mem[_2929 + 196] = _7377
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _7377
                            else:
                                mem[64] = _2929 + ceil32(return_data.size) + 133
                                mem[_2929 + 132] = return_data.size
                                mem[_2929 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size <= 0:
                                    mem[_2929 + ceil32(return_data.size) + 137] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2929 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6726 = mem[(32 * idx) + 128]
                                    mem[_2929 + ceil32(return_data.size) + 133] = depositId + 1
                                    mem[_2929 + ceil32(return_data.size) + 165] = arg2
                                    mem[_2929 + ceil32(return_data.size) + 197] = _6726
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6726
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2929 + 164]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_2929 + ceil32(return_data.size) + 243 len 22]
                                    mem[_2929 + ceil32(return_data.size) + 137] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2929 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _7380 = mem[(32 * idx) + 128]
                                    mem[_2929 + ceil32(return_data.size) + 133] = depositId + 1
                                    mem[_2929 + ceil32(return_data.size) + 165] = arg2
                                    mem[_2929 + ceil32(return_data.size) + 197] = _7380
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _7380
                            idx = idx + 1
                            s = depositId + 1
                            continue 
                    else:
                        call msg.sender with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not return_data.size:
                            idx = 0
                            s = 0
                            while idx < arg3.length:
                                require idx < mem[96]
                                require mem[(32 * idx) + 128] > 0
                                require idx < mem[(32 * arg3.length) + 128]
                                require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[96]
                                _2897 = mem[(32 * idx) + 128]
                                _2932 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = _2897
                                _2933 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_2933 + 32] = mem[_2933 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _3036 = mem[_2933]
                                t = _2933 + 32
                                u = _2932 + 132
                                s = mem[_2933]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2932 + floor32(mem[_2933]) + 132] = mem[_2933 + -(mem[_2933] % 32) + floor32(mem[_2933]) + 64 len mem[_2933] % 32] or Mask(8 * -(mem[_2933] % 32) + 32, -(8 * -(mem[_2933] % 32) + 32) + 256, mem[_2932 + floor32(mem[_2933]) + 132])
                                call arg1.mem[_2932 + 132 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2932 + 136 len _3036 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] <= 0:
                                        mem[_2932 + 136] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2932 + 132] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6731 = mem[(32 * idx) + 128]
                                        mem[_2932 + 132] = depositId + 1
                                        mem[_2932 + 164] = arg2
                                        mem[_2932 + 196] = _6731
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6731
                                    else:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2932 + 242 len 22]
                                        mem[_2932 + 136] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2932 + 132] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _7383 = mem[(32 * idx) + 128]
                                        mem[_2932 + 132] = depositId + 1
                                        mem[_2932 + 164] = arg2
                                        mem[_2932 + 196] = _7383
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _7383
                                else:
                                    mem[64] = _2932 + ceil32(return_data.size) + 133
                                    mem[_2932 + 132] = return_data.size
                                    mem[_2932 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size <= 0:
                                        mem[_2932 + ceil32(return_data.size) + 137] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2932 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6736 = mem[(32 * idx) + 128]
                                        mem[_2932 + ceil32(return_data.size) + 133] = depositId + 1
                                        mem[_2932 + ceil32(return_data.size) + 165] = arg2
                                        mem[_2932 + ceil32(return_data.size) + 197] = _6736
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6736
                                    else:
                                        require return_data.size >= 32
                                        if not mem[_2932 + 164]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2932 + ceil32(return_data.size) + 243 len 22]
                                        mem[_2932 + ceil32(return_data.size) + 137] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2932 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _7386 = mem[(32 * idx) + 128]
                                        mem[_2932 + ceil32(return_data.size) + 133] = depositId + 1
                                        mem[_2932 + ceil32(return_data.size) + 165] = arg2
                                        mem[_2932 + ceil32(return_data.size) + 197] = _7386
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _7386
                                idx = idx + 1
                                s = depositId + 1
                                continue 
                        else:
                            mem[64] = (32 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 161
                            mem[(32 * arg3.length) + (32 * arg4.length) + 160] = return_data.size
                            mem[(32 * arg3.length) + (32 * arg4.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = 0
                            s = 0
                            while idx < arg3.length:
                                require idx < mem[96]
                                require mem[(32 * idx) + 128] > 0
                                require idx < mem[(32 * arg3.length) + 128]
                                require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[96]
                                _2898 = mem[(32 * idx) + 128]
                                _2935 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = _2898
                                _2936 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_2936 + 32] = mem[_2936 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _3040 = mem[_2936]
                                t = _2936 + 32
                                u = _2935 + 132
                                s = mem[_2936]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2935 + floor32(mem[_2936]) + 132] = mem[_2936 + -(mem[_2936] % 32) + floor32(mem[_2936]) + 64 len mem[_2936] % 32] or Mask(8 * -(mem[_2936] % 32) + 32, -(8 * -(mem[_2936] % 32) + 32) + 256, mem[_2935 + floor32(mem[_2936]) + 132])
                                call arg1.mem[_2935 + 132 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2935 + 136 len _3040 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] <= 0:
                                        mem[_2935 + 136] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2935 + 132] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6741 = mem[(32 * idx) + 128]
                                        mem[_2935 + 132] = depositId + 1
                                        mem[_2935 + 164] = arg2
                                        mem[_2935 + 196] = _6741
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6741
                                    else:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2935 + 242 len 22]
                                        mem[_2935 + 136] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2935 + 132] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _7389 = mem[(32 * idx) + 128]
                                        mem[_2935 + 132] = depositId + 1
                                        mem[_2935 + 164] = arg2
                                        mem[_2935 + 196] = _7389
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _7389
                                else:
                                    mem[64] = _2935 + ceil32(return_data.size) + 133
                                    mem[_2935 + 132] = return_data.size
                                    mem[_2935 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size <= 0:
                                        mem[_2935 + ceil32(return_data.size) + 137] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2935 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6746 = mem[(32 * idx) + 128]
                                        mem[_2935 + ceil32(return_data.size) + 133] = depositId + 1
                                        mem[_2935 + ceil32(return_data.size) + 165] = arg2
                                        mem[_2935 + ceil32(return_data.size) + 197] = _6746
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6746
                                    else:
                                        require return_data.size >= 32
                                        if not mem[_2935 + 164]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2935 + ceil32(return_data.size) + 243 len 22]
                                        mem[_2935 + ceil32(return_data.size) + 137] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2935 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _7392 = mem[(32 * idx) + 128]
                                        mem[_2935 + ceil32(return_data.size) + 133] = depositId + 1
                                        mem[_2935 + ceil32(return_data.size) + 165] = arg2
                                        mem[_2935 + ceil32(return_data.size) + 197] = _7392
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _7392
                                idx = idx + 1
                                s = depositId + 1
                                continue 
                else:
                    mem[64] = (32 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 161
                    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = return_data.size
                    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Fee transfer failed'
                    if msg.value <= 0:
                        idx = 0
                        s = 0
                        while idx < arg3.length:
                            require idx < mem[96]
                            require mem[(32 * idx) + 128] > 0
                            require idx < mem[(32 * arg3.length) + 128]
                            require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            _2899 = mem[(32 * idx) + 128]
                            _2938 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = _2899
                            _2939 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_2939 + 32] = mem[_2939 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _3044 = mem[_2939]
                            t = _2939 + 32
                            u = mem[64]
                            s = mem[_2939]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_2939])] = mem[_2939 + floor32(mem[_2939]) + -(mem[_2939] % 32) + 64 len mem[_2939] % 32] or Mask(8 * -(mem[_2939] % 32) + 32, -(8 * -(mem[_2939] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2939])])
                            call arg1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3044 + _2938 + -mem[64] + 128]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96] <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6751 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6751
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6751
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _7395 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _7395
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _7395
                            else:
                                _5350 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_5350] = return_data.size
                                mem[_5350 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size <= 0:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6756 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6756
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6756
                                else:
                                    require return_data.size >= 32
                                    if not mem[_5350 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _7398 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _7398
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _7398
                            idx = idx + 1
                            s = depositId + 1
                            continue 
                    else:
                        call msg.sender with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not return_data.size:
                            idx = 0
                            s = 0
                            while idx < arg3.length:
                                require idx < mem[96]
                                require mem[(32 * idx) + 128] > 0
                                require idx < mem[(32 * arg3.length) + 128]
                                require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[96]
                                _2900 = mem[(32 * idx) + 128]
                                _2941 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = _2900
                                _2942 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_2942 + 32] = mem[_2942 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _3048 = mem[_2942]
                                t = _2942 + 32
                                u = _2941 + 132
                                s = mem[_2942]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2941 + floor32(mem[_2942]) + 132] = mem[_2942 + -(mem[_2942] % 32) + floor32(mem[_2942]) + 64 len mem[_2942] % 32] or Mask(8 * -(mem[_2942] % 32) + 32, -(8 * -(mem[_2942] % 32) + 32) + 256, mem[_2941 + floor32(mem[_2942]) + 132])
                                call arg1.mem[_2941 + 132 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2941 + 136 len _3048 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] <= 0:
                                        mem[_2941 + 136] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2941 + 132] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6761 = mem[(32 * idx) + 128]
                                        mem[_2941 + 132] = depositId + 1
                                        mem[_2941 + 164] = arg2
                                        mem[_2941 + 196] = _6761
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6761
                                    else:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2941 + 242 len 22]
                                        mem[_2941 + 136] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2941 + 132] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _7401 = mem[(32 * idx) + 128]
                                        mem[_2941 + 132] = depositId + 1
                                        mem[_2941 + 164] = arg2
                                        mem[_2941 + 196] = _7401
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _7401
                                else:
                                    mem[64] = _2941 + ceil32(return_data.size) + 133
                                    mem[_2941 + 132] = return_data.size
                                    mem[_2941 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size <= 0:
                                        mem[_2941 + ceil32(return_data.size) + 137] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2941 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6766 = mem[(32 * idx) + 128]
                                        mem[_2941 + ceil32(return_data.size) + 133] = depositId + 1
                                        mem[_2941 + ceil32(return_data.size) + 165] = arg2
                                        mem[_2941 + ceil32(return_data.size) + 197] = _6766
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6766
                                    else:
                                        require return_data.size >= 32
                                        if not mem[_2941 + 164]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2941 + ceil32(return_data.size) + 243 len 22]
                                        mem[_2941 + ceil32(return_data.size) + 137] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2941 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _7404 = mem[(32 * idx) + 128]
                                        mem[_2941 + ceil32(return_data.size) + 133] = depositId + 1
                                        mem[_2941 + ceil32(return_data.size) + 165] = arg2
                                        mem[_2941 + ceil32(return_data.size) + 197] = _7404
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _7404
                                idx = idx + 1
                                s = depositId + 1
                                continue 
                        else:
                            mem[64] = (32 * arg3.length) + (32 * arg4.length) + (2 * ceil32(return_data.size)) + 162
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 161] = return_data.size
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = 0
                            s = 0
                            while idx < arg3.length:
                                require idx < mem[96]
                                require mem[(32 * idx) + 128] > 0
                                require idx < mem[(32 * arg3.length) + 128]
                                require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[96]
                                _2901 = mem[(32 * idx) + 128]
                                _2944 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = _2901
                                _2945 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_2945 + 32] = mem[_2945 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _3052 = mem[_2945]
                                t = _2945 + 32
                                u = mem[64]
                                s = mem[_2945]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_2945])] = mem[_2945 + floor32(mem[_2945]) + -(mem[_2945] % 32) + 64 len mem[_2945] % 32] or Mask(8 * -(mem[_2945] % 32) + 32, -(8 * -(mem[_2945] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2945])])
                                call arg1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3052 + _2944 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6771 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6771
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6771
                                    else:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _7407 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _7407
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _7407
                                else:
                                    _5352 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_5352] = return_data.size
                                    mem[_5352 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6776 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6776
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6776
                                    else:
                                        require return_data.size >= 32
                                        if not mem[_5352 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _7410 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _7410
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _7410
                                idx = idx + 1
                                s = depositId + 1
                                continue 
            else:
                require 10^18 * sub_76743b6b
                if 10^18 * sub_76743b6b * arg3.length / 10^18 * sub_76743b6b != arg3.length:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * arg3.length) + (32 * arg4.length) + 261 len 31]
                if msg.value < 10^18 * sub_76743b6b * arg3.length:
                    revert with 0, 'Low fee amount'
                call companyWalletAddress with:
                   value 10^18 * sub_76743b6b * arg3.length wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Fee transfer failed'
                    if msg.value - (10^18 * sub_76743b6b * arg3.length) <= 0:
                        idx = 0
                        s = 0
                        while idx < arg3.length:
                            require idx < mem[96]
                            require mem[(32 * idx) + 128] > 0
                            require idx < mem[(32 * arg3.length) + 128]
                            require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            _2890 = mem[(32 * idx) + 128]
                            _2911 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = _2890
                            _2912 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_2912 + 32] = mem[_2912 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _3008 = mem[_2912]
                            t = _2912 + 32
                            u = _2911 + 132
                            s = mem[_2912]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_2911 + floor32(mem[_2912]) + 132] = mem[_2912 + -(mem[_2912] % 32) + floor32(mem[_2912]) + 64 len mem[_2912] % 32] or Mask(8 * -(mem[_2912] % 32) + 32, -(8 * -(mem[_2912] % 32) + 32) + 256, mem[_2911 + floor32(mem[_2912]) + 132])
                            call arg1.mem[_2911 + 132 len 4] with:
                                 gas gas_remaining wei
                                args mem[_2911 + 136 len _3008 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96] <= 0:
                                    mem[_2911 + 136] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2911 + 132] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6661 = mem[(32 * idx) + 128]
                                    mem[_2911 + 132] = depositId + 1
                                    mem[_2911 + 164] = arg2
                                    mem[_2911 + 196] = _6661
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6661
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_2911 + 242 len 22]
                                    mem[_2911 + 136] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2911 + 132] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _7341 = mem[(32 * idx) + 128]
                                    mem[_2911 + 132] = depositId + 1
                                    mem[_2911 + 164] = arg2
                                    mem[_2911 + 196] = _7341
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _7341
                            else:
                                mem[64] = _2911 + ceil32(return_data.size) + 133
                                mem[_2911 + 132] = return_data.size
                                mem[_2911 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size <= 0:
                                    mem[_2911 + ceil32(return_data.size) + 137] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2911 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6666 = mem[(32 * idx) + 128]
                                    mem[_2911 + ceil32(return_data.size) + 133] = depositId + 1
                                    mem[_2911 + ceil32(return_data.size) + 165] = arg2
                                    mem[_2911 + ceil32(return_data.size) + 197] = _6666
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6666
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2911 + 164]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_2911 + ceil32(return_data.size) + 243 len 22]
                                    mem[_2911 + ceil32(return_data.size) + 137] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2911 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _7344 = mem[(32 * idx) + 128]
                                    mem[_2911 + ceil32(return_data.size) + 133] = depositId + 1
                                    mem[_2911 + ceil32(return_data.size) + 165] = arg2
                                    mem[_2911 + ceil32(return_data.size) + 197] = _7344
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _7344
                            idx = idx + 1
                            s = depositId + 1
                            continue 
                    else:
                        call msg.sender with:
                           value msg.value - (10^18 * sub_76743b6b * arg3.length) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            idx = 0
                            s = 0
                            while idx < arg3.length:
                                require idx < mem[96]
                                require mem[(32 * idx) + 128] > 0
                                require idx < mem[(32 * arg3.length) + 128]
                                require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[96]
                                _2891 = mem[(32 * idx) + 128]
                                _2914 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = _2891
                                _2915 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_2915 + 32] = mem[_2915 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _3012 = mem[_2915]
                                t = _2915 + 32
                                u = _2914 + 132
                                s = mem[_2915]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2914 + floor32(mem[_2915]) + 132] = mem[_2915 + -(mem[_2915] % 32) + floor32(mem[_2915]) + 64 len mem[_2915] % 32] or Mask(8 * -(mem[_2915] % 32) + 32, -(8 * -(mem[_2915] % 32) + 32) + 256, mem[_2914 + floor32(mem[_2915]) + 132])
                                call arg1.mem[_2914 + 132 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2914 + 136 len _3012 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] <= 0:
                                        mem[_2914 + 136] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2914 + 132] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6671 = mem[(32 * idx) + 128]
                                        mem[_2914 + 132] = depositId + 1
                                        mem[_2914 + 164] = arg2
                                        mem[_2914 + 196] = _6671
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6671
                                    else:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2914 + 242 len 22]
                                        mem[_2914 + 136] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2914 + 132] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _7347 = mem[(32 * idx) + 128]
                                        mem[_2914 + 132] = depositId + 1
                                        mem[_2914 + 164] = arg2
                                        mem[_2914 + 196] = _7347
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _7347
                                else:
                                    mem[64] = _2914 + ceil32(return_data.size) + 133
                                    mem[_2914 + 132] = return_data.size
                                    mem[_2914 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size <= 0:
                                        mem[_2914 + ceil32(return_data.size) + 137] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2914 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6676 = mem[(32 * idx) + 128]
                                        mem[_2914 + ceil32(return_data.size) + 133] = depositId + 1
                                        mem[_2914 + ceil32(return_data.size) + 165] = arg2
                                        mem[_2914 + ceil32(return_data.size) + 197] = _6676
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6676
                                    else:
                                        require return_data.size >= 32
                                        if not mem[_2914 + 164]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2914 + ceil32(return_data.size) + 243 len 22]
                                        mem[_2914 + ceil32(return_data.size) + 137] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2914 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _7350 = mem[(32 * idx) + 128]
                                        mem[_2914 + ceil32(return_data.size) + 133] = depositId + 1
                                        mem[_2914 + ceil32(return_data.size) + 165] = arg2
                                        mem[_2914 + ceil32(return_data.size) + 197] = _7350
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _7350
                                idx = idx + 1
                                s = depositId + 1
                                continue 
                        else:
                            mem[64] = (32 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 161
                            mem[(32 * arg3.length) + (32 * arg4.length) + 160] = return_data.size
                            mem[(32 * arg3.length) + (32 * arg4.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = 0
                            s = 0
                            while idx < arg3.length:
                                require idx < mem[96]
                                require mem[(32 * idx) + 128] > 0
                                require idx < mem[(32 * arg3.length) + 128]
                                require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[96]
                                _2892 = mem[(32 * idx) + 128]
                                _2917 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = _2892
                                _2918 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_2918 + 32] = mem[_2918 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _3016 = mem[_2918]
                                t = _2918 + 32
                                u = _2917 + 132
                                s = mem[_2918]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2917 + floor32(mem[_2918]) + 132] = mem[_2918 + -(mem[_2918] % 32) + floor32(mem[_2918]) + 64 len mem[_2918] % 32] or Mask(8 * -(mem[_2918] % 32) + 32, -(8 * -(mem[_2918] % 32) + 32) + 256, mem[_2917 + floor32(mem[_2918]) + 132])
                                call arg1.mem[_2917 + 132 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2917 + 136 len _3016 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] <= 0:
                                        mem[_2917 + 136] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2917 + 132] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6681 = mem[(32 * idx) + 128]
                                        mem[_2917 + 132] = depositId + 1
                                        mem[_2917 + 164] = arg2
                                        mem[_2917 + 196] = _6681
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6681
                                    else:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2917 + 242 len 22]
                                        mem[_2917 + 136] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2917 + 132] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _7353 = mem[(32 * idx) + 128]
                                        mem[_2917 + 132] = depositId + 1
                                        mem[_2917 + 164] = arg2
                                        mem[_2917 + 196] = _7353
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _7353
                                else:
                                    mem[64] = _2917 + ceil32(return_data.size) + 133
                                    mem[_2917 + 132] = return_data.size
                                    mem[_2917 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size <= 0:
                                        mem[_2917 + ceil32(return_data.size) + 137] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2917 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6686 = mem[(32 * idx) + 128]
                                        mem[_2917 + ceil32(return_data.size) + 133] = depositId + 1
                                        mem[_2917 + ceil32(return_data.size) + 165] = arg2
                                        mem[_2917 + ceil32(return_data.size) + 197] = _6686
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6686
                                    else:
                                        require return_data.size >= 32
                                        if not mem[_2917 + 164]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2917 + ceil32(return_data.size) + 243 len 22]
                                        mem[_2917 + ceil32(return_data.size) + 137] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2917 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _7356 = mem[(32 * idx) + 128]
                                        mem[_2917 + ceil32(return_data.size) + 133] = depositId + 1
                                        mem[_2917 + ceil32(return_data.size) + 165] = arg2
                                        mem[_2917 + ceil32(return_data.size) + 197] = _7356
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _7356
                                idx = idx + 1
                                s = depositId + 1
                                continue 
                else:
                    mem[64] = (32 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 161
                    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = return_data.size
                    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Fee transfer failed'
                    if msg.value - (10^18 * sub_76743b6b * arg3.length) <= 0:
                        idx = 0
                        s = 0
                        while idx < arg3.length:
                            require idx < mem[96]
                            require mem[(32 * idx) + 128] > 0
                            require idx < mem[(32 * arg3.length) + 128]
                            require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            _2893 = mem[(32 * idx) + 128]
                            _2920 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = _2893
                            _2921 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_2921 + 32] = mem[_2921 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _3020 = mem[_2921]
                            t = _2921 + 32
                            u = _2920 + 132
                            s = mem[_2921]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_2920 + floor32(mem[_2921]) + 132] = mem[_2921 + -(mem[_2921] % 32) + floor32(mem[_2921]) + 64 len mem[_2921] % 32] or Mask(8 * -(mem[_2921] % 32) + 32, -(8 * -(mem[_2921] % 32) + 32) + 256, mem[_2920 + floor32(mem[_2921]) + 132])
                            call arg1.mem[_2920 + 132 len 4] with:
                                 gas gas_remaining wei
                                args mem[_2920 + 136 len _3020 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96] <= 0:
                                    mem[_2920 + 136] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2920 + 132] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6691 = mem[(32 * idx) + 128]
                                    mem[_2920 + 132] = depositId + 1
                                    mem[_2920 + 164] = arg2
                                    mem[_2920 + 196] = _6691
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6691
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_2920 + 242 len 22]
                                    mem[_2920 + 136] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2920 + 132] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _7359 = mem[(32 * idx) + 128]
                                    mem[_2920 + 132] = depositId + 1
                                    mem[_2920 + 164] = arg2
                                    mem[_2920 + 196] = _7359
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _7359
                            else:
                                mem[64] = _2920 + ceil32(return_data.size) + 133
                                mem[_2920 + 132] = return_data.size
                                mem[_2920 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size <= 0:
                                    mem[_2920 + ceil32(return_data.size) + 137] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2920 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6696 = mem[(32 * idx) + 128]
                                    mem[_2920 + ceil32(return_data.size) + 133] = depositId + 1
                                    mem[_2920 + ceil32(return_data.size) + 165] = arg2
                                    mem[_2920 + ceil32(return_data.size) + 197] = _6696
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6696
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2920 + 164]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_2920 + ceil32(return_data.size) + 243 len 22]
                                    mem[_2920 + ceil32(return_data.size) + 137] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2920 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    depositId++
                                    lockedToken[stor201 + 1].field_0 = arg1
                                    lockedToken[stor201 + 1].field_256 = arg2
                                    lockedToken[stor201 + 1].field_512 = 0
                                    require idx < mem[(32 * arg3.length) + 128]
                                    lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                    lockedToken[stor201 + 1].field_1024 = 0
                                    allDepositIds.length++
                                    allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _7362 = mem[(32 * idx) + 128]
                                    mem[_2920 + ceil32(return_data.size) + 133] = depositId + 1
                                    mem[_2920 + ceil32(return_data.size) + 165] = arg2
                                    mem[_2920 + ceil32(return_data.size) + 197] = _7362
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _7362
                            idx = idx + 1
                            s = depositId + 1
                            continue 
                    else:
                        call msg.sender with:
                           value msg.value - (10^18 * sub_76743b6b * arg3.length) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            idx = 0
                            s = 0
                            while idx < arg3.length:
                                require idx < mem[96]
                                require mem[(32 * idx) + 128] > 0
                                require idx < mem[(32 * arg3.length) + 128]
                                require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[96]
                                _2894 = mem[(32 * idx) + 128]
                                _2923 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = _2894
                                _2924 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_2924 + 32] = mem[_2924 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _3024 = mem[_2924]
                                t = _2924 + 32
                                u = mem[64]
                                s = mem[_2924]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_2924])] = mem[_2924 + floor32(mem[_2924]) + -(mem[_2924] % 32) + 64 len mem[_2924] % 32] or Mask(8 * -(mem[_2924] % 32) + 32, -(8 * -(mem[_2924] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2924])])
                                call arg1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3024 + _2923 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6701 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6701
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6701
                                    else:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _7365 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _7365
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _7365
                                else:
                                    _5345 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_5345] = return_data.size
                                    mem[_5345 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6706 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6706
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6706
                                    else:
                                        require return_data.size >= 32
                                        if not mem[_5345 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _7368 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _7368
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _7368
                                idx = idx + 1
                                s = depositId + 1
                                continue 
                        else:
                            mem[64] = (32 * arg3.length) + (32 * arg4.length) + (2 * ceil32(return_data.size)) + 162
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 161] = return_data.size
                            mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = 0
                            s = 0
                            while idx < arg3.length:
                                require idx < mem[96]
                                require mem[(32 * idx) + 128] > 0
                                require idx < mem[(32 * arg3.length) + 128]
                                require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[96]
                                _2895 = mem[(32 * idx) + 128]
                                _2926 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = _2895
                                _2927 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_2927 + 32] = mem[_2927 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _3028 = mem[_2927]
                                t = _2927 + 32
                                u = mem[64]
                                s = mem[_2927]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_2927])] = mem[_2927 + floor32(mem[_2927]) + -(mem[_2927] % 32) + 64 len mem[_2927] % 32] or Mask(8 * -(mem[_2927] % 32) + 32, -(8 * -(mem[_2927] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2927])])
                                call arg1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3028 + _2926 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6711 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6711
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6711
                                    else:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _7371 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _7371
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _7371
                                else:
                                    _5346 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_5346] = return_data.size
                                    mem[_5346 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size <= 0:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6716 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6716
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6716
                                    else:
                                        require return_data.size >= 32
                                        if not mem[_5346 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        depositId++
                                        lockedToken[stor201 + 1].field_0 = arg1
                                        lockedToken[stor201 + 1].field_256 = arg2
                                        lockedToken[stor201 + 1].field_512 = 0
                                        require idx < mem[(32 * arg3.length) + 128]
                                        lockedToken[stor201 + 1].field_768 = mem[(32 * idx) + (32 * arg3.length) + 160]
                                        lockedToken[stor201 + 1].field_1024 = 0
                                        allDepositIds.length++
                                        allDepositIds[allDepositIds.length].field_0 = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _7374 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _7374
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _7374
                                idx = idx + 1
                                s = depositId + 1
                                continue 
    return s
}



}
