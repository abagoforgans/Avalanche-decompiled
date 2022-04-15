contract main {




// =====================  Runtime code  =====================


#
#  - executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5)
#  - sub_e5699bb7(?)
#
const MAXIMUM_DELAY = (720 * 24 * 3600)

const MINIMUM_DELAY = (24 * 3600)

const GRACE_PERIOD = (336 * 24 * 3600)


address owner;
uint128 stor1; offset 160
address adminAddress;
uint256 stor1;
address pendingAdminAddress;
uint256 delay;
uint8 stor4;
mapping of uint8 stor5;
uint8 stor6;
address sub_92f2cff0Address; offset 8
address sub_a66e4e5fAddress;
uint8 stor8; offset 160
uint128 stor8; offset 160
address serviceAddress;
array of struct poolInfo;
mapping of uint256 userInfo;

function poolInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536
}

function sub_15345d73(?) {
    return bool(uint8(stor8.field_160))
}

function pendingAdmin() {
    return pendingAdminAddress
}

function delay() {
    return delay
}

function admin_initialized() {
    return bool(stor4)
}

function serviceAddress() {
    return serviceAddress
}

function owner() {
    return owner
}

function sub_92f2cff0(?) {
    return sub_92f2cff0Address
}

function userInfo(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2]
}

function sub_a66e4e5f(?) {
    return sub_a66e4e5fAddress
}

function queuedTransactions(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function admin() {
    return adminAddress
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

function updateDrainAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_92f2cff0Address = arg1
}

function updateCustodian(address arg1) {
    require calldata.size - 4 >= 32
    if sub_a66e4e5fAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'not updater'
    sub_a66e4e5fAddress = arg1
}

function sub_347f2586(?) {
    require calldata.size - 4 >= 32
    if sub_a66e4e5fAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'not updater'
    Mask(96, 0, stor8.field_160) = Mask(96, 0, arg1)
}

function sub_dcfd83e0(?) {
    require calldata.size - 4 >= 32
    if serviceAddress != msg.sender:
        if sub_a66e4e5fAddress != msg.sender:
            if owner != msg.sender:
                revert with 0, 'not service'
    serviceAddress = arg1
}

function sub_2f42a8d2(?) {
    require calldata.size - 4 >= 96
    if serviceAddress != msg.sender:
        if sub_a66e4e5fAddress != msg.sender:
            if owner != msg.sender:
                revert with 0, 'not service'
    require arg1 < poolInfo.length
    poolInfo[arg1].field_768 = arg2
    poolInfo[arg1].field_1536 = arg3
}

function acceptAdmin() {
    if pendingAdminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7754696d656c6f636b3a3a61636365707441646d696e3a2043616c6c206d75737420636f6d652066726f6d2070656e64696e6741646d696e,
                    mem[220 len 8]
    uint256(stor1.field_0) = Mask(96, 0, stor1.field_160)
    pendingAdminAddress = 0
    emit NewAdmin(msg.sender);
}

function transfer(uint256 arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not stor6:
        revert with 0, '.ReentrancyGuard: reentrant call'
    stor6 = 0
    if arg2 > userInfo[arg1][msg.sender]:
        revert with 0, 'not enough shares'
    userInfo[arg1][msg.sender] -= arg2
    if userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender] - arg2:
        revert with 0, 'SafeMath: addition overflow'
    userInfo[arg1][arg3] = userInfo[arg1][msg.sender]
    stor6 = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_7ab98b04(?) {
    require calldata.size - 4 >= 64
    if serviceAddress != msg.sender:
        if sub_a66e4e5fAddress != msg.sender:
            if owner != msg.sender:
                revert with 0, 'not service'
    require arg1 < poolInfo.length
    require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
    delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x18f1f18b with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function setPendingAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if stor4:
        if msg.sender != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        56,
                        0x2e54696d656c6f636b3a3a73657450656e64696e6741646d696e3a2043616c6c206d75737420636f6d652066726f6d2054696d656c6f636b,
                        mem[220 len 8]
    else:
        if adminAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        59,
                        0x2e54696d656c6f636b3a3a73657450656e64696e6741646d696e3a2046697273742063616c6c206d75737420636f6d652066726f6d2061646d696e,
                        mem[223 len 5]
        stor4 = 1
    pendingAdminAddress = arg1
    emit NewPendingAdmin(arg1);
}

function setDelay(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x6454696d656c6f636b3a3a73657444656c61793a2043616c6c206d75737420636f6d652066726f6d2054696d656c6f636b,
                    mem[213 len 15]
    if arg1 < 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x2e54696d656c6f636b3a3a73657444656c61793a2044656c6179206d75737420657863656564206d696e696d756d2064656c6179,
                    mem[216 len 12]
    if arg1 > 720 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x2e54696d656c6f636b3a3a73657444656c61793a2044656c6179206d757374206e6f7420657863656564206d6178696d756d2064656c6179,
                    mem[220 len 8]
    delay = arg1
    emit NewDelay(arg1);
}

function sub_f9c516ea(?) {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
    delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0, poolInfo[arg1].field_512
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not poolInfo[arg1].field_1024:
        return 0
    if not userInfo[arg1][address(arg2)]:
        if not poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: division by zero'
        return (0 / poolInfo[arg1].field_1024)
    if delegate.return_data[0] * userInfo[arg1][address(arg2)] / userInfo[arg1][address(arg2)] != delegate.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not poolInfo[arg1].field_1024:
        revert with 0, 'SafeMath: division by zero'
    return (delegate.return_data[0] * userInfo[arg1][address(arg2)] / poolInfo[arg1].field_1024)
}

function sub_7afec48b(?) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < poolInfo.length
    if arg5:
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x3b2a018c with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_512, poolInfo[arg1].field_1280
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x434857c7 with:
             gas gas_remaining wei
            args address(arg2), arg4
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(delegate.return_data[0]))
        staticcall address(delegate.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x7b0b708a with:
             gas gas_remaining wei
            args address(arg2), arg4, ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    poolInfo[arg1].field_512 = arg4
    poolInfo[arg1].field_0 = arg2
    poolInfo[arg1].field_256 = arg3
    emit 0xb4a53f1d: arg1
}

