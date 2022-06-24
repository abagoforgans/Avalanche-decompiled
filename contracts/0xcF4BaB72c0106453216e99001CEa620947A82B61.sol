contract main {




// =====================  Runtime code  =====================


const sub_32ff9b30(?) = 5 * 10^12


uint8 stor0;
uint16 sub_9e94bf53; offset 168
uint16 sub_b7e971ee; offset 184
address owner; offset 8
mapping of uint8 stor1;
mapping of uint8 stor2;
address tokenAddress;

function sub_57c66bc5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[address(arg1)])
}

function paused() payable {
    return bool(stor0)
}

function owner() payable {
    return owner
}

function sub_9e94bf53(?) payable {
    return sub_9e94bf53
}

function sub_b7e971ee(?) payable {
    return sub_b7e971ee
}

function token() payable {
    return tokenAddress
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

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function sub_35915f47(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b7e971ee = uint16(arg1)
}

function sub_b0d7b846(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9e94bf53 = uint16(arg1)
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function blacklist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
}

function sub_33c372c0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = uint8(bool(arg2))
}

function sub_be6ba1f1(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if tokenAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenTransferController:CALLER_MUST_BE_MAIN_TOKEN'
    return 1
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

function maxTokenPerWallet() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and sub_b7e971ee > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * sub_b7e971ee / 10000)
}

function maxTransferAmount() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and sub_9e94bf53 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * sub_9e94bf53 / 10000 >= 5 * 10^12:
        return (ext_call.return_data[0] * sub_9e94bf53 / 10000)
    return 5 * 10^12
}

function isWalletFull(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and sub_b7e971ee > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= ext_call.return_data[0] * sub_b7e971ee / 10000
}

function beforeTokenTransfer(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if tokenAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenTransferController:CALLER_MUST_BE_MAIN_TOKEN'
    if stor0:
        revert with 0, 'Pausable: paused'
    if arg3 != owner:
        if stor1[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenTransferController:BLACKLISTED_ADDRESS'
        if stor1[address(arg3)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenTransferController:BLACKLISTED_ADDRESS'
    if arg2 != arg3:
        if arg2:
            if arg3:
                if tokenAddress == arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'TokenTransferController:CANT_TRANSFER_TO_MAIN_TOKEN_CONTRACT'
                if this.address == arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'TokenTransferController:CANT_TRANSFER_TO_CONTROLLER_CONTRACT'
                require ext_code.size(tokenAddress)
                if not stor2[address(arg3)]:
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !arg4:
                        revert with 0, 17
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and sub_b7e971ee > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * sub_b7e971ee / 10000 < ext_call.return_data[0] + arg4:
                        revert with 0, 'TokenTransferController:ABOVE_MAX_TOKEN_PER_WALLET'
                staticcall tokenAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and sub_9e94bf53 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * sub_9e94bf53 / 10000 < 5 * 10^12:
                    if not stor2[address(arg2)]:
                        if not stor2[address(arg3)]:
                            if arg4 > 5 * 10^12:
                                revert with 0, 'TokenTransferController::ABOVE_MAX_AMOUNT_PER_TRANSFER'
                else:
                    if ext_call.return_data[0] * sub_9e94bf53 / 10000 > 0:
                        if not stor2[address(arg2)]:
                            if not stor2[address(arg3)]:
                                if arg4 > ext_call.return_data[0] * sub_9e94bf53 / 10000:
                                    revert with 0, 'TokenTransferController::ABOVE_MAX_AMOUNT_PER_TRANSFER'
    return 1
}



}
