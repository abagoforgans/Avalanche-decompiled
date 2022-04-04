contract main {




// =====================  Runtime code  =====================


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
    return bool(stor2[arg1])
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateOperator(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor2[address(arg1)] = uint8(arg2)
    emit OperatorUpdated(arg1, arg2);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function stakedWantTokens(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not userInfo[arg1][address(arg2)]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * userInfo[arg1][address(arg2)] / userInfo[arg1][address(arg2)] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] * userInfo[arg1][address(arg2)] / ext_call.return_data[0])
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    require arg1 < poolInfo.length
    if arg2:
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
        mem[416 len 4] = 0
        call poolInfo[arg1].field_0 with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg2
            if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_256)
        call poolInfo[arg1].field_256.deposit(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + userInfo[arg1][address(msg.sender)] < userInfo[arg1][address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[arg1][address(msg.sender)] += ext_call.return_data[0]
    emit Deposit(arg2, msg.sender, arg1);
    stor1 = 1
}

function deposit(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x654f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require arg1 < poolInfo.length
    if arg2:
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
        mem[416 len 4] = 0
        call poolInfo[arg1].field_0 with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg2
            if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_256)
        call poolInfo[arg1].field_256.deposit(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg3), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + userInfo[arg1][address(arg3)] < userInfo[arg1][address(arg3)]:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[arg1][address(arg3)] += ext_call.return_data[0]
    emit Deposit(arg2, arg3, arg1);
    stor1 = 1
}