function withdraw(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor6:
        revert with 0, '.ReentrancyGuard: reentrant call'
    stor6 = 0
    if not arg2:
        revert with 0, 'amount must be greater than zero'
    require arg1 < poolInfo.length
    require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
    delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0, poolInfo[arg1].field_512
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
    delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x3b2a018c with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0, poolInfo[arg1].field_512, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
    delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0, poolInfo[arg1].field_512
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] > delegate.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not delegate.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if userInfo[arg1][msg.sender] < 0 / delegate.return_data[0]:
        revert with 0, 'withdraw: not good'
    if 0 / delegate.return_data[0] > userInfo[arg1][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    userInfo[arg1][msg.sender] -= 0 / delegate.return_data[0]
    if 0 / delegate.return_data[0] > poolInfo[arg1].field_1024:
        revert with 0, 'SafeMath: subtraction overflow'
    poolInfo[arg1].field_1024 -= 0 / delegate.return_data[0]
    poolInfo[arg1].field_1280 = delegate.return_data[0]
    require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
    delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x434857c7 with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0, poolInfo[arg1].field_512
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(address(delegate.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    mem[580 len 0] = 0
    call address(delegate.return_data[0]) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[580 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[548]:
            revert with 0, 
                        32,
                        42,
                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 627 len 22]
    emit Withdraw(arg2, msg.sender, arg1);
    stor6 = 1
}

function sub_f276eef1(?) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = 0
    if msg.sender == sub_a66e4e5fAddress:
        idx = 0
        while idx < arg3.length:
            _76 = mem[64]
            mem[64] = mem[64] + 224
            mem[_76] = arg1
            mem[_76 + 32] = arg2
            require idx < mem[96]
            mem[_76 + 64] = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            mem[_76 + 96] = mem[(32 * idx) + (32 * arg3.length) + 160]
            mem[_76 + 128] = 0
            mem[_76 + 160] = 0
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            mem[_76 + 192] = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
            poolInfo.length++
            mem[0] = 9
            poolInfo[poolInfo.length].field_0 = arg1
            poolInfo[poolInfo.length].field_256 = arg2
            poolInfo[poolInfo.length].field_512 = mem[_76 + 64]
            poolInfo[poolInfo.length].field_768 = mem[_76 + 96]
            poolInfo[poolInfo.length].field_1024 = 0
            poolInfo[poolInfo.length].field_1280 = 0
            poolInfo[poolInfo.length].field_1536 = mem[_76 + 192]
            idx = idx + 1
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'not updater'
        idx = 0
        while idx < arg3.length:
            _78 = mem[64]
            mem[64] = mem[64] + 224
            mem[_78] = arg1
            mem[_78 + 32] = arg2
            require idx < mem[96]
            mem[_78 + 64] = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            mem[_78 + 96] = mem[(32 * idx) + (32 * arg3.length) + 160]
            mem[_78 + 128] = 0
            mem[_78 + 160] = 0
            require idx < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            mem[_78 + 192] = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
            poolInfo.length++
            mem[0] = 9
            poolInfo[poolInfo.length].field_0 = arg1
            poolInfo[poolInfo.length].field_256 = arg2
            poolInfo[poolInfo.length].field_512 = mem[_78 + 64]
            poolInfo[poolInfo.length].field_768 = mem[_78 + 96]
            poolInfo[poolInfo.length].field_1024 = 0
            poolInfo[poolInfo.length].field_1280 = 0
            poolInfo[poolInfo.length].field_1536 = mem[_78 + 192]
            idx = idx + 1
            continue 
    mem[mem[64]] = 30
    if 1 > poolInfo.length:
        revert with 0, 'SafeMath: subtraction overflow'
    if mem[96] > poolInfo.length:
        revert with 0, 'SafeMath: subtraction overflow'
    emit 0x25e2ced4: poolInfo.length - mem[96], poolInfo.length - 1
}

function sub_5aaa3c9a(?) {
    require calldata.size - 4 >= 128
    if not stor6:
        revert with 0, '.ReentrancyGuard: reentrant call'
    stor6 = 0
    require arg2 < poolInfo.length
    require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
    delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
         gas gas_remaining wei
        args poolInfo[arg2].field_0, poolInfo[arg2].field_512
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
    delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x3b2a018c with:
         gas gas_remaining wei
        args poolInfo[arg2].field_0, poolInfo[arg2].field_512, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
    delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
         gas gas_remaining wei
        args poolInfo[arg2].field_0, poolInfo[arg2].field_512
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] > delegate.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not delegate.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if userInfo[arg2][msg.sender] < 0 / delegate.return_data[0]:
        revert with 0, 'withdraw: not good'
    if 0 / delegate.return_data[0] > userInfo[arg2][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    userInfo[arg2][msg.sender] -= 0 / delegate.return_data[0]
    if 0 / delegate.return_data[0] > poolInfo[arg2].field_1024:
        revert with 0, 'SafeMath: subtraction overflow'
    poolInfo[arg2].field_1024 -= 0 / delegate.return_data[0]
    poolInfo[arg2].field_1280 = delegate.return_data[0]
    require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
    delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x434857c7 with:
         gas gas_remaining wei
        args poolInfo[arg2].field_0, poolInfo[arg2].field_512
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(address(delegate.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[516 len 64] = unknown_0xa9059cbb(?????), poolInfo[arg2].field_256, poolInfo[arg2].field_256, Mask(224, 32, arg3) >> 32
    call address(delegate.return_data[0]) with:
       funct poolInfo[arg2].field_256
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[580 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[548]:
            revert with 0, 
                        32,
                        42,
                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 627 len 22]
    require ext_code.size(poolInfo[arg2].field_256)
    call poolInfo[arg2].field_256.0x9b17ec50 with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3, arg4, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg4:
        revert with 0, 32, 35, 0x2e616d6f756e74206d7573742062652067726561746572207468616e206d696e696d75, Mask(232, 0, arg4)
    emit 0xe3fa7e1b: arg3, ext_call.return_data[0], msg.sender, arg2, arg1
    stor6 = 1
}

function sub_db01cd1b(?) {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not stor6:
        revert with 0, '.ReentrancyGuard: reentrant call'
    stor6 = 0
    require arg3 < poolInfo.length
    require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
    delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
         gas gas_remaining wei
        args poolInfo[arg3].field_0, poolInfo[arg3].field_512
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
    delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x3b2a018c with:
         gas gas_remaining wei
        args poolInfo[arg3].field_0, poolInfo[arg3].field_512, arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
    delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
         gas gas_remaining wei
        args poolInfo[arg3].field_0, poolInfo[arg3].field_512
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] > delegate.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not delegate.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if userInfo[arg3][msg.sender] < 0 / delegate.return_data[0]:
        revert with 0, 'withdraw: not good'
    if 0 / delegate.return_data[0] > userInfo[arg3][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    userInfo[arg3][msg.sender] -= 0 / delegate.return_data[0]
    if 0 / delegate.return_data[0] > poolInfo[arg3].field_1024:
        revert with 0, 'SafeMath: subtraction overflow'
    poolInfo[arg3].field_1024 -= 0 / delegate.return_data[0]
    poolInfo[arg3].field_1280 = delegate.return_data[0]
    require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
    delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x434857c7 with:
         gas gas_remaining wei
        args poolInfo[arg3].field_0, poolInfo[arg3].field_512
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(address(delegate.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[516 len 64] = unknown_0xa9059cbb(?????), poolInfo[arg3].field_256, poolInfo[arg3].field_256, Mask(224, 32, arg4) >> 32
    call address(delegate.return_data[0]) with:
       funct poolInfo[arg3].field_256
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 224, mem[580 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[548]:
            revert with 0, 
                        32,
                        42,
                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 627 len 22]
    require ext_code.size(poolInfo[arg3].field_256)
    call poolInfo[arg3].field_256.0x92e75309 with:
         gas gas_remaining wei
        args address(arg1), Array(len=arg2.length, data=arg2[all]), arg3, arg4, arg5, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg5:
        revert with 0, 32, 35, 0x2e616d6f756e74206d7573742062652067726561746572207468616e206d696e696d75, Mask(232, 0, arg4)
    emit 0x261cf047: arg4, ext_call.return_data[0], msg.sender, arg3, arg1
    stor6 = 1
}

function sub_cb2a2525(?) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _44 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _46 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg3.length
        _48 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require idx < arg4.length
        _50 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        require idx < arg5.length
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        require mem[(32 * idx) + 128] < poolInfo.length
        if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]:
            poolInfo[mem[(32 * idx) + 128]].field_512 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
            poolInfo[mem[(32 * idx) + 128]].field_0 = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            mem[0] = 9
            poolInfo[mem[(32 * idx) + 128]].field_256 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
            emit 0xb4a53f1d: mem[(32 * idx) + 128]
        else:
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 260] = poolInfo[mem[(32 * idx) + 128]].field_0
            require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
            delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x3b2a018c with:
                 gas gas_remaining wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 260], poolInfo[_44].field_512, poolInfo[_44].field_1280
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
            delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x434857c7 with:
                 gas gas_remaining wei
                args address(_46), _50
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(delegate.return_data[0]))
            staticcall address(delegate.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = 0x7b0b708a00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 260] = address(_46)
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 292] = _50
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 324] = ext_call.return_data[0]
            require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
            delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x7b0b708a with:
                 gas gas_remaining wei
                args address(_46), _50, ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require _44 < poolInfo.length
            poolInfo[_44].field_512 = _50
            poolInfo[_44].field_0 = address(_46)
            mem[0] = 9
            poolInfo[_44].field_256 = address(_48)
            emit 0xb4a53f1d: _44
        idx = idx + 1
        continue 
}

