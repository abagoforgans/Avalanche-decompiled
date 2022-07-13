contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address beneficiaryAddress;
mapping of uint8 stor3;
address stor4;
address stor5;
address stor6;

function sub_14f8fb9b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function beneficiary() payable {
    return beneficiaryAddress
}

function owner() payable {
    return owner
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

function sub_9878a95e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'UpdateERC20:: Invalid Address'
    stor3[address(arg1)] = uint8(bool(arg2))
    emit 0xfd85ba66: address(arg1), bool(arg2), block.timestamp
}

function updateBeneficiary(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'UpdateBeneficiary:: New Beneficiary can not be Zero Address'
    emit BeneficiaryUpdated(beneficiaryAddress, arg1);
    beneficiaryAddress = arg1
}

function sub_6a6dbd84(?) payable {
    require calldata.size - 4 >= 32
    staticcall stor5.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if arg1 > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (10^16 * arg1 / ext_call.return_data[32])
}

function sub_53982094(?) payable {
    require calldata.size - 4 >= 32
    staticcall stor4.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if 10^18 * arg1 / ext_call.return_data[32] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
        revert with 0, 17
    return (100 * 10^6 * 10^18 * arg1 / ext_call.return_data[32])
}

function sub_6508ac2d(?) payable {
    require calldata.size - 4 >= 32
    staticcall stor6.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if 10^18 * arg1 / ext_call.return_data[32] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
        revert with 0, 17
    return (100 * 10^6 * 10^18 * arg1 / ext_call.return_data[32])
}

function sub_ce184ba6(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor3[address(arg1)]:
        revert with 0, 'PayPending:: Unsupported ERC20'
    if address(arg1) != 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
        if address(arg1) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
            if address(arg1) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'PayWithStableCoins:: use PayPending function to pay'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'PayPending:: Insufficient Balance'
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, beneficiaryAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'PayPending:: Transfer Failed'
    emit 0x222e9a4b: address(arg1), arg2, msg.sender, beneficiaryAddress, block.timestamp, arg3
    stor1 = 1
}

function sub_3fae4284(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(arg1):
        staticcall stor4.latestRoundData() with:
                gas gas_remaining wei
    else:
        if 0x50b7545627a5162f82a992c33b87adc75187b218 == address(arg1):
            staticcall stor5.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if arg2 > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (10^16 * arg2 / ext_call.return_data[32])
        if address(arg1) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
            revert with 0, 'GetAmountToPay:: Invalid Token'
        staticcall stor6.latestRoundData() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if 10^18 * arg2 / ext_call.return_data[32] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
        revert with 0, 17
    return (100 * 10^6 * 10^18 * arg2 / ext_call.return_data[32])
}

function sub_1cd998d1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor3[address(arg1)]:
        revert with 0, 'PayPending:: Unsupported ERC20'
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(arg1):
        staticcall stor4.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if 10^18 * arg2 / ext_call.return_data[32] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 100 * 10^6 * 10^18 * arg2 / ext_call.return_data[32]:
            revert with 0, 'PayPending:: Insufficient Balance'
        call address(arg1).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, beneficiaryAddress, 100 * 10^6 * 10^18 * arg2 / ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'PayPending:: Transfer Failed'
        emit 0x222e9a4b: address(arg1), 100 * 10^6 * 10^18 * arg2 / ext_call.return_data[32], msg.sender, beneficiaryAddress, block.timestamp, arg3
    else:
        if 0x50b7545627a5162f82a992c33b87adc75187b218 == address(arg1):
            staticcall stor5.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if arg2 > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^16 * arg2 / ext_call.return_data[32]:
                revert with 0, 'PayPending:: Insufficient Balance'
            call address(arg1).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, beneficiaryAddress, 10^16 * arg2 / ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'PayPending:: Transfer Failed'
            emit 0x222e9a4b: address(arg1), 10^16 * arg2 / ext_call.return_data[32], msg.sender, beneficiaryAddress, block.timestamp, arg3
        else:
            if address(arg1) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                revert with 0, 'GetAmountToPay:: Invalid Token'
            staticcall stor6.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if 10^18 * arg2 / ext_call.return_data[32] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 100 * 10^6 * 10^18 * arg2 / ext_call.return_data[32]:
                revert with 0, 'PayPending:: Insufficient Balance'
            call address(arg1).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, beneficiaryAddress, 100 * 10^6 * 10^18 * arg2 / ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'PayPending:: Transfer Failed'
            emit 0x222e9a4b: address(arg1), 100 * 10^6 * 10^18 * arg2 / ext_call.return_data[32], msg.sender, beneficiaryAddress, block.timestamp, arg3
    stor1 = 1
}



}