function resetSingleAllowance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require arg1 < poolInfo.length
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), poolInfo[arg1].field_256, poolInfo[arg1].field_256, 0
    call poolInfo[arg1].field_0 with:
       funct poolInfo[arg1].field_256
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), poolInfo[arg1].field_256, poolInfo[arg1].field_256, 0
        if not approve(address rg1, uint256 rg2), poolInfo[arg1].field_256:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), poolInfo[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address rg1, uint256 rg2), poolInfo[arg1].field_256, poolInfo[arg1].field_256, Mask(224, 32, ext_call.return_data[0] - 1) >> 32
        call poolInfo[arg1].field_0 with:
           funct poolInfo[arg1].field_256
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] - 1) << 224, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), poolInfo[arg1].field_256, poolInfo[arg1].field_256, 0
            if not approve(address rg1, uint256 rg2), poolInfo[arg1].field_256:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), poolInfo[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), poolInfo[arg1].field_256, poolInfo[arg1].field_256, Mask(224, 32, ext_call.return_data[0] - 1) >> 32
        call poolInfo[arg1].field_0 with:
           funct poolInfo[arg1].field_256
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] - 1) << 224, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), poolInfo[arg1].field_256, poolInfo[arg1].field_256, 0
            if not approve(address rg1, uint256 rg2), poolInfo[arg1].field_256:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
        else:
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function addPool(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if stor5[address(arg1)]:
        revert with 0, 'Existing strategy'
    require ext_code.size(arg1)
    staticcall arg1.wantAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = address(ext_call.return_data[12 len 20])
    poolInfo[poolInfo.length].field_256 = arg1
    stor5[address(arg1)] = 1
    mem[160] = 30
    mem[192] = 'SafeMath: subtraction overflow'
    if 1 > poolInfo.length:
        revert with 0, 'SafeMath: subtraction overflow'
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require poolInfo.length - 1 < poolInfo.length
    mem[260] = poolInfo[poolInfo.length - 1].field_256
    mem[292] = 0
    mem[224] = 68
    mem[260 len 28] = poolInfo[poolInfo.length - 1].field_256
    mem[256 len 4] = approve(address rg1, uint256 rg2)
    mem[324] = 32
    mem[356] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[poolInfo.length - 1].field_0):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[poolInfo.length - 1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[388 len 64] = approve(address rg1, uint256 rg2), poolInfo[poolInfo.length - 1].field_256, poolInfo[poolInfo.length - 1].field_256, 0
    mem[480 len 4] = 0
    call poolInfo[poolInfo.length - 1].field_0 with:
       funct poolInfo[poolInfo.length - 1].field_256
         gas gas_remaining wei
        args 0, mem[452 len 4]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[12 len 20]:
                revert with memory
                  from 128
                   len ext_call.return_data[12 len 20]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[12 len 20]:
            require ext_call.return_data[12 len 20] >= 32
            if not arg1:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[498 len 22]
        require ext_code.size(poolInfo[poolInfo.length - 1].field_0)
        staticcall poolInfo[poolInfo.length - 1].field_0.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), poolInfo[poolInfo.length - 1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[424] = poolInfo[poolInfo.length - 1].field_256
        mem[456] = ext_call.return_data[0] - 1
        mem[388] = 68
        mem[424 len 28] = poolInfo[poolInfo.length - 1].field_256
        mem[420 len 4] = approve(address rg1, uint256 rg2)
        mem[488] = 32
        mem[520] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[poolInfo.length - 1].field_0):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[poolInfo.length - 1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[552 len 64] = approve(address rg1, uint256 rg2), poolInfo[poolInfo.length - 1].field_256, poolInfo[poolInfo.length - 1].field_256, Mask(224, 32, ext_call.return_data[0] - 1) >> 32
        mem[644 len 4] = 0
        call poolInfo[poolInfo.length - 1].field_0 with:
           funct poolInfo[poolInfo.length - 1].field_256
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] - 1) << 224, mem[616 len 4]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[12 len 20]:
                    revert with memory
                      from 128
                       len ext_call.return_data[12 len 20]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[12 len 20]:
                require ext_call.return_data[12 len 20] >= 32
                if not arg1:
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[662 len 22]
        else:
            mem[584 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[584]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 663 len 22]
    else:
        mem[388] = return_data.size
        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[420]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 499 len 22]
        require ext_code.size(poolInfo[poolInfo.length - 1].field_0)
        staticcall poolInfo[poolInfo.length - 1].field_0.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), poolInfo[poolInfo.length - 1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 425] = poolInfo[poolInfo.length - 1].field_256
        mem[ceil32(return_data.size) + 457] = ext_call.return_data[0] - 1
        mem[ceil32(return_data.size) + 389] = 68
        mem[ceil32(return_data.size) + 425 len 28] = poolInfo[poolInfo.length - 1].field_256
        mem[ceil32(return_data.size) + 421 len 4] = approve(address rg1, uint256 rg2)
        mem[ceil32(return_data.size) + 489] = 32
        mem[ceil32(return_data.size) + 521] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[poolInfo.length - 1].field_0):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[poolInfo.length - 1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 553 len 64] = approve(address rg1, uint256 rg2), poolInfo[poolInfo.length - 1].field_256, poolInfo[poolInfo.length - 1].field_256, Mask(224, 32, ext_call.return_data[0] - 1) >> 32
        mem[ceil32(return_data.size) + 645 len 4] = 0
        call poolInfo[poolInfo.length - 1].field_0 with:
           funct poolInfo[poolInfo.length - 1].field_256
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] - 1) << 224, mem[ceil32(return_data.size) + 617 len 4]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[12 len 20]:
                    revert with memory
                      from 128
                       len ext_call.return_data[12 len 20]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[12 len 20]:
                require ext_call.return_data[12 len 20] >= 32
                if not arg1:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 663 len 22]
        else:
            mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 585]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    emit AddPool(arg1);
    stor1 = 1
}

