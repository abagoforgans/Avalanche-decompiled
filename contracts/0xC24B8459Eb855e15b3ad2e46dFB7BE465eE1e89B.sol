contract main {




// =====================  Runtime code  =====================


#
#  - initialize()
#
const decimals = 18


uint8 stor51;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor104;
array of struct stor105;
address owner;
address liquidityPoolManagerImplementationAddress;
address walletObserverImplementationAddress;
address sub_ddd14d5aAddress;
address stor402;
uint256 sub_817ca11a;
uint256 sub_fa130fdf;
uint256 sub_6a9c5462;
uint256 sub_2115ec8e;
uint256 sub_eaf447d4;
uint256 sub_775c5aa7;
uint256 sub_a731333a;
mapping of uint256 sub_34c43a09;
mapping of uint8 stor411;
uint256 sub_5ae60c12;
mapping of uint256 sub_5134563f;
mapping of uint8 stor414;

function totalSupply() payable {
    return totalSupply
}

function sub_2115ec8e(?) payable {
    return sub_2115ec8e
}

function sub_34c43a09(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_34c43a09[arg1]
}

function sub_41d6e7da(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor411[arg1])
}

function sub_5134563f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5134563f[arg1]
}

function sub_5ae60c12(?) payable {
    return sub_5ae60c12
}

function paused() payable {
    return bool(stor51)
}

function sub_6a9c5462(?) payable {
    return sub_6a9c5462
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_775c5aa7(?) payable {
    return sub_775c5aa7
}

function sub_817ca11a(?) payable {
    return sub_817ca11a
}

function sub_84b59fb5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor414[arg1])
}

function owner() payable {
    return owner
}

function sub_a731333a(?) payable {
    return sub_a731333a
}

function getWalletObserverImplementation() payable {
    return walletObserverImplementationAddress
}

