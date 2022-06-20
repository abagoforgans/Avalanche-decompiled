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
array of uint256 stor30232785535072749652971633506012447853310042529756156461386917081222683561697;

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
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_5e41ea56(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_76743b6b = arg1
    emit FeesChanged(arg1);
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setCompanyWallet(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
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
    staticcall arg1.0x70a08231 with:
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
        revert with 0, 'wOwnable: caller is not the owne'
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
    if lockedToken[arg1].field_512 > tokenBalanceBy[stor204[arg1].field_0][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    tokenBalanceBy[stor204[arg1].field_0][msg.sender] -= lockedToken[arg1].field_512
    if lockedToken[arg1].field_512 + tokenBalanceBy[stor204[arg1].field_0][address(arg2)] < tokenBalanceBy[stor204[arg1].field_0][address(arg2)]:
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
    if lockedToken[arg1].field_512 > tokenBalanceBy[stor204[arg1].field_0][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    tokenBalanceBy[stor204[arg1].field_0][msg.sender] -= lockedToken[arg1].field_512
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
        call lockedToken[arg1].field_0.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, lockedToken[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit LogWithdrawal(arg1, msg.sender, lockedToken[arg1].field_512);
    require ext_code.size(lockedToken[arg1].field_0)
    call lockedToken[arg1].field_0.0xa9059cbb with:
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
    if sub_76743b6b:
        if not sub_76743b6b:
            if msg.value < 0:
                revert with 0, 'Low fee amount'
            call companyWalletAddress with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Fee transfer failed'
            if msg.value:
                call msg.sender with:
                   value msg.value wei
                     gas gas_remaining wei
        else:
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
            if msg.value - (10^18 * sub_76743b6b):
                call msg.sender with:
                   value msg.value - (10^18 * sub_76743b6b) wei
                     gas gas_remaining wei
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
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
    stor42D7[stor202.length] = depositId + 1
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
                            0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            paused = 0
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                paused = 0
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    paused = 0
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        paused = 0
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        paused = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
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
    if not sub_76743b6b:
        idx = 0
        s = 0
        while idx < arg3.length:
            require idx < mem[96]
            require mem[(32 * idx) + 128] > 0
            require idx < mem[(32 * arg3.length) + 128]
            require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            _2576 = mem[(32 * idx) + 128]
            _2595 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = _2576
            _2596 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_2596 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2596 + 36 len 28]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(arg1):
                revert with 0, 'SafeERC20: call to non-contract'
            _2691 = mem[_2596]
            t = _2596 + 32
            u = _2595 + 132
            s = mem[_2596]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_2595 + floor32(mem[_2596]) + 132] = mem[_2596 + -(mem[_2596] % 32) + floor32(mem[_2596]) + 64 len mem[_2596] % 32] or Mask(8 * -(mem[_2596] % 32) + 32, -(8 * -(mem[_2596] % 32) + 32) + 256, mem[_2595 + floor32(mem[_2596]) + 132])
            call arg1.mem[_2595 + 132 len 4] with:
                 gas gas_remaining wei
                args mem[_2595 + 136 len _2691 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not mem[96]:
                    mem[_2595 + 136] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_2595 + 132] = ext_call.return_data[0]
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
                    stor42D7[stor202.length] = depositId + 1
                    mem[32] = 203
                    depositsByWithdrawal[address(arg2)].field_0++
                    mem[0] = sha3(address(arg2), 203)
                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                    require idx < mem[96]
                    _5958 = mem[(32 * idx) + 128]
                    mem[_2595 + 132] = depositId + 1
                    mem[_2595 + 164] = arg2
                    mem[_2595 + 196] = _5958
                    emit 0xd9b31b2c: depositId + 1, address(arg2), _5958
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_2595 + 242 len 22]
                    mem[_2595 + 136] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_2595 + 132] = ext_call.return_data[0]
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
                    stor42D7[stor202.length] = depositId + 1
                    mem[32] = 203
                    depositsByWithdrawal[address(arg2)].field_0++
                    mem[0] = sha3(address(arg2), 203)
                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                    require idx < mem[96]
                    _6414 = mem[(32 * idx) + 128]
                    mem[_2595 + 132] = depositId + 1
                    mem[_2595 + 164] = arg2
                    mem[_2595 + 196] = _6414
                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6414
            else:
                mem[64] = _2595 + ceil32(return_data.size) + 133
                mem[_2595 + 132] = return_data.size
                mem[_2595 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    mem[_2595 + ceil32(return_data.size) + 137] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_2595 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
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
                    stor42D7[stor202.length] = depositId + 1
                    mem[32] = 203
                    depositsByWithdrawal[address(arg2)].field_0++
                    mem[0] = sha3(address(arg2), 203)
                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                    require idx < mem[96]
                    _5965 = mem[(32 * idx) + 128]
                    mem[_2595 + ceil32(return_data.size) + 133] = depositId + 1
                    mem[_2595 + ceil32(return_data.size) + 165] = arg2
                    mem[_2595 + ceil32(return_data.size) + 197] = _5965
                    emit 0xd9b31b2c: depositId + 1, address(arg2), _5965
                else:
                    require return_data.size >= 32
                    if not mem[_2595 + 164]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_2595 + ceil32(return_data.size) + 243 len 22]
                    mem[_2595 + ceil32(return_data.size) + 137] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_2595 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
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
                    stor42D7[stor202.length] = depositId + 1
                    mem[32] = 203
                    depositsByWithdrawal[address(arg2)].field_0++
                    mem[0] = sha3(address(arg2), 203)
                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                    require idx < mem[96]
                    _6417 = mem[(32 * idx) + 128]
                    mem[_2595 + ceil32(return_data.size) + 133] = depositId + 1
                    mem[_2595 + ceil32(return_data.size) + 165] = arg2
                    mem[_2595 + ceil32(return_data.size) + 197] = _6417
                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6417
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
                if not msg.value:
                    idx = 0
                    s = 0
                    while idx < arg3.length:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] > 0
                        require idx < mem[(32 * arg3.length) + 128]
                        require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        _2589 = mem[(32 * idx) + 128]
                        _2634 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = _2589
                        _2635 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_2635 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2635 + 36 len 28]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        _2743 = mem[_2635]
                        t = _2635 + 32
                        u = mem[64]
                        s = mem[_2635]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_2635])] = mem[_2635 + floor32(mem[_2635]) + -(mem[_2635] % 32) + 64 len mem[_2635] % 32] or Mask(8 * -(mem[_2635] % 32) + 32, -(8 * -(mem[_2635] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2635])])
                        call arg1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2743 + _2634 + -mem[64] + 128]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not mem[96]:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
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
                                stor42D7[stor202.length] = depositId + 1
                                mem[32] = 203
                                depositsByWithdrawal[address(arg2)].field_0++
                                mem[0] = sha3(address(arg2), 203)
                                depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                require idx < mem[96]
                                _6140 = mem[(32 * idx) + 128]
                                mem[mem[64]] = depositId + 1
                                mem[mem[64] + 32] = arg2
                                mem[mem[64] + 64] = _6140
                                emit 0xd9b31b2c: depositId + 1, address(arg2), _6140
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
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
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
                                stor42D7[stor202.length] = depositId + 1
                                mem[32] = 203
                                depositsByWithdrawal[address(arg2)].field_0++
                                mem[0] = sha3(address(arg2), 203)
                                depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                require idx < mem[96]
                                _6492 = mem[(32 * idx) + 128]
                                mem[mem[64]] = depositId + 1
                                mem[mem[64] + 32] = arg2
                                mem[mem[64] + 64] = _6492
                                emit 0xd9b31b2c: depositId + 1, address(arg2), _6492
                        else:
                            _4736 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4736] = return_data.size
                            mem[_4736 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
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
                                stor42D7[stor202.length] = depositId + 1
                                mem[32] = 203
                                depositsByWithdrawal[address(arg2)].field_0++
                                mem[0] = sha3(address(arg2), 203)
                                depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                require idx < mem[96]
                                _6147 = mem[(32 * idx) + 128]
                                mem[mem[64]] = depositId + 1
                                mem[mem[64] + 32] = arg2
                                mem[mem[64] + 64] = _6147
                                emit 0xd9b31b2c: depositId + 1, address(arg2), _6147
                            else:
                                require return_data.size >= 32
                                if not mem[_4736 + 32]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
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
                                stor42D7[stor202.length] = depositId + 1
                                mem[32] = 203
                                depositsByWithdrawal[address(arg2)].field_0++
                                mem[0] = sha3(address(arg2), 203)
                                depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                require idx < mem[96]
                                _6495 = mem[(32 * idx) + 128]
                                mem[mem[64]] = depositId + 1
                                mem[mem[64] + 32] = arg2
                                mem[mem[64] + 64] = _6495
                                emit 0xd9b31b2c: depositId + 1, address(arg2), _6495
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
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            _2590 = mem[(32 * idx) + 128]
                            _2637 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = _2590
                            _2638 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_2638 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2638 + 36 len 28]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _2747 = mem[_2638]
                            t = _2638 + 32
                            u = _2637 + 132
                            s = mem[_2638]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_2637 + floor32(mem[_2638]) + 132] = mem[_2638 + -(mem[_2638] % 32) + floor32(mem[_2638]) + 64 len mem[_2638] % 32] or Mask(8 * -(mem[_2638] % 32) + 32, -(8 * -(mem[_2638] % 32) + 32) + 256, mem[_2637 + floor32(mem[_2638]) + 132])
                            call arg1.mem[_2637 + 132 len 4] with:
                                 gas gas_remaining wei
                                args mem[_2637 + 136 len _2747 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not mem[96]:
                                    mem[_2637 + 136] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2637 + 132] = ext_call.return_data[0]
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6154 = mem[(32 * idx) + 128]
                                    mem[_2637 + 132] = depositId + 1
                                    mem[_2637 + 164] = arg2
                                    mem[_2637 + 196] = _6154
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6154
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_2637 + 242 len 22]
                                    mem[_2637 + 136] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2637 + 132] = ext_call.return_data[0]
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6498 = mem[(32 * idx) + 128]
                                    mem[_2637 + 132] = depositId + 1
                                    mem[_2637 + 164] = arg2
                                    mem[_2637 + 196] = _6498
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6498
                            else:
                                mem[64] = _2637 + ceil32(return_data.size) + 133
                                mem[_2637 + 132] = return_data.size
                                mem[_2637 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    mem[_2637 + ceil32(return_data.size) + 137] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2637 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6161 = mem[(32 * idx) + 128]
                                    mem[_2637 + ceil32(return_data.size) + 133] = depositId + 1
                                    mem[_2637 + ceil32(return_data.size) + 165] = arg2
                                    mem[_2637 + ceil32(return_data.size) + 197] = _6161
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6161
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2637 + 164]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_2637 + ceil32(return_data.size) + 243 len 22]
                                    mem[_2637 + ceil32(return_data.size) + 137] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2637 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6501 = mem[(32 * idx) + 128]
                                    mem[_2637 + ceil32(return_data.size) + 133] = depositId + 1
                                    mem[_2637 + ceil32(return_data.size) + 165] = arg2
                                    mem[_2637 + ceil32(return_data.size) + 197] = _6501
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6501
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
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            _2591 = mem[(32 * idx) + 128]
                            _2640 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = _2591
                            _2641 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_2641 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2641 + 36 len 28]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _2751 = mem[_2641]
                            t = _2641 + 32
                            u = _2640 + 132
                            s = mem[_2641]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_2640 + floor32(mem[_2641]) + 132] = mem[_2641 + -(mem[_2641] % 32) + floor32(mem[_2641]) + 64 len mem[_2641] % 32] or Mask(8 * -(mem[_2641] % 32) + 32, -(8 * -(mem[_2641] % 32) + 32) + 256, mem[_2640 + floor32(mem[_2641]) + 132])
                            call arg1.mem[_2640 + 132 len 4] with:
                                 gas gas_remaining wei
                                args mem[_2640 + 136 len _2751 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not mem[96]:
                                    mem[_2640 + 136] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2640 + 132] = ext_call.return_data[0]
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6168 = mem[(32 * idx) + 128]
                                    mem[_2640 + 132] = depositId + 1
                                    mem[_2640 + 164] = arg2
                                    mem[_2640 + 196] = _6168
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6168
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_2640 + 242 len 22]
                                    mem[_2640 + 136] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2640 + 132] = ext_call.return_data[0]
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6504 = mem[(32 * idx) + 128]
                                    mem[_2640 + 132] = depositId + 1
                                    mem[_2640 + 164] = arg2
                                    mem[_2640 + 196] = _6504
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6504
                            else:
                                mem[64] = _2640 + ceil32(return_data.size) + 133
                                mem[_2640 + 132] = return_data.size
                                mem[_2640 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    mem[_2640 + ceil32(return_data.size) + 137] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2640 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6175 = mem[(32 * idx) + 128]
                                    mem[_2640 + ceil32(return_data.size) + 133] = depositId + 1
                                    mem[_2640 + ceil32(return_data.size) + 165] = arg2
                                    mem[_2640 + ceil32(return_data.size) + 197] = _6175
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6175
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2640 + 164]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_2640 + ceil32(return_data.size) + 243 len 22]
                                    mem[_2640 + ceil32(return_data.size) + 137] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2640 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6507 = mem[(32 * idx) + 128]
                                    mem[_2640 + ceil32(return_data.size) + 133] = depositId + 1
                                    mem[_2640 + ceil32(return_data.size) + 165] = arg2
                                    mem[_2640 + ceil32(return_data.size) + 197] = _6507
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6507
                            idx = idx + 1
                            s = depositId + 1
                            continue 
            else:
                mem[64] = (32 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 161
                mem[(32 * arg3.length) + (32 * arg4.length) + 160] = return_data.size
                mem[(32 * arg3.length) + (32 * arg4.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Fee transfer failed'
                if not msg.value:
                    idx = 0
                    s = 0
                    while idx < arg3.length:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] > 0
                        require idx < mem[(32 * arg3.length) + 128]
                        require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        _2592 = mem[(32 * idx) + 128]
                        _2643 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = _2592
                        _2644 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_2644 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2644 + 36 len 28]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        _2755 = mem[_2644]
                        t = _2644 + 32
                        u = mem[64]
                        s = mem[_2644]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_2644])] = mem[_2644 + floor32(mem[_2644]) + -(mem[_2644] % 32) + 64 len mem[_2644] % 32] or Mask(8 * -(mem[_2644] % 32) + 32, -(8 * -(mem[_2644] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2644])])
                        call arg1.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2755 + _2643 + -mem[64] + 128]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not mem[96]:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
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
                                stor42D7[stor202.length] = depositId + 1
                                mem[32] = 203
                                depositsByWithdrawal[address(arg2)].field_0++
                                mem[0] = sha3(address(arg2), 203)
                                depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                require idx < mem[96]
                                _6182 = mem[(32 * idx) + 128]
                                mem[mem[64]] = depositId + 1
                                mem[mem[64] + 32] = arg2
                                mem[mem[64] + 64] = _6182
                                emit 0xd9b31b2c: depositId + 1, address(arg2), _6182
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
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
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
                                stor42D7[stor202.length] = depositId + 1
                                mem[32] = 203
                                depositsByWithdrawal[address(arg2)].field_0++
                                mem[0] = sha3(address(arg2), 203)
                                depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                require idx < mem[96]
                                _6510 = mem[(32 * idx) + 128]
                                mem[mem[64]] = depositId + 1
                                mem[mem[64] + 32] = arg2
                                mem[mem[64] + 64] = _6510
                                emit 0xd9b31b2c: depositId + 1, address(arg2), _6510
                        else:
                            _4739 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4739] = return_data.size
                            mem[_4739 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
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
                                stor42D7[stor202.length] = depositId + 1
                                mem[32] = 203
                                depositsByWithdrawal[address(arg2)].field_0++
                                mem[0] = sha3(address(arg2), 203)
                                depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                require idx < mem[96]
                                _6189 = mem[(32 * idx) + 128]
                                mem[mem[64]] = depositId + 1
                                mem[mem[64] + 32] = arg2
                                mem[mem[64] + 64] = _6189
                                emit 0xd9b31b2c: depositId + 1, address(arg2), _6189
                            else:
                                require return_data.size >= 32
                                if not mem[_4739 + 32]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
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
                                stor42D7[stor202.length] = depositId + 1
                                mem[32] = 203
                                depositsByWithdrawal[address(arg2)].field_0++
                                mem[0] = sha3(address(arg2), 203)
                                depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                require idx < mem[96]
                                _6513 = mem[(32 * idx) + 128]
                                mem[mem[64]] = depositId + 1
                                mem[mem[64] + 32] = arg2
                                mem[mem[64] + 64] = _6513
                                emit 0xd9b31b2c: depositId + 1, address(arg2), _6513
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
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            _2593 = mem[(32 * idx) + 128]
                            _2646 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = _2593
                            _2647 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_2647 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2647 + 36 len 28]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _2759 = mem[_2647]
                            t = _2647 + 32
                            u = mem[64]
                            s = mem[_2647]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_2647])] = mem[_2647 + floor32(mem[_2647]) + -(mem[_2647] % 32) + 64 len mem[_2647] % 32] or Mask(8 * -(mem[_2647] % 32) + 32, -(8 * -(mem[_2647] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2647])])
                            call arg1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2759 + _2646 + -mem[64] + 128]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not mem[96]:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6196 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6196
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6196
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
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6516 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6516
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6516
                            else:
                                _4740 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_4740] = return_data.size
                                mem[_4740 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6203 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6203
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6203
                                else:
                                    require return_data.size >= 32
                                    if not mem[_4740 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6519 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6519
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6519
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
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            _2594 = mem[(32 * idx) + 128]
                            _2649 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = _2594
                            _2650 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_2650 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2650 + 36 len 28]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _2763 = mem[_2650]
                            t = _2650 + 32
                            u = mem[64]
                            s = mem[_2650]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_2650])] = mem[_2650 + floor32(mem[_2650]) + -(mem[_2650] % 32) + 64 len mem[_2650] % 32] or Mask(8 * -(mem[_2650] % 32) + 32, -(8 * -(mem[_2650] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2650])])
                            call arg1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2763 + _2649 + -mem[64] + 128]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not mem[96]:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6210 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6210
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6210
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
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6522 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6522
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6522
                            else:
                                _4741 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_4741] = return_data.size
                                mem[_4741 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6217 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6217
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6217
                                else:
                                    require return_data.size >= 32
                                    if not mem[_4741 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6525 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6525
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6525
                            idx = idx + 1
                            s = depositId + 1
                            continue 
        else:
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
                    if not msg.value:
                        idx = 0
                        s = 0
                        while idx < arg3.length:
                            require idx < mem[96]
                            require mem[(32 * idx) + 128] > 0
                            require idx < mem[(32 * arg3.length) + 128]
                            require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            _2583 = mem[(32 * idx) + 128]
                            _2616 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = _2583
                            _2617 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_2617 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2617 + 36 len 28]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _2719 = mem[_2617]
                            t = _2617 + 32
                            u = mem[64]
                            s = mem[_2617]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_2617])] = mem[_2617 + floor32(mem[_2617]) + -(mem[_2617] % 32) + 64 len mem[_2617] % 32] or Mask(8 * -(mem[_2617] % 32) + 32, -(8 * -(mem[_2617] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2617])])
                            call arg1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2719 + _2616 + -mem[64] + 128]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not mem[96]:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6056 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6056
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6056
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
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6456 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6456
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6456
                            else:
                                _4730 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_4730] = return_data.size
                                mem[_4730 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6063 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6063
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6063
                                else:
                                    require return_data.size >= 32
                                    if not mem[_4730 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6459 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6459
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6459
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
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[96]
                                _2584 = mem[(32 * idx) + 128]
                                _2619 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = _2584
                                _2620 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_2620 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2620 + 36 len 28]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _2723 = mem[_2620]
                                t = _2620 + 32
                                u = _2619 + 132
                                s = mem[_2620]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2619 + floor32(mem[_2620]) + 132] = mem[_2620 + -(mem[_2620] % 32) + floor32(mem[_2620]) + 64 len mem[_2620] % 32] or Mask(8 * -(mem[_2620] % 32) + 32, -(8 * -(mem[_2620] % 32) + 32) + 256, mem[_2619 + floor32(mem[_2620]) + 132])
                                call arg1.mem[_2619 + 132 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2619 + 136 len _2723 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not mem[96]:
                                        mem[_2619 + 136] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2619 + 132] = ext_call.return_data[0]
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6070 = mem[(32 * idx) + 128]
                                        mem[_2619 + 132] = depositId + 1
                                        mem[_2619 + 164] = arg2
                                        mem[_2619 + 196] = _6070
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6070
                                    else:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2619 + 242 len 22]
                                        mem[_2619 + 136] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2619 + 132] = ext_call.return_data[0]
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6462 = mem[(32 * idx) + 128]
                                        mem[_2619 + 132] = depositId + 1
                                        mem[_2619 + 164] = arg2
                                        mem[_2619 + 196] = _6462
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6462
                                else:
                                    mem[64] = _2619 + ceil32(return_data.size) + 133
                                    mem[_2619 + 132] = return_data.size
                                    mem[_2619 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        mem[_2619 + ceil32(return_data.size) + 137] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2619 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6077 = mem[(32 * idx) + 128]
                                        mem[_2619 + ceil32(return_data.size) + 133] = depositId + 1
                                        mem[_2619 + ceil32(return_data.size) + 165] = arg2
                                        mem[_2619 + ceil32(return_data.size) + 197] = _6077
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6077
                                    else:
                                        require return_data.size >= 32
                                        if not mem[_2619 + 164]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2619 + ceil32(return_data.size) + 243 len 22]
                                        mem[_2619 + ceil32(return_data.size) + 137] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2619 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6465 = mem[(32 * idx) + 128]
                                        mem[_2619 + ceil32(return_data.size) + 133] = depositId + 1
                                        mem[_2619 + ceil32(return_data.size) + 165] = arg2
                                        mem[_2619 + ceil32(return_data.size) + 197] = _6465
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6465
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
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[96]
                                _2585 = mem[(32 * idx) + 128]
                                _2622 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = _2585
                                _2623 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_2623 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2623 + 36 len 28]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _2727 = mem[_2623]
                                t = _2623 + 32
                                u = mem[64]
                                s = mem[_2623]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_2623])] = mem[_2623 + floor32(mem[_2623]) + -(mem[_2623] % 32) + 64 len mem[_2623] % 32] or Mask(8 * -(mem[_2623] % 32) + 32, -(8 * -(mem[_2623] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2623])])
                                call arg1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2727 + _2622 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not mem[96]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6084 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6084
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6084
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
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6468 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6468
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6468
                                else:
                                    _4732 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_4732] = return_data.size
                                    mem[_4732 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6091 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6091
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6091
                                    else:
                                        require return_data.size >= 32
                                        if not mem[_4732 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6471 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6471
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6471
                                idx = idx + 1
                                s = depositId + 1
                                continue 
                else:
                    mem[64] = (32 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 161
                    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = return_data.size
                    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Fee transfer failed'
                    if not msg.value:
                        idx = 0
                        s = 0
                        while idx < arg3.length:
                            require idx < mem[96]
                            require mem[(32 * idx) + 128] > 0
                            require idx < mem[(32 * arg3.length) + 128]
                            require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            _2586 = mem[(32 * idx) + 128]
                            _2625 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = _2586
                            _2626 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_2626 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2626 + 36 len 28]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _2731 = mem[_2626]
                            t = _2626 + 32
                            u = mem[64]
                            s = mem[_2626]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_2626])] = mem[_2626 + floor32(mem[_2626]) + -(mem[_2626] % 32) + 64 len mem[_2626] % 32] or Mask(8 * -(mem[_2626] % 32) + 32, -(8 * -(mem[_2626] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2626])])
                            call arg1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2731 + _2625 + -mem[64] + 128]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not mem[96]:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6098 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6098
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6098
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
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6474 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6474
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6474
                            else:
                                _4733 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_4733] = return_data.size
                                mem[_4733 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6105 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6105
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6105
                                else:
                                    require return_data.size >= 32
                                    if not mem[_4733 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6477 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6477
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6477
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
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[96]
                                _2587 = mem[(32 * idx) + 128]
                                _2628 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = _2587
                                _2629 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_2629 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2629 + 36 len 28]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _2735 = mem[_2629]
                                t = _2629 + 32
                                u = mem[64]
                                s = mem[_2629]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_2629])] = mem[_2629 + floor32(mem[_2629]) + -(mem[_2629] % 32) + 64 len mem[_2629] % 32] or Mask(8 * -(mem[_2629] % 32) + 32, -(8 * -(mem[_2629] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2629])])
                                call arg1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2735 + _2628 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not mem[96]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6112 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6112
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6112
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
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6480 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6480
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6480
                                else:
                                    _4734 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_4734] = return_data.size
                                    mem[_4734 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6119 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6119
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6119
                                    else:
                                        require return_data.size >= 32
                                        if not mem[_4734 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6483 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6483
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6483
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
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[96]
                                _2588 = mem[(32 * idx) + 128]
                                _2631 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = _2588
                                _2632 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_2632 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2632 + 36 len 28]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _2739 = mem[_2632]
                                t = _2632 + 32
                                u = mem[64]
                                s = mem[_2632]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_2632])] = mem[_2632 + floor32(mem[_2632]) + -(mem[_2632] % 32) + 64 len mem[_2632] % 32] or Mask(8 * -(mem[_2632] % 32) + 32, -(8 * -(mem[_2632] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2632])])
                                call arg1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2739 + _2631 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not mem[96]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6126 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6126
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6126
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
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6486 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6486
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6486
                                else:
                                    _4735 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_4735] = return_data.size
                                    mem[_4735 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6133 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6133
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6133
                                    else:
                                        require return_data.size >= 32
                                        if not mem[_4735 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6489 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6489
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6489
                                idx = idx + 1
                                s = depositId + 1
                                continue 
            else:
                if 10^18 * arg3.length * sub_76743b6b / 10^18 * sub_76743b6b != arg3.length:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * arg3.length) + (32 * arg4.length) + 261 len 31]
                if msg.value < 10^18 * arg3.length * sub_76743b6b:
                    revert with 0, 'Low fee amount'
                call companyWalletAddress with:
                   value 10^18 * arg3.length * sub_76743b6b wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Fee transfer failed'
                    if not msg.value - (10^18 * arg3.length * sub_76743b6b):
                        idx = 0
                        s = 0
                        while idx < arg3.length:
                            require idx < mem[96]
                            require mem[(32 * idx) + 128] > 0
                            require idx < mem[(32 * arg3.length) + 128]
                            require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            _2577 = mem[(32 * idx) + 128]
                            _2598 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = _2577
                            _2599 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_2599 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2599 + 36 len 28]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _2695 = mem[_2599]
                            t = _2599 + 32
                            u = _2598 + 132
                            s = mem[_2599]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_2598 + floor32(mem[_2599]) + 132] = mem[_2599 + -(mem[_2599] % 32) + floor32(mem[_2599]) + 64 len mem[_2599] % 32] or Mask(8 * -(mem[_2599] % 32) + 32, -(8 * -(mem[_2599] % 32) + 32) + 256, mem[_2598 + floor32(mem[_2599]) + 132])
                            call arg1.mem[_2598 + 132 len 4] with:
                                 gas gas_remaining wei
                                args mem[_2598 + 136 len _2695 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not mem[96]:
                                    mem[_2598 + 136] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2598 + 132] = ext_call.return_data[0]
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _5972 = mem[(32 * idx) + 128]
                                    mem[_2598 + 132] = depositId + 1
                                    mem[_2598 + 164] = arg2
                                    mem[_2598 + 196] = _5972
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _5972
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_2598 + 242 len 22]
                                    mem[_2598 + 136] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2598 + 132] = ext_call.return_data[0]
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6420 = mem[(32 * idx) + 128]
                                    mem[_2598 + 132] = depositId + 1
                                    mem[_2598 + 164] = arg2
                                    mem[_2598 + 196] = _6420
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6420
                            else:
                                mem[64] = _2598 + ceil32(return_data.size) + 133
                                mem[_2598 + 132] = return_data.size
                                mem[_2598 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    mem[_2598 + ceil32(return_data.size) + 137] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2598 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _5979 = mem[(32 * idx) + 128]
                                    mem[_2598 + ceil32(return_data.size) + 133] = depositId + 1
                                    mem[_2598 + ceil32(return_data.size) + 165] = arg2
                                    mem[_2598 + ceil32(return_data.size) + 197] = _5979
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _5979
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2598 + 164]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_2598 + ceil32(return_data.size) + 243 len 22]
                                    mem[_2598 + ceil32(return_data.size) + 137] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_2598 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6423 = mem[(32 * idx) + 128]
                                    mem[_2598 + ceil32(return_data.size) + 133] = depositId + 1
                                    mem[_2598 + ceil32(return_data.size) + 165] = arg2
                                    mem[_2598 + ceil32(return_data.size) + 197] = _6423
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6423
                            idx = idx + 1
                            s = depositId + 1
                            continue 
                    else:
                        call msg.sender with:
                           value msg.value - (10^18 * arg3.length * sub_76743b6b) wei
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
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[96]
                                _2578 = mem[(32 * idx) + 128]
                                _2601 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = _2578
                                _2602 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_2602 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2602 + 36 len 28]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _2699 = mem[_2602]
                                t = _2602 + 32
                                u = mem[64]
                                s = mem[_2602]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_2602])] = mem[_2602 + floor32(mem[_2602]) + -(mem[_2602] % 32) + 64 len mem[_2602] % 32] or Mask(8 * -(mem[_2602] % 32) + 32, -(8 * -(mem[_2602] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2602])])
                                call arg1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2699 + _2601 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not mem[96]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _5986 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _5986
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _5986
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
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6426 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6426
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6426
                                else:
                                    _4725 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_4725] = return_data.size
                                    mem[_4725 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _5993 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _5993
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _5993
                                    else:
                                        require return_data.size >= 32
                                        if not mem[_4725 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6429 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6429
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6429
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
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[96]
                                _2579 = mem[(32 * idx) + 128]
                                _2604 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = _2579
                                _2605 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_2605 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2605 + 36 len 28]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _2703 = mem[_2605]
                                t = _2605 + 32
                                u = mem[64]
                                s = mem[_2605]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_2605])] = mem[_2605 + floor32(mem[_2605]) + -(mem[_2605] % 32) + 64 len mem[_2605] % 32] or Mask(8 * -(mem[_2605] % 32) + 32, -(8 * -(mem[_2605] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2605])])
                                call arg1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2703 + _2604 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not mem[96]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6000 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6000
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6000
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
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6432 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6432
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6432
                                else:
                                    _4726 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_4726] = return_data.size
                                    mem[_4726 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6007 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6007
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6007
                                    else:
                                        require return_data.size >= 32
                                        if not mem[_4726 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6435 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6435
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6435
                                idx = idx + 1
                                s = depositId + 1
                                continue 
                else:
                    mem[64] = (32 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 161
                    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = return_data.size
                    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Fee transfer failed'
                    if not msg.value - (10^18 * arg3.length * sub_76743b6b):
                        idx = 0
                        s = 0
                        while idx < arg3.length:
                            require idx < mem[96]
                            require mem[(32 * idx) + 128] > 0
                            require idx < mem[(32 * arg3.length) + 128]
                            require mem[(32 * idx) + (32 * arg3.length) + 160] < 10^10
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require idx < mem[96]
                            _2580 = mem[(32 * idx) + 128]
                            _2607 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = _2580
                            _2608 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_2608 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2608 + 36 len 28]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(arg1):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _2707 = mem[_2608]
                            t = _2608 + 32
                            u = mem[64]
                            s = mem[_2608]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_2608])] = mem[_2608 + floor32(mem[_2608]) + -(mem[_2608] % 32) + 64 len mem[_2608] % 32] or Mask(8 * -(mem[_2608] % 32) + 32, -(8 * -(mem[_2608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2608])])
                            call arg1.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2707 + _2607 + -mem[64] + 128]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not mem[96]:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6014 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6014
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6014
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
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6438 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6438
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6438
                            else:
                                _4727 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_4727] = return_data.size
                                mem[_4727 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6021 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6021
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6021
                                else:
                                    require return_data.size >= 32
                                    if not mem[_4727 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(arg1)
                                    staticcall arg1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
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
                                    stor42D7[stor202.length] = depositId + 1
                                    mem[32] = 203
                                    depositsByWithdrawal[address(arg2)].field_0++
                                    mem[0] = sha3(address(arg2), 203)
                                    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                    require idx < mem[96]
                                    _6441 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = depositId + 1
                                    mem[mem[64] + 32] = arg2
                                    mem[mem[64] + 64] = _6441
                                    emit 0xd9b31b2c: depositId + 1, address(arg2), _6441
                            idx = idx + 1
                            s = depositId + 1
                            continue 
                    else:
                        call msg.sender with:
                           value msg.value - (10^18 * arg3.length * sub_76743b6b) wei
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
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[96]
                                _2581 = mem[(32 * idx) + 128]
                                _2610 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = _2581
                                _2611 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_2611 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2611 + 36 len 28]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _2711 = mem[_2611]
                                t = _2611 + 32
                                u = mem[64]
                                s = mem[_2611]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_2611])] = mem[_2611 + floor32(mem[_2611]) + -(mem[_2611] % 32) + 64 len mem[_2611] % 32] or Mask(8 * -(mem[_2611] % 32) + 32, -(8 * -(mem[_2611] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2611])])
                                call arg1.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2711 + _2610 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not mem[96]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6028 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6028
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6028
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
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6444 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6444
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6444
                                else:
                                    _4728 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_4728] = return_data.size
                                    mem[_4728 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6035 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6035
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6035
                                    else:
                                        require return_data.size >= 32
                                        if not mem[_4728 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6447 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = depositId + 1
                                        mem[mem[64] + 32] = arg2
                                        mem[mem[64] + 64] = _6447
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6447
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
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < mem[96]
                                _2582 = mem[(32 * idx) + 128]
                                _2613 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = _2582
                                _2614 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_2614 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2614 + 36 len 28]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(arg1):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _2715 = mem[_2614]
                                t = _2614 + 32
                                u = _2613 + 132
                                s = mem[_2614]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2613 + floor32(mem[_2614]) + 132] = mem[_2614 + -(mem[_2614] % 32) + floor32(mem[_2614]) + 64 len mem[_2614] % 32] or Mask(8 * -(mem[_2614] % 32) + 32, -(8 * -(mem[_2614] % 32) + 32) + 256, mem[_2613 + floor32(mem[_2614]) + 132])
                                call arg1.mem[_2613 + 132 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2613 + 136 len _2715 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not mem[96]:
                                        mem[_2613 + 136] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2613 + 132] = ext_call.return_data[0]
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6042 = mem[(32 * idx) + 128]
                                        mem[_2613 + 132] = depositId + 1
                                        mem[_2613 + 164] = arg2
                                        mem[_2613 + 196] = _6042
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6042
                                    else:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2613 + 242 len 22]
                                        mem[_2613 + 136] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2613 + 132] = ext_call.return_data[0]
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6450 = mem[(32 * idx) + 128]
                                        mem[_2613 + 132] = depositId + 1
                                        mem[_2613 + 164] = arg2
                                        mem[_2613 + 196] = _6450
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6450
                                else:
                                    mem[64] = _2613 + ceil32(return_data.size) + 133
                                    mem[_2613 + 132] = return_data.size
                                    mem[_2613 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        mem[_2613 + ceil32(return_data.size) + 137] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2613 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6049 = mem[(32 * idx) + 128]
                                        mem[_2613 + ceil32(return_data.size) + 133] = depositId + 1
                                        mem[_2613 + ceil32(return_data.size) + 165] = arg2
                                        mem[_2613 + ceil32(return_data.size) + 197] = _6049
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6049
                                    else:
                                        require return_data.size >= 32
                                        if not mem[_2613 + 164]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2613 + ceil32(return_data.size) + 243 len 22]
                                        mem[_2613 + ceil32(return_data.size) + 137] = this.address
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_2613 + ceil32(return_data.size) + 133] = ext_call.return_data[0]
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
                                        stor42D7[stor202.length] = depositId + 1
                                        mem[32] = 203
                                        depositsByWithdrawal[address(arg2)].field_0++
                                        mem[0] = sha3(address(arg2), 203)
                                        depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
                                        require idx < mem[96]
                                        _6453 = mem[(32 * idx) + 128]
                                        mem[_2613 + ceil32(return_data.size) + 133] = depositId + 1
                                        mem[_2613 + ceil32(return_data.size) + 165] = arg2
                                        mem[_2613 + ceil32(return_data.size) + 197] = _6453
                                        emit 0xd9b31b2c: depositId + 1, address(arg2), _6453
                                idx = idx + 1
                                s = depositId + 1
                                continue 
    return s
}



}