function resetAllowances() payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 3
        _278 = mem[64]
        mem[mem[64] + 36] = poolInfo[idx].field_256
        mem[mem[64] + 68] = 0
        _279 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_279 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_279 + 36 len 28]
        mem[64] = _278 + 164
        mem[_278 + 100] = 32
        mem[_278 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[idx].field_0):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[idx].field_0):
            revert with 0, 'Address: call to non-contract'
        _285 = mem[_279]
        t = _279 + 32
        u = _278 + 164
        s = mem[_279]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_278 + floor32(mem[_279]) + 164] = mem[_279 + -(mem[_279] % 32) + floor32(mem[_279]) + 64 len mem[_279] % 32] or Mask(8 * -(mem[_279] % 32) + 32, -(8 * -(mem[_279] % 32) + 32) + 256, mem[_278 + floor32(mem[_279]) + 164])
        call poolInfo[idx].field_0.mem[_278 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_278 + 168 len _285 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_278 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_278 + 168] = 32
                idx = 32
                while idx < 32:
                    mem[idx + _278 + 232] = mem[idx + _278 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_278 + 132]
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_278 + 274 len 22]
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), poolInfo[idx].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_278 + 200] = poolInfo[idx].field_256
            mem[_278 + 232] = ext_call.return_data[0] - 1
            mem[_278 + 164] = 68
            mem[_278 + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or poolInfo[idx].field_256
            mem[64] = _278 + 328
            mem[_278 + 264] = 32
            mem[_278 + 296] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[idx].field_0):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(poolInfo[idx].field_0):
                revert with 0, 'Address: call to non-contract'
            t = _278 + 196
            u = _278 + 328
            s = 68
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_278 + 392] = 0 or Mask(224, 32, mem[_278 + 392])
            call poolInfo[idx].field_0.mem[_278 + 328 len 4] with:
                 gas gas_remaining wei
                args mem[_278 + 332 len 64]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_278 + 438 len 22]
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_278 + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_278 + 332] = 32
                idx = 32
                while idx < 32:
                    mem[idx + _278 + 396] = mem[idx + _278 + 296]
                    idx = idx + 32
                    continue 
            else:
                mem[64] = _278 + ceil32(return_data.size) + 329
                mem[_278 + 328] = return_data.size
                mem[_278 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_278 + 360]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_278 + ceil32(return_data.size) + 439 len 22]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_278 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_278 + ceil32(return_data.size) + 333] = 32
                idx = 32
                while idx < 32:
                    mem[idx + _278 + ceil32(return_data.size) + 397] = mem[idx + _278 + 296]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeERC20: low-level call failed'
        mem[_278 + 164] = return_data.size
        mem[_278 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_278 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_278 + ceil32(return_data.size) + 169] = 32
            idx = 32
            while idx < 32:
                mem[idx + _278 + ceil32(return_data.size) + 233] = mem[idx + _278 + 132]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[_278 + 132]
        if not return_data.size:
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), poolInfo[idx].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_278 + ceil32(return_data.size) + 201] = poolInfo[idx].field_256
            mem[_278 + ceil32(return_data.size) + 233] = ext_call.return_data[0] - 1
            mem[_278 + ceil32(return_data.size) + 165] = 68
            mem[_278 + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or poolInfo[idx].field_256
            mem[64] = _278 + ceil32(return_data.size) + 329
            mem[_278 + ceil32(return_data.size) + 265] = 32
            mem[_278 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[idx].field_0):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(poolInfo[idx].field_0):
                revert with 0, 'Address: call to non-contract'
            t = _278 + ceil32(return_data.size) + 197
            u = _278 + ceil32(return_data.size) + 329
            s = 68
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_278 + ceil32(return_data.size) + 393] = 0 or Mask(224, 32, mem[_278 + ceil32(return_data.size) + 393])
            call poolInfo[idx].field_0.mem[_278 + ceil32(return_data.size) + 329 len 4] with:
                 gas gas_remaining wei
                args mem[_278 + ceil32(return_data.size) + 333 len 64]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_278 + ceil32(return_data.size) + 439 len 22]
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_278 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_278 + ceil32(return_data.size) + 333] = 32
                idx = 32
                while idx < 32:
                    mem[idx + _278 + ceil32(return_data.size) + 397] = mem[idx + _278 + ceil32(return_data.size) + 297]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeERC20: low-level call failed'
            mem[64] = _278 + (2 * ceil32(return_data.size)) + 330
            mem[_278 + ceil32(return_data.size) + 329] = return_data.size
            mem[_278 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_278 + ceil32(return_data.size) + 361]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_278 + (2 * ceil32(return_data.size)) + 440 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_278 + (2 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_278 + (2 * ceil32(return_data.size)) + 334] = 32
            idx = 32
            while idx < 32:
                mem[idx + _278 + (2 * ceil32(return_data.size)) + 398] = mem[idx + _278 + ceil32(return_data.size) + 297]
                idx = idx + 32
                continue 
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[_278 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        require return_data.size >= 32
        if not mem[_278 + 196]:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[_278 + ceil32(return_data.size) + 275 len 22]
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), poolInfo[idx].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_278 + ceil32(return_data.size) + 201] = poolInfo[idx].field_256
        mem[_278 + ceil32(return_data.size) + 233] = ext_call.return_data[0] - 1
        mem[_278 + ceil32(return_data.size) + 165] = 68
        mem[_278 + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or poolInfo[idx].field_256
        mem[64] = _278 + ceil32(return_data.size) + 329
        mem[_278 + ceil32(return_data.size) + 265] = 32
        mem[_278 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[idx].field_0):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[idx].field_0):
            revert with 0, 'Address: call to non-contract'
        t = _278 + ceil32(return_data.size) + 197
        u = mem[64]
        s = mem[_278 + ceil32(return_data.size) + 165]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_278 + ceil32(return_data.size) + 165])] = mem[_278 + ceil32(return_data.size) + floor32(mem[_278 + ceil32(return_data.size) + 165]) + -(mem[_278 + ceil32(return_data.size) + 165] % 32) + 229 len mem[_278 + ceil32(return_data.size) + 165] % 32] or Mask(8 * -(mem[_278 + ceil32(return_data.size) + 165] % 32) + 32, -(8 * -(mem[_278 + ceil32(return_data.size) + 165] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_278 + ceil32(return_data.size) + 165])])
        call poolInfo[idx].field_0.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _278 + ceil32(return_data.size) + -mem[64] + 393]
        if not return_data.size:
            if ext_call.success:
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                idx = idx + 1
                continue 
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_278 + ceil32(return_data.size) + 265]
            _872 = mem[_278 + ceil32(return_data.size) + 265]
            if not mem[_278 + ceil32(return_data.size) + 265]:
                if not mem[_278 + ceil32(return_data.size) + 265] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_278 + ceil32(return_data.size) + 265] + 32]
                mem[floor32(mem[_278 + ceil32(return_data.size) + 265]) + mem[64] + 68] = mem[floor32(mem[_278 + ceil32(return_data.size) + 265]) + mem[64] + -(mem[_278 + ceil32(return_data.size) + 265] % 32) + 100 len mem[_278 + ceil32(return_data.size) + 265] % 32]
            else:
                mem[mem[64] + 68] = mem[_278 + ceil32(return_data.size) + 297]
                idx = 32
                while idx < _872:
                    mem[idx + mem[64] + 68] = mem[idx + _278 + ceil32(return_data.size) + 297]
                    idx = idx + 32
                    continue 
                if not _872 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _872 + 32]
                mem[floor32(_872) + mem[64] + 68] = mem[floor32(_872) + mem[64] + -(_872 % 32) + 100 len _872 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_872) + 64]
        _835 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_835] = return_data.size
        mem[_835 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size:
                require return_data.size >= 32
                if not mem[_835 + 32]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[mem[64] + 110 len 22]
            idx = idx + 1
            continue 
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_278 + ceil32(return_data.size) + 265]
        _876 = mem[_278 + ceil32(return_data.size) + 265]
        if not mem[_278 + ceil32(return_data.size) + 265]:
            if not mem[_278 + ceil32(return_data.size) + 265] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_278 + ceil32(return_data.size) + 265] + 32]
            mem[floor32(mem[_278 + ceil32(return_data.size) + 265]) + mem[64] + 68] = mem[floor32(mem[_278 + ceil32(return_data.size) + 265]) + mem[64] + -(mem[_278 + ceil32(return_data.size) + 265] % 32) + 100 len mem[_278 + ceil32(return_data.size) + 265] % 32]
        else:
            mem[mem[64] + 68] = mem[_278 + ceil32(return_data.size) + 297]
            idx = 32
            while idx < _876:
                mem[idx + mem[64] + 68] = mem[idx + _278 + ceil32(return_data.size) + 297]
                idx = idx + 32
                continue 
            if not _876 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _876 + 32]
            mem[floor32(_876) + mem[64] + 68] = mem[floor32(_876) + mem[64] + -(_876 % 32) + 100 len _876 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_876) + 64]
}

