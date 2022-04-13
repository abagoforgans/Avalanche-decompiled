contract main {




// =====================  Runtime code  =====================


const DEBT_TOKEN_REVISION = 1


mapping of uint256 scaledBalanceOf;
uint256 scaledTotalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor6;
uint8 stor7;
mapping of uint256 borrowAllowance;
address POOLAddress;
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

function borrowAllowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return borrowAllowance[address(arg1)][address(arg2)]
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

function UNDERLYING_ASSET_ADDRESS() payable {
    return UNDERLYING_ASSET_ADDRESS
}

function scaledTotalSupply() payable {
    return scaledTotalSupply
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    revert with 0, 'APPROVAL_NOT_SUPPORTED'
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    revert with 0, 'TRANSFER_NOT_SUPPORTED'
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    revert with 0, 'ALLOWANCE_NOT_SUPPORTED'
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    revert with 0, 'ALLOWANCE_NOT_SUPPORTED'
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    revert with 0, 'ALLOWANCE_NOT_SUPPORTED'
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    revert with 0, 'TRANSFER_NOT_SUPPORTED'
}

function getScaledUserBalanceAndSupply(address arg1) payable {
    require calldata.size - 4 >= 32
    return scaledBalanceOf[address(arg1)], scaledTotalSupply
}

function approveDelegation(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    borrowAllowance[address(msg.sender)][address(arg1)] = arg2
    emit BorrowAllowanceDelegated(UNDERLYING_ASSET_ADDRESS, arg2, msg.sender, arg1);
}

function totalSupply() payable {
    require ext_code.size(POOLAddress)
    staticcall POOLAddress.0x386497fd with:
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

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not scaledBalanceOf[address(arg1)]:
        return 0
    require ext_code.size(POOLAddress)
    staticcall POOLAddress.0x386497fd with:
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

function burn(address arg1, uint256 arg2, uint256 arg3) payable {
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
        revert with 0, 32, 33, 0x6445524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
    if (1000000000 * 10^18 * arg2) + (arg3 / 2) / arg3 > scaledTotalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    scaledTotalSupply -= (1000000000 * 10^18 * arg2) + (arg3 / 2) / arg3
    if (1000000000 * 10^18 * arg2) + (arg3 / 2) / arg3 > scaledBalanceOf[address(arg1)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c61, mem[510 len 2]
    scaledBalanceOf[address(arg1)] -= (1000000000 * 10^18 * arg2) + (arg3 / 2) / arg3
    if incentivesControllerAddress:
        require ext_code.size(incentivesControllerAddress)
        call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(arg1), scaledTotalSupply, scaledBalanceOf[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, arg1, 0);
    emit Burn(arg2, arg3, arg1);
}

function mint(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if POOLAddress != msg.sender:
        revert with 0, ''
    if arg1 != arg2:
        if arg3 > borrowAllowance[address(arg2)][address(arg1)]:
            revert with 0, ''
        borrowAllowance[address(arg2)][address(arg1)] -= arg3
        emit BorrowAllowanceDelegated(UNDERLYING_ASSET_ADDRESS, borrowAllowance[address(arg2)][address(arg1)] - arg3, arg2, arg1);
    if not arg4:
        revert with 0, ''
    if arg3 > !(arg4 / 2) / 1000000000 * 10^18:
        revert with 0, ''
    require arg4
    if not (1000000000 * 10^18 * arg3) + (arg4 / 2) / arg4:
        revert with 0, ''
    if not arg2:
        revert with 0, 'ERC20: mint to the zero address'
    if ((1000000000 * 10^18 * arg3) + (arg4 / 2) / arg4) + scaledTotalSupply < scaledTotalSupply:
        revert with 0, 'SafeMath: addition overflow'
    scaledTotalSupply += (1000000000 * 10^18 * arg3) + (arg4 / 2) / arg4
    if ((1000000000 * 10^18 * arg3) + (arg4 / 2) / arg4) + scaledBalanceOf[address(arg2)] < scaledBalanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    scaledBalanceOf[address(arg2)] += (1000000000 * 10^18 * arg3) + (arg4 / 2) / arg4
    if incentivesControllerAddress:
        require ext_code.size(incentivesControllerAddress)
        call incentivesControllerAddress.handleAction(address rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(arg2), scaledTotalSupply, scaledBalanceOf[address(arg2)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg3, 0, arg2);
    emit Mint(arg3, arg4, arg1, arg2);
    return not bool(scaledBalanceOf[address(arg2)])
}

function initialize(address arg1, address arg2, address arg3, uint8 arg4, string arg5, string arg6, bytes arg7) payable {
    require calldata.size - 4 >= 224
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[64] = ceil32(arg5.length) + ceil32(arg6.length) + 160
    mem[ceil32(arg5.length) + 128] = arg6.length
    mem[ceil32(arg5.length) + 160 len arg6.length] = arg6[all]
    mem[ceil32(arg5.length) + arg6.length + 160] = 0
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + arg7.length + 36 <= calldata.size
    if not stor7:
        if ext_code.size(this.address):
            if 1 <= stor6:
                revert with 0, 
                            32,
                            46,
                            0x65436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[ceil32(arg5.length) + ceil32(arg6.length) + 274 len 18]
        if not stor7:
            stor7 = 1
            stor6 = 1
    name[] = Array(len=arg5.length, data=arg5[all])
    mem[0] = 4
    symbol[] = Array(len=arg6.length, data=arg6[all])
    decimals = arg4
    POOLAddress = arg1
    UNDERLYING_ASSET_ADDRESS = arg2
    incentivesControllerAddress = arg3
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 160] = arg3
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 192] = arg4
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 224] = 160
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 320] = arg5.length
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 352 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    if not arg5.length % 32:
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 256] = arg5.length + 192
        mem[arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 352] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
        mem[arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 384 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg5.length) + 160 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])]
        if not Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32:
            mem[ceil32(arg5.length) + ceil32(arg6.length) + 288] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + arg5.length + 224
            mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 384] = arg7.length
            mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 416 len arg7.length] = arg7[all]
            mem[arg7.length + Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 416] = 0
            emit Initialized(address rg1, address rg2, address rg3, uint8 rg4, string rg5, string rg6, bytes rg7):
                             mem[ceil32(arg5.length) + ceil32(arg6.length) + 160 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + arg5.length + ceil32(arg7.length) + 256],
                             arg2,
                             arg1,
        else:
            mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 384] = mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32) + 416 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32]
            mem[ceil32(arg5.length) + ceil32(arg6.length) + 288] = floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + arg5.length + 256
            mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 416] = arg7.length
            mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 448 len arg7.length] = arg7[all]
            mem[arg7.length + floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 448] = 0
            emit Initialized(address rg1, address rg2, address rg3, uint8 rg4, string rg5, string rg6, bytes rg7):
                             mem[ceil32(arg5.length) + ceil32(arg6.length) + 160 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + arg5.length + ceil32(arg7.length) + 288],
                             arg2,
                             arg1,
        if not stor7:
            stor7 = 0
    else:
        mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 352] = mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg5.length % 32) + 384 len arg5.length % 32]
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 256] = floor32(arg5.length) + 224
        mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 384] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
        mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg5.length) + 160 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])]
        if not Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32:
            mem[ceil32(arg5.length) + ceil32(arg6.length) + 288] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + floor32(arg5.length) + 256
            mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = arg7.length
            mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448 len arg7.length] = arg7[all]
            mem[arg7.length + Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = 0
            emit Initialized(address rg1, address rg2, address rg3, uint8 rg4, string rg5, string rg6, bytes rg7):
                             mem[ceil32(arg5.length) + ceil32(arg6.length) + 160 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + floor32(arg5.length) + ceil32(arg7.length) + 288],
                             arg2,
                             arg1,
        else:
            mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 416] = mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32) + 448 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32]
            mem[ceil32(arg5.length) + ceil32(arg6.length) + 288] = floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + floor32(arg5.length) + 288
            mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 448] = arg7.length
            mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 480 len arg7.length] = arg7[all]
            mem[arg7.length + floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 480] = 0
            emit Initialized(address rg1, address rg2, address rg3, uint8 rg4, string rg5, string rg6, bytes rg7):
                             mem[ceil32(arg5.length) + ceil32(arg6.length) + 160 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + floor32(arg5.length) + ceil32(arg7.length) + 320],
                             arg2,
                             arg1,
        if not stor7:
            stor7 = 0
}



}
