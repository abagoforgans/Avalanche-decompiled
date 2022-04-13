contract main {




// =====================  Runtime code  =====================


const ATOKEN_REVISION = 1

const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9

const EIP712_REVISION = ''


uint256 stor0;
uint8 stor1;
mapping of uint256 scaledBalanceOf;
mapping of uint256 allowance;
uint256 scaledTotalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 _nonces;
uint256 DOMAIN_SEPARATOR;
address POOLAddress;
address RESERVE_TREASURY_ADDRESS;
address UNDERLYING_ASSET_ADDRESS;
address incentivesControllerAddress;

function name() payable {
    return name[0 len name.length]
}

function scaledBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return scaledBalanceOf[address(arg1)]
}

function decimals() payable {
    return decimals
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function POOL() payable {
    return POOLAddress
}

function getIncentivesController() payable {
    return incentivesControllerAddress
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function RESERVE_TREASURY_ADDRESS() payable {
    return RESERVE_TREASURY_ADDRESS
}

function UNDERLYING_ASSET_ADDRESS() payable {
    return UNDERLYING_ASSET_ADDRESS
}

function scaledTotalSupply() payable {
    return scaledTotalSupply
}

function _nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return _nonces[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function handleRepayment(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if POOLAddress != msg.sender:
        revert with 0, ''
}

function getScaledUserBalanceAndSupply(address arg1) payable {
    require calldata.size - 4 >= 32
    return scaledBalanceOf[address(arg1)], scaledTotalSupply
}

function totalSupply() payable {
    if not scaledTotalSupply:
        return 0
    require ext_code.size(POOLAddress)
    staticcall POOLAddress.0xd15e0053 with:
            gas gas_remaining wei
           args UNDERLYING_ASSET_ADDRESS
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not scaledTotalSupply:
        return 0
    if not ext_call.return_data[0]:
        return 0
    if scaledTotalSupply > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
        revert with 0, ''
    return ((scaledTotalSupply * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f, mem[187 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(POOLAddress)
    staticcall POOLAddress.0xd15e0053 with:
            gas gas_remaining wei
           args UNDERLYING_ASSET_ADDRESS
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not scaledBalanceOf[address(arg1)]:
        return 0
    if not ext_call.return_data[0]:
        return 0
    if scaledBalanceOf[address(arg1)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
        revert with 0, ''
    return ((scaledBalanceOf[address(arg1)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    if not arg1:
        revert with 0, 'INVALID_OWNER'
    if block.timestamp > arg4:
        revert with 0, 'INVALID_EXPIRATION'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, _nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'INVALID_SIGNATURE'
    if _nonces[address(arg1)] + 1 < _nonces[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    _nonces[address(arg1)]++
    if not arg1:
        revert with 0, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    Mask(192, 0, arg7),
                    mem[578 len 4]
    if not arg2:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, Mask(208, 0, arg7), mem[578 len 4]
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function transferUnderlyingTo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if POOLAddress != msg.sender:
        revert with 0, ''
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(UNDERLYING_ASSET_ADDRESS):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(UNDERLYING_ASSET_ADDRESS):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
    call UNDERLYING_ASSET_ADDRESS with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'SafeERC20: low-level call failed'
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[292]:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 371 len 22]
    return arg2
}

function mint(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if POOLAddress != msg.sender:
        revert with 0, ''
    if not arg3:
        revert with 0, ''
    if arg2 > !(arg3 / 2) / 1000000000 * 10^18:
        revert with 0, ''
    require arg3
    if not (1000000000 * 10^18 * arg2) + (arg3 / 2) / arg3:
        revert with 0, ''
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if ((1000000000 * 10^18 * arg2) + (arg3 / 2) / arg3) + scaledTotalSupply < scaledTotalSupply:
        revert with 0, 'SafeMath: addition overflow'
    scaledTotalSupply += (1000000000 * 10^18 * arg2) + (arg3 / 2) / arg3
    if ((1000000000 * 10^18 * arg2) + (arg3 / 2) / arg3) + scaledBalanceOf[address(arg1)] < scaledBalanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    scaledBalanceOf[address(arg1)] += (1000000000 * 10^18 * arg2) + (arg3 / 2) / arg3
    if incentivesControllerAddress:
        require ext_code.size(incentivesControllerAddress)
        call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(arg1), scaledTotalSupply, scaledBalanceOf[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x64ddf252: arg2, 0, arg1
    emit Mint(arg2, arg3, arg1);
    return not bool(scaledBalanceOf[address(arg1)])
}

function mintToTreasury(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if POOLAddress != msg.sender:
        revert with 0, ''
    if arg1:
        if not arg2:
            revert with 0, ''
        if arg1 > !(arg2 / 2) / 1000000000 * 10^18:
            revert with 0, ''
        require arg2
        if not RESERVE_TREASURY_ADDRESS:
            revert with 0, 'ERC20: mint to the zero address'
        if ((1000000000 * 10^18 * arg1) + (arg2 / 2) / arg2) + scaledTotalSupply < scaledTotalSupply:
            revert with 0, 'SafeMath: addition overflow'
        scaledTotalSupply += (1000000000 * 10^18 * arg1) + (arg2 / 2) / arg2
        if ((1000000000 * 10^18 * arg1) + (arg2 / 2) / arg2) + scaledBalanceOf[stor61] < scaledBalanceOf[stor61]:
            revert with 0, 'SafeMath: addition overflow'
        scaledBalanceOf[stor61] += (1000000000 * 10^18 * arg1) + (arg2 / 2) / arg2
        if incentivesControllerAddress:
            require ext_code.size(incentivesControllerAddress)
            call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args RESERVE_TREASURY_ADDRESS, scaledTotalSupply, scaledBalanceOf[stor61]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        emit 0x64ddf252: arg1, 0, RESERVE_TREASURY_ADDRESS
        emit Mint(arg1, arg2, RESERVE_TREASURY_ADDRESS);
}

function burn(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if POOLAddress != msg.sender:
        revert with 0, ''
    if not arg4:
        revert with 0, ''
    if arg3 > !(arg4 / 2) / 1000000000 * 10^18:
        revert with 0, ''
    require arg4
    if not (1000000000 * 10^18 * arg3) + (arg4 / 2) / arg4:
        revert with 0, ''
    if not arg1:
        revert with 0, 32, 33, 0xef45524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
    if (1000000000 * 10^18 * arg3) + (arg4 / 2) / arg4 > scaledTotalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    scaledTotalSupply -= (1000000000 * 10^18 * arg3) + (arg4 / 2) / arg4
    if (1000000000 * 10^18 * arg3) + (arg4 / 2) / arg4 > scaledBalanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c61, mem[510 len 2]
    scaledBalanceOf[address(arg1)] -= (1000000000 * 10^18 * arg3) + (arg4 / 2) / arg4
    if incentivesControllerAddress:
        require ext_code.size(incentivesControllerAddress)
        call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(arg1), scaledTotalSupply, scaledBalanceOf[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(UNDERLYING_ASSET_ADDRESS):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(UNDERLYING_ASSET_ADDRESS):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[612 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call UNDERLYING_ASSET_ADDRESS with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[676 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'SafeERC20: low-level call failed'
    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[644]:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 723 len 22]
    emit 0x64ddf252: arg3, arg1, 0
    emit Burn(arg3, arg4, arg1, arg2);
}

function sub_183fb413(?) payable {
    require calldata.size - 4 >= 256
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + arg7.length + 36 <= calldata.size
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    if not stor1:
        if ext_code.size(this.address):
            if 1 <= stor0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if not stor1:
            stor1 = 1
            stor0 = 1
    DOMAIN_SEPARATOR = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(arg6[all]), sha3(49), chainid, this.address)
    name[] = Array(len=arg6.length, data=arg6[all])
    symbol[] = Array(len=arg7.length, data=arg7[all])
    decimals = arg5
    POOLAddress = arg1
    RESERVE_TREASURY_ADDRESS = arg2
    UNDERLYING_ASSET_ADDRESS = arg3
    incentivesControllerAddress = arg4
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 416] = arg2
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 448] = arg4
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg5
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 512] = 192
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 608] = arg6.length
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 640 len arg6.length] = arg6[all]
    mem[arg6.length + ceil32(arg6.length) + ceil32(arg7.length) + 640] = 0
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 544] = ceil32(arg6.length) + 224
    mem[(2 * ceil32(arg6.length)) + ceil32(arg7.length) + 640] = arg7.length
    mem[(2 * ceil32(arg6.length)) + ceil32(arg7.length) + 672 len arg7.length] = arg7[all]
    mem[arg7.length + (2 * ceil32(arg6.length)) + ceil32(arg7.length) + 672] = 0
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 576] = ceil32(arg6.length) + ceil32(arg7.length) + 256
    mem[(2 * ceil32(arg6.length)) + (2 * ceil32(arg7.length)) + 672] = arg8.length
    mem[(2 * ceil32(arg6.length)) + (2 * ceil32(arg7.length)) + 704 len arg8.length] = arg8[all]
    mem[arg8.length + (2 * ceil32(arg6.length)) + (2 * ceil32(arg7.length)) + 704] = 0
    emit Initialized(address rg1, address rg2, address rg3, address rg4, uint8 rg5, string rg6, string rg7, bytes rg8):
                     Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0),
                     mem[ceil32(arg6.length) + arg7.length + 448 len ceil32(arg6.length) + (2 * ceil32(arg7.length)) + ceil32(arg8.length) + -arg7.length + 256],
                     arg3,
                     arg1,
    if not stor1:
        stor1 = 0
}

function transferOnLiquidation(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if POOLAddress != msg.sender:
        revert with 0, ''
    require ext_code.size(POOLAddress)
    staticcall POOLAddress.0xd15e0053 with:
            gas gas_remaining wei
           args UNDERLYING_ASSET_ADDRESS
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not scaledBalanceOf[address(arg1)]:
        if not ext_call.return_data[0]:
            revert with 0, ''
        if not scaledBalanceOf[address(arg2)]:
            if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                revert with 0, ''
            require ext_call.return_data[0]
            if not arg1:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
            if not arg2:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
            if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[378 len 6]
        else:
            if scaledBalanceOf[address(arg2)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                revert with 0, ''
            if not ext_call.return_data[0]:
                revert with 0, ''
            if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                revert with 0, ''
            require ext_call.return_data[0]
            if not arg1:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
            if not arg2:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
            if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[442 len 6]
    else:
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, ''
            if not scaledBalanceOf[address(arg2)]:
                if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, ''
                require ext_call.return_data[0]
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                if not arg2:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[378 len 6]
            else:
                if scaledBalanceOf[address(arg2)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                    revert with 0, ''
                if not ext_call.return_data[0]:
                    revert with 0, ''
                if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, ''
                require ext_call.return_data[0]
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
                if not arg2:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
                if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[442 len 6]
        else:
            if scaledBalanceOf[address(arg1)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                revert with 0, ''
            if not ext_call.return_data[0]:
                revert with 0, ''
            if not scaledBalanceOf[address(arg2)]:
                if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, ''
                require ext_call.return_data[0]
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
                if not arg2:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
                if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[442 len 6]
            else:
                if scaledBalanceOf[address(arg2)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                    revert with 0, ''
                if not ext_call.return_data[0]:
                    revert with 0, ''
                if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, ''
                require ext_call.return_data[0]
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                if not arg2:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[519 len 29]
                if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[506 len 6]
    ('le', ('div', ('add', ('mul', 1000000000000000000000000000, ('param', 'arg3')), ('div', ('mask', 256, 0, ('ext_call.return_data', 0, 32)), 2)), ('ext_call.return_data', 0, 32)), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'scaledBalanceOf', 52))))
    scaledBalanceOf[address(arg1)] -= (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
    if ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2] < scaledBalanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    scaledBalanceOf[address(arg2)] = ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2]
    if incentivesControllerAddress:
        require ext_code.size(incentivesControllerAddress)
        call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(arg1), scaledTotalSupply, scaledBalanceOf[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 != arg2:
            require ext_code.size(incentivesControllerAddress)
            call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args address(arg2), scaledTotalSupply, scaledBalanceOf[arg2]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit BalanceTransfer(arg3, ext_call.return_data[0], arg1, arg2);
    emit 0x64ddf252: arg3, arg1, arg2
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(POOLAddress)
    staticcall POOLAddress.0xd15e0053 with:
            gas gas_remaining wei
           args UNDERLYING_ASSET_ADDRESS
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not scaledBalanceOf[address(msg.sender)]:
        if not ext_call.return_data[0]:
            revert with 0, ''
        if not scaledBalanceOf[address(arg1)]:
            if arg2 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                revert with 0, ''
            require ext_call.return_data[0]
            if not msg.sender:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
            if not arg1:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
            if (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(msg.sender)]:
                revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[314 len 6]
            scaledBalanceOf[address(msg.sender)] -= (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            if ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1] < scaledBalanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            scaledBalanceOf[address(arg1)] = ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1]
            if incentivesControllerAddress:
                require ext_code.size(incentivesControllerAddress)
                call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, scaledTotalSupply, scaledBalanceOf[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 != msg.sender:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg1), scaledTotalSupply, scaledBalanceOf[arg1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(POOLAddress)
            call POOLAddress.0xd5ed3933 with:
                 gas gas_remaining wei
                args UNDERLYING_ASSET_ADDRESS, msg.sender, address(arg1), arg2, 0, 0
        else:
            if scaledBalanceOf[address(arg1)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                revert with 0, ''
            if not ext_call.return_data[0]:
                revert with 0, ''
            if arg2 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                revert with 0, ''
            require ext_call.return_data[0]
            if not msg.sender:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
            if not arg1:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
            if (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(msg.sender)]:
                revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[378 len 6]
            scaledBalanceOf[address(msg.sender)] -= (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            if ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1] < scaledBalanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            scaledBalanceOf[address(arg1)] = ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1]
            if incentivesControllerAddress:
                require ext_code.size(incentivesControllerAddress)
                call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, scaledTotalSupply, scaledBalanceOf[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 != msg.sender:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg1), scaledTotalSupply, scaledBalanceOf[arg1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(POOLAddress)
            call POOLAddress.0xd5ed3933 with:
                 gas gas_remaining wei
                args UNDERLYING_ASSET_ADDRESS, msg.sender, address(arg1), arg2, 0, (scaledBalanceOf[address(arg1)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
    else:
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, ''
            if not scaledBalanceOf[address(arg1)]:
                if arg2 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, ''
                require ext_call.return_data[0]
                if not msg.sender:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                if not arg1:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                if (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[314 len 6]
                scaledBalanceOf[address(msg.sender)] -= (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1] < scaledBalanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                scaledBalanceOf[address(arg1)] = ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1]
                if incentivesControllerAddress:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, scaledTotalSupply, scaledBalanceOf[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 != msg.sender:
                        require ext_code.size(incentivesControllerAddress)
                        call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(arg1), scaledTotalSupply, scaledBalanceOf[arg1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(POOLAddress)
                call POOLAddress.0xd5ed3933 with:
                     gas gas_remaining wei
                    args UNDERLYING_ASSET_ADDRESS, msg.sender, address(arg1), arg2, 0, 0
            else:
                if scaledBalanceOf[address(arg1)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                    revert with 0, ''
                if not ext_call.return_data[0]:
                    revert with 0, ''
                if arg2 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, ''
                require ext_call.return_data[0]
                if not msg.sender:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                if not arg1:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                if (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[378 len 6]
                scaledBalanceOf[address(msg.sender)] -= (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1] < scaledBalanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                scaledBalanceOf[address(arg1)] = ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1]
                if incentivesControllerAddress:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, scaledTotalSupply, scaledBalanceOf[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 != msg.sender:
                        require ext_code.size(incentivesControllerAddress)
                        call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(arg1), scaledTotalSupply, scaledBalanceOf[arg1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(POOLAddress)
                call POOLAddress.0xd5ed3933 with:
                     gas gas_remaining wei
                    args UNDERLYING_ASSET_ADDRESS, msg.sender, address(arg1), arg2, 0, (scaledBalanceOf[address(arg1)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
        else:
            if scaledBalanceOf[address(msg.sender)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                revert with 0, ''
            if not ext_call.return_data[0]:
                revert with 0, ''
            if not scaledBalanceOf[address(arg1)]:
                if arg2 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, ''
                require ext_call.return_data[0]
                if not msg.sender:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                if not arg1:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                if (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[378 len 6]
                scaledBalanceOf[address(msg.sender)] -= (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1] < scaledBalanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                scaledBalanceOf[address(arg1)] = ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1]
                if incentivesControllerAddress:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, scaledTotalSupply, scaledBalanceOf[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 != msg.sender:
                        require ext_code.size(incentivesControllerAddress)
                        call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(arg1), scaledTotalSupply, scaledBalanceOf[arg1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(POOLAddress)
                call POOLAddress.0xd5ed3933 with:
                     gas gas_remaining wei
                    args UNDERLYING_ASSET_ADDRESS, msg.sender, address(arg1), arg2, (scaledBalanceOf[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, 0
            else:
                if scaledBalanceOf[address(arg1)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                    revert with 0, ''
                if not ext_call.return_data[0]:
                    revert with 0, ''
                if arg2 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, ''
                require ext_call.return_data[0]
                if not msg.sender:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
                if not arg1:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
                if (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[442 len 6]
                scaledBalanceOf[address(msg.sender)] -= (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1] < scaledBalanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                scaledBalanceOf[address(arg1)] = ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1]
                if incentivesControllerAddress:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, scaledTotalSupply, scaledBalanceOf[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 != msg.sender:
                        require ext_code.size(incentivesControllerAddress)
                        call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(arg1), scaledTotalSupply, scaledBalanceOf[arg1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(POOLAddress)
                call POOLAddress.0xd5ed3933 with:
                     gas gas_remaining wei
                    args UNDERLYING_ASSET_ADDRESS, msg.sender, address(arg1), arg2, (scaledBalanceOf[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, (scaledBalanceOf[address(arg1)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BalanceTransfer(arg2, ext_call.return_data[0], msg.sender, arg1);
    emit 0x64ddf252: arg2, msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(POOLAddress)
    staticcall POOLAddress.0xd15e0053 with:
            gas gas_remaining wei
           args UNDERLYING_ASSET_ADDRESS
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not scaledBalanceOf[address(arg1)]:
        if not ext_call.return_data[0]:
            revert with 0, ''
        if not scaledBalanceOf[address(arg2)]:
            if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                revert with 0, ''
            require ext_call.return_data[0]
            if not arg1:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
            if not arg2:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
            if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[314 len 6]
            scaledBalanceOf[address(arg1)] -= (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            if ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2] < scaledBalanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            scaledBalanceOf[address(arg2)] = ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2]
            if incentivesControllerAddress:
                require ext_code.size(incentivesControllerAddress)
                call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(arg1), scaledTotalSupply, scaledBalanceOf[address(arg1)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 != arg2:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg2), scaledTotalSupply, scaledBalanceOf[arg2]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(POOLAddress)
            call POOLAddress.0xd5ed3933 with:
                 gas gas_remaining wei
                args UNDERLYING_ASSET_ADDRESS, address(arg1), address(arg2), arg3, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit BalanceTransfer(arg3, ext_call.return_data[0], arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 'eERC20: transfer amount exceeds '
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
        else:
            if scaledBalanceOf[address(arg2)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                revert with 0, ''
            if not ext_call.return_data[0]:
                revert with 0, ''
            if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                revert with 0, ''
            require ext_call.return_data[0]
            if not arg1:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
            if not arg2:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
            if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[378 len 6]
            scaledBalanceOf[address(arg1)] -= (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            if ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2] < scaledBalanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            scaledBalanceOf[address(arg2)] = ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2]
            if incentivesControllerAddress:
                require ext_code.size(incentivesControllerAddress)
                call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(arg1), scaledTotalSupply, scaledBalanceOf[address(arg1)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 != arg2:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg2), scaledTotalSupply, scaledBalanceOf[arg2]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(POOLAddress)
            call POOLAddress.0xd5ed3933 with:
                 gas gas_remaining wei
                args UNDERLYING_ASSET_ADDRESS, address(arg1), address(arg2), arg3, 0, (scaledBalanceOf[address(arg2)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit BalanceTransfer(arg3, ext_call.return_data[0], arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 'eERC20: transfer amount exceeds '
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
    else:
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, ''
            if not scaledBalanceOf[address(arg2)]:
                if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, ''
                require ext_call.return_data[0]
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                if not arg2:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[314 len 6]
                scaledBalanceOf[address(arg1)] -= (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2] < scaledBalanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                scaledBalanceOf[address(arg2)] = ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2]
                if incentivesControllerAddress:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg1), scaledTotalSupply, scaledBalanceOf[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 != arg2:
                        require ext_code.size(incentivesControllerAddress)
                        call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(arg2), scaledTotalSupply, scaledBalanceOf[arg2]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(POOLAddress)
                call POOLAddress.0xd5ed3933 with:
                     gas gas_remaining wei
                    args UNDERLYING_ASSET_ADDRESS, address(arg1), address(arg2), arg3, 0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit BalanceTransfer(arg3, ext_call.return_data[0], arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 'eERC20: transfer amount exceeds '
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
            else:
                if scaledBalanceOf[address(arg2)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                    revert with 0, ''
                if not ext_call.return_data[0]:
                    revert with 0, ''
                if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, ''
                require ext_call.return_data[0]
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                if not arg2:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[378 len 6]
                scaledBalanceOf[address(arg1)] -= (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2] < scaledBalanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                scaledBalanceOf[address(arg2)] = ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2]
                if incentivesControllerAddress:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg1), scaledTotalSupply, scaledBalanceOf[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 != arg2:
                        require ext_code.size(incentivesControllerAddress)
                        call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(arg2), scaledTotalSupply, scaledBalanceOf[arg2]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(POOLAddress)
                call POOLAddress.0xd5ed3933 with:
                     gas gas_remaining wei
                    args UNDERLYING_ASSET_ADDRESS, address(arg1), address(arg2), arg3, 0, (scaledBalanceOf[address(arg2)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit BalanceTransfer(arg3, ext_call.return_data[0], arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 'eERC20: transfer amount exceeds '
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
        else:
            if scaledBalanceOf[address(arg1)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                revert with 0, ''
            if not ext_call.return_data[0]:
                revert with 0, ''
            if not scaledBalanceOf[address(arg2)]:
                if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, ''
                require ext_call.return_data[0]
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                if not arg2:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[378 len 6]
                scaledBalanceOf[address(arg1)] -= (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2] < scaledBalanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                scaledBalanceOf[address(arg2)] = ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2]
                if incentivesControllerAddress:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg1), scaledTotalSupply, scaledBalanceOf[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 != arg2:
                        require ext_code.size(incentivesControllerAddress)
                        call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(arg2), scaledTotalSupply, scaledBalanceOf[arg2]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(POOLAddress)
                call POOLAddress.0xd5ed3933 with:
                     gas gas_remaining wei
                    args UNDERLYING_ASSET_ADDRESS, address(arg1), address(arg2), arg3, (scaledBalanceOf[address(arg1)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit BalanceTransfer(arg3, ext_call.return_data[0], arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 'eERC20: transfer amount exceeds '
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
            else:
                if scaledBalanceOf[address(arg2)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                    revert with 0, ''
                if not ext_call.return_data[0]:
                    revert with 0, ''
                if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, ''
                require ext_call.return_data[0]
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
                if not arg2:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
                if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[442 len 6]
                scaledBalanceOf[address(arg1)] -= (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2] < scaledBalanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                scaledBalanceOf[address(arg2)] = ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2]
                if incentivesControllerAddress:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg1), scaledTotalSupply, scaledBalanceOf[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 != arg2:
                        require ext_code.size(incentivesControllerAddress)
                        call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(arg2), scaledTotalSupply, scaledBalanceOf[arg2]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(POOLAddress)
                call POOLAddress.0xd5ed3933 with:
                     gas gas_remaining wei
                    args UNDERLYING_ASSET_ADDRESS, address(arg1), address(arg2), arg3, (scaledBalanceOf[address(arg1)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, (scaledBalanceOf[address(arg2)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit BalanceTransfer(arg3, ext_call.return_data[0], arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 'eERC20: transfer amount exceeds '
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    emit 0x64ddf252: arg3, arg1, arg2
    return 1
}



}
