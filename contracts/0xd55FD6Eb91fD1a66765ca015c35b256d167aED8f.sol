contract main {




// =====================  Runtime code  =====================


#
#  - sub_183fb413(?)
#  - transferUnderlyingTo(address arg1, uint256 arg2)
#  - burn(address arg1, address arg2, uint256 arg3, uint256 arg4)
#
const ATOKEN_REVISION = 2

const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9

const EIP712_REVISION = '', 0


mapping of uint256 scaledBalanceOf;
mapping of uint256 allowance;
uint256 scaledTotalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address POOLAddress; offset 8
address UNDERLYING_ASSET_ADDRESS;
mapping of uint256 _nonces;
uint256 DOMAIN_SEPARATOR;
address RESERVE_TREASURY_ADDRESS;
address incentivesControllerAddress;

function name() payable {
    return name[0 len name.length]
}

function scaledBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    require arg1 == arg1
    return _nonces[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function getScaledUserBalanceAndSupply(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return scaledBalanceOf[address(arg1)], scaledTotalSupply
}

function handleRepayment(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if POOLAddress != msg.sender:
        revert with 0, '', 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0xef45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function totalSupply() payable {
    if not scaledTotalSupply:
        return 0
    require ext_code.size(POOLAddress)
    staticcall POOLAddress.getReserveNormalizedIncome(address arg1) with:
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
        revert with 0, '', 0
    return ((scaledTotalSupply * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(POOLAddress)
    staticcall POOLAddress.getReserveNormalizedIncome(address arg1) with:
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
        revert with 0, '', 0
    return ((scaledBalanceOf[address(arg1)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function getAssetPrice() payable {
    require ext_code.size(POOLAddress)
    staticcall POOLAddress.getAddressesProvider() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPriceOracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args UNDERLYING_ASSET_ADDRESS
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
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
        revert with 0, 'ERC20: approve from the zero address'
    if not arg2:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function mintToTreasury(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if POOLAddress != msg.sender:
        revert with 0, '', 0
    if arg1:
        if not arg2:
            revert with 0, '', 0
        if arg1 > !(arg2 / 2) / 1000000000 * 10^18:
            revert with 0, '', 0
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
            call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args RESERVE_TREASURY_ADDRESS, ((1000000000 * 10^18 * arg1) + (arg2 / 2) / arg2) + scaledBalanceOf[stor61], ((1000000000 * 10^18 * arg1) + (arg2 / 2) / arg2) + scaledTotalSupply
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        emit 0x65ddf252: arg1, 0, RESERVE_TREASURY_ADDRESS
        emit Mint(arg1, arg2, RESERVE_TREASURY_ADDRESS);
}

function mint(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if POOLAddress != msg.sender:
        revert with 0, '', 0
    if not arg3:
        revert with 0, '', 0
    if arg2 > !(arg3 / 2) / 1000000000 * 10^18:
        revert with 0, '', 0
    require arg3
    if not (1000000000 * 10^18 * arg2) + (arg3 / 2) / arg3:
        revert with 0, '', 0
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
        call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), ((1000000000 * 10^18 * arg2) + (arg3 / 2) / arg3) + scaledBalanceOf[address(arg1)], ((1000000000 * 10^18 * arg2) + (arg3 / 2) / arg3) + scaledTotalSupply
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x65ddf252: arg2, 0, arg1
    emit Mint(arg2, arg3, arg1);
    return not bool(scaledBalanceOf[address(arg1)])
}

function transferOnLiquidation(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if POOLAddress != msg.sender:
        revert with 0, '', 0
    require ext_code.size(POOLAddress)
    staticcall POOLAddress.getReserveNormalizedIncome(address arg1) with:
            gas gas_remaining wei
           args UNDERLYING_ASSET_ADDRESS
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not scaledBalanceOf[address(arg1)]:
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        if not scaledBalanceOf[address(arg2)]:
            if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                revert with 0, '', 0
            require ext_call.return_data[0]
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0, 'ERC20: transfer to the zero address'
            if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 358 len 26] >> 48,
                            0
        else:
            if scaledBalanceOf[address(arg2)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                revert with 0, '', 0
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                revert with 0, '', 0
            require ext_call.return_data[0]
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0, 'ERC20: transfer to the zero address'
            if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 422 len 26] >> 48,
                            0
    else:
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if not scaledBalanceOf[address(arg2)]:
                if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, '', 0
                require ext_call.return_data[0]
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 358 len 26] >> 48,
                                0
            else:
                if scaledBalanceOf[address(arg2)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                    revert with 0, '', 0
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, '', 0
                require ext_call.return_data[0]
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 422 len 26] >> 48,
                                0
        else:
            if scaledBalanceOf[address(arg1)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                revert with 0, '', 0
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if not scaledBalanceOf[address(arg2)]:
                if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, '', 0
                require ext_call.return_data[0]
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 422 len 26] >> 48,
                                0
            else:
                if scaledBalanceOf[address(arg2)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                    revert with 0, '', 0
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, '', 0
                require ext_call.return_data[0]
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 486 len 26] >> 48,
                                0
    ('le', ('div', ('add', ('mul', 1000000000000000000000000000, ('param', 'arg3')), ('div', ('mask', 256, 0, ('ext_call.return_data', 0, 32)), 2)), ('ext_call.return_data', 0, 32)), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'scaledBalanceOf', 52))))
    scaledBalanceOf[address(arg1)] -= (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
    if ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2] < scaledBalanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    scaledBalanceOf[address(arg2)] = ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2]
    if incentivesControllerAddress:
        require ext_code.size(incentivesControllerAddress)
        call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), scaledBalanceOf[address(arg1)] - ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]), scaledTotalSupply
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 != arg2:
            require ext_code.size(incentivesControllerAddress)
            call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg2), ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2], scaledTotalSupply
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit BalanceTransfer(arg3, ext_call.return_data[0], arg1, arg2);
    emit 0x65ddf252: arg3, arg1, arg2
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(POOLAddress)
    staticcall POOLAddress.getReserveNormalizedIncome(address arg1) with:
            gas gas_remaining wei
           args UNDERLYING_ASSET_ADDRESS
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not scaledBalanceOf[address(msg.sender)]:
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        if not scaledBalanceOf[address(arg1)]:
            if arg2 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                revert with 0, '', 0
            require ext_call.return_data[0]
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0, 'ERC20: transfer to the zero address'
            if (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 294 len 26] >> 48,
                            0
            scaledBalanceOf[address(msg.sender)] -= (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            if ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1] < scaledBalanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            scaledBalanceOf[address(arg1)] = ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1]
            if incentivesControllerAddress:
                require ext_code.size(incentivesControllerAddress)
                call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, scaledBalanceOf[address(msg.sender)] - ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]), scaledTotalSupply
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 != msg.sender:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1], scaledTotalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(POOLAddress)
            call POOLAddress.finalizeTransfer(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args UNDERLYING_ASSET_ADDRESS, msg.sender, address(arg1), arg2, 0, 0
        else:
            if scaledBalanceOf[address(arg1)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                revert with 0, '', 0
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if arg2 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                revert with 0, '', 0
            require ext_call.return_data[0]
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0, 'ERC20: transfer to the zero address'
            if (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 358 len 26] >> 48,
                            0
            scaledBalanceOf[address(msg.sender)] -= (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            if ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1] < scaledBalanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            scaledBalanceOf[address(arg1)] = ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1]
            if incentivesControllerAddress:
                require ext_code.size(incentivesControllerAddress)
                call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, scaledBalanceOf[address(msg.sender)] - ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]), scaledTotalSupply
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 != msg.sender:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1], scaledTotalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(POOLAddress)
            call POOLAddress.finalizeTransfer(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args UNDERLYING_ASSET_ADDRESS, msg.sender, address(arg1), arg2, 0, (scaledBalanceOf[address(arg1)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
    else:
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if not scaledBalanceOf[address(arg1)]:
                if arg2 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, '', 0
                require ext_call.return_data[0]
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0, 'ERC20: transfer to the zero address'
                if (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 294 len 26] >> 48,
                                0
                scaledBalanceOf[address(msg.sender)] -= (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1] < scaledBalanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                scaledBalanceOf[address(arg1)] = ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1]
                if incentivesControllerAddress:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, scaledBalanceOf[address(msg.sender)] - ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]), scaledTotalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 != msg.sender:
                        require ext_code.size(incentivesControllerAddress)
                        call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1], scaledTotalSupply
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(POOLAddress)
                call POOLAddress.finalizeTransfer(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args UNDERLYING_ASSET_ADDRESS, msg.sender, address(arg1), arg2, 0, 0
            else:
                if scaledBalanceOf[address(arg1)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                    revert with 0, '', 0
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if arg2 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, '', 0
                require ext_call.return_data[0]
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0, 'ERC20: transfer to the zero address'
                if (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 358 len 26] >> 48,
                                0
                scaledBalanceOf[address(msg.sender)] -= (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1] < scaledBalanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                scaledBalanceOf[address(arg1)] = ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1]
                if incentivesControllerAddress:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, scaledBalanceOf[address(msg.sender)] - ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]), scaledTotalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 != msg.sender:
                        require ext_code.size(incentivesControllerAddress)
                        call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1], scaledTotalSupply
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(POOLAddress)
                call POOLAddress.finalizeTransfer(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args UNDERLYING_ASSET_ADDRESS, msg.sender, address(arg1), arg2, 0, (scaledBalanceOf[address(arg1)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
        else:
            if scaledBalanceOf[address(msg.sender)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                revert with 0, '', 0
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if not scaledBalanceOf[address(arg1)]:
                if arg2 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, '', 0
                require ext_call.return_data[0]
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0, 'ERC20: transfer to the zero address'
                if (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 358 len 26] >> 48,
                                0
                scaledBalanceOf[address(msg.sender)] -= (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1] < scaledBalanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                scaledBalanceOf[address(arg1)] = ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1]
                if incentivesControllerAddress:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, scaledBalanceOf[address(msg.sender)] - ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]), scaledTotalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 != msg.sender:
                        require ext_code.size(incentivesControllerAddress)
                        call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1], scaledTotalSupply
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(POOLAddress)
                call POOLAddress.finalizeTransfer(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args UNDERLYING_ASSET_ADDRESS, msg.sender, address(arg1), arg2, (scaledBalanceOf[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, 0
            else:
                if scaledBalanceOf[address(arg1)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                    revert with 0, '', 0
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if arg2 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, '', 0
                require ext_call.return_data[0]
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0, 'ERC20: transfer to the zero address'
                if (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 422 len 26] >> 48,
                                0
                scaledBalanceOf[address(msg.sender)] -= (1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1] < scaledBalanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                scaledBalanceOf[address(arg1)] = ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1]
                if incentivesControllerAddress:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, scaledBalanceOf[address(msg.sender)] - ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]), scaledTotalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 != msg.sender:
                        require ext_code.size(incentivesControllerAddress)
                        call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), ((1000000000 * 10^18 * arg2) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg1], scaledTotalSupply
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(POOLAddress)
                call POOLAddress.finalizeTransfer(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args UNDERLYING_ASSET_ADDRESS, msg.sender, address(arg1), arg2, (scaledBalanceOf[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, (scaledBalanceOf[address(arg1)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BalanceTransfer(arg2, ext_call.return_data[0], msg.sender, arg1);
    emit 0x65ddf252: arg2, msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(POOLAddress)
    staticcall POOLAddress.getReserveNormalizedIncome(address arg1) with:
            gas gas_remaining wei
           args UNDERLYING_ASSET_ADDRESS
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not scaledBalanceOf[address(arg1)]:
        if not ext_call.return_data[0]:
            revert with 0, '', 0
        if not scaledBalanceOf[address(arg2)]:
            if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                revert with 0, '', 0
            require ext_call.return_data[0]
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0, 'ERC20: transfer to the zero address'
            if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 294 len 26] >> 48,
                            0
            scaledBalanceOf[address(arg1)] -= (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            if ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2] < scaledBalanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            scaledBalanceOf[address(arg2)] = ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2]
            if incentivesControllerAddress:
                require ext_code.size(incentivesControllerAddress)
                call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), scaledBalanceOf[address(arg1)] - ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]), scaledTotalSupply
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 != arg2:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2], scaledTotalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(POOLAddress)
            call POOLAddress.finalizeTransfer(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args UNDERLYING_ASSET_ADDRESS, address(arg1), address(arg2), arg3, 0, 0
        else:
            if scaledBalanceOf[address(arg2)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                revert with 0, '', 0
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                revert with 0, '', 0
            require ext_call.return_data[0]
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0, 'ERC20: transfer to the zero address'
            if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 358 len 26] >> 48,
                            0
            scaledBalanceOf[address(arg1)] -= (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            if ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2] < scaledBalanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            scaledBalanceOf[address(arg2)] = ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2]
            if incentivesControllerAddress:
                require ext_code.size(incentivesControllerAddress)
                call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), scaledBalanceOf[address(arg1)] - ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]), scaledTotalSupply
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 != arg2:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg2), ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2], scaledTotalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(POOLAddress)
            call POOLAddress.finalizeTransfer(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args UNDERLYING_ASSET_ADDRESS, address(arg1), address(arg2), arg3, 0, (scaledBalanceOf[address(arg2)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
    else:
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if not scaledBalanceOf[address(arg2)]:
                if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, '', 0
                require ext_call.return_data[0]
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 294 len 26] >> 48,
                                0
                scaledBalanceOf[address(arg1)] -= (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2] < scaledBalanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                scaledBalanceOf[address(arg2)] = ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2]
                if incentivesControllerAddress:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), scaledBalanceOf[address(arg1)] - ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]), scaledTotalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 != arg2:
                        require ext_code.size(incentivesControllerAddress)
                        call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2], scaledTotalSupply
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(POOLAddress)
                call POOLAddress.finalizeTransfer(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args UNDERLYING_ASSET_ADDRESS, address(arg1), address(arg2), arg3, 0, 0
            else:
                if scaledBalanceOf[address(arg2)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                    revert with 0, '', 0
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, '', 0
                require ext_call.return_data[0]
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 358 len 26] >> 48,
                                0
                scaledBalanceOf[address(arg1)] -= (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2] < scaledBalanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                scaledBalanceOf[address(arg2)] = ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2]
                if incentivesControllerAddress:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), scaledBalanceOf[address(arg1)] - ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]), scaledTotalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 != arg2:
                        require ext_code.size(incentivesControllerAddress)
                        call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2], scaledTotalSupply
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(POOLAddress)
                call POOLAddress.finalizeTransfer(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args UNDERLYING_ASSET_ADDRESS, address(arg1), address(arg2), arg3, 0, (scaledBalanceOf[address(arg2)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
        else:
            if scaledBalanceOf[address(arg1)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                revert with 0, '', 0
            if not ext_call.return_data[0]:
                revert with 0, '', 0
            if not scaledBalanceOf[address(arg2)]:
                if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, '', 0
                require ext_call.return_data[0]
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 358 len 26] >> 48,
                                0
                scaledBalanceOf[address(arg1)] -= (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2] < scaledBalanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                scaledBalanceOf[address(arg2)] = ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2]
                if incentivesControllerAddress:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), scaledBalanceOf[address(arg1)] - ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]), scaledTotalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 != arg2:
                        require ext_code.size(incentivesControllerAddress)
                        call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2], scaledTotalSupply
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(POOLAddress)
                call POOLAddress.finalizeTransfer(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args UNDERLYING_ASSET_ADDRESS, address(arg1), address(arg2), arg3, (scaledBalanceOf[address(arg1)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, 0
            else:
                if scaledBalanceOf[address(arg2)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                    revert with 0, '', 0
                if not ext_call.return_data[0]:
                    revert with 0, '', 0
                if arg3 > !(ext_call.return_data[0] / 2) / 1000000000 * 10^18:
                    revert with 0, '', 0
                require ext_call.return_data[0]
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] > scaledBalanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 422 len 26] >> 48,
                                0
                scaledBalanceOf[address(arg1)] -= (1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2] < scaledBalanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                scaledBalanceOf[address(arg2)] = ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2]
                if incentivesControllerAddress:
                    require ext_code.size(incentivesControllerAddress)
                    call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), scaledBalanceOf[address(arg1)] - ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]), scaledTotalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 != arg2:
                        require ext_code.size(incentivesControllerAddress)
                        call incentivesControllerAddress.handleAction(address arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg2), ((1000000000 * 10^18 * arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + scaledBalanceOf[arg2], scaledTotalSupply
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(POOLAddress)
                call POOLAddress.finalizeTransfer(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args UNDERLYING_ASSET_ADDRESS, address(arg1), address(arg2), arg3, (scaledBalanceOf[address(arg1)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, (scaledBalanceOf[address(arg2)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BalanceTransfer(arg3, ext_call.return_data[0], arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, uint128(arg2) << 64 >> 64,
                    0
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    emit 0x65ddf252: arg3, arg1, arg2
    return 1
}



}