function deposit(uint256 arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not stor6:
        revert with 0, '.ReentrancyGuard: reentrant call'
    stor6 = 0
    if not arg2:
        revert with 0, 'amount must be greater than zero'
    require arg1 < poolInfo.length
    require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
    delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x434857c7 with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0, poolInfo[arg1].field_512
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(address(delegate.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    call address(delegate.return_data[0]) with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require arg1 < poolInfo.length
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x7b0b708a with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_512, arg2
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not poolInfo[arg1].field_1024:
            if delegate.return_data[0] + userInfo[arg1][address(arg3)] < userInfo[arg1][address(arg3)]:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg1][address(arg3)] += delegate.return_data[0]
            if delegate.return_data[0] + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[arg1].field_1024 += delegate.return_data[0]
        else:
            if delegate.return_data[0] > delegate.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not delegate.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if poolInfo[arg1].field_1536 > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / delegate.return_data[0]:
                if userInfo[arg1][address(arg3)] < userInfo[arg1][address(arg3)]:
                    revert with 0, 'SafeMath: addition overflow'
                if poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1536 * 0 / delegate.return_data[0]) / 0 / delegate.return_data[0] != -poolInfo[arg1].field_1536 + 10000:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[585 len 31]
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1536 * 0 / delegate.return_data[0]) / 10000) + userInfo[arg1][address(arg3)] < userInfo[arg1][address(arg3)]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][address(arg3)] += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1536 * 0 / delegate.return_data[0]) / 10000
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1536 * 0 / delegate.return_data[0]) / 10000) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_1024 += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1536 * 0 / delegate.return_data[0]) / 10000
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        require arg1 < poolInfo.length
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x7b0b708a with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_512, arg2
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not poolInfo[arg1].field_1024:
            if delegate.return_data[0] + userInfo[arg1][address(arg3)] < userInfo[arg1][address(arg3)]:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg1][address(arg3)] += delegate.return_data[0]
            if delegate.return_data[0] + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[arg1].field_1024 += delegate.return_data[0]
        else:
            if delegate.return_data[0] > delegate.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not delegate.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if poolInfo[arg1].field_1536 > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / delegate.return_data[0]:
                if userInfo[arg1][address(arg3)] < userInfo[arg1][address(arg3)]:
                    revert with 0, 'SafeMath: addition overflow'
                if poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1536 * 0 / delegate.return_data[0]) / 0 / delegate.return_data[0] != -poolInfo[arg1].field_1536 + 10000:
                    revert with 0, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 586 len 31]
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1536 * 0 / delegate.return_data[0]) / 10000) + userInfo[arg1][address(arg3)] < userInfo[arg1][address(arg3)]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][address(arg3)] += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1536 * 0 / delegate.return_data[0]) / 10000
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1536 * 0 / delegate.return_data[0]) / 10000) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_1024 += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1536 * 0 / delegate.return_data[0]) / 10000
    poolInfo[arg1].field_1280 = delegate.return_data[0]
    emit Deposit(arg2, arg3, arg1);
    stor6 = 1
}

function deposit(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor6:
        revert with 0, '.ReentrancyGuard: reentrant call'
    stor6 = 0
    if not arg2:
        revert with 0, 'amount must be greater than zero'
    require arg1 < poolInfo.length
    require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
    delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x434857c7 with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0, poolInfo[arg1].field_512
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(address(delegate.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    call address(delegate.return_data[0]) with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require arg1 < poolInfo.length
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x7b0b708a with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_512, arg2
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not poolInfo[arg1].field_1024:
            if delegate.return_data[0] + userInfo[arg1][address(msg.sender)] < userInfo[arg1][address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg1][address(msg.sender)] += delegate.return_data[0]
            if delegate.return_data[0] + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[arg1].field_1024 += delegate.return_data[0]
        else:
            if delegate.return_data[0] > delegate.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not delegate.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if poolInfo[arg1].field_1536 > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / delegate.return_data[0]:
                if userInfo[arg1][address(msg.sender)] < userInfo[arg1][address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1536 * 0 / delegate.return_data[0]) / 0 / delegate.return_data[0] != -poolInfo[arg1].field_1536 + 10000:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[585 len 31]
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1536 * 0 / delegate.return_data[0]) / 10000) + userInfo[arg1][address(msg.sender)] < userInfo[arg1][address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][address(msg.sender)] += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1536 * 0 / delegate.return_data[0]) / 10000
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1536 * 0 / delegate.return_data[0]) / 10000) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_1024 += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1536 * 0 / delegate.return_data[0]) / 10000
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        require arg1 < poolInfo.length
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x7b0b708a with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_512, arg2
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg1].field_0, poolInfo[arg1].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not poolInfo[arg1].field_1024:
            if delegate.return_data[0] + userInfo[arg1][address(msg.sender)] < userInfo[arg1][address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg1][address(msg.sender)] += delegate.return_data[0]
            if delegate.return_data[0] + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[arg1].field_1024 += delegate.return_data[0]
        else:
            if delegate.return_data[0] > delegate.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not delegate.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if poolInfo[arg1].field_1536 > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / delegate.return_data[0]:
                if userInfo[arg1][address(msg.sender)] < userInfo[arg1][address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1536 * 0 / delegate.return_data[0]) / 0 / delegate.return_data[0] != -poolInfo[arg1].field_1536 + 10000:
                    revert with 0, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 586 len 31]
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1536 * 0 / delegate.return_data[0]) / 10000) + userInfo[arg1][address(msg.sender)] < userInfo[arg1][address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][address(msg.sender)] += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1536 * 0 / delegate.return_data[0]) / 10000
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1536 * 0 / delegate.return_data[0]) / 10000) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_1024 += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg1].field_1536 * 0 / delegate.return_data[0]) / 10000
    poolInfo[arg1].field_1280 = delegate.return_data[0]
    emit Deposit(arg2, msg.sender, arg1);
    stor6 = 1
}