function getLiquidityPoolManagerImplementation() payable {
    return liquidityPoolManagerImplementationAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_ddd14d5a(?) payable {
    return sub_ddd14d5aAddress
}

function sub_eaf447d4(?) payable {
    return sub_eaf447d4
}

function sub_fa130fdf(?) payable {
    return sub_fa130fdf
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

function sub_d52ed397(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5ae60c12 = arg1
}

function recoverLostAVAX() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fa9c4be3(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'block count to monitor should be greater than 0'
    sub_a731333a = arg1
}

function sub_d9b3e558(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fee for troop owners shoud not be greater than 100'
    sub_775c5aa7 = arg1
}

function sub_b98da7ad(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'null address can not be a bot'
    stor414[address(arg1)] = uint8(bool(arg2))
    sub_5134563f[address(arg1)] = 0
}

function sub_c35fae98(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Implementations: TroopsManager is not set'
    sub_ddd14d5aAddress = address(arg1)
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

function recoverLostTokens(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function changeWalletObserverImplementation(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg1):
        if arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'WalletObserver: You can only set 0x0 or a contract address as a new implementation'
    walletObserverImplementationAddress = arg1
    emit UpdateWalletObserver(walletObserverImplementationAddress, arg1);
}

function changeLiquidityPoolManagerImplementation(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg1):
        if arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'LiquidityPoolManagerUpgradeable: You can only set 0x0 or a contract address as a new implementation'
    liquidityPoolManagerImplementationAddress = arg1
    emit UpdateLiquidityPoolManager(liquidityPoolManagerImplementationAddress, arg1);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_a665e96d(?) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fee for troop owners shoud be less than 100'
    if arg2 >= 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fee for non-troop owners shoud be less than 100'
    if arg3 >= 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fee for troop owners shoud be less than 100'
    if arg4 >= 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fee for non-troop owners shoud be less than 100'
    sub_fa130fdf = arg1
    sub_6a9c5462 = arg2
    sub_2115ec8e = arg3
    sub_eaf447d4 = arg4
}

function name() payable {
    if bool(stor104.length):
        if bool(stor104.length) == uint255(stor104.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor104.length):
            if bool(stor104.length) == uint255(stor104.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor104.length):
                if 31 < uint255(stor104.length) * 0.5:
                    mem[128] = uint256(stor104.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor104.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor104[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor104.length), data=mem[128 len ceil32(uint255(stor104.length) * 0.5)])
                mem[128] = 256 * stor104.length.field_8
        else:
            if bool(stor104.length) == stor104.length.field_1 < 32:
                revert with 0, 34
            if stor104.length.field_1:
                if 31 < stor104.length.field_1:
                    mem[128] = uint256(stor104.field_0)
                    idx = 128
                    s = 0
                    while stor104.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor104[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor104.length), data=mem[128 len ceil32(uint255(stor104.length) * 0.5)])
                mem[128] = 256 * stor104.length.field_8
        mem[ceil32(uint255(stor104.length) * 0.5) + 192 len ceil32(uint255(stor104.length) * 0.5)] = mem[128 len ceil32(uint255(stor104.length) * 0.5)]
        if ceil32(uint255(stor104.length) * 0.5) > uint255(stor104.length) * 0.5:
            mem[ceil32(uint255(stor104.length) * 0.5) + (uint255(stor104.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor104.length), data=mem[128 len ceil32(uint255(stor104.length) * 0.5)], mem[(2 * ceil32(uint255(stor104.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor104.length) * 0.5)]), 
    if bool(stor104.length) == stor104.length.field_1 < 32:
        revert with 0, 34
    if bool(stor104.length):
        if bool(stor104.length) == uint255(stor104.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor104.length):
            if 31 < uint255(stor104.length) * 0.5:
                mem[128] = uint256(stor104.field_0)
                idx = 128
                s = 0
                while (uint255(stor104.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor104[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)])
            mem[128] = 256 * stor104.length.field_8
    else:
        if bool(stor104.length) == stor104.length.field_1 < 32:
            revert with 0, 34
        if stor104.length.field_1:
            if 31 < stor104.length.field_1:
                mem[128] = uint256(stor104.field_0)
                idx = 128
                s = 0
                while stor104.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor104[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)])
            mem[128] = 256 * stor104.length.field_8
    mem[ceil32(stor104.length.field_1) + 192 len ceil32(stor104.length.field_1)] = mem[128 len ceil32(stor104.length.field_1)]
    if ceil32(stor104.length.field_1) > stor104.length.field_1:
        mem[ceil32(stor104.length.field_1) + stor104.length.field_1 + 192] = 0
    return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)], mem[(2 * ceil32(stor104.length.field_1)) + 192 len 2 * ceil32(stor104.length.field_1)]), 
}

