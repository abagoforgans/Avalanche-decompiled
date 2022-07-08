contract main {




// =====================  Runtime code  =====================


uint256 totalNodes;
array of address sub_748c3592;
address sub_55fe2338Address;
address usdcAddress;
address stor4;
uint256 sub_9c81b43f;
uint256 stor6;
uint256 stor7;
address stor8;
mapping of struct account;
array of uint256 sub_a4299ba8;
array of uint256 sub_07cb9a57;
array of uint256 sub_f25d4b9e;

function usdcAddress() payable {
    return usdcAddress
}

function sub_07cb9a57(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_07cb9a57.length
    return sub_07cb9a57[arg1].field_0
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

function sub_f25d4b9e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_f25d4b9e.length
    return sub_f25d4b9e[arg1].field_0
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

function sub_e96eaa8e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < account[address(arg1)].field_1536:
        revert with 'NH{q', 17
    return (block.timestamp - account[address(arg1)].field_1536)
}

function sub_5d18d855(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be the owner to run this.'
    stor6 = arg1
}

function sub_f5d93f52(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be the owner to run this.'
    sub_9c81b43f = arg1
}

function setPenalty(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be the owner to run this.'
    stor7 = arg1
}

function setBurnAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be the owner to run this.'
    stor8 = arg1
}

function sub_dd0ed7d2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be the owner to run this.'
    sub_55fe2338Address = address(arg1)
}

