contract main {




// =====================  Runtime code  =====================


const decimals = 18


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
uint256 totalDeposits;
uint256 sub_8fe54e87;
address stor8;
address stor9;
address stor10;
address stor11;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function totalDeposits() payable {
    return totalDeposits
}

function owner() payable {
    return owner
}

function sub_8fe54e87(?) payable {
    return sub_8fe54e87
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateMinTokensToReinvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8fe54e87 = arg1
}

function emergencyWithdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor11)
    call stor11.exit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function checkReward() payable {
    require ext_code.size(stor11)
    staticcall stor11.earned(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function recoverERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Recovered(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x77617070726f76653a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[200 len 28]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) payable {
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x735f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[216 len 12]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    46,
                    0x655f7472616e73666572546f6b656e733a207472616e7366657220657863656564732066726f6d2062616c616e63,
                    mem[174 len 18],
                    mem[210 len 14]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getLPTokensForShares(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        return 0
    require totalSupply
    if totalSupply * totalDeposits / totalSupply != totalDeposits:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalSupply * totalDeposits:
        return 0
    if not arg1:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return (0 / totalSupply)
    else:
        if arg1:
            if arg1 * totalDeposits / arg1 != totalDeposits:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                return (arg1 * totalDeposits / totalSupply)
    revert
}

function getSharesForLPTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        return arg1
    require totalSupply
    if totalSupply * totalDeposits / totalSupply != totalDeposits:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalSupply * totalDeposits:
        return arg1
    if not arg1:
        if totalDeposits <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalDeposits:
            return (0 / totalDeposits)
    else:
        if arg1:
            if arg1 * totalSupply / arg1 != totalSupply:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalDeposits <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalDeposits:
                return (arg1 * totalSupply / totalDeposits)
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if msg.sender == arg1:
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        52,
                        0x735f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[216 len 12]
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        46,
                        0x655f7472616e73666572546f6b656e733a207472616e7366657220657863656564732066726f6d2062616c616e63,
                        mem[174 len 18],
                        mem[210 len 14]
    else:
        if allowance[address(arg1)][address(msg.sender)] == -1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            52,
                            0x735f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[216 len 12]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            46,
                            0x655f7472616e73666572546f6b656e733a207472616e7366657220657863656564732066726f6d2062616c616e63,
                            mem[174 len 18],
                            mem[210 len 14]
        else:
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            47,
                            0x737472616e7366657246726f6d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[175 len 17],
                            mem[209 len 15]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            if not arg2:
                revert with 0, 
                            32,
                            52,
                            0x735f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[312 len 12]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            46,
                            0x655f7472616e73666572546f6b656e733a207472616e7366657220657863656564732066726f6d2062616c616e63,
                            mem[270 len 18],
                            mem[306 len 14]
    ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 5))))
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor9)
    staticcall stor9.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'deposit::allowance'
    require ext_code.size(stor9)
    call stor9.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'deposit::transferFrom'
    require ext_code.size(stor9)
    staticcall stor9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, '_stakeLpTokens'
    if totalDeposits + ext_call.return_data[0] < totalDeposits:
        revert with 0, 'SafeMath: addition overflow'
    totalDeposits += ext_call.return_data[0]
    require ext_code.size(stor11)
    call stor11.stake(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not totalSupply:
        if totalSupply + arg1 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += arg1
        emit Transfer(arg1, 0, msg.sender);
    else:
        require totalSupply
        if totalSupply * totalDeposits / totalSupply != totalDeposits:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalSupply * totalDeposits:
            if totalSupply + arg1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += arg1
            emit Transfer(arg1, 0, msg.sender);
        else:
            if not arg1:
                if totalDeposits <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposits
                if totalSupply + (0 / totalDeposits) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / totalDeposits
                if balanceOf[address(msg.sender)] + (0 / totalDeposits) < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / totalDeposits
                emit Transfer((0 / totalDeposits), 0, msg.sender);
            else:
                require arg1
                if arg1 * totalSupply / arg1 != totalSupply:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalDeposits <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposits
                if totalSupply + (arg1 * totalSupply / totalDeposits) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1 * totalSupply / totalDeposits
                if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                emit Transfer((arg1 * totalSupply / totalDeposits), 0, msg.sender);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalSupply:
        require totalSupply
        if totalSupply * totalDeposits / totalSupply != totalDeposits:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply * totalDeposits:
            if not arg1:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if 0 / totalSupply > 0:
                    if 0 / totalSupply > totalDeposits:
                        revert with 0, 'SafeMath: subtraction underflow'
                    totalDeposits -= 0 / totalSupply
                    require ext_code.size(stor11)
                    call stor11.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args (0 / totalSupply)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor9)
                    call stor9.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'withdraw::failed'
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    39,
                                    0x655f6275726e3a206275726e20616d6f756e7420657863656564732066726f6d2062616c616e63,
                                    mem[295 len 25],
                                    mem[345 len 7]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 
                                    32,
                                    39,
                                    0x735f6275726e3a206275726e20616d6f756e74206578636565647320746f74616c20737570706c,
                                    mem[391 len 25],
                                    mem[441 len 7]
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
            else:
                require arg1
                if arg1 * totalDeposits / arg1 != totalDeposits:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if arg1 * totalDeposits / totalSupply > 0:
                    if arg1 * totalDeposits / totalSupply > totalDeposits:
                        revert with 0, 'SafeMath: subtraction underflow'
                    totalDeposits -= arg1 * totalDeposits / totalSupply
                    require ext_code.size(stor11)
                    call stor11.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args (arg1 * totalDeposits / totalSupply)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor9)
                    call stor9.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * totalDeposits / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'withdraw::failed'
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    39,
                                    0x655f6275726e3a206275726e20616d6f756e7420657863656564732066726f6d2062616c616e63,
                                    mem[295 len 25],
                                    mem[345 len 7]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 
                                    32,
                                    39,
                                    0x735f6275726e3a206275726e20616d6f756e74206578636565647320746f74616c20737570706c,
                                    mem[391 len 25],
                                    mem[441 len 7]
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
}