function sub_7a78cf69(?) {
    require calldata.size - 4 >= 160
    if not stor6:
        revert with 0, '.ReentrancyGuard: reentrant call'
    stor6 = 0
    require arg2 < poolInfo.length
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, poolInfo[arg2].field_256, Mask(224, 32, arg3) >> 32
    mem[416 len 4] = 0
    call arg1 with:
       funct poolInfo[arg2].field_256
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, poolInfo[arg2].field_256, arg3
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require ext_code.size(poolInfo[arg2].field_256)
        call poolInfo[arg2].field_256.0x7b15d623 with:
             gas gas_remaining wei
            args address(arg1), poolInfo[arg2].field_512, arg3, arg4, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg4:
            revert with 0, 32, 35, 0x2e616d6f756e74206d7573742062652067726561746572207468616e206d696e696d75, Mask(232, 0, arg4)
        require arg2 < poolInfo.length
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg2].field_0, poolInfo[arg2].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x7b0b708a with:
             gas gas_remaining wei
            args poolInfo[arg2].field_0, poolInfo[arg2].field_512, ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg2].field_0, poolInfo[arg2].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not poolInfo[arg2].field_1024:
            if delegate.return_data[0] + userInfo[arg2][address(arg5)] < userInfo[arg2][address(arg5)]:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg2][address(arg5)] += delegate.return_data[0]
            if delegate.return_data[0] + poolInfo[arg2].field_1024 < poolInfo[arg2].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[arg2].field_1024 += delegate.return_data[0]
        else:
            if delegate.return_data[0] > delegate.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not delegate.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if poolInfo[arg2].field_1536 > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / delegate.return_data[0]:
                if userInfo[arg2][address(arg5)] < userInfo[arg2][address(arg5)]:
                    revert with 0, 'SafeMath: addition overflow'
                if poolInfo[arg2].field_1024 < poolInfo[arg2].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg2].field_1536 * 0 / delegate.return_data[0]) / 0 / delegate.return_data[0] != -poolInfo[arg2].field_1536 + 10000:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[585 len 31]
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg2].field_1536 * 0 / delegate.return_data[0]) / 10000) + userInfo[arg2][address(arg5)] < userInfo[arg2][address(arg5)]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg2][address(arg5)] += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg2].field_1536 * 0 / delegate.return_data[0]) / 10000
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg2].field_1536 * 0 / delegate.return_data[0]) / 10000) + poolInfo[arg2].field_1024 < poolInfo[arg2].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg2].field_1024 += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg2].field_1536 * 0 / delegate.return_data[0]) / 10000
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        require ext_code.size(poolInfo[arg2].field_256)
        call poolInfo[arg2].field_256.0x7b15d623 with:
             gas gas_remaining wei
            args address(arg1), poolInfo[arg2].field_512, arg3, arg4, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg4:
            revert with 0, 32, 35, 0x2e616d6f756e74206d7573742062652067726561746572207468616e206d696e696d75, Mask(232, 0, arg4)
        require arg2 < poolInfo.length
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg2].field_0, poolInfo[arg2].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x7b0b708a with:
             gas gas_remaining wei
            args poolInfo[arg2].field_0, poolInfo[arg2].field_512, ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg2].field_0, poolInfo[arg2].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not poolInfo[arg2].field_1024:
            if delegate.return_data[0] + userInfo[arg2][address(arg5)] < userInfo[arg2][address(arg5)]:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg2][address(arg5)] += delegate.return_data[0]
            if delegate.return_data[0] + poolInfo[arg2].field_1024 < poolInfo[arg2].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[arg2].field_1024 += delegate.return_data[0]
        else:
            if delegate.return_data[0] > delegate.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not delegate.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if poolInfo[arg2].field_1536 > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / delegate.return_data[0]:
                if userInfo[arg2][address(arg5)] < userInfo[arg2][address(arg5)]:
                    revert with 0, 'SafeMath: addition overflow'
                if poolInfo[arg2].field_1024 < poolInfo[arg2].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg2].field_1536 * 0 / delegate.return_data[0]) / 0 / delegate.return_data[0] != -poolInfo[arg2].field_1536 + 10000:
                    revert with 0, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 586 len 31]
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg2].field_1536 * 0 / delegate.return_data[0]) / 10000) + userInfo[arg2][address(arg5)] < userInfo[arg2][address(arg5)]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg2][address(arg5)] += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg2].field_1536 * 0 / delegate.return_data[0]) / 10000
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg2].field_1536 * 0 / delegate.return_data[0]) / 10000) + poolInfo[arg2].field_1024 < poolInfo[arg2].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg2].field_1024 += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg2].field_1536 * 0 / delegate.return_data[0]) / 10000
    poolInfo[arg2].field_1280 = delegate.return_data[0]
    emit 0x2683a2cb: arg3, ext_call.return_data[0], arg5, arg2, arg1
    stor6 = 1
}

function sub_4eb21452(?) {
    require calldata.size - 4 >= 128
    if not stor6:
        revert with 0, '.ReentrancyGuard: reentrant call'
    stor6 = 0
    require arg2 < poolInfo.length
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, poolInfo[arg2].field_256, Mask(224, 32, arg3) >> 32
    mem[416 len 4] = 0
    call arg1 with:
       funct poolInfo[arg2].field_256
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, poolInfo[arg2].field_256, arg3
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require ext_code.size(poolInfo[arg2].field_256)
        call poolInfo[arg2].field_256.0x7b15d623 with:
             gas gas_remaining wei
            args address(arg1), poolInfo[arg2].field_512, arg3, arg4, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg4:
            revert with 0, 32, 35, 0x2e616d6f756e74206d7573742062652067726561746572207468616e206d696e696d75, Mask(232, 0, arg4)
        require arg2 < poolInfo.length
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg2].field_0, poolInfo[arg2].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x7b0b708a with:
             gas gas_remaining wei
            args poolInfo[arg2].field_0, poolInfo[arg2].field_512, ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg2].field_0, poolInfo[arg2].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not poolInfo[arg2].field_1024:
            if delegate.return_data[0] + userInfo[arg2][address(msg.sender)] < userInfo[arg2][address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg2][address(msg.sender)] += delegate.return_data[0]
            if delegate.return_data[0] + poolInfo[arg2].field_1024 < poolInfo[arg2].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[arg2].field_1024 += delegate.return_data[0]
        else:
            if delegate.return_data[0] > delegate.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not delegate.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if poolInfo[arg2].field_1536 > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / delegate.return_data[0]:
                if userInfo[arg2][address(msg.sender)] < userInfo[arg2][address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if poolInfo[arg2].field_1024 < poolInfo[arg2].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg2].field_1536 * 0 / delegate.return_data[0]) / 0 / delegate.return_data[0] != -poolInfo[arg2].field_1536 + 10000:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[585 len 31]
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg2].field_1536 * 0 / delegate.return_data[0]) / 10000) + userInfo[arg2][address(msg.sender)] < userInfo[arg2][address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg2][address(msg.sender)] += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg2].field_1536 * 0 / delegate.return_data[0]) / 10000
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg2].field_1536 * 0 / delegate.return_data[0]) / 10000) + poolInfo[arg2].field_1024 < poolInfo[arg2].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg2].field_1024 += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg2].field_1536 * 0 / delegate.return_data[0]) / 10000
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        require ext_code.size(poolInfo[arg2].field_256)
        call poolInfo[arg2].field_256.0x7b15d623 with:
             gas gas_remaining wei
            args address(arg1), poolInfo[arg2].field_512, arg3, arg4, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg4:
            revert with 0, 32, 35, 0x2e616d6f756e74206d7573742062652067726561746572207468616e206d696e696d75, Mask(232, 0, arg4)
        require arg2 < poolInfo.length
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg2].field_0, poolInfo[arg2].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x7b0b708a with:
             gas gas_remaining wei
            args poolInfo[arg2].field_0, poolInfo[arg2].field_512, ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg2].field_0, poolInfo[arg2].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not poolInfo[arg2].field_1024:
            if delegate.return_data[0] + userInfo[arg2][address(msg.sender)] < userInfo[arg2][address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg2][address(msg.sender)] += delegate.return_data[0]
            if delegate.return_data[0] + poolInfo[arg2].field_1024 < poolInfo[arg2].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[arg2].field_1024 += delegate.return_data[0]
        else:
            if delegate.return_data[0] > delegate.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not delegate.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if poolInfo[arg2].field_1536 > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / delegate.return_data[0]:
                if userInfo[arg2][address(msg.sender)] < userInfo[arg2][address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if poolInfo[arg2].field_1024 < poolInfo[arg2].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg2].field_1536 * 0 / delegate.return_data[0]) / 0 / delegate.return_data[0] != -poolInfo[arg2].field_1536 + 10000:
                    revert with 0, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 586 len 31]
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg2].field_1536 * 0 / delegate.return_data[0]) / 10000) + userInfo[arg2][address(msg.sender)] < userInfo[arg2][address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg2][address(msg.sender)] += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg2].field_1536 * 0 / delegate.return_data[0]) / 10000
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg2].field_1536 * 0 / delegate.return_data[0]) / 10000) + poolInfo[arg2].field_1024 < poolInfo[arg2].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg2].field_1024 += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg2].field_1536 * 0 / delegate.return_data[0]) / 10000
    poolInfo[arg2].field_1280 = delegate.return_data[0]
    emit 0x2683a2cb: arg3, ext_call.return_data[0], msg.sender, arg2, arg1
    stor6 = 1
}