function symbol() payable {
    if bool(stor105.length):
        if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor105.length):
            if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor105.length):
                if 31 < uint255(stor105.length) * 0.5:
                    mem[128] = uint256(stor105.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor105.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor105[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor105.length), data=mem[128 len ceil32(uint255(stor105.length) * 0.5)])
                mem[128] = 256 * stor105.length.field_8
        else:
            if bool(stor105.length) == stor105.length.field_1 < 32:
                revert with 0, 34
            if stor105.length.field_1:
                if 31 < stor105.length.field_1:
                    mem[128] = uint256(stor105.field_0)
                    idx = 128
                    s = 0
                    while stor105.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor105[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor105.length), data=mem[128 len ceil32(uint255(stor105.length) * 0.5)])
                mem[128] = 256 * stor105.length.field_8
        mem[ceil32(uint255(stor105.length) * 0.5) + 192 len ceil32(uint255(stor105.length) * 0.5)] = mem[128 len ceil32(uint255(stor105.length) * 0.5)]
        if ceil32(uint255(stor105.length) * 0.5) > uint255(stor105.length) * 0.5:
            mem[ceil32(uint255(stor105.length) * 0.5) + (uint255(stor105.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor105.length), data=mem[128 len ceil32(uint255(stor105.length) * 0.5)], mem[(2 * ceil32(uint255(stor105.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor105.length) * 0.5)]), 
    if bool(stor105.length) == stor105.length.field_1 < 32:
        revert with 0, 34
    if bool(stor105.length):
        if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor105.length):
            if 31 < uint255(stor105.length) * 0.5:
                mem[128] = uint256(stor105.field_0)
                idx = 128
                s = 0
                while (uint255(stor105.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor105[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)])
            mem[128] = 256 * stor105.length.field_8
    else:
        if bool(stor105.length) == stor105.length.field_1 < 32:
            revert with 0, 34
        if stor105.length.field_1:
            if 31 < stor105.length.field_1:
                mem[128] = uint256(stor105.field_0)
                idx = 128
                s = 0
                while stor105.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor105[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)])
            mem[128] = 256 * stor105.length.field_8
    mem[ceil32(stor105.length.field_1) + 192 len ceil32(stor105.length.field_1)] = mem[128 len ceil32(stor105.length.field_1)]
    if ceil32(stor105.length.field_1) > stor105.length.field_1:
        mem[ceil32(stor105.length.field_1) + stor105.length.field_1 + 192] = 0
    return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)], mem[(2 * ceil32(stor105.length.field_1)) + 192 len 2 * ceil32(stor105.length.field_1)]), 
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if not walletObserverImplementationAddress:
        if balanceOf[address(msg.sender)] < arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    else:
        call walletObserverImplementationAddress.beforeTokenTransfer(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), msg.sender, 0, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if balanceOf[address(msg.sender)] < arg1:
            revert with 0, 'ERC20: burn amount exceeds balance'
    ('ge', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 101))), ('param', 'arg1'))
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    if stor414[msg.sender]:
        revert with 0, 'bot can not transfer'
    if stor414[address(msg.sender)]:
        revert with 0, 'bot can not transfer'
    if stor414[0]:
        revert with 0, 'bot can not transfer'
    if not stor402:
        if not walletObserverImplementationAddress:
            if not sub_ddd14d5aAddress:
                if liquidityPoolManagerImplementationAddress:
                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if not liquidityPoolManagerImplementationAddress:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if liquidityPoolManagerImplementationAddress == msg.sender:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not sub_ddd14d5aAddress:
                if liquidityPoolManagerImplementationAddress:
                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if ext_call.return_data[0]:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if not liquidityPoolManagerImplementationAddress:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress == msg.sender:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if stor402 == msg.sender:
            stor402 = 0
        else:
            if not walletObserverImplementationAddress:
                if not sub_ddd14d5aAddress:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if not liquidityPoolManagerImplementationAddress:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress == msg.sender:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not sub_ddd14d5aAddress:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if ext_call.return_data[0]:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not liquidityPoolManagerImplementationAddress:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress == msg.sender:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if liquidityPoolManagerImplementationAddress:
                                    if liquidityPoolManagerImplementationAddress:
                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function accountBurn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if sub_ddd14d5aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Implementations: Not TroopsManager'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if not walletObserverImplementationAddress:
        if balanceOf[address(arg1)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    else:
        call walletObserverImplementationAddress.beforeTokenTransfer(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), 0, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if balanceOf[address(arg1)] < arg2:
            revert with 0, 'ERC20: burn amount exceeds balance'
    ('ge', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 101))), ('param', 'arg2'))
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    if stor414[msg.sender]:
        revert with 0, 'bot can not transfer'
    if stor414[address(arg1)]:
        revert with 0, 'bot can not transfer'
    if stor414[0]:
        revert with 0, 'bot can not transfer'
    if not stor402:
        if not walletObserverImplementationAddress:
            if not sub_ddd14d5aAddress:
                if liquidityPoolManagerImplementationAddress:
                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if not liquidityPoolManagerImplementationAddress:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if liquidityPoolManagerImplementationAddress == arg1:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not sub_ddd14d5aAddress:
                if liquidityPoolManagerImplementationAddress:
                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if ext_call.return_data[0]:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if not liquidityPoolManagerImplementationAddress:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress == arg1:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if stor402 == arg1:
            stor402 = 0
        else:
            if not walletObserverImplementationAddress:
                if not sub_ddd14d5aAddress:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if not liquidityPoolManagerImplementationAddress:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress == arg1:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not sub_ddd14d5aAddress:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if ext_call.return_data[0]:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not liquidityPoolManagerImplementationAddress:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress == arg1:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if liquidityPoolManagerImplementationAddress:
                                    if liquidityPoolManagerImplementationAddress:
                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(arg1)][address(msg.sender)] != -1:
        if allowance[address(arg1)][address(msg.sender)] < arg2:
            revert with 0, 'ERC20: insufficient allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg2
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if not walletObserverImplementationAddress:
        if balanceOf[address(arg1)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    else:
        call walletObserverImplementationAddress.beforeTokenTransfer(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), 0, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if balanceOf[address(arg1)] < arg2:
            revert with 0, 'ERC20: burn amount exceeds balance'
    ('ge', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 101))), ('param', 'arg2'))
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    if stor414[msg.sender]:
        revert with 0, 'bot can not transfer'
    if stor414[address(arg1)]:
        revert with 0, 'bot can not transfer'
    if stor414[0]:
        revert with 0, 'bot can not transfer'
    if not stor402:
        if not walletObserverImplementationAddress:
            if not sub_ddd14d5aAddress:
                if liquidityPoolManagerImplementationAddress:
                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if not liquidityPoolManagerImplementationAddress:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if liquidityPoolManagerImplementationAddress == arg1:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not sub_ddd14d5aAddress:
                if liquidityPoolManagerImplementationAddress:
                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if ext_call.return_data[0]:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if not liquidityPoolManagerImplementationAddress:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress == arg1:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if stor402 == arg1:
            stor402 = 0
        else:
            if not walletObserverImplementationAddress:
                if not sub_ddd14d5aAddress:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if not liquidityPoolManagerImplementationAddress:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress == arg1:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not sub_ddd14d5aAddress:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if ext_call.return_data[0]:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not liquidityPoolManagerImplementationAddress:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress == arg1:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if liquidityPoolManagerImplementationAddress:
                                    if liquidityPoolManagerImplementationAddress:
                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function accountReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if sub_ddd14d5aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Implementations: Not TroopsManager'
    if liquidityPoolManagerImplementationAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Army: Use liquidityReward to reward liquidity'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if walletObserverImplementationAddress:
        call walletObserverImplementationAddress.beforeTokenTransfer(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    if stor414[msg.sender]:
        revert with 0, 'bot can not transfer'
    if stor414[0]:
        revert with 0, 'bot can not transfer'
    if stor414[address(arg1)]:
        revert with 0, 'bot can not transfer'
    if not stor402:
        if not walletObserverImplementationAddress:
            if not sub_ddd14d5aAddress:
                if liquidityPoolManagerImplementationAddress:
                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if liquidityPoolManagerImplementationAddress == arg1:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if not liquidityPoolManagerImplementationAddress:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                    gas gas_remaining wei
                   args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not sub_ddd14d5aAddress:
                if liquidityPoolManagerImplementationAddress:
                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if ext_call.return_data[0]:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if liquidityPoolManagerImplementationAddress == arg1:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not liquidityPoolManagerImplementationAddress:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if stor402:
            if not walletObserverImplementationAddress:
                if not sub_ddd14d5aAddress:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if liquidityPoolManagerImplementationAddress == arg1:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not liquidityPoolManagerImplementationAddress:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                        gas gas_remaining wei
                       args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not sub_ddd14d5aAddress:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if ext_call.return_data[0]:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress == arg1:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if not liquidityPoolManagerImplementationAddress:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if liquidityPoolManagerImplementationAddress:
                                    if liquidityPoolManagerImplementationAddress:
                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if not arg1:
                stor402 = 0
            else:
                if not walletObserverImplementationAddress:
                    if not sub_ddd14d5aAddress:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress == arg1:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if not liquidityPoolManagerImplementationAddress:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if liquidityPoolManagerImplementationAddress:
                                    if liquidityPoolManagerImplementationAddress:
                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                            gas gas_remaining wei
                           args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not sub_ddd14d5aAddress:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if ext_call.return_data[0]:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress == arg1:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if not liquidityPoolManagerImplementationAddress:
                                    if liquidityPoolManagerImplementationAddress:
                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if liquidityPoolManagerImplementationAddress:
                                        if liquidityPoolManagerImplementationAddress:
                                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not walletObserverImplementationAddress:
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    else:
        call walletObserverImplementationAddress.beforeTokenTransfer(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 'ERC20: transfer amount exceeds balance'
    ('ge', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 101))), ('param', 'arg2'))
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if stor414[msg.sender]:
        revert with 0, 'bot can not transfer'
    if stor414[address(msg.sender)]:
        revert with 0, 'bot can not transfer'
    if stor414[address(arg1)]:
        revert with 0, 'bot can not transfer'
    if not stor402:
        if not walletObserverImplementationAddress:
            if not sub_ddd14d5aAddress:
                if liquidityPoolManagerImplementationAddress:
                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if liquidityPoolManagerImplementationAddress == arg1:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if liquidityPoolManagerImplementationAddress == msg.sender:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not sub_ddd14d5aAddress:
                if liquidityPoolManagerImplementationAddress:
                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if ext_call.return_data[0]:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if liquidityPoolManagerImplementationAddress == arg1:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress == msg.sender:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if stor402 != msg.sender:
            if not walletObserverImplementationAddress:
                if not sub_ddd14d5aAddress:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if liquidityPoolManagerImplementationAddress == arg1:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress == msg.sender:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not sub_ddd14d5aAddress:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if ext_call.return_data[0]:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress == arg1:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress == msg.sender:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if liquidityPoolManagerImplementationAddress:
                                    if liquidityPoolManagerImplementationAddress:
                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if not arg1:
                stor402 = 0
            else:
                if not walletObserverImplementationAddress:
                    if not sub_ddd14d5aAddress:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress == arg1:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress == msg.sender:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if liquidityPoolManagerImplementationAddress:
                                    if liquidityPoolManagerImplementationAddress:
                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not sub_ddd14d5aAddress:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if ext_call.return_data[0]:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress == arg1:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if liquidityPoolManagerImplementationAddress == msg.sender:
                                    if liquidityPoolManagerImplementationAddress:
                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if liquidityPoolManagerImplementationAddress:
                                        if liquidityPoolManagerImplementationAddress:
                                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][address(msg.sender)] != -1:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0, 'ERC20: insufficient allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not walletObserverImplementationAddress:
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    else:
        call walletObserverImplementationAddress.beforeTokenTransfer(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 'ERC20: transfer amount exceeds balance'
    ('ge', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 101))), ('param', 'arg3'))
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if stor414[msg.sender]:
        revert with 0, 'bot can not transfer'
    if stor414[address(arg1)]:
        revert with 0, 'bot can not transfer'
    if stor414[address(arg2)]:
        revert with 0, 'bot can not transfer'
    if not stor402:
        if not walletObserverImplementationAddress:
            if not sub_ddd14d5aAddress:
                if liquidityPoolManagerImplementationAddress:
                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if liquidityPoolManagerImplementationAddress == arg2:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if liquidityPoolManagerImplementationAddress == arg1:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not sub_ddd14d5aAddress:
                if liquidityPoolManagerImplementationAddress:
                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if ext_call.return_data[0]:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if liquidityPoolManagerImplementationAddress == arg2:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress == arg1:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if stor402 != arg1:
            if not walletObserverImplementationAddress:
                if not sub_ddd14d5aAddress:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if liquidityPoolManagerImplementationAddress == arg2:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress == arg1:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not sub_ddd14d5aAddress:
                    if liquidityPoolManagerImplementationAddress:
                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if ext_call.return_data[0]:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress == arg2:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress == arg1:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if liquidityPoolManagerImplementationAddress:
                                    if liquidityPoolManagerImplementationAddress:
                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if not arg2:
                stor402 = 0
            else:
                if not walletObserverImplementationAddress:
                    if not sub_ddd14d5aAddress:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if liquidityPoolManagerImplementationAddress == arg2:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress == arg1:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if liquidityPoolManagerImplementationAddress:
                                    if liquidityPoolManagerImplementationAddress:
                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not sub_ddd14d5aAddress:
                        if liquidityPoolManagerImplementationAddress:
                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if ext_call.return_data[0]:
                            if liquidityPoolManagerImplementationAddress:
                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if liquidityPoolManagerImplementationAddress == arg2:
                                if liquidityPoolManagerImplementationAddress:
                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if liquidityPoolManagerImplementationAddress == arg1:
                                    if liquidityPoolManagerImplementationAddress:
                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if liquidityPoolManagerImplementationAddress:
                                        if liquidityPoolManagerImplementationAddress:
                                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function liquidityReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_ddd14d5aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Implementations: Not TroopsManager'
    else:
        if not liquidityPoolManagerImplementationAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Army: LiquidityPoolManagerUpgradeable is not set'
        else:
            if not walletObserverImplementationAddress:
                if totalSupply > !arg1:
                    revert with 0, 17
                else:
                    totalSupply += arg1
                    if balanceOf[stor301] > !arg1:
                        revert with 0, 17
                    else:
                        balanceOf[stor301] += arg1
                        emit Transfer(arg1, 0, liquidityPoolManagerImplementationAddress);
                        if stor414[msg.sender]:
                            revert with 0, 'bot can not transfer'
                        else:
                            if stor414[0]:
                                revert with 0, 'bot can not transfer'
                            else:
                                if stor414[stor301]:
                                    revert with 0, 'bot can not transfer'
                                else:
                                    if not stor402:
                                        if not walletObserverImplementationAddress:
                                            if not sub_ddd14d5aAddress:
                                                if not liquidityPoolManagerImplementationAddress:
                                                else:
                                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            else:
                                                if liquidityPoolManagerImplementationAddress == liquidityPoolManagerImplementationAddress:
                                                    if not liquidityPoolManagerImplementationAddress:
                                                    else:
                                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                else:
                                                    if not liquidityPoolManagerImplementationAddress:
                                                        if not liquidityPoolManagerImplementationAddress:
                                                        else:
                                                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    else:
                                                        if not liquidityPoolManagerImplementationAddress:
                                                        else:
                                                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        else:
                                            staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                                                    gas gas_remaining wei
                                                   args 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not sub_ddd14d5aAddress:
                                                    if not liquidityPoolManagerImplementationAddress:
                                                    else:
                                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                else:
                                                    if ext_call.return_data[0]:
                                                        if not liquidityPoolManagerImplementationAddress:
                                                        else:
                                                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    else:
                                                        if liquidityPoolManagerImplementationAddress == liquidityPoolManagerImplementationAddress:
                                                            if not liquidityPoolManagerImplementationAddress:
                                                            else:
                                                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        else:
                                                            if not liquidityPoolManagerImplementationAddress:
                                                                if not liquidityPoolManagerImplementationAddress:
                                                                else:
                                                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            else:
                                                                if not liquidityPoolManagerImplementationAddress:
                                                                else:
                                                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if stor402:
                                            if not walletObserverImplementationAddress:
                                                if not sub_ddd14d5aAddress:
                                                    if not liquidityPoolManagerImplementationAddress:
                                                    else:
                                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                else:
                                                    if liquidityPoolManagerImplementationAddress == liquidityPoolManagerImplementationAddress:
                                                        if not liquidityPoolManagerImplementationAddress:
                                                        else:
                                                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    else:
                                                        if not liquidityPoolManagerImplementationAddress:
                                                            if not liquidityPoolManagerImplementationAddress:
                                                            else:
                                                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        else:
                                                            if not liquidityPoolManagerImplementationAddress:
                                                            else:
                                                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            else:
                                                staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                                                        gas gas_remaining wei
                                                       args 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not sub_ddd14d5aAddress:
                                                        if not liquidityPoolManagerImplementationAddress:
                                                        else:
                                                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    else:
                                                        if ext_call.return_data[0]:
                                                            if not liquidityPoolManagerImplementationAddress:
                                                            else:
                                                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        else:
                                                            if liquidityPoolManagerImplementationAddress == liquidityPoolManagerImplementationAddress:
                                                                if not liquidityPoolManagerImplementationAddress:
                                                                else:
                                                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            else:
                                                                if not liquidityPoolManagerImplementationAddress:
                                                                    if not liquidityPoolManagerImplementationAddress:
                                                                    else:
                                                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                else:
                                                                    if not liquidityPoolManagerImplementationAddress:
                                                                    else:
                                                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        else:
                                            if liquidityPoolManagerImplementationAddress:
                                                if not walletObserverImplementationAddress:
                                                    if not sub_ddd14d5aAddress:
                                                        if not liquidityPoolManagerImplementationAddress:
                                                        else:
                                                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    else:
                                                        if liquidityPoolManagerImplementationAddress == liquidityPoolManagerImplementationAddress:
                                                            if not liquidityPoolManagerImplementationAddress:
                                                            else:
                                                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        else:
                                                            if not liquidityPoolManagerImplementationAddress:
                                                                if not liquidityPoolManagerImplementationAddress:
                                                                else:
                                                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            else:
                                                                if not liquidityPoolManagerImplementationAddress:
                                                                else:
                                                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                else:
                                                    staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                                                            gas gas_remaining wei
                                                           args 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not sub_ddd14d5aAddress:
                                                            if not liquidityPoolManagerImplementationAddress:
                                                            else:
                                                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        else:
                                                            if ext_call.return_data[0]:
                                                                if not liquidityPoolManagerImplementationAddress:
                                                                else:
                                                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            else:
                                                                if liquidityPoolManagerImplementationAddress == liquidityPoolManagerImplementationAddress:
                                                                    if not liquidityPoolManagerImplementationAddress:
                                                                    else:
                                                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                else:
                                                                    if not liquidityPoolManagerImplementationAddress:
                                                                        if not liquidityPoolManagerImplementationAddress:
                                                                        else:
                                                                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    else:
                                                                        if not liquidityPoolManagerImplementationAddress:
                                                                        else:
                                                                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            else:
                                                stor402 = 0
            else:
                call walletObserverImplementationAddress.beforeTokenTransfer(address arg1, address arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), 0, liquidityPoolManagerImplementationAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if totalSupply > !arg1:
                        revert with 0, 17
                    else:
                        totalSupply += arg1
                        if balanceOf[stor301] > !arg1:
                            revert with 0, 17
                        else:
                            balanceOf[stor301] += arg1
                            emit Transfer(arg1, 0, liquidityPoolManagerImplementationAddress);
                            if stor414[msg.sender]:
                                revert with 0, 'bot can not transfer'
                            else:
                                if stor414[0]:
                                    revert with 0, 'bot can not transfer'
                                else:
                                    if stor414[stor301]:
                                        revert with 0, 'bot can not transfer'
                                    else:
                                        if not stor402:
                                            if not walletObserverImplementationAddress:
                                                if not sub_ddd14d5aAddress:
                                                    if not liquidityPoolManagerImplementationAddress:
                                                    else:
                                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                else:
                                                    if liquidityPoolManagerImplementationAddress == liquidityPoolManagerImplementationAddress:
                                                        if not liquidityPoolManagerImplementationAddress:
                                                        else:
                                                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    else:
                                                        if not liquidityPoolManagerImplementationAddress:
                                                            if not liquidityPoolManagerImplementationAddress:
                                                            else:
                                                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        else:
                                                            if not liquidityPoolManagerImplementationAddress:
                                                            else:
                                                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            else:
                                                staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                                                        gas gas_remaining wei
                                                       args 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not sub_ddd14d5aAddress:
                                                        if not liquidityPoolManagerImplementationAddress:
                                                        else:
                                                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    else:
                                                        if ext_call.return_data[0]:
                                                            if not liquidityPoolManagerImplementationAddress:
                                                            else:
                                                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        else:
                                                            if liquidityPoolManagerImplementationAddress == liquidityPoolManagerImplementationAddress:
                                                                if not liquidityPoolManagerImplementationAddress:
                                                                else:
                                                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            else:
                                                                if not liquidityPoolManagerImplementationAddress:
                                                                    if not liquidityPoolManagerImplementationAddress:
                                                                    else:
                                                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                else:
                                                                    if not liquidityPoolManagerImplementationAddress:
                                                                    else:
                                                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        else:
                                            if stor402:
                                                if not walletObserverImplementationAddress:
                                                    if not sub_ddd14d5aAddress:
                                                        if not liquidityPoolManagerImplementationAddress:
                                                        else:
                                                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                 gas gas_remaining wei
                                                                args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    else:
                                                        if liquidityPoolManagerImplementationAddress == liquidityPoolManagerImplementationAddress:
                                                            if not liquidityPoolManagerImplementationAddress:
                                                            else:
                                                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        else:
                                                            if not liquidityPoolManagerImplementationAddress:
                                                                if not liquidityPoolManagerImplementationAddress:
                                                                else:
                                                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            else:
                                                                if not liquidityPoolManagerImplementationAddress:
                                                                else:
                                                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                else:
                                                    staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                                                            gas gas_remaining wei
                                                           args 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not sub_ddd14d5aAddress:
                                                            if not liquidityPoolManagerImplementationAddress:
                                                            else:
                                                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        else:
                                                            if ext_call.return_data[0]:
                                                                if not liquidityPoolManagerImplementationAddress:
                                                                else:
                                                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            else:
                                                                if liquidityPoolManagerImplementationAddress == liquidityPoolManagerImplementationAddress:
                                                                    if not liquidityPoolManagerImplementationAddress:
                                                                    else:
                                                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                else:
                                                                    if not liquidityPoolManagerImplementationAddress:
                                                                        if not liquidityPoolManagerImplementationAddress:
                                                                        else:
                                                                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    else:
                                                                        if not liquidityPoolManagerImplementationAddress:
                                                                        else:
                                                                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            else:
                                                if liquidityPoolManagerImplementationAddress:
                                                    if not walletObserverImplementationAddress:
                                                        if not sub_ddd14d5aAddress:
                                                            if not liquidityPoolManagerImplementationAddress:
                                                            else:
                                                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        else:
                                                            if liquidityPoolManagerImplementationAddress == liquidityPoolManagerImplementationAddress:
                                                                if not liquidityPoolManagerImplementationAddress:
                                                                else:
                                                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            else:
                                                                if not liquidityPoolManagerImplementationAddress:
                                                                    if not liquidityPoolManagerImplementationAddress:
                                                                    else:
                                                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                else:
                                                                    if not liquidityPoolManagerImplementationAddress:
                                                                    else:
                                                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    else:
                                                        staticcall walletObserverImplementationAddress.isExcludedFromObserver(address arg1) with:
                                                                gas gas_remaining wei
                                                               args 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            if not sub_ddd14d5aAddress:
                                                                if not liquidityPoolManagerImplementationAddress:
                                                                else:
                                                                    call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            else:
                                                                if ext_call.return_data[0]:
                                                                    if not liquidityPoolManagerImplementationAddress:
                                                                    else:
                                                                        call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                else:
                                                                    if liquidityPoolManagerImplementationAddress == liquidityPoolManagerImplementationAddress:
                                                                        if not liquidityPoolManagerImplementationAddress:
                                                                        else:
                                                                            call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    else:
                                                                        if not liquidityPoolManagerImplementationAddress:
                                                                            if not liquidityPoolManagerImplementationAddress:
                                                                            else:
                                                                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        else:
                                                                            if not liquidityPoolManagerImplementationAddress:
                                                                            else:
                                                                                call liquidityPoolManagerImplementationAddress.0xf3988ce with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                else:
                                                    stor402 = 0
}



}