function reinvest() payable {
    require ext_code.size(stor11)
    staticcall stor11.earned(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_8fe54e87:
        revert with 0, 'MIN_TOKENS_FOR_REINVEST'
    require ext_code.size(stor11)
    call stor11.getReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if ext_call.return_data[0] / 2 <= 0:
        revert with 0, 'rewardToken balance'
    mem[160] = 2
    mem[192] = stor10
    require ext_code.size(stor9)
    staticcall stor9.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[224] = ext_call.return_data[12 len 20]
    if stor10 == mem[236 len 20]:
        require ext_code.size(stor9)
        staticcall stor9.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[224] = ext_call.return_data[12 len 20]
        if stor10 == mem[236 len 20]:
            require ext_code.size(stor9)
            staticcall stor9.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor9)
            staticcall stor9.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor8)
            call stor8.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), Mask(255, 1, ext_call.return_data[0]), Mask(255, 1, ext_call.return_data[0]), 0, 0, address(this.address), block.timestamp
        else:
            mem[256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[260] = ext_call.return_data[0] / 2
            mem[292] = 64
            mem[324] = 2
            mem[356 len 0] = None
            require ext_code.size(stor8)
            staticcall stor8.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args Mask(255, 1, ext_call.return_data[0]), Array(len=2, data=mem[356 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 256
            require return_data.size >= 32
            _222 = mem[256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[mem[256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[mem[256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]
            _228 = mem[_222 + 256]
            mem[ceil32(return_data.size) + 288 len floor32(mem[_222 + 256])] = mem[_222 + 288 len floor32(mem[_222 + 256])]
            mem[64] = (32 * _228) + ceil32(return_data.size) + 288
            require mem[ceil32(return_data.size) + 256] - 1 < mem[ceil32(return_data.size) + 256]
            _372 = mem[(32 * mem[ceil32(return_data.size) + 256] - 1) + ceil32(return_data.size) + 288]
            mem[(32 * _228) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _228) + ceil32(return_data.size) + 292] = ext_call.return_data[0] / 2
            mem[(32 * _228) + ceil32(return_data.size) + 324] = _372
            mem[(32 * _228) + ceil32(return_data.size) + 388] = this.address
            mem[(32 * _228) + ceil32(return_data.size) + 420] = block.timestamp
            mem[(32 * _228) + ceil32(return_data.size) + 356] = 160
            mem[(32 * _228) + ceil32(return_data.size) + 452] = 2
            mem[(32 * _228) + ceil32(return_data.size) + 484 len 0] = None
            require ext_code.size(stor8)
            call stor8.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), _372, Array(len=2, data=mem[(32 * _228) + ceil32(return_data.size) + 484 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _228) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _228) + (2 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            require mem[(32 * _228) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[(32 * _228) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _228) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * _228) + ceil32(return_data.size) + 288] <= 4294967296 and mem[(32 * _228) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[mem[(32 * _228) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * _228) + ceil32(return_data.size) + 288]) + 32 <= return_data.size
            require ext_code.size(stor9)
            staticcall stor9.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor9)
            staticcall stor9.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor8)
            call stor8.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), Mask(255, 1, ext_call.return_data[0]), _372, 0, 0, address(this.address), block.timestamp
    else:
        mem[256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[260] = ext_call.return_data[0] / 2
        mem[292] = 64
        mem[324] = 2
        mem[356 len 0] = None
        require ext_code.size(stor8)
        staticcall stor8.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args Mask(255, 1, ext_call.return_data[0]), Array(len=2, data=mem[356 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 256
        require return_data.size >= 32
        _224 = mem[256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
        require mem[256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
        require mem[mem[256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[mem[256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]
        _229 = mem[_224 + 256]
        mem[ceil32(return_data.size) + 288 len floor32(mem[_224 + 256])] = mem[_224 + 288 len floor32(mem[_224 + 256])]
        mem[64] = (32 * _229) + ceil32(return_data.size) + 288
        require mem[ceil32(return_data.size) + 256] - 1 < mem[ceil32(return_data.size) + 256]
        _376 = mem[(32 * mem[ceil32(return_data.size) + 256] - 1) + ceil32(return_data.size) + 288]
        mem[(32 * _229) + ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _229) + ceil32(return_data.size) + 292] = ext_call.return_data[0] / 2
        mem[(32 * _229) + ceil32(return_data.size) + 324] = _376
        mem[(32 * _229) + ceil32(return_data.size) + 388] = this.address
        mem[(32 * _229) + ceil32(return_data.size) + 420] = block.timestamp
        mem[(32 * _229) + ceil32(return_data.size) + 356] = 160
        mem[(32 * _229) + ceil32(return_data.size) + 452] = 2
        mem[(32 * _229) + ceil32(return_data.size) + 484 len 0] = None
        require ext_code.size(stor8)
        call stor8.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args Mask(255, 1, ext_call.return_data[0]), _376, Array(len=2, data=mem[(32 * _229) + ceil32(return_data.size) + 484 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _229) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _229) + (2 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        _510 = mem[(32 * _229) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[(32 * _229) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
        require mem[(32 * _229) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _229) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * _229) + ceil32(return_data.size) + 288] <= 4294967296 and mem[(32 * _229) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[mem[(32 * _229) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * _229) + ceil32(return_data.size) + 288]) + 32 <= return_data.size
        mem[(32 * _229) + (2 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _229) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * _229) + ceil32(return_data.size) + 288]
        _515 = mem[_510 + (32 * _229) + ceil32(return_data.size) + 288]
        mem[(32 * _229) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_510 + (32 * _229) + ceil32(return_data.size) + 288])] = mem[_510 + (32 * _229) + ceil32(return_data.size) + 320 len floor32(mem[_510 + (32 * _229) + ceil32(return_data.size) + 288])]
        require ext_code.size(stor9)
        staticcall stor9.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[224] = ext_call.return_data[12 len 20]
        if stor10 == address(ext_call.return_data[12 len 20]):
            require ext_code.size(stor9)
            staticcall stor9.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor9)
            staticcall stor9.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor8)
            call stor8.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _376, Mask(255, 1, ext_call.return_data[0]), 0, 0, address(this.address), block.timestamp
        else:
            mem[(32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] / 2
            mem[(32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 356] = 64
            mem[(32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 388] = 2
            mem[(32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 420 len 0] = None
            require ext_code.size(stor8)
            staticcall stor8.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args Mask(255, 1, ext_call.return_data[0]), Array(len=2, data=mem[(32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 420 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            _735 = mem[(32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[(32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 320] <= 4294967296 and mem[(32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[mem[(32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 320]) + 32 <= return_data.size
            mem[(32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 320]
            _738 = mem[_735 + (32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 320]
            mem[(32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 352 len floor32(mem[_735 + (32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 320])] = mem[_735 + (32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_735 + (32 * _515) + (32 * _229) + (2 * ceil32(return_data.size)) + 320])]
            mem[64] = (32 * _738) + (32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 352
            require mem[(32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 320] - 1 < mem[(32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 320]
            _781 = mem[(32 * mem[(32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 320] - 1) + (32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 352]
            mem[(32 * _738) + (32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _738) + (32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] / 2
            mem[(32 * _738) + (32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 388] = _781
            mem[(32 * _738) + (32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 452] = this.address
            mem[(32 * _738) + (32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 484] = block.timestamp
            mem[(32 * _738) + (32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 420] = 160
            mem[(32 * _738) + (32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 516] = 2
            mem[(32 * _738) + (32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 548 len 0] = None
            require ext_code.size(stor8)
            call stor8.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), _781, Array(len=2, data=mem[(32 * _738) + (32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 548 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _738) + (32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _738) + (32 * _515) + (32 * _229) + (6 * ceil32(return_data.size)) + 352
            require return_data.size >= 32
            require mem[(32 * _738) + (32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[(32 * _738) + (32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _738) + (32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * _738) + (32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 352] <= 4294967296 and mem[(32 * _738) + (32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[mem[(32 * _738) + (32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * _738) + (32 * _515) + (32 * _229) + (4 * ceil32(return_data.size)) + 352]) + 32 <= return_data.size
            require ext_code.size(stor9)
            staticcall stor9.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor9)
            staticcall stor9.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor8)
            call stor8.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _376, _781, 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(stor9)
    staticcall stor9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, '_stakeLpTokens'
    if totalDeposits + ext_call.return_data[0] < totalDeposits:
        revert with 0, 'SafeMath: addition overflow'
    totalDeposits += ext_call.return_data[0]
    require ext_code.size(stor11)
    call stor11.stake(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
