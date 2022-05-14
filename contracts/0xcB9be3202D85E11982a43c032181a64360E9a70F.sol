contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
array of struct poolInfo;
mapping of struct userInfo;
array of uint256 userStakedPoolLength;
mapping of uint8 stor5;
uint256 performanceFee;
uint256 performanceFeeBountyPct;
address feeAddress;
address feeAddressSetter;
mapping of uint8 stor10;
array of address stor29102676481673041902632991033461445430619272659676223336789171408008386403023;

function poolLength() payable {
    return poolInfo.length
}

function userStakedPoolLength(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userStakedPoolLength[address(arg1)]
}

function operators(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256
}

function performanceFeeBountyPct() payable {
    return performanceFeeBountyPct
}

function feeAddress() payable {
    return feeAddress
}

function feeAddressSetter() payable {
    return feeAddressSetter
}

function performanceFee() payable {
    return performanceFee
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256, userInfo[arg1][arg2].field_512
}

function userStakedPoolAt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= userStakedPoolLength[address(arg1)]:
        revert with 0, 50
    return userStakedPoolLength[address(arg1)][arg2]
}

function strategyExists(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setPerformanceFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 500:
        revert with 0, 'setPerformanceFee: CAP_EXCEEDED'
    performanceFee = arg1
    emit SetPerformanceFee(arg1);
}

function setOperator(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = uint8(arg2)
    emit SetOperator(address(arg1), arg2);
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if feeAddressSetter != msg.sender:
        revert with 0, 'setFeeAddress: NOT_ALLOWED'
    if not arg1:
        revert with 0, 'setFeeAddress: NOT_ALLOWED'
    feeAddress = arg1
    emit SetFeeAddress(arg1);
}

function setFeeAddressSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if feeAddressSetter != msg.sender:
        revert with 0, 'setFeeAddressSetter: NOT_ALLOWED'
    if not arg1:
        revert with 0, 'setFeeAddressSetter: NOT_ALLOWED'
    feeAddressSetter = arg1
    emit 0xf8361c73: arg1
}

function setPerformanceFeeBountyPct(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setPerformanceFeeBountyPct: CAP_EXCEEDED'
    performanceFeeBountyPct = arg1
    emit 0x9a39cf10: arg1
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

function add(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor10[msg.sender]:
        revert with 0, 'onlyOperator: NOT_ALLOWED'
    if stor5[address(arg1)]:
        revert with 0, 'add: STRATEGY_ALREADY_EXISTS'
    require ext_code.size(arg1)
    staticcall arg1.stakeToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = address(ext_call.return_data[0])
    stor4057[stor2.length] = arg1
    stor5[address(arg1)] = 1
    emit Add(address(ext_call.return_data[0]), arg1);
}

function earn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_256)
    call poolInfo[arg1].field_256.redeem(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolInfo[arg1].field_256)
    call poolInfo[arg1].field_256.0xe65a0117 with:
         gas gas_remaining wei
        args 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xdcc11642: ext_call.return_data[0], msg.sender, arg1
    stor1 = 1
    return ext_call.return_data[0]
}

function stakedTokens(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return 0
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.0x945f3353 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if userInfo[arg1][address(arg2)].field_0 and ext_call.return_data[0] > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (userInfo[arg1][address(arg2)].field_0 * ext_call.return_data[0] / ext_call.return_data[0])
}

