contract main {




// =====================  Runtime code  =====================


#
#  - resetSingleAllowance(uint256 arg1)
#  - withdraw(uint256 arg1, uint256 arg2)
#
address owner;
uint256 stor1;
mapping of uint8 stor2;
array of struct poolInfo;
mapping of uint256 userInfo;
mapping of uint8 stor5;

function poolLength() payable {
    return poolInfo.length
}

function operators(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userInfo[arg1][arg2]
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

function updateOperator(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = uint8(arg2)
    emit OperatorUpdated(arg1, arg2);
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

function stakedWantTokens(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        return 0
    if userInfo[arg1][address(arg2)] and ext_call.return_data[0] > -1 / userInfo[arg1][address(arg2)]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (userInfo[arg1][address(arg2)] * ext_call.return_data[0] / ext_call.return_data[0])
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if arg2 <= 0:
        emit Deposit(arg2, msg.sender, arg1);
        stor1 = 1
    mem[100] = this.address
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = arg2
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
    mem[ceil32(return_data.size) + 392] = 0
    call poolInfo[arg1].field_0 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    revert with 0, 'We only accept amount > 0'
}

function depositTo(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Operator: caller is not the operator'
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if arg2 <= 0:
        emit Deposit(arg2, arg3, arg1);
        stor1 = 1
    mem[100] = this.address
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = arg2
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
    mem[ceil32(return_data.size) + 392] = 0
    call poolInfo[arg1].field_0 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    revert with 0, 'We only accept amount > 0'
}

function addPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor5[address(arg1)]:
        revert with 0, 'Existing strategy'
    require ext_code.size(arg1)
    staticcall arg1.wantAddress() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.wantAddress() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 128] = arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = mem[(2 * ceil32(return_data.size)) + 108 len 20]
    poolInfo[poolInfo.length].field_256 = arg1
    stor5[address(arg1)] = 1
    if poolInfo.length < 1:
        revert with 'NH{q', 17
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if poolInfo.length - 1 >= poolInfo.length:
        revert with 'NH{q', 50
    mem[(4 * ceil32(return_data.size)) + 196] = poolInfo[poolInfo.length - 1].field_256
    mem[(4 * ceil32(return_data.size)) + 228] = 0
    mem[(4 * ceil32(return_data.size)) + 160] = 68
    mem[(4 * ceil32(return_data.size)) + 196 len 28] = poolInfo[poolInfo.length - 1].field_256
    mem[(4 * ceil32(return_data.size)) + 192 len 4] = approve(address arg1, uint256 arg2)
    mem[(4 * ceil32(return_data.size)) + 260] = 32
    mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(poolInfo[poolInfo.length - 1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 324 len 96] = approve(address arg1, uint256 arg2), poolInfo[poolInfo.length - 1].field_256, poolInfo[poolInfo.length - 1].field_256, 0, 0
    mem[(4 * ceil32(return_data.size)) + 392] = 0
    call poolInfo[poolInfo.length - 1].field_0 with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), poolInfo[poolInfo.length - 1].field_256, poolInfo[poolInfo.length - 1].field_256, 0, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), poolInfo[poolInfo.length - 1].field_256, poolInfo[poolInfo.length - 1].field_256, 0, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(4 * ceil32(return_data.size)) + 328] = this.address
        mem[(4 * ceil32(return_data.size)) + 360] = poolInfo[poolInfo.length - 1].field_256
        require ext_code.size(poolInfo[poolInfo.length - 1].field_0)
        staticcall poolInfo[poolInfo.length - 1].field_0.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), poolInfo[poolInfo.length - 1].field_256
        mem[(4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 0:
            revert with 'NH{q', 17
        mem[(6 * ceil32(return_data.size)) + 360] = poolInfo[poolInfo.length - 1].field_256
        mem[(6 * ceil32(return_data.size)) + 392] = ext_call.return_data[0] - 1
        mem[(6 * ceil32(return_data.size)) + 324] = 68
        mem[(6 * ceil32(return_data.size)) + 356 len 4] = approve(address arg1, uint256 arg2)
        mem[(6 * ceil32(return_data.size)) + 424] = 32
        mem[(6 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(poolInfo[poolInfo.length - 1].field_0) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(6 * ceil32(return_data.size)) + 488 len 96] = 0, poolInfo[poolInfo.length - 1].field_256, ext_call.return_data[0] - 1, 0
        mem[(6 * ceil32(return_data.size)) + 556] = 0
        call poolInfo[poolInfo.length - 1].field_0 with:
           funct Mask(32, 224, 0, poolInfo[poolInfo.length - 1].field_256, ext_call.return_data[0] - 1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, poolInfo[poolInfo.length - 1].field_256, ext_call.return_data[0] - 1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(6 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + 520] == bool(mem[(6 * ceil32(return_data.size)) + 520])
                if not mem[(6 * ceil32(return_data.size)) + 520]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 324] = return_data.size
        mem[(4 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 356] == bool(mem[(4 * ceil32(return_data.size)) + 356])
            if not mem[(4 * ceil32(return_data.size)) + 356]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = poolInfo[poolInfo.length - 1].field_256
        require ext_code.size(poolInfo[poolInfo.length - 1].field_0)
        staticcall poolInfo[poolInfo.length - 1].field_0.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), poolInfo[poolInfo.length - 1].field_256
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 0:
            revert with 'NH{q', 17
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = poolInfo[poolInfo.length - 1].field_256
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0] - 1
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = approve(address arg1, uint256 arg2)
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(poolInfo[poolInfo.length - 1].field_0) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, poolInfo[poolInfo.length - 1].field_256, ext_call.return_data[0] - 1, 0
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
        call poolInfo[poolInfo.length - 1].field_0 with:
           funct Mask(32, 224, 0, poolInfo[poolInfo.length - 1].field_256, ext_call.return_data[0] - 1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, poolInfo[poolInfo.length - 1].field_256, ext_call.return_data[0] - 1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(9 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                    revert with 0, 
                                'SafeERC20: ERC20 operation did not succeed',
                                mem[(9 * ceil32(return_data.size)) + 622 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    emit 0x2c9bf56b: owner, poolInfo.length - 1
    if poolInfo.length < 1:
        revert with 'NH{q', 17
    emit AddPool(arg1, poolInfo.length - 1);
    stor1 = 1
}

function resetAllowances() payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 3
        _608 = mem[64]
        mem[mem[64] + 36] = poolInfo[idx].field_256
        mem[mem[64] + 68] = 0
        _609 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_609 + 32] = mem[_609 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[64] = _608 + 164
        mem[_608 + 100] = 32
        mem[_608 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(poolInfo[idx].field_0) <= 0:
            revert with 0, 'Address: call to non-contract'
        _615 = mem[_609]
        s = 0
        while s < _615:
            mem[_608 + s + 164] = mem[_609 + s + 32]
            s = s + 32
            continue 
        if ceil32(_615) > _615:
            mem[_608 + _615 + 164] = 0
        call poolInfo[idx].field_0.mem[_608 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_608 + 168 len _615 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_608 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_608 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[_608 + idx + 232] = mem[_608 + idx + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_608 + 232]
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_608 + 168] = this.address
            mem[_608 + 200] = poolInfo[idx].field_256
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), poolInfo[idx].field_256
            mem[_608 + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > 0:
                revert with 'NH{q', 17
            mem[_608 + ceil32(return_data.size) + 200] = poolInfo[idx].field_256
            mem[_608 + ceil32(return_data.size) + 232] = ext_call.return_data[0] - 1
            mem[_608 + ceil32(return_data.size) + 164] = 68
            mem[_608 + ceil32(return_data.size) + 196] = poolInfo[idx].field_256 or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[64] = _608 + ceil32(return_data.size) + 328
            mem[_608 + ceil32(return_data.size) + 264] = 32
            mem[_608 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(poolInfo[idx].field_0) <= 0:
                revert with 0, 'Address: call to non-contract'
            s = 0
            while s < 68:
                mem[_608 + ceil32(return_data.size) + s + 328] = mem[_608 + ceil32(return_data.size) + s + 196]
                s = s + 32
                continue 
            mem[_608 + ceil32(return_data.size) + 396] = 0
            call poolInfo[idx].field_0.mem[_608 + ceil32(return_data.size) + 328 len 4] with:
                 gas gas_remaining wei
                args mem[_608 + ceil32(return_data.size) + 332 len 64]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_608 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_608 + ceil32(return_data.size) + 332] = 32
                    idx = 0
                    while idx < 32:
                        mem[_608 + ceil32(return_data.size) + idx + 396] = mem[_608 + ceil32(return_data.size) + idx + 296]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_608 + ceil32(return_data.size) + 396]
                if mem[96] > 0:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _608 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                mem[_608 + ceil32(return_data.size) + 328] = return_data.size
                mem[_608 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                    idx = 0
                    while idx < 32:
                        mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + idx + 397] = mem[_608 + ceil32(return_data.size) + idx + 296]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_608 + ceil32(return_data.size) + 360] == bool(mem[_608 + ceil32(return_data.size) + 360])
                    if not mem[_608 + ceil32(return_data.size) + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[_608 + 164] = return_data.size
        mem[_608 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_608 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_608 + ceil32(return_data.size) + 169] = 32
            idx = 0
            while idx < 32:
                mem[_608 + ceil32(return_data.size) + idx + 233] = mem[_608 + idx + 132]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[_608 + ceil32(return_data.size) + 233]
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[_608 + 196] == bool(mem[_608 + 196])
            if not mem[_608 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_608 + ceil32(return_data.size) + 169] = this.address
        mem[_608 + ceil32(return_data.size) + 201] = poolInfo[idx].field_256
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), poolInfo[idx].field_256
        mem[_608 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 0:
            revert with 'NH{q', 17
        mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = poolInfo[idx].field_256
        mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = ext_call.return_data[0] - 1
        mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
        mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = poolInfo[idx].field_256 or 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[64] = _608 + ceil32(return_data.size) + ceil32(return_data.size) + 329
        mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
        mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(poolInfo[idx].field_0) <= 0:
            revert with 0, 'Address: call to non-contract'
        s = 0
        while s < 68:
            mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + s + 329] = mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + s + 197]
            s = s + 32
            continue 
        mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
        call poolInfo[idx].field_0.mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
             gas gas_remaining wei
            args mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                idx = 0
                while idx < 32:
                    mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + idx + 397] = mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + idx + 297]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[64] = _608 + (4 * ceil32(return_data.size)) + 330
        mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
        mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_608 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_608 + (4 * ceil32(return_data.size)) + 334] = 32
            idx = 0
            while idx < 32:
                mem[_608 + (4 * ceil32(return_data.size)) + idx + 398] = mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + idx + 297]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[_608 + (4 * ceil32(return_data.size)) + 398]
        if return_data.size <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        require return_data.size >= 32
        require mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
        if mem[_608 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[_608 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_608 + (4 * ceil32(return_data.size)) + 334] = 32
        mem[_608 + (4 * ceil32(return_data.size)) + 366] = 42
        mem[_608 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
        mem[_608 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
        revert with memory
          from _608 + (4 * ceil32(return_data.size)) + 330
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    emit ResetAllowance(owner);
}

function withdrawAll(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.wantLockedTotal() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.sharesTotal() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if userInfo[arg1][address(msg.sender)] <= 0:
        revert with 0, 'user.shares is 0'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'sharesTotal is 0'
    if userInfo[arg1][address(msg.sender)] and ext_call.return_data[0] > -1 / userInfo[arg1][address(msg.sender)]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if -1 <= userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 100] = -1
        require ext_code.size(poolInfo[arg1].field_256)
        call poolInfo[arg1].field_256.0x2e1a7d4d with:
             gas gas_remaining wei
            args -1
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > userInfo[arg1][address(msg.sender)]:
            userInfo[arg1][address(msg.sender)] = 0
        else:
            if userInfo[arg1][address(msg.sender)] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            userInfo[arg1][address(msg.sender)] -= ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
        if ext_call.return_data[0] >= -1:
            mem[(6 * ceil32(return_data.size)) + 164] = -1
            mem[(6 * ceil32(return_data.size)) + 96] = 68
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
            mem[(6 * ceil32(return_data.size)) + 196] = 32
            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, -1, 0
            mem[(6 * ceil32(return_data.size)) + 328] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                    if not mem[(6 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdraw(-1, msg.sender, arg1);
        else:
            mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 96] = 68
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
            mem[(6 * ceil32(return_data.size)) + 196] = 32
            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0], 0
            mem[(6 * ceil32(return_data.size)) + 328] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                    if not mem[(6 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
    else:
        if userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
            emit Withdraw((userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
        else:
            mem[(2 * ceil32(return_data.size)) + 100] = userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0]
            require ext_code.size(poolInfo[arg1].field_256)
            call poolInfo[arg1].field_256.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > userInfo[arg1][address(msg.sender)]:
                userInfo[arg1][address(msg.sender)] = 0
            else:
                if userInfo[arg1][address(msg.sender)] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                userInfo[arg1][address(msg.sender)] -= ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
            if ext_call.return_data[0] >= userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0]:
                mem[(6 * ceil32(return_data.size)) + 164] = userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 96] = 68
                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                mem[(6 * ceil32(return_data.size)) + 196] = 32
                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0], 0
                mem[(6 * ceil32(return_data.size)) + 328] = 0
                call poolInfo[arg1].field_0 with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                        if not mem[(6 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdraw((userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
            else:
                mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 96] = 68
                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                mem[(6 * ceil32(return_data.size)) + 196] = 32
                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0], 0
                mem[(6 * ceil32(return_data.size)) + 328] = 0
                call poolInfo[arg1].field_0 with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                        if not mem[(6 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
    stor1 = 1
}

function withdrawTo(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Operator: caller is not the operator'
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.wantLockedTotal() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.sharesTotal() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if userInfo[arg1][address(msg.sender)] <= 0:
        revert with 0, 'user.shares is 0'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'sharesTotal is 0'
    if userInfo[arg1][address(msg.sender)] and ext_call.return_data[0] > -1 / userInfo[arg1][address(msg.sender)]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if arg2 <= userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0]:
        if arg2 <= 0:
            emit Withdraw(arg2, msg.sender, arg1);
        else:
            mem[(2 * ceil32(return_data.size)) + 100] = arg2
            require ext_code.size(poolInfo[arg1].field_256)
            call poolInfo[arg1].field_256.0x2e1a7d4d with:
                 gas gas_remaining wei
                args arg2
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > userInfo[arg1][address(msg.sender)]:
                userInfo[arg1][address(msg.sender)] = 0
            else:
                if userInfo[arg1][address(msg.sender)] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                userInfo[arg1][address(msg.sender)] -= ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 132] = arg3
            if ext_call.return_data[0] >= arg2:
                mem[(6 * ceil32(return_data.size)) + 164] = arg2
                mem[(6 * ceil32(return_data.size)) + 96] = 68
                mem[(6 * ceil32(return_data.size)) + 132 len 28] = address(arg3) << 64
                mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                mem[(6 * ceil32(return_data.size)) + 196] = 32
                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, arg2, 0
                mem[(6 * ceil32(return_data.size)) + 328] = 0
                call poolInfo[arg1].field_0 with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, arg2, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                        if not mem[(6 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdraw(arg2, msg.sender, arg1);
            else:
                mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 96] = 68
                mem[(6 * ceil32(return_data.size)) + 132 len 28] = address(arg3) << 64
                mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                mem[(6 * ceil32(return_data.size)) + 196] = 32
                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, ext_call.return_data[0], 0
                mem[(6 * ceil32(return_data.size)) + 328] = 0
                call poolInfo[arg1].field_0 with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                        if not mem[(6 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
    else:
        if userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
            emit Withdraw((userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
        else:
            mem[(2 * ceil32(return_data.size)) + 100] = userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0]
            require ext_code.size(poolInfo[arg1].field_256)
            call poolInfo[arg1].field_256.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > userInfo[arg1][address(msg.sender)]:
                userInfo[arg1][address(msg.sender)] = 0
            else:
                if userInfo[arg1][address(msg.sender)] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                userInfo[arg1][address(msg.sender)] -= ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 132] = arg3
            if ext_call.return_data[0] >= userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0]:
                mem[(6 * ceil32(return_data.size)) + 164] = userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 96] = 68
                mem[(6 * ceil32(return_data.size)) + 132 len 28] = address(arg3) << 64
                mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                mem[(6 * ceil32(return_data.size)) + 196] = 32
                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0], 0
                mem[(6 * ceil32(return_data.size)) + 328] = 0
                call poolInfo[arg1].field_0 with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                        if not mem[(6 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdraw((userInfo[arg1][address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
            else:
                mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 96] = 68
                mem[(6 * ceil32(return_data.size)) + 132 len 28] = address(arg3) << 64
                mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                mem[(6 * ceil32(return_data.size)) + 196] = 32
                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, ext_call.return_data[0], 0
                mem[(6 * ceil32(return_data.size)) + 328] = 0
                call poolInfo[arg1].field_0 with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                        if not mem[(6 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
    stor1 = 1
}



}