function sub_4c269766(?) {
    require calldata.size - 4 >= 192
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not stor6:
        revert with 0, '.ReentrancyGuard: reentrant call'
    stor6 = 0
    require arg3 < poolInfo.length
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, poolInfo[arg3].field_256, Mask(224, 32, arg4) >> 32
    mem[416 len 4] = 0
    call arg1 with:
       funct poolInfo[arg3].field_256
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, poolInfo[arg3].field_256, arg4
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        mem[520 len arg2.length] = arg2[all]
        mem[arg2.length + 520] = 0
        require ext_code.size(poolInfo[arg3].field_256)
        call poolInfo[arg3].field_256.0xdc827aad with:
             gas gas_remaining wei
            args address(arg1), Array(len=arg2.length, data=arg2[all]), poolInfo[arg3].field_512, arg4, arg5, address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg5:
            revert with 0, 32, 35, 0x2e616d6f756e74206d7573742062652067726561746572207468616e206d696e696d75, Mask(232, 0, arg4)
        require arg3 < poolInfo.length
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg3].field_0, poolInfo[arg3].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x7b0b708a with:
             gas gas_remaining wei
            args poolInfo[arg3].field_0, poolInfo[arg3].field_512, ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg3].field_0, poolInfo[arg3].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not poolInfo[arg3].field_1024:
            if delegate.return_data[0] + userInfo[arg3][address(arg6)] < userInfo[arg3][address(arg6)]:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg3][address(arg6)] += delegate.return_data[0]
            if delegate.return_data[0] + poolInfo[arg3].field_1024 < poolInfo[arg3].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[arg3].field_1024 += delegate.return_data[0]
        else:
            if delegate.return_data[0] > delegate.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not delegate.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if poolInfo[arg3].field_1536 > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / delegate.return_data[0]:
                if userInfo[arg3][address(arg6)] < userInfo[arg3][address(arg6)]:
                    revert with 0, 'SafeMath: addition overflow'
                if poolInfo[arg3].field_1024 < poolInfo[arg3].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1536 * 0 / delegate.return_data[0]) / 0 / delegate.return_data[0] != -poolInfo[arg3].field_1536 + 10000:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[585 len 31]
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1536 * 0 / delegate.return_data[0]) / 10000) + userInfo[arg3][address(arg6)] < userInfo[arg3][address(arg6)]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg3][address(arg6)] += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1536 * 0 / delegate.return_data[0]) / 10000
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1536 * 0 / delegate.return_data[0]) / 10000) + poolInfo[arg3].field_1024 < poolInfo[arg3].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg3].field_1024 += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1536 * 0 / delegate.return_data[0]) / 10000
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        mem[ceil32(return_data.size) + 521 len arg2.length] = arg2[all]
        mem[ceil32(return_data.size) + arg2.length + 521] = 0
        require ext_code.size(poolInfo[arg3].field_256)
        call poolInfo[arg3].field_256.0xdc827aad with:
             gas gas_remaining wei
            args address(arg1), Array(len=arg2.length, data=arg2[all]), poolInfo[arg3].field_512, arg4, arg5, address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg5:
            revert with 0, 32, 35, 0x2e616d6f756e74206d7573742062652067726561746572207468616e206d696e696d75, Mask(232, 0, arg4)
        require arg3 < poolInfo.length
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg3].field_0, poolInfo[arg3].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x7b0b708a with:
             gas gas_remaining wei
            args poolInfo[arg3].field_0, poolInfo[arg3].field_512, ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg3].field_0, poolInfo[arg3].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not poolInfo[arg3].field_1024:
            if delegate.return_data[0] + userInfo[arg3][address(arg6)] < userInfo[arg3][address(arg6)]:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg3][address(arg6)] += delegate.return_data[0]
            if delegate.return_data[0] + poolInfo[arg3].field_1024 < poolInfo[arg3].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[arg3].field_1024 += delegate.return_data[0]
        else:
            if delegate.return_data[0] > delegate.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not delegate.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if poolInfo[arg3].field_1536 > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / delegate.return_data[0]:
                if userInfo[arg3][address(arg6)] < userInfo[arg3][address(arg6)]:
                    revert with 0, 'SafeMath: addition overflow'
                if poolInfo[arg3].field_1024 < poolInfo[arg3].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1536 * 0 / delegate.return_data[0]) / 0 / delegate.return_data[0] != -poolInfo[arg3].field_1536 + 10000:
                    revert with 0, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 586 len 31]
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1536 * 0 / delegate.return_data[0]) / 10000) + userInfo[arg3][address(arg6)] < userInfo[arg3][address(arg6)]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg3][address(arg6)] += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1536 * 0 / delegate.return_data[0]) / 10000
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1536 * 0 / delegate.return_data[0]) / 10000) + poolInfo[arg3].field_1024 < poolInfo[arg3].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg3].field_1024 += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1536 * 0 / delegate.return_data[0]) / 10000
    poolInfo[arg3].field_1280 = delegate.return_data[0]
    emit 0x49ecfe87: arg4, ext_call.return_data[0], arg6, arg3, arg1
    stor6 = 1
}

function sub_f5df88a7(?) {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not stor6:
        revert with 0, '.ReentrancyGuard: reentrant call'
    stor6 = 0
    require arg3 < poolInfo.length
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, poolInfo[arg3].field_256, Mask(224, 32, arg4) >> 32
    mem[416 len 4] = 0
    call arg1 with:
       funct poolInfo[arg3].field_256
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, poolInfo[arg3].field_256, arg4
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        mem[520 len arg2.length] = arg2[all]
        mem[arg2.length + 520] = 0
        require ext_code.size(poolInfo[arg3].field_256)
        call poolInfo[arg3].field_256.0xdc827aad with:
             gas gas_remaining wei
            args address(arg1), Array(len=arg2.length, data=arg2[all]), poolInfo[arg3].field_512, arg4, arg5, address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg5:
            revert with 0, 32, 35, 0x2e616d6f756e74206d7573742062652067726561746572207468616e206d696e696d75, Mask(232, 0, arg4)
        require arg3 < poolInfo.length
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg3].field_0, poolInfo[arg3].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x7b0b708a with:
             gas gas_remaining wei
            args poolInfo[arg3].field_0, poolInfo[arg3].field_512, ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg3].field_0, poolInfo[arg3].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not poolInfo[arg3].field_1024:
            if delegate.return_data[0] + userInfo[arg3][address(msg.sender)] < userInfo[arg3][address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg3][address(msg.sender)] += delegate.return_data[0]
            if delegate.return_data[0] + poolInfo[arg3].field_1024 < poolInfo[arg3].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[arg3].field_1024 += delegate.return_data[0]
        else:
            if delegate.return_data[0] > delegate.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not delegate.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if poolInfo[arg3].field_1536 > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / delegate.return_data[0]:
                if userInfo[arg3][address(msg.sender)] < userInfo[arg3][address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if poolInfo[arg3].field_1024 < poolInfo[arg3].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1536 * 0 / delegate.return_data[0]) / 0 / delegate.return_data[0] != -poolInfo[arg3].field_1536 + 10000:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[585 len 31]
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1536 * 0 / delegate.return_data[0]) / 10000) + userInfo[arg3][address(msg.sender)] < userInfo[arg3][address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg3][address(msg.sender)] += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1536 * 0 / delegate.return_data[0]) / 10000
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1536 * 0 / delegate.return_data[0]) / 10000) + poolInfo[arg3].field_1024 < poolInfo[arg3].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg3].field_1024 += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1536 * 0 / delegate.return_data[0]) / 10000
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        mem[ceil32(return_data.size) + 521 len arg2.length] = arg2[all]
        mem[ceil32(return_data.size) + arg2.length + 521] = 0
        require ext_code.size(poolInfo[arg3].field_256)
        call poolInfo[arg3].field_256.0xdc827aad with:
             gas gas_remaining wei
            args address(arg1), Array(len=arg2.length, data=arg2[all]), poolInfo[arg3].field_512, arg4, arg5, address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg5:
            revert with 0, 32, 35, 0x2e616d6f756e74206d7573742062652067726561746572207468616e206d696e696d75, Mask(232, 0, arg4)
        require arg3 < poolInfo.length
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg3].field_0, poolInfo[arg3].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x7b0b708a with:
             gas gas_remaining wei
            args poolInfo[arg3].field_0, poolInfo[arg3].field_512, ext_call.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb23c488dd6b770f774e309431c59e7d5d8b7652f)
        delegate 0xb23c488dd6b770f774e309431c59e7d5d8b7652f.0x5bc609c6 with:
             gas gas_remaining wei
            args poolInfo[arg3].field_0, poolInfo[arg3].field_512
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not poolInfo[arg3].field_1024:
            if delegate.return_data[0] + userInfo[arg3][address(msg.sender)] < userInfo[arg3][address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg3][address(msg.sender)] += delegate.return_data[0]
            if delegate.return_data[0] + poolInfo[arg3].field_1024 < poolInfo[arg3].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[arg3].field_1024 += delegate.return_data[0]
        else:
            if delegate.return_data[0] > delegate.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not delegate.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if poolInfo[arg3].field_1536 > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / delegate.return_data[0]:
                if userInfo[arg3][address(msg.sender)] < userInfo[arg3][address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if poolInfo[arg3].field_1024 < poolInfo[arg3].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1536 * 0 / delegate.return_data[0]) / 0 / delegate.return_data[0] != -poolInfo[arg3].field_1536 + 10000:
                    revert with 0, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 586 len 31]
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1536 * 0 / delegate.return_data[0]) / 10000) + userInfo[arg3][address(msg.sender)] < userInfo[arg3][address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg3][address(msg.sender)] += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1536 * 0 / delegate.return_data[0]) / 10000
                if ((10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1536 * 0 / delegate.return_data[0]) / 10000) + poolInfo[arg3].field_1024 < poolInfo[arg3].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg3].field_1024 += (10000 * 0 / delegate.return_data[0]) - (poolInfo[arg3].field_1536 * 0 / delegate.return_data[0]) / 10000
    poolInfo[arg3].field_1280 = delegate.return_data[0]
    emit 0x49ecfe87: arg4, ext_call.return_data[0], msg.sender, arg3, arg1
    stor6 = 1
}

function cancelTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    if adminAddress != msg.sender:
        revert with 0, 
                    32,
                    55,
                    0x54696d656c6f636b3a3a63616e63656c5472616e73616374696f6e3a2043616c6c206d75737420636f6d652066726f6d2061646d696e00,
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 283 len 9]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = arg1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg5
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = 160
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 384 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 288] = arg3.length + 192
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 384] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 224
        mem[64] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416
        _200 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
        mem[0] = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
        mem[32] = 5
        stor5[mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]]] = 0
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416] = arg2
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg5
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448] = 128
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg3.length
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg3.length + 160
        mem[(2 * arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(arg4.length) + 576] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        _289 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[(2 * arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not _289 % 32:
            emit CancelTransaction(arg2, Array(len=arg3.length, data=mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 576 len arg3.length + _289 + 32]), arg3.length + 160, arg5, _200, arg1);
        else:
            mem[floor32(_289) + (2 * arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(_289) + (2 * arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(arg4.length) + -(_289 % 32) + 640 len _289 % 32]
            emit CancelTransaction(arg2, Array(len=arg3.length, data=mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 576 len arg3.length + floor32(_289) + 64]), arg3.length + 160, arg5, _200, arg1);
    else:
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 448 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 256
        mem[64] = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448
        _216 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
        mem[0] = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
        mem[32] = 5
        stor5[mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]]] = 0
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448] = arg2
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg5
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 480] = 128
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg3.length
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg3.length + 160
        mem[(2 * arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        _292 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[(2 * arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not _292 % 32:
            emit CancelTransaction(arg2, Array(len=arg3.length, data=mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 608 len arg3.length + _292 + 32]), arg3.length + 160, arg5, _216, arg1);
        else:
            mem[floor32(_292) + (2 * arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(_292) + (2 * arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + -(_292 % 32) + 672 len _292 % 32]
            emit CancelTransaction(arg2, Array(len=arg3.length, data=mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 608 len arg3.length + floor32(_292) + 64]), arg3.length + 160, arg5, _216, arg1);
}

function queueTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    if adminAddress != msg.sender:
        revert with 0, 
                    32,
                    54,
                    0x2e54696d656c6f636b3a3a71756575655472616e73616374696f6e3a2043616c6c206d75737420636f6d652066726f6d2061646d696e,
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 282 len 10]
    if delay + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if arg5 < delay + block.timestamp:
        revert with 0, 
                    32,
                    73,
                    0x2e54696d656c6f636b3a3a71756575655472616e73616374696f6e3a20457374696d6174656420657865637574696f6e20626c6f636b206d75737420736174697366792064656c6179,
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 301 len 23]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = arg1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg5
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = 160
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 384 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 288] = arg3.length + 192
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 384] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 224
        mem[64] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416
        _268 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
        mem[0] = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
        mem[32] = 5
        stor5[mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]]] = 1
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416] = arg2
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg5
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448] = 128
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg3.length
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg3.length + 160
        mem[(2 * arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(arg4.length) + 576] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        _389 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[(2 * arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not _389 % 32:
            emit QueueTransaction(arg2, Array(len=arg3.length, data=mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 576 len arg3.length + _389 + 32]), arg3.length + 160, arg5, _268, arg1);
        else:
            mem[floor32(_389) + (2 * arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(_389) + (2 * arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(arg4.length) + -(_389 % 32) + 640 len _389 % 32]
            emit QueueTransaction(arg2, Array(len=arg3.length, data=mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 576 len arg3.length + floor32(_389) + 64]), arg3.length + 160, arg5, _268, arg1);
        return _268
    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 448 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 256
    mem[64] = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448
    _284 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
    mem[0] = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
    mem[32] = 5
    stor5[mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]]] = 1
    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448] = arg2
    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 544] = arg5
    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 480] = 128
    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg3.length
    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 512] = arg3.length + 160
    mem[(2 * arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    _392 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[(2 * arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    if not _392 % 32:
        emit QueueTransaction(arg2, Array(len=arg3.length, data=mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 608 len arg3.length + _392 + 32]), arg3.length + 160, arg5, _284, arg1);
    else:
        mem[floor32(_392) + (2 * arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(_392) + (2 * arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + -(_392 % 32) + 672 len _392 % 32]
        emit QueueTransaction(arg2, Array(len=arg3.length, data=mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 608 len arg3.length + floor32(_392) + 64]), arg3.length + 160, arg5, _284, arg1);
    return _284
}

function sub_d36303b2(?) {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    mem[0] = 9
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.rewardTokenCount() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= test266151307()
    mem[96] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(poolInfo[arg1].field_256)
        staticcall poolInfo[arg1].field_256.rewardTokenCount() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= test266151307()
        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        mem[64] = (64 * ext_call.return_data[0]) + 160
        if not ext_call.return_data[0]:
            mem[(64 * ext_call.return_data[0]) + 160] = 0xabb06b9500000000000000000000000000000000000000000000000000000000
            require ext_code.size(poolInfo[arg1].field_256)
            staticcall poolInfo[arg1].field_256.mem[var31003 len 4] with:
                    gas gas_remaining wei
                   args mem[var31003 + 4 len var31004 - 4]
            mem[var31005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var35003 >= mem[var35002]:
                mem[(64 * ext_call.return_data[0]) + 160] = 64
                mem[(64 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
                mem[(64 * ext_call.return_data[0]) + 256 len floor32(ext_call.return_data[0])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(ext_call.return_data[0])]
                mem[(64 * ext_call.return_data[0]) + 192] = (32 * ext_call.return_data[0]) + 96
                mem[(98 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
                mem[(98 * ext_call.return_data[0]) + 288 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
                return memory
                  from (64 * ext_call.return_data[0]) + 160
                   len (193 * ext_call.return_data[0]) + 128
            mem[(64 * ext_call.return_data[0]) + 160] = 0x90c90f3d00000000000000000000000000000000000000000000000000000000
            mem[(64 * ext_call.return_data[0]) + 164] = poolInfo[arg1].field_256
            mem[(64 * ext_call.return_data[0]) + 196] = poolInfo[arg1].field_512
            mem[(64 * ext_call.return_data[0]) + 228] = arg2
            mem[(64 * ext_call.return_data[0]) + 260] = var37001
            require ext_code.size(poolInfo[arg1].field_256)
            staticcall poolInfo[arg1].field_256.mem[var39003 len 4] with:
                    gas gas_remaining wei
                   args mem[var39003 + 4 len var39004 - 4]
            mem[var39005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require var43003 < ext_call.return_data[0]
            mem[(32 * var45001) + 128] = var45003
            mem[(64 * ext_call.return_data[0]) + 160] = 0x509b6c3f00000000000000000000000000000000000000000000000000000000
            mem[(64 * ext_call.return_data[0]) + 164] = var45004
            require ext_code.size(poolInfo[arg1].field_256)
            staticcall poolInfo[arg1].field_256.mem[var47003 len 4] with:
                    gas gas_remaining wei
                   args mem[var47003 + 4 len var47004 - 4]
            mem[var47005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require var51003 < ext_call.return_data[0]
            mem[(32 * var53001) + (32 * ext_call.return_data[0]) + 160] = address(var53003)
            mem[(64 * ext_call.return_data[0]) + 160] = 0xabb06b9500000000000000000000000000000000000000000000000000000000
            require ext_code.size(poolInfo[arg1].field_256)
            staticcall poolInfo[arg1].field_256.mem[var57003 len 4] with:
                    gas gas_remaining wei
                   args mem[var57003 + 4 len var57004 - 4]
            mem[var57005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var61003 >= mem[var61002]:
                mem[(64 * ext_call.return_data[0]) + 160] = 64
                mem[(64 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
                mem[(64 * ext_call.return_data[0]) + 256 len floor32(ext_call.return_data[0])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(ext_call.return_data[0])]
                mem[(64 * ext_call.return_data[0]) + 192] = (32 * ext_call.return_data[0]) + 96
                mem[(98 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
                mem[(98 * ext_call.return_data[0]) + 288 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
                return memory
                  from (64 * ext_call.return_data[0]) + 160
                   len (193 * ext_call.return_data[0]) + 128
            mem[(64 * ext_call.return_data[0]) + 160] = 0x90c90f3d00000000000000000000000000000000000000000000000000000000
            mem[(64 * ext_call.return_data[0]) + 164] = poolInfo[arg1].field_256
            mem[(64 * ext_call.return_data[0]) + 196] = poolInfo[arg1].field_512
            mem[(64 * ext_call.return_data[0]) + 228] = arg2
            mem[(64 * ext_call.return_data[0]) + 260] = var63001
            require ext_code.size(poolInfo[arg1].field_256)
            staticcall poolInfo[arg1].field_256.mem[var65003 len 4] with:
                    gas gas_remaining wei
                   args mem[var65003 + 4 len var65004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
        else:
            mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            mem[(64 * ext_call.return_data[0]) + 160] = 0xabb06b9500000000000000000000000000000000000000000000000000000000
            require ext_code.size(poolInfo[arg1].field_256)
            staticcall poolInfo[arg1].field_256.mem[var32003 len 4] with:
                    gas gas_remaining wei
                   args mem[var32003 + 4 len var32004 - 4]
            mem[var32005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var36003 >= mem[var36002]:
                mem[(64 * ext_call.return_data[0]) + 160] = 64
                mem[(64 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
                mem[(64 * ext_call.return_data[0]) + 256 len floor32(ext_call.return_data[0])] = call.data[calldata.size len floor32(ext_call.return_data[0])]
                mem[(64 * ext_call.return_data[0]) + 192] = (32 * ext_call.return_data[0]) + 96
                mem[(98 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
                mem[(98 * ext_call.return_data[0]) + 288 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
                return memory
                  from (64 * ext_call.return_data[0]) + 160
                   len (193 * ext_call.return_data[0]) + 128
            mem[(64 * ext_call.return_data[0]) + 160] = 0x90c90f3d00000000000000000000000000000000000000000000000000000000
            mem[(64 * ext_call.return_data[0]) + 164] = poolInfo[arg1].field_256
            mem[(64 * ext_call.return_data[0]) + 196] = poolInfo[arg1].field_512
            mem[(64 * ext_call.return_data[0]) + 228] = arg2
            mem[(64 * ext_call.return_data[0]) + 260] = var38001
            require ext_code.size(poolInfo[arg1].field_256)
            staticcall poolInfo[arg1].field_256.mem[var40003 len 4] with:
                    gas gas_remaining wei
                   args mem[var40003 + 4 len var40004 - 4]
            mem[var40005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require var44003 < ext_call.return_data[0]
            mem[(32 * var46001) + 128] = var46003
            mem[(64 * ext_call.return_data[0]) + 160] = 0x509b6c3f00000000000000000000000000000000000000000000000000000000
            mem[(64 * ext_call.return_data[0]) + 164] = var46004
            require ext_code.size(poolInfo[arg1].field_256)
            staticcall poolInfo[arg1].field_256.mem[var48003 len 4] with:
                    gas gas_remaining wei
                   args mem[var48003 + 4 len var48004 - 4]
            mem[var48005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require var52003 < ext_call.return_data[0]
            mem[(32 * var54001) + (32 * ext_call.return_data[0]) + 160] = address(var54003)
            mem[(64 * ext_call.return_data[0]) + 160] = 0xabb06b9500000000000000000000000000000000000000000000000000000000
            require ext_code.size(poolInfo[arg1].field_256)
            staticcall poolInfo[arg1].field_256.mem[var58003 len 4] with:
                    gas gas_remaining wei
                   args mem[var58003 + 4 len var58004 - 4]
            mem[var58005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var62003 >= mem[var62002]:
                mem[(64 * ext_call.return_data[0]) + 160] = 64
                mem[(64 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
                mem[(64 * ext_call.return_data[0]) + 256 len floor32(ext_call.return_data[0])] = call.data[calldata.size len floor32(ext_call.return_data[0])]
                mem[(64 * ext_call.return_data[0]) + 192] = (32 * ext_call.return_data[0]) + 96
                mem[(98 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
                mem[(98 * ext_call.return_data[0]) + 288 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
                return memory
                  from (64 * ext_call.return_data[0]) + 160
                   len (193 * ext_call.return_data[0]) + 128
            mem[(64 * ext_call.return_data[0]) + 160] = 0x90c90f3d00000000000000000000000000000000000000000000000000000000
            mem[(64 * ext_call.return_data[0]) + 164] = poolInfo[arg1].field_256
            mem[(64 * ext_call.return_data[0]) + 196] = poolInfo[arg1].field_512
            mem[(64 * ext_call.return_data[0]) + 228] = arg2
            mem[(64 * ext_call.return_data[0]) + 260] = var64001
            require ext_code.size(poolInfo[arg1].field_256)
            staticcall poolInfo[arg1].field_256.mem[var66003 len 4] with:
                    gas gas_remaining wei
                   args mem[var66003 + 4 len var66004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
    else:
        mem[128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        require ext_code.size(poolInfo[arg1].field_256)
        staticcall poolInfo[arg1].field_256.rewardTokenCount() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= test266151307()
        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        mem[64] = (64 * ext_call.return_data[0]) + 160
        if not ext_call.return_data[0]:
            mem[(64 * ext_call.return_data[0]) + 160] = 0xabb06b9500000000000000000000000000000000000000000000000000000000
            require ext_code.size(poolInfo[arg1].field_256)
            staticcall poolInfo[arg1].field_256.mem[var32003 len 4] with:
                    gas gas_remaining wei
                   args mem[var32003 + 4 len var32004 - 4]
            mem[var32005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var36003 >= mem[var36002]:
                mem[(64 * ext_call.return_data[0]) + 160] = 64
                mem[(64 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
                mem[(64 * ext_call.return_data[0]) + 256 len floor32(ext_call.return_data[0])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(ext_call.return_data[0])]
                mem[(64 * ext_call.return_data[0]) + 192] = (32 * ext_call.return_data[0]) + 96
                mem[(98 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
                mem[(98 * ext_call.return_data[0]) + 288 len floor32(ext_call.return_data[0])] = call.data[calldata.size len floor32(ext_call.return_data[0])]
                return memory
                  from (64 * ext_call.return_data[0]) + 160
                   len (193 * ext_call.return_data[0]) + 128
            mem[(64 * ext_call.return_data[0]) + 160] = 0x90c90f3d00000000000000000000000000000000000000000000000000000000
            mem[(64 * ext_call.return_data[0]) + 164] = poolInfo[arg1].field_256
            mem[(64 * ext_call.return_data[0]) + 196] = poolInfo[arg1].field_512
            mem[(64 * ext_call.return_data[0]) + 228] = arg2
            mem[(64 * ext_call.return_data[0]) + 260] = var38001
            require ext_code.size(poolInfo[arg1].field_256)
            staticcall poolInfo[arg1].field_256.mem[var40003 len 4] with:
                    gas gas_remaining wei
                   args mem[var40003 + 4 len var40004 - 4]
            mem[var40005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require var44003 < ext_call.return_data[0]
            mem[(32 * var46001) + 128] = var46003
            mem[(64 * ext_call.return_data[0]) + 160] = 0x509b6c3f00000000000000000000000000000000000000000000000000000000
            mem[(64 * ext_call.return_data[0]) + 164] = var46004
            require ext_code.size(poolInfo[arg1].field_256)
            staticcall poolInfo[arg1].field_256.mem[var48003 len 4] with:
                    gas gas_remaining wei
                   args mem[var48003 + 4 len var48004 - 4]
            mem[var48005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require var52003 < ext_call.return_data[0]
            mem[(32 * var54001) + (32 * ext_call.return_data[0]) + 160] = address(var54003)
            mem[(64 * ext_call.return_data[0]) + 160] = 0xabb06b9500000000000000000000000000000000000000000000000000000000
            require ext_code.size(poolInfo[arg1].field_256)
            staticcall poolInfo[arg1].field_256.mem[var58003 len 4] with:
                    gas gas_remaining wei
                   args mem[var58003 + 4 len var58004 - 4]
            mem[var58005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var62003 >= mem[var62002]:
                mem[(64 * ext_call.return_data[0]) + 160] = 64
                mem[(64 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
                mem[(64 * ext_call.return_data[0]) + 256 len floor32(ext_call.return_data[0])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(ext_call.return_data[0])]
                mem[(64 * ext_call.return_data[0]) + 192] = (32 * ext_call.return_data[0]) + 96
                mem[(98 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
                mem[(98 * ext_call.return_data[0]) + 288 len floor32(ext_call.return_data[0])] = call.data[calldata.size len floor32(ext_call.return_data[0])]
                return memory
                  from (64 * ext_call.return_data[0]) + 160
                   len (193 * ext_call.return_data[0]) + 128
            mem[(64 * ext_call.return_data[0]) + 160] = 0x90c90f3d00000000000000000000000000000000000000000000000000000000
            mem[(64 * ext_call.return_data[0]) + 164] = poolInfo[arg1].field_256
            mem[(64 * ext_call.return_data[0]) + 196] = poolInfo[arg1].field_512
            mem[(64 * ext_call.return_data[0]) + 228] = arg2
            mem[(64 * ext_call.return_data[0]) + 260] = var64001
            require ext_code.size(poolInfo[arg1].field_256)
            staticcall poolInfo[arg1].field_256.mem[var66003 len 4] with:
                    gas gas_remaining wei
                   args mem[var66003 + 4 len var66004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
        else:
            mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            mem[(64 * ext_call.return_data[0]) + 160] = 0xabb06b9500000000000000000000000000000000000000000000000000000000
            require ext_code.size(poolInfo[arg1].field_256)
            staticcall poolInfo[arg1].field_256.mem[var33003 len 4] with:
                    gas gas_remaining wei
                   args mem[var33003 + 4 len var33004 - 4]
            mem[var33005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var37003 >= mem[var37002]:
                mem[(64 * ext_call.return_data[0]) + 160] = 64
                mem[(64 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
                mem[(64 * ext_call.return_data[0]) + 256 len floor32(ext_call.return_data[0])] = call.data[calldata.size len floor32(ext_call.return_data[0])]
                mem[(64 * ext_call.return_data[0]) + 192] = (32 * ext_call.return_data[0]) + 96
                mem[(98 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
                mem[(98 * ext_call.return_data[0]) + 288 len floor32(ext_call.return_data[0])] = call.data[calldata.size len floor32(ext_call.return_data[0])]
                return memory
                  from (64 * ext_call.return_data[0]) + 160
                   len (193 * ext_call.return_data[0]) + 128
            mem[(64 * ext_call.return_data[0]) + 160] = 0x90c90f3d00000000000000000000000000000000000000000000000000000000
            mem[(64 * ext_call.return_data[0]) + 164] = poolInfo[arg1].field_256
            mem[(64 * ext_call.return_data[0]) + 196] = poolInfo[arg1].field_512
            mem[(64 * ext_call.return_data[0]) + 228] = arg2
            mem[(64 * ext_call.return_data[0]) + 260] = var39001
            require ext_code.size(poolInfo[arg1].field_256)
            staticcall poolInfo[arg1].field_256.mem[var41003 len 4] with:
                    gas gas_remaining wei
                   args mem[var41003 + 4 len var41004 - 4]
            mem[var41005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require var45003 < ext_call.return_data[0]
            mem[(32 * var47001) + 128] = var47003
            mem[(64 * ext_call.return_data[0]) + 160] = 0x509b6c3f00000000000000000000000000000000000000000000000000000000
            mem[(64 * ext_call.return_data[0]) + 164] = var47004
            require ext_code.size(poolInfo[arg1].field_256)
            staticcall poolInfo[arg1].field_256.mem[var49003 len 4] with:
                    gas gas_remaining wei
                   args mem[var49003 + 4 len var49004 - 4]
            mem[var49005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require var53003 < ext_call.return_data[0]
            mem[(32 * var55001) + (32 * ext_call.return_data[0]) + 160] = address(var55003)
            mem[(64 * ext_call.return_data[0]) + 160] = 0xabb06b9500000000000000000000000000000000000000000000000000000000
            require ext_code.size(poolInfo[arg1].field_256)
            staticcall poolInfo[arg1].field_256.mem[var59003 len 4] with:
                    gas gas_remaining wei
                   args mem[var59003 + 4 len var59004 - 4]
            mem[var59005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var63003 >= mem[var63002]:
                mem[(64 * ext_call.return_data[0]) + 160] = 64
                mem[(64 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
                mem[(64 * ext_call.return_data[0]) + 256 len floor32(ext_call.return_data[0])] = call.data[calldata.size len floor32(ext_call.return_data[0])]
                mem[(64 * ext_call.return_data[0]) + 192] = (32 * ext_call.return_data[0]) + 96
                mem[(98 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
                mem[(98 * ext_call.return_data[0]) + 288 len floor32(ext_call.return_data[0])] = call.data[calldata.size len floor32(ext_call.return_data[0])]
                return memory
                  from (64 * ext_call.return_data[0]) + 160
                   len (193 * ext_call.return_data[0]) + 128
            mem[(64 * ext_call.return_data[0]) + 160] = 0x90c90f3d00000000000000000000000000000000000000000000000000000000
            mem[(64 * ext_call.return_data[0]) + 164] = poolInfo[arg1].field_256
            mem[(64 * ext_call.return_data[0]) + 196] = poolInfo[arg1].field_512
            mem[(64 * ext_call.return_data[0]) + 228] = arg2
            mem[(64 * ext_call.return_data[0]) + 260] = var65001
            require ext_code.size(poolInfo[arg1].field_256)
            staticcall poolInfo[arg1].field_256.mem[var67003 len 4] with:
                    gas gas_remaining wei
                   args mem[var67003 + 4 len var67004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
}



}