function earnMany(uint256[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    idx = 0
    while idx < arg1.length:
        if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
            revert with 0, 50
        mem[0] = 2
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256)
        call poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256.redeem(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16 = mem[_15]
        mem[mem[64] + 4] = 10000
        require ext_code.size(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256)
        call poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256.0xe65a0117 with:
             gas gas_remaining wei
            args 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = _16
        emit 0xdcc11642: _16, msg.sender, cd[((32 * idx) + arg1 + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor1 = 1
}

function addMany(address[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 10
    if not stor10[msg.sender]:
        revert with 0, 'onlyOperator: NOT_ALLOWED'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if not stor10[msg.sender]:
            revert with 0, 'onlyOperator: NOT_ALLOWED'
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 5
        if stor5[address(cd[((32 * idx) + arg1 + 36)])]:
            revert with 0, 'add: STRATEGY_ALREADY_EXISTS'
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).stakeToken() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _28 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _29 = mem[_28]
        require mem[_28] == mem[_28 + 12 len 20]
        _30 = mem[64]
        mem[64] = mem[64] + 64
        mem[_30] = address(_29)
        mem[_30 + 32] = address(cd[((32 * idx) + arg1 + 36)])
        poolInfo.length++
        poolInfo[poolInfo.length].field_0 = address(_29)
        stor4057[stor2.length] = address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 5
        stor5[address(cd[((32 * idx) + arg1 + 36)])] = 1
        mem[mem[64]] = address(_29)
        mem[mem[64] + 32] = address(cd[((32 * idx) + arg1 + 36)])
        emit Add(address(_29), address(cd[((32 * idx) + arg1 + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setStrategyExtraEarnTokens(address arg1, address[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length > 5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setStrategyExtraEarnTokens: CAP_EXCEEDED'
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        staticcall address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = arg2 + 36
    t = mem[64] + 68
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.setExtraEarnTokens(address[] arg1) with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=mem[mem[64] + 68 len 32 * arg2.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _22 = mem[64]
    mem[mem[64]] = arg1
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = arg2.length
    idx = 0
    s = arg2 + 36
    t = mem[64] + 96
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x41aba019: mem[mem[64] len _22 + (32 * arg2.length) + -mem[64] + 96]
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_256)
    call poolInfo[arg1].field_256.0x9e7afdd6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(poolInfo[arg1].field_256)
    if ext_call.return_data[0]:
        call poolInfo[arg1].field_256.withdraw(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args userInfo[arg1][msg.sender].field_512, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if userInfo[arg1][msg.sender].field_512 < ext_call.return_data[0]:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_512 -= ext_call.return_data[0]
        emit Claim(ext_call.return_data[0], msg.sender, arg1);
    else:
        call poolInfo[arg1].field_256.redeem(address arg1) with:
             gas gas_remaining wei
            args 0
        if ext_call.success:
            require return_data.size >= 32
            require ext_code.size(poolInfo[arg1].field_256)
            call poolInfo[arg1].field_256.0xe65a0117 with:
                 gas gas_remaining wei
                args 10000
        require ext_code.size(poolInfo[arg1].field_256)
        staticcall poolInfo[arg1].field_256.0xd20e286b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if userInfo[arg1][msg.sender].field_512 and ext_call.return_data[0] > -1 / userInfo[arg1][msg.sender].field_512:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_512 * ext_call.return_data[0] / 10^12 < userInfo[arg1][msg.sender].field_256:
            revert with 0, 17
        if not (userInfo[arg1][msg.sender].field_512 * ext_call.return_data[0] / 10^12) - userInfo[arg1][msg.sender].field_256:
            emit Claim(0, msg.sender, arg1);
        else:
            require ext_code.size(poolInfo[arg1].field_256)
            call poolInfo[arg1].field_256.withdraw(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args (userInfo[arg1][msg.sender].field_512 * ext_call.return_data[0] / 10^12) - userInfo[arg1][msg.sender].field_256, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if userInfo[arg1][msg.sender].field_512 < ext_call.return_data[0]:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_512 -= ext_call.return_data[0]
            emit Claim(ext_call.return_data[0], msg.sender, arg1);
        require ext_code.size(poolInfo[arg1].field_256)
        staticcall poolInfo[arg1].field_256.0xd20e286b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if userInfo[arg1][msg.sender].field_512 and ext_call.return_data[0] > -1 / userInfo[arg1][msg.sender].field_512:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_512 * ext_call.return_data[0] / 10^12
    stor1 = 1
}

function sub_b5216c36(?) payable {
    require calldata.size - 4 >= 128
    require arg4 == address(arg4)
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'deposit: MUST_BE_GREATER_THAN_ZERO'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    mem[128] = poolInfo[arg1].field_256
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.sharesTotal() with:
            gas gas_remaining wei
    mem[160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        mem[ceil32(return_data.size) + 164] = poolInfo[arg1].field_256
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args poolInfo[arg1].field_256
        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 228] = poolInfo[arg1].field_256
        mem[(2 * ceil32(return_data.size)) + 260] = arg2
        mem[(2 * ceil32(return_data.size)) + 160] = 100
        mem[(2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 192 len 4] = unknown_0x23b872dd(?????)
        mem[(2 * ceil32(return_data.size)) + 292] = 32
        mem[(2 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 356 len 128] = unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0
        mem[(2 * ceil32(return_data.size)) + 456] = 0
        call poolInfo[arg1].field_0 with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if poolInfo[arg1].field_0:
                    revert with memory
                      from 128
                       len poolInfo[arg1].field_0
                revert with 0, 'SafeERC20: low-level call failed'
            if poolInfo[arg1].field_0:
                require poolInfo[arg1].field_0 >= 32
                require poolInfo[arg1].field_256 == bool(poolInfo[arg1].field_256)
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 388] == bool(mem[(2 * ceil32(return_data.size)) + 388])
                if not mem[(2 * ceil32(return_data.size)) + 388]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 164] = 0
        require ext_code.size(poolInfo[arg1].field_256)
        call poolInfo[arg1].field_256.redeem(address arg1) with:
             gas gas_remaining wei
            args 0
        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            mem[ceil32(return_data.size) + 164] = poolInfo[arg1].field_256
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args poolInfo[arg1].field_256
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 228] = poolInfo[arg1].field_256
            mem[(2 * ceil32(return_data.size)) + 260] = arg2
            mem[(2 * ceil32(return_data.size)) + 160] = 100
            mem[(2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 192 len 4] = unknown_0x23b872dd(?????)
            mem[(2 * ceil32(return_data.size)) + 292] = 32
            mem[(2 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 356 len 128] = unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0
            mem[(2 * ceil32(return_data.size)) + 456] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if poolInfo[arg1].field_0:
                        revert with memory
                          from 128
                           len poolInfo[arg1].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if poolInfo[arg1].field_0:
                    require poolInfo[arg1].field_0 >= 32
                    require poolInfo[arg1].field_256 == bool(poolInfo[arg1].field_256)
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 388] == bool(mem[(2 * ceil32(return_data.size)) + 388])
                    if not mem[(2 * ceil32(return_data.size)) + 388]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            require return_data.size >= 32
            require ext_code.size(poolInfo[arg1].field_256)
            call poolInfo[arg1].field_256.0xe65a0117 with:
                 gas gas_remaining wei
                args 10000
            mem[(2 * ceil32(return_data.size)) + 164] = poolInfo[arg1].field_256
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args poolInfo[arg1].field_256
            mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 196] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 228] = poolInfo[arg1].field_256
            mem[(4 * ceil32(return_data.size)) + 260] = arg2
            mem[(4 * ceil32(return_data.size)) + 160] = 100
            mem[(4 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 192 len 4] = unknown_0x23b872dd(?????)
            mem[(4 * ceil32(return_data.size)) + 292] = 32
            mem[(4 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 356 len 128] = unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0
            mem[(4 * ceil32(return_data.size)) + 456] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if poolInfo[arg1].field_0:
                        revert with memory
                          from 128
                           len poolInfo[arg1].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if poolInfo[arg1].field_0:
                    require poolInfo[arg1].field_0 >= 32
                    require poolInfo[arg1].field_256 == bool(poolInfo[arg1].field_256)
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 388] == bool(mem[(4 * ceil32(return_data.size)) + 388])
                    if not mem[(4 * ceil32(return_data.size)) + 388]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args poolInfo[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(poolInfo[arg1].field_256)
    call poolInfo[arg1].field_256.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if userInfo[arg1][address(arg4)].field_0 > !ext_call.return_data[0]:
        revert with 0, 17
    userInfo[arg1][address(arg4)].field_0 += ext_call.return_data[0]
    if not userStakedPoolLength[address(arg4)][1][arg1]:
        userStakedPoolLength[address(arg4)]++
        userStakedPoolLength[address(arg4)][userStakedPoolLength[address(arg4)]] = arg1
        userStakedPoolLength[address(arg4)][1][arg1] = userStakedPoolLength[address(arg4)]
    emit Deposit(0, address(arg4), arg1);
    stor1 = 1
}

function deposit(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'deposit: MUST_BE_GREATER_THAN_ZERO'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    mem[128] = poolInfo[arg1].field_256
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.sharesTotal() with:
            gas gas_remaining wei
    mem[160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        mem[ceil32(return_data.size) + 164] = poolInfo[arg1].field_256
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args poolInfo[arg1].field_256
        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 228] = poolInfo[arg1].field_256
        mem[(2 * ceil32(return_data.size)) + 260] = arg2
        mem[(2 * ceil32(return_data.size)) + 160] = 100
        mem[(2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 192 len 4] = unknown_0x23b872dd(?????)
        mem[(2 * ceil32(return_data.size)) + 292] = 32
        mem[(2 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 356 len 128] = unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0
        mem[(2 * ceil32(return_data.size)) + 456] = 0
        call poolInfo[arg1].field_0 with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if poolInfo[arg1].field_0:
                    revert with memory
                      from 128
                       len poolInfo[arg1].field_0
                revert with 0, 'SafeERC20: low-level call failed'
            if poolInfo[arg1].field_0:
                require poolInfo[arg1].field_0 >= 32
                require poolInfo[arg1].field_256 == bool(poolInfo[arg1].field_256)
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 388] == bool(mem[(2 * ceil32(return_data.size)) + 388])
                if not mem[(2 * ceil32(return_data.size)) + 388]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 164] = 0
        require ext_code.size(poolInfo[arg1].field_256)
        call poolInfo[arg1].field_256.redeem(address arg1) with:
             gas gas_remaining wei
            args 0
        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            mem[ceil32(return_data.size) + 164] = poolInfo[arg1].field_256
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args poolInfo[arg1].field_256
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 228] = poolInfo[arg1].field_256
            mem[(2 * ceil32(return_data.size)) + 260] = arg2
            mem[(2 * ceil32(return_data.size)) + 160] = 100
            mem[(2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 192 len 4] = unknown_0x23b872dd(?????)
            mem[(2 * ceil32(return_data.size)) + 292] = 32
            mem[(2 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 356 len 128] = unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0
            mem[(2 * ceil32(return_data.size)) + 456] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if poolInfo[arg1].field_0:
                        revert with memory
                          from 128
                           len poolInfo[arg1].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if poolInfo[arg1].field_0:
                    require poolInfo[arg1].field_0 >= 32
                    require poolInfo[arg1].field_256 == bool(poolInfo[arg1].field_256)
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 388] == bool(mem[(2 * ceil32(return_data.size)) + 388])
                    if not mem[(2 * ceil32(return_data.size)) + 388]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            require return_data.size >= 32
            require ext_code.size(poolInfo[arg1].field_256)
            call poolInfo[arg1].field_256.0xe65a0117 with:
                 gas gas_remaining wei
                args 10000
            mem[(2 * ceil32(return_data.size)) + 164] = poolInfo[arg1].field_256
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args poolInfo[arg1].field_256
            mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 196] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 228] = poolInfo[arg1].field_256
            mem[(4 * ceil32(return_data.size)) + 260] = arg2
            mem[(4 * ceil32(return_data.size)) + 160] = 100
            mem[(4 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 192 len 4] = unknown_0x23b872dd(?????)
            mem[(4 * ceil32(return_data.size)) + 292] = 32
            mem[(4 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 356 len 128] = unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0
            mem[(4 * ceil32(return_data.size)) + 456] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if poolInfo[arg1].field_0:
                        revert with memory
                          from 128
                           len poolInfo[arg1].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if poolInfo[arg1].field_0:
                    require poolInfo[arg1].field_0 >= 32
                    require poolInfo[arg1].field_256 == bool(poolInfo[arg1].field_256)
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 388] == bool(mem[(4 * ceil32(return_data.size)) + 388])
                    if not mem[(4 * ceil32(return_data.size)) + 388]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args poolInfo[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(poolInfo[arg1].field_256)
    call poolInfo[arg1].field_256.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if userInfo[arg1][address(msg.sender)].field_0 > !ext_call.return_data[0]:
        revert with 0, 17
    userInfo[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
    if not userStakedPoolLength[address(msg.sender)][1][arg1]:
        userStakedPoolLength[address(msg.sender)]++
        userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]] = arg1
        userStakedPoolLength[address(msg.sender)][1][arg1] = userStakedPoolLength[address(msg.sender)]
    emit Deposit(0, msg.sender, arg1);
    stor1 = 1
}

function requestWithdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'requestWithdraw: MUST_BE_GREATER_THAN_ZERO'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_256)
    call poolInfo[arg1].field_256.redeem(address arg1) with:
         gas gas_remaining wei
        args 0
    if ext_call.success:
        require return_data.size >= 32
        require ext_code.size(poolInfo[arg1].field_256)
        call poolInfo[arg1].field_256.0xe65a0117 with:
             gas gas_remaining wei
            args 10000
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userInfo[arg1][msg.sender].field_0:
        revert with 0, 'requestWithdraw: NO_SHARES'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'requestWithdraw: NO_SHARES'
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.0x945f3353 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if userInfo[arg1][msg.sender].field_0 and ext_call.return_data[0] > -1 / userInfo[arg1][msg.sender].field_0:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(poolInfo[arg1].field_256)
    if arg2 <= userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
        call poolInfo[arg1].field_256.0xccc143b8 with:
             gas gas_remaining wei
            args arg2, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if userInfo[arg1][msg.sender].field_0 <= ext_call.return_data[0]:
            userInfo[arg1][msg.sender].field_0 = 0
            if userStakedPoolLength[msg.sender][1][arg1]:
                if userStakedPoolLength[msg.sender][1][arg1] < 1:
                    revert with 0, 17
                if userStakedPoolLength[msg.sender] < 1:
                    revert with 0, 17
                if userStakedPoolLength[msg.sender] - 1 != userStakedPoolLength[msg.sender][1][arg1] - 1:
                    if userStakedPoolLength[msg.sender] - 1 >= userStakedPoolLength[msg.sender]:
                        revert with 0, 50
                    if userStakedPoolLength[msg.sender][1][arg1] - 1 >= userStakedPoolLength[msg.sender]:
                        revert with 0, 50
                    userStakedPoolLength[msg.sender][userStakedPoolLength[msg.sender][1][arg1]] = userStakedPoolLength[msg.sender][userStakedPoolLength[msg.sender]]
                    userStakedPoolLength[msg.sender][1][userStakedPoolLength[msg.sender][userStakedPoolLength[msg.sender]]] = userStakedPoolLength[msg.sender][1][arg1]
                if not userStakedPoolLength[msg.sender]:
                    revert with 0, 49
                userStakedPoolLength[msg.sender][userStakedPoolLength[msg.sender]] = 0
                userStakedPoolLength[msg.sender]--
                userStakedPoolLength[msg.sender][1][arg1] = 0
        else:
            if userInfo[arg1][msg.sender].field_0 < ext_call.return_data[0]:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_0 -= ext_call.return_data[0]
            if not userInfo[arg1][msg.sender].field_0 - ext_call.return_data[0]:
                if userStakedPoolLength[msg.sender][1][arg1]:
                    if userStakedPoolLength[msg.sender][1][arg1] < 1:
                        revert with 0, 17
                    if userStakedPoolLength[msg.sender] < 1:
                        revert with 0, 17
                    if userStakedPoolLength[msg.sender] - 1 != userStakedPoolLength[msg.sender][1][arg1] - 1:
                        if userStakedPoolLength[msg.sender] - 1 >= userStakedPoolLength[msg.sender]:
                            revert with 0, 50
                        if userStakedPoolLength[msg.sender][1][arg1] - 1 >= userStakedPoolLength[msg.sender]:
                            revert with 0, 50
                        userStakedPoolLength[msg.sender][userStakedPoolLength[msg.sender][1][arg1]] = userStakedPoolLength[msg.sender][userStakedPoolLength[msg.sender]]
                        userStakedPoolLength[msg.sender][1][userStakedPoolLength[msg.sender][userStakedPoolLength[msg.sender]]] = userStakedPoolLength[msg.sender][1][arg1]
                    if not userStakedPoolLength[msg.sender]:
                        revert with 0, 49
                    userStakedPoolLength[msg.sender][userStakedPoolLength[msg.sender]] = 0
                    userStakedPoolLength[msg.sender]--
                    userStakedPoolLength[msg.sender][1][arg1] = 0
        require ext_code.size(poolInfo[arg1].field_256)
        staticcall poolInfo[arg1].field_256.0xd20e286b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if userInfo[arg1][msg.sender].field_512 and ext_call.return_data[0] > -1 / userInfo[arg1][msg.sender].field_512:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_512 * ext_call.return_data[0] / 10^12 < userInfo[arg1][msg.sender].field_256:
            revert with 0, 17
        if (userInfo[arg1][msg.sender].field_512 * ext_call.return_data[0] / 10^12) - userInfo[arg1][msg.sender].field_256:
            require ext_code.size(poolInfo[arg1].field_256)
            call poolInfo[arg1].field_256.withdraw(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args (userInfo[arg1][msg.sender].field_512 * ext_call.return_data[0] / 10^12) - userInfo[arg1][msg.sender].field_256, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if userInfo[arg1][msg.sender].field_512 < ext_call.return_data[0]:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_512 -= ext_call.return_data[0]
        if userInfo[arg1][msg.sender].field_512 > !arg2:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_512 += arg2
        require ext_code.size(poolInfo[arg1].field_256)
        staticcall poolInfo[arg1].field_256.0xd20e286b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if userInfo[arg1][msg.sender].field_512 and ext_call.return_data[0] > -1 / userInfo[arg1][msg.sender].field_512:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_512 * ext_call.return_data[0] / 10^12
        emit RequestWithdraw(arg2, msg.sender, arg1);
    else:
        call poolInfo[arg1].field_256.0xccc143b8 with:
             gas gas_remaining wei
            args userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / ext_call.return_data[0], msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if userInfo[arg1][msg.sender].field_0 <= ext_call.return_data[0]:
            userInfo[arg1][msg.sender].field_0 = 0
            if userStakedPoolLength[msg.sender][1][arg1]:
                if userStakedPoolLength[msg.sender][1][arg1] < 1:
                    revert with 0, 17
                if userStakedPoolLength[msg.sender] < 1:
                    revert with 0, 17
                if userStakedPoolLength[msg.sender] - 1 != userStakedPoolLength[msg.sender][1][arg1] - 1:
                    if userStakedPoolLength[msg.sender] - 1 >= userStakedPoolLength[msg.sender]:
                        revert with 0, 50
                    if userStakedPoolLength[msg.sender][1][arg1] - 1 >= userStakedPoolLength[msg.sender]:
                        revert with 0, 50
                    userStakedPoolLength[msg.sender][userStakedPoolLength[msg.sender][1][arg1]] = userStakedPoolLength[msg.sender][userStakedPoolLength[msg.sender]]
                    userStakedPoolLength[msg.sender][1][userStakedPoolLength[msg.sender][userStakedPoolLength[msg.sender]]] = userStakedPoolLength[msg.sender][1][arg1]
                if not userStakedPoolLength[msg.sender]:
                    revert with 0, 49
                userStakedPoolLength[msg.sender][userStakedPoolLength[msg.sender]] = 0
                userStakedPoolLength[msg.sender]--
                userStakedPoolLength[msg.sender][1][arg1] = 0
        else:
            if userInfo[arg1][msg.sender].field_0 < ext_call.return_data[0]:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_0 -= ext_call.return_data[0]
            if not userInfo[arg1][msg.sender].field_0 - ext_call.return_data[0]:
                if userStakedPoolLength[msg.sender][1][arg1]:
                    if userStakedPoolLength[msg.sender][1][arg1] < 1:
                        revert with 0, 17
                    if userStakedPoolLength[msg.sender] < 1:
                        revert with 0, 17
                    if userStakedPoolLength[msg.sender] - 1 != userStakedPoolLength[msg.sender][1][arg1] - 1:
                        if userStakedPoolLength[msg.sender] - 1 >= userStakedPoolLength[msg.sender]:
                            revert with 0, 50
                        if userStakedPoolLength[msg.sender][1][arg1] - 1 >= userStakedPoolLength[msg.sender]:
                            revert with 0, 50
                        userStakedPoolLength[msg.sender][userStakedPoolLength[msg.sender][1][arg1]] = userStakedPoolLength[msg.sender][userStakedPoolLength[msg.sender]]
                        userStakedPoolLength[msg.sender][1][userStakedPoolLength[msg.sender][userStakedPoolLength[msg.sender]]] = userStakedPoolLength[msg.sender][1][arg1]
                    if not userStakedPoolLength[msg.sender]:
                        revert with 0, 49
                    userStakedPoolLength[msg.sender][userStakedPoolLength[msg.sender]] = 0
                    userStakedPoolLength[msg.sender]--
                    userStakedPoolLength[msg.sender][1][arg1] = 0
        require ext_code.size(poolInfo[arg1].field_256)
        staticcall poolInfo[arg1].field_256.0xd20e286b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if userInfo[arg1][msg.sender].field_512 and ext_call.return_data[0] > -1 / userInfo[arg1][msg.sender].field_512:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_512 * ext_call.return_data[0] / 10^12 < userInfo[arg1][msg.sender].field_256:
            revert with 0, 17
        if (userInfo[arg1][msg.sender].field_512 * ext_call.return_data[0] / 10^12) - userInfo[arg1][msg.sender].field_256:
            require ext_code.size(poolInfo[arg1].field_256)
            call poolInfo[arg1].field_256.withdraw(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args (userInfo[arg1][msg.sender].field_512 * ext_call.return_data[0] / 10^12) - userInfo[arg1][msg.sender].field_256, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if userInfo[arg1][msg.sender].field_512 < ext_call.return_data[0]:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_512 -= ext_call.return_data[0]
        if userInfo[arg1][msg.sender].field_512 > !(userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        userInfo[arg1][msg.sender].field_512 += userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / ext_call.return_data[0]
        require ext_code.size(poolInfo[arg1].field_256)
        staticcall poolInfo[arg1].field_256.0xd20e286b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if userInfo[arg1][msg.sender].field_512 and ext_call.return_data[0] > -1 / userInfo[arg1][msg.sender].field_512:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_512 * ext_call.return_data[0] / 10^12
        emit RequestWithdraw((userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
    stor1 = 1
}



}
