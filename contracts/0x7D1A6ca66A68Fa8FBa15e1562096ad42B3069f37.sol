contract main {




// =====================  Runtime code  =====================


uint256 totalNodes;
array of address sub_748c3592;
address sub_55fe2338Address;
address usdcAddress;
address stor4;
uint256 sub_9c81b43f;
mapping of struct account;
array of uint256 sub_a4299ba8;

function usdcAddress() payable {
    return usdcAddress
}

function sub_10015a0f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_748c3592.length:
        revert with 'NH{q', 50
    return sub_748c3592[arg1]
}

function getAccountsLength() payable {
    return sub_748c3592.length
}

function sub_55fe2338(?) payable {
    return sub_55fe2338Address
}

function accounts(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(account[arg1].field_0), 
           account[arg1].field_256,
           account[arg1].field_512,
           account[arg1].field_768,
           account[arg1].field_1024,
           account[arg1].field_1280,
           account[arg1].field_1536
}

function sub_63584ecd(?) payable {
    return totalNodes
}

function sub_748c3592(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_748c3592.length
    return sub_748c3592[arg1]
}

function totalNodes() payable {
    return totalNodes
}

function sub_9c81b43f(?) payable {
    return sub_9c81b43f
}

function sub_a4299ba8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_a4299ba8.length
    return sub_a4299ba8[arg1].field_0
}

function getAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return account[address(arg1)].field_256, 
           account[address(arg1)].field_512,
           account[address(arg1)].field_768,
           account[address(arg1)].field_1024,
           account[address(arg1)].field_1280,
           account[address(arg1)].field_1536
}

function _fallback() payable {
    revert
}

function sub_f5d93f52(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be the owner to run this.'
    sub_9c81b43f = arg1
}

function sub_d2901753(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can change node multipliers.'
    if arg1 >= sub_a4299ba8.length:
        revert with 'NH{q', 50
    sub_a4299ba8[arg1].field_0 = arg2
}