function sub_eea59092(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be the owner to run this.'
    account[address(arg1)].field_1536 = arg2
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

function sub_cea627fb(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can change node costs.'
    if arg1 >= sub_07cb9a57.length:
        revert with 'NH{q', 50
    sub_07cb9a57[arg1].field_0 = arg3
    if arg1 >= sub_f25d4b9e.length:
        revert with 'NH{q', 50
    sub_f25d4b9e[arg1].field_0 = arg2
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
        revert with 0, 'Only owner can migrate nodes.'
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
        account[address(arg1)].field_1536 = block.timestamp
}

function sub_74f9f101(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < account[address(arg1)].field_1536:
        revert with 'NH{q', 17
    if 0 >= sub_a4299ba8.length:
        revert with 'NH{q', 50
    if account[address(arg1)].field_256 and uint256(sub_a4299ba8.field_0) > -1 / account[address(arg1)].field_256:
        revert with 'NH{q', 17
    if account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) and sub_9c81b43f > -1 / account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0):
        revert with 'NH{q', 17
    if account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f and block.timestamp - account[address(arg1)].field_1536 > -1 / account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f:
        revert with 'NH{q', 17
    if (block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) and 10^18 > -1 / (block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f):
        revert with 'NH{q', 17
    if 1 >= sub_a4299ba8.length:
        revert with 'NH{q', 50
    if account[address(arg1)].field_512 and uint256(sub_a4299ba8.field_256) > -1 / account[address(arg1)].field_512:
        revert with 'NH{q', 17
    if account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) and sub_9c81b43f > -1 / account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256):
        revert with 'NH{q', 17
    if account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f and block.timestamp - account[address(arg1)].field_1536 > -1 / account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f:
        revert with 'NH{q', 17
    if (block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) and 10^18 > -1 / (block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f):
        revert with 'NH{q', 17
    if (10^18 * block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) / 2400 * 24 * 3600 > -((10^18 * block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) / 2400 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    if 2 >= sub_a4299ba8.length:
        revert with 'NH{q', 50
    if account[address(arg1)].field_768 and uint256(sub_a4299ba8.field_512) > -1 / account[address(arg1)].field_768:
        revert with 'NH{q', 17
    if account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) and sub_9c81b43f > -1 / account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512):
        revert with 'NH{q', 17
    if account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f and block.timestamp - account[address(arg1)].field_1536 > -1 / account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f:
        revert with 'NH{q', 17
    if (block.timestamp * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) - (account[address(arg1)].field_1536 * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) and 10^18 > -1 / (block.timestamp * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) - (account[address(arg1)].field_1536 * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f):
        revert with 'NH{q', 17
    if ((10^18 * block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) / 2400 * 24 * 3600) > -((10^18 * block.timestamp * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) / 2400 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    if 3 >= sub_a4299ba8.length:
        revert with 'NH{q', 50
    if account[address(arg1)].field_1024 and uint256(sub_a4299ba8.field_768) > -1 / account[address(arg1)].field_1024:
        revert with 'NH{q', 17
    if account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) and sub_9c81b43f > -1 / account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768):
        revert with 'NH{q', 17
    if account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f and block.timestamp - account[address(arg1)].field_1536 > -1 / account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f:
        revert with 'NH{q', 17
    if (block.timestamp * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) - (account[address(arg1)].field_1536 * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) and 10^18 > -1 / (block.timestamp * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) - (account[address(arg1)].field_1536 * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f):
        revert with 'NH{q', 17
    if ((10^18 * block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) / 2400 * 24 * 3600) > -((10^18 * block.timestamp * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) / 2400 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    if 4 >= sub_a4299ba8.length:
        revert with 'NH{q', 50
    if account[address(arg1)].field_1280 and uint256(sub_a4299ba8.field_1024) > -1 / account[address(arg1)].field_1280:
        revert with 'NH{q', 17
    if account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) and sub_9c81b43f > -1 / account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024):
        revert with 'NH{q', 17
    if account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f and block.timestamp - account[address(arg1)].field_1536 > -1 / account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f:
        revert with 'NH{q', 17
    if (block.timestamp * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) - (account[address(arg1)].field_1536 * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) and 10^18 > -1 / (block.timestamp * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) - (account[address(arg1)].field_1536 * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f):
        revert with 'NH{q', 17
    if ((10^18 * block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) / 2400 * 24 * 3600) > -((10^18 * block.timestamp * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) / 2400 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    return (((10^18 * block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) / 2400 * 24 * 3600))
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
            if 0 >= sub_f25d4b9e.length:
                revert with 'NH{q', 50
            if uint256(sub_f25d4b9e.field_0) and 10^18 > -1 / uint256(sub_f25d4b9e.field_0):
                revert with 'NH{q', 17
            if arg2 < 10^18 * uint256(sub_f25d4b9e.field_0):
                revert with 0, 'Not enough RIDES provided for the Tuktuk node.'
            if 0 >= sub_07cb9a57.length:
                revert with 'NH{q', 50
            if uint256(sub_07cb9a57.field_0) and 10^6 > -1 / uint256(sub_07cb9a57.field_0):
                revert with 'NH{q', 17
            if arg3 < 10^6 * uint256(sub_07cb9a57.field_0):
                revert with 0, 'Not enough USDC.e provided for the Tuktuk node.'
            if account[address(arg1)].field_256 == -1:
                revert with 'NH{q', 17
            if totalNodes == -1:
                revert with 'NH{q', 17
            totalNodes++
            account[address(arg1)].field_0 = uint8(bool(account[address(arg1)].field_0))
            account[address(arg1)].field_256++
        else:
            if arg4 == 1:
                if 1 >= sub_f25d4b9e.length:
                    revert with 'NH{q', 50
                if uint256(sub_f25d4b9e.field_256) and 10^18 > -1 / uint256(sub_f25d4b9e.field_256):
                    revert with 'NH{q', 17
                if arg2 < 10^18 * uint256(sub_f25d4b9e.field_256):
                    revert with 0, 'Not enough RIDES provided for the Kombi node.'
                if 1 >= sub_07cb9a57.length:
                    revert with 'NH{q', 50
                if uint256(sub_07cb9a57.field_256) and 10^6 > -1 / uint256(sub_07cb9a57.field_256):
                    revert with 'NH{q', 17
                if arg3 < 10^6 * uint256(sub_07cb9a57.field_256):
                    revert with 0, 'Not enough USDC.e provided for the Kombi node.'
                if account[address(arg1)].field_512 == -1:
                    revert with 'NH{q', 17
                if totalNodes == -1:
                    revert with 'NH{q', 17
                totalNodes++
                account[address(arg1)].field_0 = uint8(bool(account[address(arg1)].field_0))
                account[address(arg1)].field_512++
            else:
                if arg4 == 2:
                    if 2 >= sub_f25d4b9e.length:
                        revert with 'NH{q', 50
                    if uint256(sub_f25d4b9e.field_512) and 10^18 > -1 / uint256(sub_f25d4b9e.field_512):
                        revert with 'NH{q', 17
                    if arg2 < 10^18 * uint256(sub_f25d4b9e.field_512):
                        revert with 0, 'Not enough RIDES provided for the Fiat node.'
                    if 2 >= sub_07cb9a57.length:
                        revert with 'NH{q', 50
                    if uint256(sub_07cb9a57.field_512) and 10^6 > -1 / uint256(sub_07cb9a57.field_512):
                        revert with 'NH{q', 17
                    if arg3 < 10^6 * uint256(sub_07cb9a57.field_512):
                        revert with 0, 'Not enough USDC.e provided for the Fiat node.'
                    if account[address(arg1)].field_768 == -1:
                        revert with 'NH{q', 17
                    if totalNodes == -1:
                        revert with 'NH{q', 17
                    totalNodes++
                    account[address(arg1)].field_0 = uint8(bool(account[address(arg1)].field_0))
                    account[address(arg1)].field_768++
                else:
                    if arg4 == 3:
                        if 3 >= sub_f25d4b9e.length:
                            revert with 'NH{q', 50
                        if uint256(sub_f25d4b9e.field_768) and 10^18 > -1 / uint256(sub_f25d4b9e.field_768):
                            revert with 'NH{q', 17
                        if arg2 < 10^18 * uint256(sub_f25d4b9e.field_768):
                            revert with 0, 'Not enough RIDES provided for the Camaro node.'
                        if 3 >= sub_07cb9a57.length:
                            revert with 'NH{q', 50
                        if uint256(sub_07cb9a57.field_768) and 10^6 > -1 / uint256(sub_07cb9a57.field_768):
                            revert with 'NH{q', 17
                        if arg3 < 10^6 * uint256(sub_07cb9a57.field_768):
                            revert with 0, 'Not enough USDC.e provided for the Camaro node.'
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
                            if 4 >= sub_f25d4b9e.length:
                                revert with 'NH{q', 50
                            if uint256(sub_f25d4b9e.field_1024) and 10^18 > -1 / uint256(sub_f25d4b9e.field_1024):
                                revert with 'NH{q', 17
                            if arg2 < 10^18 * uint256(sub_f25d4b9e.field_1024):
                                revert with 0, 'Not enough RIDES provided for the Lambo node.'
                            if 4 >= sub_07cb9a57.length:
                                revert with 'NH{q', 50
                            if uint256(sub_07cb9a57.field_1024) and 10^6 > -1 / uint256(sub_07cb9a57.field_1024):
                                revert with 'NH{q', 17
                            if arg3 < 10^6 * uint256(sub_07cb9a57.field_1024):
                                revert with 0, 'Not enough USDC.e provided for the Lambo node.'
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
            if 0 >= sub_f25d4b9e.length:
                revert with 'NH{q', 50
            if uint256(sub_f25d4b9e.field_0) and 10^18 > -1 / uint256(sub_f25d4b9e.field_0):
                revert with 'NH{q', 17
            if arg2 < 10^18 * uint256(sub_f25d4b9e.field_0):
                revert with 0, 'Not enough RIDES provided for the Tuktuk node.'
            if 0 >= sub_07cb9a57.length:
                revert with 'NH{q', 50
            if uint256(sub_07cb9a57.field_0) and 10^6 > -1 / uint256(sub_07cb9a57.field_0):
                revert with 'NH{q', 17
            if arg3 < 10^6 * uint256(sub_07cb9a57.field_0):
                revert with 0, 'Not enough USDC.e provided for the Tuktuk node.'
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
                if 1 >= sub_f25d4b9e.length:
                    revert with 'NH{q', 50
                if uint256(sub_f25d4b9e.field_256) and 10^18 > -1 / uint256(sub_f25d4b9e.field_256):
                    revert with 'NH{q', 17
                if arg2 < 10^18 * uint256(sub_f25d4b9e.field_256):
                    revert with 0, 'Not enough RIDES provided for the Kombi node.'
                if 1 >= sub_07cb9a57.length:
                    revert with 'NH{q', 50
                if uint256(sub_07cb9a57.field_256) and 10^6 > -1 / uint256(sub_07cb9a57.field_256):
                    revert with 'NH{q', 17
                if arg3 < 10^6 * uint256(sub_07cb9a57.field_256):
                    revert with 0, 'Not enough USDC.e provided for the Kombi node.'
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
                    if 2 >= sub_f25d4b9e.length:
                        revert with 'NH{q', 50
                    if uint256(sub_f25d4b9e.field_512) and 10^18 > -1 / uint256(sub_f25d4b9e.field_512):
                        revert with 'NH{q', 17
                    if arg2 < 10^18 * uint256(sub_f25d4b9e.field_512):
                        revert with 0, 'Not enough RIDES provided for the Fiat node.'
                    if 2 >= sub_07cb9a57.length:
                        revert with 'NH{q', 50
                    if uint256(sub_07cb9a57.field_512) and 10^6 > -1 / uint256(sub_07cb9a57.field_512):
                        revert with 'NH{q', 17
                    if arg3 < 10^6 * uint256(sub_07cb9a57.field_512):
                        revert with 0, 'Not enough USDC.e provided for the Fiat node.'
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
                        if 3 >= sub_f25d4b9e.length:
                            revert with 'NH{q', 50
                        if uint256(sub_f25d4b9e.field_768) and 10^18 > -1 / uint256(sub_f25d4b9e.field_768):
                            revert with 'NH{q', 17
                        if arg2 < 10^18 * uint256(sub_f25d4b9e.field_768):
                            revert with 0, 'Not enough RIDES provided for the Camaro node.'
                        if 3 >= sub_07cb9a57.length:
                            revert with 'NH{q', 50
                        if uint256(sub_07cb9a57.field_768) and 10^6 > -1 / uint256(sub_07cb9a57.field_768):
                            revert with 'NH{q', 17
                        if arg3 < 10^6 * uint256(sub_07cb9a57.field_768):
                            revert with 0, 'Not enough USDC.e provided for the Camaro node.'
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
                            if 4 >= sub_f25d4b9e.length:
                                revert with 'NH{q', 50
                            if uint256(sub_f25d4b9e.field_1024) and 10^18 > -1 / uint256(sub_f25d4b9e.field_1024):
                                revert with 'NH{q', 17
                            if arg2 < 10^18 * uint256(sub_f25d4b9e.field_1024):
                                revert with 0, 'Not enough RIDES provided for the Lambo node.'
                            if 4 >= sub_07cb9a57.length:
                                revert with 'NH{q', 50
                            if uint256(sub_07cb9a57.field_1024) and 10^6 > -1 / uint256(sub_07cb9a57.field_1024):
                                revert with 'NH{q', 17
                            if arg3 < 10^6 * uint256(sub_07cb9a57.field_1024):
                                revert with 0, 'Not enough USDC.e provided for the Lambo node.'
                            if totalNodes == -1:
                                revert with 'NH{q', 17
                            totalNodes++
                            account[address(arg1)].field_0 = 1
                            account[address(arg1)].field_256 = 0
                            account[address(arg1)].field_512 = 0
                            account[address(arg1)].field_768 = 0
                            account[address(arg1)].field_1024 = 0
                            account[address(arg1)].field_1280 = 1
        account[address(arg1)].field_1536 = block.timestamp
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

function withdrawInterest(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, '_to is address 0'
    if arg1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only user can widthraw its own funds.'
    if block.timestamp < account[address(arg1)].field_1536:
        revert with 'NH{q', 17
    if block.timestamp - account[address(arg1)].field_1536 <= 30:
        revert with 0, 'You must wait at least 30 seconds to claim your rewards again.'
    if block.timestamp < account[address(arg1)].field_1536:
        revert with 'NH{q', 17
    if 0 >= sub_a4299ba8.length:
        revert with 'NH{q', 50
    if account[address(arg1)].field_256 and uint256(sub_a4299ba8.field_0) > -1 / account[address(arg1)].field_256:
        revert with 'NH{q', 17
    if account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) and sub_9c81b43f > -1 / account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0):
        revert with 'NH{q', 17
    if account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f and block.timestamp - account[address(arg1)].field_1536 > -1 / account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f:
        revert with 'NH{q', 17
    if (block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) and 10^18 > -1 / (block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f):
        revert with 'NH{q', 17
    if 1 >= sub_a4299ba8.length:
        revert with 'NH{q', 50
    if account[address(arg1)].field_512 and uint256(sub_a4299ba8.field_256) > -1 / account[address(arg1)].field_512:
        revert with 'NH{q', 17
    if account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) and sub_9c81b43f > -1 / account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256):
        revert with 'NH{q', 17
    if account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f and block.timestamp - account[address(arg1)].field_1536 > -1 / account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f:
        revert with 'NH{q', 17
    if (block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) and 10^18 > -1 / (block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f):
        revert with 'NH{q', 17
    if (10^18 * block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) / 2400 * 24 * 3600 > -((10^18 * block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) / 2400 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    if 2 >= sub_a4299ba8.length:
        revert with 'NH{q', 50
    if account[address(arg1)].field_768 and uint256(sub_a4299ba8.field_512) > -1 / account[address(arg1)].field_768:
        revert with 'NH{q', 17
    if account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) and sub_9c81b43f > -1 / account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512):
        revert with 'NH{q', 17
    if account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f and block.timestamp - account[address(arg1)].field_1536 > -1 / account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f:
        revert with 'NH{q', 17
    if (block.timestamp * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) - (account[address(arg1)].field_1536 * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) and 10^18 > -1 / (block.timestamp * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) - (account[address(arg1)].field_1536 * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f):
        revert with 'NH{q', 17
    if ((10^18 * block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) / 2400 * 24 * 3600) > -((10^18 * block.timestamp * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) / 2400 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    if 3 >= sub_a4299ba8.length:
        revert with 'NH{q', 50
    if account[address(arg1)].field_1024 and uint256(sub_a4299ba8.field_768) > -1 / account[address(arg1)].field_1024:
        revert with 'NH{q', 17
    if account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) and sub_9c81b43f > -1 / account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768):
        revert with 'NH{q', 17
    if account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f and block.timestamp - account[address(arg1)].field_1536 > -1 / account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f:
        revert with 'NH{q', 17
    if (block.timestamp * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) - (account[address(arg1)].field_1536 * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) and 10^18 > -1 / (block.timestamp * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) - (account[address(arg1)].field_1536 * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f):
        revert with 'NH{q', 17
    if ((10^18 * block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) / 2400 * 24 * 3600) > -((10^18 * block.timestamp * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) / 2400 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    if 4 >= sub_a4299ba8.length:
        revert with 'NH{q', 50
    if account[address(arg1)].field_1280 and uint256(sub_a4299ba8.field_1024) > -1 / account[address(arg1)].field_1280:
        revert with 'NH{q', 17
    if account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) and sub_9c81b43f > -1 / account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024):
        revert with 'NH{q', 17
    if account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f and block.timestamp - account[address(arg1)].field_1536 > -1 / account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f:
        revert with 'NH{q', 17
    if (block.timestamp * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) - (account[address(arg1)].field_1536 * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) and 10^18 > -1 / (block.timestamp * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) - (account[address(arg1)].field_1536 * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f):
        revert with 'NH{q', 17
    if ((10^18 * block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) / 2400 * 24 * 3600) > -((10^18 * block.timestamp * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) / 2400 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    if block.timestamp < account[address(arg1)].field_1536:
        revert with 'NH{q', 17
    if block.timestamp - account[address(arg1)].field_1536 >= stor7:
        account[address(arg1)].field_1536 = block.timestamp
        require ext_code.size(sub_55fe2338Address)
        call sub_55fe2338Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ((10^18 * block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) / 2400 * 24 * 3600)
    else:
        if ((10^18 * block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) / 2400 * 24 * 3600) and stor6 > -1 / ((10^18 * block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) / 2400 * 24 * 3600):
            revert with 'NH{q', 17
        require ext_code.size(sub_55fe2338Address)
        call sub_55fe2338Address.0xa9059cbb with:
             gas gas_remaining wei
            args stor8, ((10^18 * block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) / 2400 * 24 * 3600 * stor6) + ((10^18 * block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) / 2400 * 24 * 3600 * stor6) + ((10^18 * block.timestamp * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) / 2400 * 24 * 3600 * stor6) + ((10^18 * block.timestamp * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) / 2400 * 24 * 3600 * stor6) + ((10^18 * block.timestamp * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) / 2400 * 24 * 3600 * stor6) / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 100 < stor6:
            revert with 'NH{q', 17
        if ((10^18 * block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) / 2400 * 24 * 3600) and -stor6 + 100 > -1 / ((10^18 * block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) / 2400 * 24 * 3600) + ((10^18 * block.timestamp * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) / 2400 * 24 * 3600):
            revert with 'NH{q', 17
        account[address(arg1)].field_1536 = block.timestamp
        require ext_code.size(sub_55fe2338Address)
        call sub_55fe2338Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), (100 * (10^18 * block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) / 2400 * 24 * 3600) - (stor6 * (10^18 * block.timestamp * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_256 * uint256(sub_a4299ba8.field_0) * sub_9c81b43f) / 2400 * 24 * 3600) + (100 * (10^18 * block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) / 2400 * 24 * 3600) - (stor6 * (10^18 * block.timestamp * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_512 * uint256(sub_a4299ba8.field_256) * sub_9c81b43f) / 2400 * 24 * 3600) + (100 * (10^18 * block.timestamp * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) / 2400 * 24 * 3600) - (stor6 * (10^18 * block.timestamp * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_768 * uint256(sub_a4299ba8.field_512) * sub_9c81b43f) / 2400 * 24 * 3600) + (100 * (10^18 * block.timestamp * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) / 2400 * 24 * 3600) - (stor6 * (10^18 * block.timestamp * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1024 * uint256(sub_a4299ba8.field_768) * sub_9c81b43f) / 2400 * 24 * 3600) + (100 * (10^18 * block.timestamp * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) / 2400 * 24 * 3600) - (stor6 * (10^18 * block.timestamp * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) - (10^18 * account[address(arg1)].field_1536 * account[address(arg1)].field_1280 * uint256(sub_a4299ba8.field_1024) * sub_9c81b43f) / 2400 * 24 * 3600) / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