function withdrawAll(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userInfo[arg1][msg.sender]:
        revert with 0, 'user.shares is 0'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'sharesTotal is 0'
    if not userInfo[arg1][msg.sender]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if -1 <= 0 / ext_call.return_data[0]:
            require arg1 < poolInfo.length
            require ext_code.size(poolInfo[arg1].field_256)
            call poolInfo[arg1].field_256.0xf3fef3a3 with:
                 gas gas_remaining wei
                args msg.sender, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= userInfo[arg1][msg.sender]:
                userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                require ext_code.size(poolInfo[arg1].field_0)
                staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if ext_call.return_data[0] >= -1:
                    mem[388 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                    emit Withdraw(-1, msg.sender, arg1);
                else:
                    mem[388 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
            else:
                userInfo[arg1][msg.sender] = 0
                require ext_code.size(poolInfo[arg1].field_0)
                staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if ext_call.return_data[0] >= -1:
                    mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    emit Withdraw(-1, msg.sender, arg1);
                else:
                    mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
        else:
            if not 0 / ext_call.return_data[0]:
                emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
            else:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_256)
                call poolInfo[arg1].field_256.0xf3fef3a3 with:
                     gas gas_remaining wei
                    args msg.sender, 0 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[arg1][msg.sender]:
                    userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                        mem[388 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[388 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    userInfo[arg1][msg.sender] = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                        mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
    else:
        if ext_call.return_data[0] * userInfo[arg1][msg.sender] / userInfo[arg1][msg.sender] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if -1 <= ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
            require arg1 < poolInfo.length
            require ext_code.size(poolInfo[arg1].field_256)
            call poolInfo[arg1].field_256.0xf3fef3a3 with:
                 gas gas_remaining wei
                args msg.sender, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > userInfo[arg1][msg.sender]:
                userInfo[arg1][msg.sender] = 0
                require ext_code.size(poolInfo[arg1].field_0)
                staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if ext_call.return_data[0] >= -1:
                    mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    emit Withdraw(-1, msg.sender, arg1);
                else:
                    mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
            else:
                userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                require ext_code.size(poolInfo[arg1].field_0)
                staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if ext_call.return_data[0] >= -1:
                    mem[388 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                    emit Withdraw(-1, msg.sender, arg1);
                else:
                    mem[388 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                    mem[452 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
        else:
            if not ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
                emit Withdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]), msg.sender, arg1);
            else:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_256)
                call poolInfo[arg1].field_256.0xf3fef3a3 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[arg1][msg.sender]:
                    userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
                        mem[388 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) >> 32
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[388 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    userInfo[arg1][msg.sender] = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
                        mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) >> 32
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
}

function withdraw(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x654f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userInfo[arg1][msg.sender]:
        revert with 0, 'user.shares is 0'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'sharesTotal is 0'
    if not userInfo[arg1][msg.sender]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if arg2 <= 0 / ext_call.return_data[0]:
            if not arg2:
                emit Withdraw(arg2, msg.sender, arg1);
            else:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_256)
                call poolInfo[arg1].field_256.0xf3fef3a3 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[arg1][msg.sender]:
                    userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] < arg2:
                        mem[388 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                    else:
                        mem[388 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(arg2, msg.sender, arg1);
                else:
                    userInfo[arg1][msg.sender] = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] < arg2:
                        mem[324 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                    else:
                        mem[324 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(arg2, msg.sender, arg1);
        else:
            if not 0 / ext_call.return_data[0]:
                emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
            else:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_256)
                call poolInfo[arg1].field_256.0xf3fef3a3 with:
                     gas gas_remaining wei
                    args msg.sender, 0 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[arg1][msg.sender]:
                    userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                        mem[388 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[388 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    userInfo[arg1][msg.sender] = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] < 0 / ext_call.return_data[0]:
                        mem[324 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                    else:
                        mem[324 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
    else:
        if ext_call.return_data[0] * userInfo[arg1][msg.sender] / userInfo[arg1][msg.sender] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if arg2 <= ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
            if not arg2:
                emit Withdraw(arg2, msg.sender, arg1);
            else:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_256)
                call poolInfo[arg1].field_256.0xf3fef3a3 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > userInfo[arg1][msg.sender]:
                    userInfo[arg1][msg.sender] = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= arg2:
                        mem[324 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(arg2, msg.sender, arg1);
                    else:
                        mem[324 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] < arg2:
                        mem[388 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                    else:
                        mem[388 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(arg2, msg.sender, arg1);
        else:
            if not ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
                emit Withdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]), msg.sender, arg1);
            else:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_256)
                call poolInfo[arg1].field_256.0xf3fef3a3 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[arg1][msg.sender]:
                    userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
                        mem[388 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) >> 32
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[388 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    userInfo[arg1][msg.sender] = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] < ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
                        mem[324 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                    else:
                        mem[324 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) >> 32
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]), msg.sender, arg1);
    stor1 = 1
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userInfo[arg1][msg.sender]:
        revert with 0, 'user.shares is 0'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'sharesTotal is 0'
    if not userInfo[arg1][msg.sender]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if arg2 <= 0 / ext_call.return_data[0]:
            if not arg2:
                emit Withdraw(arg2, msg.sender, arg1);
            else:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_256)
                call poolInfo[arg1].field_256.0xf3fef3a3 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > userInfo[arg1][msg.sender]:
                    userInfo[arg1][msg.sender] = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= arg2:
                        mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(arg2, msg.sender, arg1);
                    else:
                        mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= arg2:
                        mem[388 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(arg2, msg.sender, arg1);
                    else:
                        mem[388 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
        else:
            if not 0 / ext_call.return_data[0]:
                emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
            else:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_256)
                call poolInfo[arg1].field_256.0xf3fef3a3 with:
                     gas gas_remaining wei
                    args msg.sender, 0 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[arg1][msg.sender]:
                    userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                        mem[388 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[388 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    userInfo[arg1][msg.sender] = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                        mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
    else:
        if ext_call.return_data[0] * userInfo[arg1][msg.sender] / userInfo[arg1][msg.sender] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if arg2 > ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
            if not ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
                emit Withdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]), msg.sender, arg1);
            else:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_256)
                call poolInfo[arg1].field_256.0xf3fef3a3 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[arg1][msg.sender]:
                    userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
                        mem[388 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) >> 32
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[388 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    userInfo[arg1][msg.sender] = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
                        mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) >> 32
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
        else:
            if not arg2:
                emit Withdraw(arg2, msg.sender, arg1);
            else:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_256)
                call poolInfo[arg1].field_256.0xf3fef3a3 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > userInfo[arg1][msg.sender]:
                    userInfo[arg1][msg.sender] = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= arg2:
                        mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(arg2, msg.sender, arg1);
                    else:
                        mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] < arg2:
                        mem[388 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                    else:
                        mem[388 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(arg2, msg.sender, arg1);
    stor1 = 1
}



}