function sub_f7aaaf3f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not address(arg1):
        revert with 0, '_address is address 0'
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be the owner to run this.'
    require ext_code.size(usdcAddress)
    call usdcAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_17a36923(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not address(arg1):
        revert with 0, '_address is address 0'
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be the owner to run this.'
    require ext_code.size(sub_55fe2338Address)
    call sub_55fe2338Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawInterest(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, '_to is address 0'
    if arg1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only user can widthraw its own funds.'
    if account[address(arg1)].field_1536 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Interest accumulated must be greater than zero.'
    account[address(arg1)].field_1536 = 0
    require ext_code.size(sub_55fe2338Address)
    call sub_55fe2338Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), account[address(arg1)].field_1536
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_247e3c38(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    if not address(arg1):
        revert with 0, '_address is address 0'
    if stor4 != msg.sender:
        revert with 0, 'Only owner can create a node.'
    if not account[address(arg1)].field_0:
        sub_748c3592.length++
        sub_748c3592[sub_748c3592.length] = address(arg1)
        if arg2 > -arg3 - 1:
            revert with 'NH{q', 17
        if arg2 + arg3 > -arg4 - 1:
            revert with 'NH{q', 17
        if arg2 + arg3 + arg4 > -arg5 - 1:
            revert with 'NH{q', 17
        if arg2 + arg3 + arg4 + arg5 > -arg6 - 1:
            revert with 'NH{q', 17
        if totalNodes > -arg2 + -arg3 + -arg4 + -arg5 + -arg6 - 1:
            revert with 'NH{q', 17
        totalNodes = totalNodes + arg2 + arg3 + arg4 + arg5 + arg6
        account[address(arg1)].field_0 = 1
        account[address(arg1)].field_256 = arg2
        account[address(arg1)].field_512 = arg3
        account[address(arg1)].field_768 = arg4
        account[address(arg1)].field_1024 = arg5
        account[address(arg1)].field_1280 = arg6
        account[address(arg1)].field_1536 = arg7
}

function balancePool() payable {
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be the owner to run this.'
    require ext_code.size(sub_55fe2338Address)
    staticcall sub_55fe2338Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 4 >= sub_a4299ba8.length:
        revert with 'NH{q', 50
    if totalNodes and sub_9c81b43f > -1 / totalNodes:
        revert with 'NH{q', 17
    if totalNodes * sub_9c81b43f and uint256(sub_a4299ba8.field_1024) > -1 / totalNodes * sub_9c81b43f:
        revert with 'NH{q', 17
    if not totalNodes * sub_9c81b43f * uint256(sub_a4299ba8.field_1024) / 100:
        revert with 'NH{q', 18
    if ext_call.return_data[0] / 10^18 / totalNodes * sub_9c81b43f * uint256(sub_a4299ba8.field_1024) / 100 > 900:
        if 4 >= sub_a4299ba8.length:
            revert with 'NH{q', 50
        if sub_9c81b43f > 0xb38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b0:
            revert with 'NH{q', 17
        if 365 * sub_9c81b43f and totalNodes > -1 / 365 * sub_9c81b43f:
            revert with 'NH{q', 17
        if 365 * sub_9c81b43f * totalNodes and uint256(sub_a4299ba8.field_1024) > -1 / 365 * sub_9c81b43f * totalNodes:
            revert with 'NH{q', 17
        if ext_call.return_data[0] / 10^18 < 365 * sub_9c81b43f * totalNodes * uint256(sub_a4299ba8.field_1024) / 100:
            revert with 'NH{q', 17
        if (ext_call.return_data[0] / 10^18) - (365 * sub_9c81b43f * totalNodes * uint256(sub_a4299ba8.field_1024) / 100) and 10^18 > -1 / (ext_call.return_data[0] / 10^18) - (365 * sub_9c81b43f * totalNodes * uint256(sub_a4299ba8.field_1024) / 100):
            revert with 'NH{q', 17
        require ext_code.size(sub_55fe2338Address)
        call sub_55fe2338Address.0x42966c68 with:
             gas gas_remaining wei
            args ((10^18 * ext_call.return_data[0] / 10^18) - (10^18 * 365 * sub_9c81b43f * totalNodes * uint256(sub_a4299ba8.field_1024) / 100))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if ext_call.return_data[0] / 10^18 / totalNodes * sub_9c81b43f * uint256(sub_a4299ba8.field_1024) / 100 < 360:
            if 4 >= sub_a4299ba8.length:
                revert with 'NH{q', 50
            if sub_9c81b43f > 0xb38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b0:
                revert with 'NH{q', 17
            if 365 * sub_9c81b43f and totalNodes > -1 / 365 * sub_9c81b43f:
                revert with 'NH{q', 17
            if 365 * sub_9c81b43f * totalNodes and uint256(sub_a4299ba8.field_1024) > -1 / 365 * sub_9c81b43f * totalNodes:
                revert with 'NH{q', 17
            if 365 * sub_9c81b43f * totalNodes * uint256(sub_a4299ba8.field_1024) / 100 < ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            if (365 * sub_9c81b43f * totalNodes * uint256(sub_a4299ba8.field_1024) / 100) - (ext_call.return_data[0] / 10^18) and 10^18 > -1 / (365 * sub_9c81b43f * totalNodes * uint256(sub_a4299ba8.field_1024) / 100) - (ext_call.return_data[0] / 10^18):
                revert with 'NH{q', 17
            require ext_code.size(sub_55fe2338Address)
            call sub_55fe2338Address.0xa0712d68 with:
                 gas gas_remaining wei
                args ((10^18 * 365 * sub_9c81b43f * totalNodes * uint256(sub_a4299ba8.field_1024) / 100) - (10^18 * ext_call.return_data[0] / 10^18))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_75166473(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not address(arg1):
        revert with 0, '_address is address 0'
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be the owner to run this.'
    if account[address(arg1)].field_0:
        if not arg2:
            if account[address(arg1)].field_256 == -1:
                revert with 'NH{q', 17
            if totalNodes == -1:
                revert with 'NH{q', 17
            totalNodes++
            account[address(arg1)].field_0 = uint8(bool(account[address(arg1)].field_0))
            account[address(arg1)].field_256++
        else:
            if arg2 == 1:
                if account[address(arg1)].field_512 == -1:
                    revert with 'NH{q', 17
                if totalNodes == -1:
                    revert with 'NH{q', 17
                totalNodes++
                account[address(arg1)].field_0 = uint8(bool(account[address(arg1)].field_0))
                account[address(arg1)].field_512++
            else:
                if arg2 == 2:
                    if account[address(arg1)].field_768 == -1:
                        revert with 'NH{q', 17
                    if totalNodes == -1:
                        revert with 'NH{q', 17
                    totalNodes++
                    account[address(arg1)].field_0 = uint8(bool(account[address(arg1)].field_0))
                    account[address(arg1)].field_768++
                else:
                    if arg2 == 3:
                        if account[address(arg1)].field_1024 == -1:
                            revert with 'NH{q', 17
                        if totalNodes == -1:
                            revert with 'NH{q', 17
                        totalNodes++
                        account[address(arg1)].field_0 = uint8(bool(account[address(arg1)].field_0))
                        account[address(arg1)].field_1024++
                    else:
                        if arg2 != 4:
                            if totalNodes == -1:
                                revert with 'NH{q', 17
                            totalNodes++
                            account[address(arg1)].field_0 = uint8(bool(account[address(arg1)].field_0))
                        else:
                            if account[address(arg1)].field_1280 == -1:
                                revert with 'NH{q', 17
                            if totalNodes == -1:
                                revert with 'NH{q', 17
                            totalNodes++
                            account[address(arg1)].field_0 = uint8(bool(account[address(arg1)].field_0))
                            account[address(arg1)].field_1280++
    else:
        sub_748c3592.length++
        sub_748c3592[sub_748c3592.length] = address(arg1)
        if totalNodes == -1:
            revert with 'NH{q', 17
        totalNodes++
        account[address(arg1)].field_0 = 1
        if not arg2:
            account[address(arg1)].field_256 = 1
            account[address(arg1)].field_512 = 0
            account[address(arg1)].field_768 = 0
            account[address(arg1)].field_1024 = 0
            account[address(arg1)].field_1280 = 0
        else:
            account[address(arg1)].field_256 = 0
            if arg2 == 1:
                account[address(arg1)].field_512 = 1
                account[address(arg1)].field_768 = 0
                account[address(arg1)].field_1024 = 0
                account[address(arg1)].field_1280 = 0
            else:
                account[address(arg1)].field_512 = 0
                if arg2 == 2:
                    account[address(arg1)].field_768 = 1
                    account[address(arg1)].field_1024 = 0
                    account[address(arg1)].field_1280 = 0
                else:
                    account[address(arg1)].field_768 = 0
                    if arg2 == 3:
                        account[address(arg1)].field_1024 = 1
                        account[address(arg1)].field_1280 = 0
                    else:
                        account[address(arg1)].field_1024 = 0
                        if arg2 != 4:
                            account[address(arg1)].field_1280 = 0
                        else:
                            account[address(arg1)].field_1280 = 1
        account[address(arg1)].field_1536 = 0
}

function sub_0d3e057b(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not address(arg1):
        revert with 0, '_address is address 0'
    if address(arg1) != msg.sender:
        revert with 0, 'Only user can create a node.'
    if arg4 < 0:
        revert with 0, 'Invalid node type'
    if arg4 > 4:
        revert with 0, 'Invalid node type'
    if account[address(arg1)].field_0:
        if not arg4:
            if arg2 < 25 * 10^18:
                revert with 0, 'You must provide at least 25 CUBO for the LP token'
            if arg3 < 25 * 10^6:
                revert with 0, 'You must provide at least 25 USDC for the LP token'
            if account[address(arg1)].field_256 == -1:
                revert with 'NH{q', 17
            if totalNodes == -1:
                revert with 'NH{q', 17
            totalNodes++
            account[address(arg1)].field_0 = uint8(bool(account[address(arg1)].field_0))
            account[address(arg1)].field_256++
        else:
            if arg4 == 1:
                if arg2 < 100 * 10^18:
                    revert with 0, 'You must provide at least 100 CUBO for the LP token'
                if arg3 < 100 * 10^6:
                    revert with 0, 'You must provide at least 100 USDC for the LP token'
                if account[address(arg1)].field_512 == -1:
                    revert with 'NH{q', 17
                if totalNodes == -1:
                    revert with 'NH{q', 17
                totalNodes++
                account[address(arg1)].field_0 = uint8(bool(account[address(arg1)].field_0))
                account[address(arg1)].field_512++
            else:
                if arg4 == 2:
                    if arg2 < 250 * 10^18:
                        revert with 0, 'You must provide at least 250 CUBO for the LP token'
                    if arg3 < 250 * 10^6:
                        revert with 0, 'You must provide at least 250 USDC for the LP token'
                    if account[address(arg1)].field_768 == -1:
                        revert with 'NH{q', 17
                    if totalNodes == -1:
                        revert with 'NH{q', 17
                    totalNodes++
                    account[address(arg1)].field_0 = uint8(bool(account[address(arg1)].field_0))
                    account[address(arg1)].field_768++
                else:
                    if arg4 == 3:
                        if arg2 < 1000 * 10^18:
                            revert with 0, 'You must provide at least 1000 CUBO for the LP token'
                        if arg3 < 10^9:
                            revert with 0, 'You must provide at least 1000 USDC for the LP token'
                        if account[address(arg1)].field_1024 == -1:
                            revert with 'NH{q', 17
                        if totalNodes == -1:
                            revert with 'NH{q', 17
                        totalNodes++
                        account[address(arg1)].field_0 = uint8(bool(account[address(arg1)].field_0))
                        account[address(arg1)].field_1024++
                    else:
                        if arg4 != 4:
                            if totalNodes == -1:
                                revert with 'NH{q', 17
                            totalNodes++
                            account[address(arg1)].field_0 = uint8(bool(account[address(arg1)].field_0))
                        else:
                            if arg2 < 5000 * 10^18:
                                revert with 0, 'You must provide at least 5000 CUBO for the LP token'
                            if arg3 < 5 * 10^9:
                                revert with 0, 'You must provide at least 5000 USDC for the LP token'
                            if account[address(arg1)].field_1280 == -1:
                                revert with 'NH{q', 17
                            if totalNodes == -1:
                                revert with 'NH{q', 17
                            totalNodes++
                            account[address(arg1)].field_0 = uint8(bool(account[address(arg1)].field_0))
                            account[address(arg1)].field_1280++
    else:
        sub_748c3592.length++
        sub_748c3592[sub_748c3592.length] = address(arg1)
        if not arg4:
            if arg2 < 25 * 10^18:
                revert with 0, 'You must provide at least 25 CUBO for the LP token'
            if arg3 < 25 * 10^6:
                revert with 0, 'You must provide at least 25 USDC for the LP token'
            if totalNodes == -1:
                revert with 'NH{q', 17
            totalNodes++
            account[address(arg1)].field_0 = 1
            account[address(arg1)].field_256 = 1
            account[address(arg1)].field_512 = 0
            account[address(arg1)].field_768 = 0
            account[address(arg1)].field_1024 = 0
            account[address(arg1)].field_1280 = 0
        else:
            if arg4 == 1:
                if arg2 < 100 * 10^18:
                    revert with 0, 'You must provide at least 100 CUBO for the LP token'
                if arg3 < 100 * 10^6:
                    revert with 0, 'You must provide at least 100 USDC for the LP token'
                if totalNodes == -1:
                    revert with 'NH{q', 17
                totalNodes++
                account[address(arg1)].field_0 = 1
                account[address(arg1)].field_256 = 0
                account[address(arg1)].field_512 = 1
                account[address(arg1)].field_768 = 0
                account[address(arg1)].field_1024 = 0
                account[address(arg1)].field_1280 = 0
            else:
                if arg4 == 2:
                    if arg2 < 250 * 10^18:
                        revert with 0, 'You must provide at least 250 CUBO for the LP token'
                    if arg3 < 250 * 10^6:
                        revert with 0, 'You must provide at least 250 USDC for the LP token'
                    if totalNodes == -1:
                        revert with 'NH{q', 17
                    totalNodes++
                    account[address(arg1)].field_0 = 1
                    account[address(arg1)].field_256 = 0
                    account[address(arg1)].field_512 = 0
                    account[address(arg1)].field_768 = 1
                    account[address(arg1)].field_1024 = 0
                    account[address(arg1)].field_1280 = 0
                else:
                    if arg4 == 3:
                        if arg2 < 1000 * 10^18:
                            revert with 0, 'You must provide at least 1000 CUBO for the LP token'
                        if arg3 < 10^9:
                            revert with 0, 'You must provide at least 1000 USDC for the LP token'
                        if totalNodes == -1:
                            revert with 'NH{q', 17
                        totalNodes++
                        account[address(arg1)].field_0 = 1
                        account[address(arg1)].field_256 = 0
                        account[address(arg1)].field_512 = 0
                        account[address(arg1)].field_768 = 0
                        account[address(arg1)].field_1024 = 1
                        account[address(arg1)].field_1280 = 0
                    else:
                        if arg4 != 4:
                            if totalNodes == -1:
                                revert with 'NH{q', 17
                            totalNodes++
                            account[address(arg1)].field_0 = 1
                            account[address(arg1)].field_256 = 0
                            account[address(arg1)].field_512 = 0
                            account[address(arg1)].field_768 = 0
                            account[address(arg1)].field_1024 = 0
                            account[address(arg1)].field_1280 = 0
                        else:
                            if arg2 < 5000 * 10^18:
                                revert with 0, 'You must provide at least 5000 CUBO for the LP token'
                            if arg3 < 5 * 10^9:
                                revert with 0, 'You must provide at least 5000 USDC for the LP token'
                            if totalNodes == -1:
                                revert with 'NH{q', 17
                            totalNodes++
                            account[address(arg1)].field_0 = 1
                            account[address(arg1)].field_256 = 0
                            account[address(arg1)].field_512 = 0
                            account[address(arg1)].field_768 = 0
                            account[address(arg1)].field_1024 = 0
                            account[address(arg1)].field_1280 = 1
        account[address(arg1)].field_1536 = 0
    require ext_code.size(sub_55fe2338Address)
    call sub_55fe2338Address.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(usdcAddress)
    call usdcAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_ff4ba23d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be the owner to run this.'
    if arg2 != 1:
        idx = arg1
        while idx < arg2:
            if idx >= sub_748c3592.length:
                revert with 'NH{q', 50
            mem[0] = sub_748c3592[idx]
            mem[32] = 6
            _49 = mem[64]
            mem[64] = mem[64] + 224
            mem[_49] = bool(account[stor1[idx]].field_0)
            mem[_49 + 32] = account[stor1[idx]].field_256
            mem[_49 + 64] = account[stor1[idx]].field_512
            mem[_49 + 96] = account[stor1[idx]].field_768
            mem[_49 + 128] = account[stor1[idx]].field_1024
            mem[_49 + 160] = account[stor1[idx]].field_1280
            if 0 >= sub_a4299ba8.length:
                revert with 'NH{q', 50
            if account[stor1[idx]].field_256 and uint256(sub_a4299ba8.field_0) > -1 / account[stor1[idx]].field_256:
                revert with 'NH{q', 17
            if account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0) and sub_9c81b43f > -1 / account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0):
                revert with 'NH{q', 17
            if account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f and 10^18 > -1 / account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f:
                revert with 'NH{q', 17
            if 1 >= sub_a4299ba8.length:
                revert with 'NH{q', 50
            if account[stor1[idx]].field_512 and uint256(sub_a4299ba8.field_256) > -1 / account[stor1[idx]].field_512:
                revert with 'NH{q', 17
            if account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256) and sub_9c81b43f > -1 / account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256):
                revert with 'NH{q', 17
            if account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f and 10^18 > -1 / account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f:
                revert with 'NH{q', 17
            if 10^18 * account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f / 100 > -(10^18 * account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f / 100) - 1:
                revert with 'NH{q', 17
            if 2 >= sub_a4299ba8.length:
                revert with 'NH{q', 50
            if account[stor1[idx]].field_768 and uint256(sub_a4299ba8.field_512) > -1 / account[stor1[idx]].field_768:
                revert with 'NH{q', 17
            if account[stor1[idx]].field_768 * uint256(sub_a4299ba8.field_512) and sub_9c81b43f > -1 / account[stor1[idx]].field_768 * uint256(sub_a4299ba8.field_512):
                revert with 'NH{q', 17
            if account[stor1[idx]].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f and 10^18 > -1 / account[stor1[idx]].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f:
                revert with 'NH{q', 17
            if (10^18 * account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f / 100) > -(10^18 * account[stor1[idx]].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f / 100) - 1:
                revert with 'NH{q', 17
            if 3 >= sub_a4299ba8.length:
                revert with 'NH{q', 50
            if account[stor1[idx]].field_1024 and uint256(sub_a4299ba8.field_768) > -1 / account[stor1[idx]].field_1024:
                revert with 'NH{q', 17
            if account[stor1[idx]].field_1024 * uint256(sub_a4299ba8.field_768) and sub_9c81b43f > -1 / account[stor1[idx]].field_1024 * uint256(sub_a4299ba8.field_768):
                revert with 'NH{q', 17
            if account[stor1[idx]].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f and 10^18 > -1 / account[stor1[idx]].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f:
                revert with 'NH{q', 17
            if (10^18 * account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f / 100) > -(10^18 * account[stor1[idx]].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f / 100) - 1:
                revert with 'NH{q', 17
            if 4 >= sub_a4299ba8.length:
                revert with 'NH{q', 50
            if account[stor1[idx]].field_1280 and uint256(sub_a4299ba8.field_1024) > -1 / account[stor1[idx]].field_1280:
                revert with 'NH{q', 17
            if account[stor1[idx]].field_1280 * uint256(sub_a4299ba8.field_1024) and sub_9c81b43f > -1 / account[stor1[idx]].field_1280 * uint256(sub_a4299ba8.field_1024):
                revert with 'NH{q', 17
            if account[stor1[idx]].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f and 10^18 > -1 / account[stor1[idx]].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f:
                revert with 'NH{q', 17
            if (10^18 * account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f / 100) > -(10^18 * account[stor1[idx]].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f / 100) - 1:
                revert with 'NH{q', 17
            if account[stor1[idx]].field_1536 > -(10^18 * account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f / 100) + -(10^18 * account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f / 100) + -(10^18 * account[stor1[idx]].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f / 100) + -(10^18 * account[stor1[idx]].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f / 100) + -(10^18 * account[stor1[idx]].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f / 100) - 1:
                revert with 'NH{q', 17
            mem[_49 + 192] = account[stor1[idx]].field_1536 + (10^18 * account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f / 100)
            mem[0] = sub_748c3592[idx]
            mem[32] = 6
            account[stor1[idx]].field_0 = uint8(bool(account[stor1[idx]].field_0))
            account[stor1[idx]].field_1536 = account[stor1[idx]].field_1536 + (10^18 * account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f / 100)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        idx = arg1
        while idx < totalNodes:
            if idx >= sub_748c3592.length:
                revert with 'NH{q', 50
            mem[0] = sub_748c3592[idx]
            mem[32] = 6
            _52 = mem[64]
            mem[64] = mem[64] + 224
            mem[_52] = bool(account[stor1[idx]].field_0)
            mem[_52 + 32] = account[stor1[idx]].field_256
            mem[_52 + 64] = account[stor1[idx]].field_512
            mem[_52 + 96] = account[stor1[idx]].field_768
            mem[_52 + 128] = account[stor1[idx]].field_1024
            mem[_52 + 160] = account[stor1[idx]].field_1280
            if 0 >= sub_a4299ba8.length:
                revert with 'NH{q', 50
            if account[stor1[idx]].field_256 and uint256(sub_a4299ba8.field_0) > -1 / account[stor1[idx]].field_256:
                revert with 'NH{q', 17
            if account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0) and sub_9c81b43f > -1 / account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0):
                revert with 'NH{q', 17
            if account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f and 10^18 > -1 / account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f:
                revert with 'NH{q', 17
            if 1 >= sub_a4299ba8.length:
                revert with 'NH{q', 50
            if account[stor1[idx]].field_512 and uint256(sub_a4299ba8.field_256) > -1 / account[stor1[idx]].field_512:
                revert with 'NH{q', 17
            if account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256) and sub_9c81b43f > -1 / account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256):
                revert with 'NH{q', 17
            if account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f and 10^18 > -1 / account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f:
                revert with 'NH{q', 17
            if 10^18 * account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f / 100 > -(10^18 * account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f / 100) - 1:
                revert with 'NH{q', 17
            if 2 >= sub_a4299ba8.length:
                revert with 'NH{q', 50
            if account[stor1[idx]].field_768 and uint256(sub_a4299ba8.field_512) > -1 / account[stor1[idx]].field_768:
                revert with 'NH{q', 17
            if account[stor1[idx]].field_768 * uint256(sub_a4299ba8.field_512) and sub_9c81b43f > -1 / account[stor1[idx]].field_768 * uint256(sub_a4299ba8.field_512):
                revert with 'NH{q', 17
            if account[stor1[idx]].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f and 10^18 > -1 / account[stor1[idx]].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f:
                revert with 'NH{q', 17
            if (10^18 * account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f / 100) > -(10^18 * account[stor1[idx]].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f / 100) - 1:
                revert with 'NH{q', 17
            if 3 >= sub_a4299ba8.length:
                revert with 'NH{q', 50
            if account[stor1[idx]].field_1024 and uint256(sub_a4299ba8.field_768) > -1 / account[stor1[idx]].field_1024:
                revert with 'NH{q', 17
            if account[stor1[idx]].field_1024 * uint256(sub_a4299ba8.field_768) and sub_9c81b43f > -1 / account[stor1[idx]].field_1024 * uint256(sub_a4299ba8.field_768):
                revert with 'NH{q', 17
            if account[stor1[idx]].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f and 10^18 > -1 / account[stor1[idx]].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f:
                revert with 'NH{q', 17
            if (10^18 * account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f / 100) > -(10^18 * account[stor1[idx]].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f / 100) - 1:
                revert with 'NH{q', 17
            if 4 >= sub_a4299ba8.length:
                revert with 'NH{q', 50
            if account[stor1[idx]].field_1280 and uint256(sub_a4299ba8.field_1024) > -1 / account[stor1[idx]].field_1280:
                revert with 'NH{q', 17
            if account[stor1[idx]].field_1280 * uint256(sub_a4299ba8.field_1024) and sub_9c81b43f > -1 / account[stor1[idx]].field_1280 * uint256(sub_a4299ba8.field_1024):
                revert with 'NH{q', 17
            if account[stor1[idx]].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f and 10^18 > -1 / account[stor1[idx]].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f:
                revert with 'NH{q', 17
            if (10^18 * account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f / 100) > -(10^18 * account[stor1[idx]].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f / 100) - 1:
                revert with 'NH{q', 17
            if account[stor1[idx]].field_1536 > -(10^18 * account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f / 100) + -(10^18 * account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f / 100) + -(10^18 * account[stor1[idx]].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f / 100) + -(10^18 * account[stor1[idx]].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f / 100) + -(10^18 * account[stor1[idx]].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f / 100) - 1:
                revert with 'NH{q', 17
            mem[_52 + 192] = account[stor1[idx]].field_1536 + (10^18 * account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f / 100)
            mem[0] = sub_748c3592[idx]
            mem[32] = 6
            account[stor1[idx]].field_0 = uint8(bool(account[stor1[idx]].field_0))
            account[stor1[idx]].field_1536 = account[stor1[idx]].field_1536 + (10^18 * account[stor1[idx]].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f / 100) + (10^18 * account[stor1[idx]].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f / 100)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}
