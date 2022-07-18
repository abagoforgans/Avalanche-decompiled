contract main {




// =====================  Runtime code  =====================


#
#  - initialize(address arg1, address arg2)
#
uint8 paused;
address owner;
uint256 stor151;
uint256 stor152;
address stor205;
address stor206;
uint16 stor207;
uint256 stor207; offset 16
uint256 sub_814af25f;
uint16 stor208;
uint256 stor208; offset 16
uint256 referralShare;

function paused() payable {
    return bool(paused)
}

function sub_814af25f(?) payable {
    return sub_814af25f
}

function owner() payable {
    return owner
}

function referralShare() payable {
    return referralShare
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
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function sub_e217e08a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor205 = address(arg1)
    emit 0x2b6b913e: address(arg1), msg.sender
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

function sub_c6eca7ae(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg1) > 5000:
        revert with 0, 'Payment: invalid wetspace'
    if uint16(arg2) > 5000:
        revert with 0, 'Payment: invalid referral'
    if uint16(arg1) < uint16(arg2):
        revert with 0, 'Payment: wetspace < referral'
    uint16(stor207.field_0) = uint16(arg1)
    Mask(240, 0, stor207.field_16) = 0
    uint16(stor208.field_0) = uint16(arg2)
    Mask(240, 0, stor208.field_16) = 0
    emit 0x743ba665: arg1 << 240, uint16(arg2), msg.sender
}

function sub_c41179f9(?) payable {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if paused:
        revert with 0, 'Pausable: paused'
    if not address(arg3):
        revert with 0, 'Payment: not valid currency'
    if arg4 <= 0:
        revert with 0, 'Payment: zero amount'
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg4:
        revert with 0, 'Payment: not enough tokens'
    require ext_code.size(stor205)
    if 0 == referralShare:
        staticcall stor205.0xaeb54111 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[30 len 2] > sub_814af25f:
            if uint16(stor207.field_0) < uint16(stor207.field_0):
                revert with 0, 17
            if arg4 and 0 > -1 / arg4:
                revert with 0, 17
            if arg4 and 0 > -1 / arg4:
                revert with 0, 17
            if arg4 and 10000 > -1 / arg4:
                revert with 0, 17
            if arg4 < 0:
                revert with 0, 17
            if arg4 < 0:
                revert with 0, 17
            if arg4 < 10000 * arg4 / 10000:
                revert with 0, 17
            if 0 > !(arg4 - (10000 * arg4 / 10000)):
                revert with 0, 17
            require ext_code.size(stor205)
            staticcall stor205.0xcbb666d8 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(arg3))
            call address(arg3).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(ext_call.return_data[0]), arg4 - (10000 * arg4 / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor206)
            staticcall stor206.0x917b9f14 with:
                    gas gas_remaining wei
                   args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(arg3))
            call address(arg3).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(ext_call.return_data[0]), 10000 * arg4 / 10000
        else:
            if uint16(stor207.field_0) < ext_call.return_data[30 len 2]:
                revert with 0, 17
            if 10000 < uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]):
                revert with 0, 17
            if arg4 and uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]) > -1 / arg4:
                revert with 0, 17
            if arg4 and 0 > -1 / arg4:
                revert with 0, 17
            if arg4 and uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) > -1 / arg4:
                revert with 0, 17
            if arg4 < arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000:
                revert with 0, 17
            if arg4 - (arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < 0:
                revert with 0, 17
            if arg4 - (arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000:
                revert with 0, 17
            if arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000 > !(arg4 - (arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) - (arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)):
                revert with 0, 17
            require ext_code.size(stor205)
            staticcall stor205.0xcbb666d8 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(arg3))
            call address(arg3).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(ext_call.return_data[0]), arg4 - (arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor206)
            staticcall stor206.0x917b9f14 with:
                    gas gas_remaining wei
                   args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(arg3))
            call address(arg3).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(ext_call.return_data[0]), arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if referralShare:
            require ext_code.size(stor205)
            staticcall stor205.0xcf0b882f with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 > 0:
                if not ext_call.return_data[0]:
                    require ext_code.size(stor205)
                    call stor205.0x2a3a1f8d with:
                         gas gas_remaining wei
                        args arg1, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        emit 0x287e9ede: address(arg2), arg4, address(arg3), 0, msg.sender, arg1, arg5
    else:
        staticcall stor205.0x728a9224 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor205)
        if not ext_call.return_data[12 len 20]:
            staticcall stor205.0xaeb54111 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[30 len 2] > sub_814af25f:
                if uint16(stor207.field_0) < uint16(stor207.field_0):
                    revert with 0, 17
                if arg4 and 0 > -1 / arg4:
                    revert with 0, 17
                if arg4 and 0 > -1 / arg4:
                    revert with 0, 17
                if arg4 and 10000 > -1 / arg4:
                    revert with 0, 17
                if arg4 < 0:
                    revert with 0, 17
                if arg4 < 0:
                    revert with 0, 17
                if arg4 < 10000 * arg4 / 10000:
                    revert with 0, 17
                if 0 > !(arg4 - (10000 * arg4 / 10000)):
                    revert with 0, 17
                require ext_code.size(stor205)
                staticcall stor205.0xcbb666d8 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(arg3))
                call address(arg3).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(ext_call.return_data[0]), arg4 - (10000 * arg4 / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor206)
                staticcall stor206.0x917b9f14 with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(arg3))
                call address(arg3).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(ext_call.return_data[0]), 10000 * arg4 / 10000
            else:
                if uint16(stor207.field_0) < ext_call.return_data[30 len 2]:
                    revert with 0, 17
                if 10000 < uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]):
                    revert with 0, 17
                if arg4 and uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]) > -1 / arg4:
                    revert with 0, 17
                if arg4 and 0 > -1 / arg4:
                    revert with 0, 17
                if arg4 and uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) > -1 / arg4:
                    revert with 0, 17
                if arg4 < arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000:
                    revert with 0, 17
                if arg4 - (arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < 0:
                    revert with 0, 17
                if arg4 - (arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000:
                    revert with 0, 17
                if arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000 > !(arg4 - (arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) - (arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)):
                    revert with 0, 17
                require ext_code.size(stor205)
                staticcall stor205.0xcbb666d8 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(arg3))
                call address(arg3).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(ext_call.return_data[0]), arg4 - (arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor206)
                staticcall stor206.0x917b9f14 with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(arg3))
                call address(arg3).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(ext_call.return_data[0]), arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if referralShare:
                require ext_code.size(stor205)
                staticcall stor205.0xcf0b882f with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 > 0:
                    if not ext_call.return_data[0]:
                        require ext_code.size(stor205)
                        call stor205.0x2a3a1f8d with:
                             gas gas_remaining wei
                            args arg1, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            emit 0x287e9ede: address(arg2), arg4, address(arg3), 0, msg.sender, arg1, arg5
        else:
            staticcall stor205.0xcf0b882f with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                require ext_code.size(stor205)
                staticcall stor205.0xaeb54111 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[30 len 2] > sub_814af25f:
                    if uint16(stor207.field_0) < uint16(stor207.field_0):
                        revert with 0, 17
                    if arg4 and 0 > -1 / arg4:
                        revert with 0, 17
                    if arg4 and 0 > -1 / arg4:
                        revert with 0, 17
                    if arg4 and 10000 > -1 / arg4:
                        revert with 0, 17
                    if arg4 < 0:
                        revert with 0, 17
                    if arg4 < 0:
                        revert with 0, 17
                    if arg4 < 10000 * arg4 / 10000:
                        revert with 0, 17
                    if 0 > !(arg4 - (10000 * arg4 / 10000)):
                        revert with 0, 17
                    require ext_code.size(stor205)
                    staticcall stor205.0xcbb666d8 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(arg3))
                    call address(arg3).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(ext_call.return_data[0]), arg4 - (10000 * arg4 / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor206)
                    staticcall stor206.0x917b9f14 with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(arg3))
                    call address(arg3).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(ext_call.return_data[0]), 10000 * arg4 / 10000
                else:
                    if uint16(stor207.field_0) < ext_call.return_data[30 len 2]:
                        revert with 0, 17
                    if 10000 < uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]):
                        revert with 0, 17
                    if arg4 and uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]) > -1 / arg4:
                        revert with 0, 17
                    if arg4 and 0 > -1 / arg4:
                        revert with 0, 17
                    if arg4 and uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) > -1 / arg4:
                        revert with 0, 17
                    if arg4 < arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000:
                        revert with 0, 17
                    if arg4 - (arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < 0:
                        revert with 0, 17
                    if arg4 - (arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000:
                        revert with 0, 17
                    if arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000 > !(arg4 - (arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) - (arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)):
                        revert with 0, 17
                    require ext_code.size(stor205)
                    staticcall stor205.0xcbb666d8 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(arg3))
                    call address(arg3).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(ext_call.return_data[0]), arg4 - (arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor206)
                    staticcall stor206.0x917b9f14 with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(arg3))
                    call address(arg3).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(ext_call.return_data[0]), arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if referralShare:
                    require ext_code.size(stor205)
                    staticcall stor205.0xcf0b882f with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 > 0:
                        if not ext_call.return_data[0]:
                            require ext_code.size(stor205)
                            call stor205.0x2a3a1f8d with:
                                 gas gas_remaining wei
                                args arg1, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                emit 0x287e9ede: address(arg2), arg4, address(arg3), 0, msg.sender, arg1, arg5
            else:
                if ext_call.return_data[0] <= 0:
                    if not address(ext_call.return_data[0]):
                        require ext_code.size(stor205)
                        staticcall stor205.0xaeb54111 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[30 len 2] > sub_814af25f:
                            if uint16(stor207.field_0) < uint16(stor207.field_0):
                                revert with 0, 17
                            if arg4 and 0 > -1 / arg4:
                                revert with 0, 17
                            if arg4 and 0 > -1 / arg4:
                                revert with 0, 17
                            if arg4 and 10000 > -1 / arg4:
                                revert with 0, 17
                            if arg4 < 0:
                                revert with 0, 17
                            if arg4 < 0:
                                revert with 0, 17
                            if arg4 < 10000 * arg4 / 10000:
                                revert with 0, 17
                            if 0 > !(arg4 - (10000 * arg4 / 10000)):
                                revert with 0, 17
                            require ext_code.size(stor205)
                            staticcall stor205.0xcbb666d8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(arg3))
                            call address(arg3).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), arg4 - (10000 * arg4 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stor206)
                            staticcall stor206.0x917b9f14 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(arg3))
                            call address(arg3).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), 10000 * arg4 / 10000
                        else:
                            if uint16(stor207.field_0) < ext_call.return_data[30 len 2]:
                                revert with 0, 17
                            if 10000 < uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]):
                                revert with 0, 17
                            if arg4 and uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]) > -1 / arg4:
                                revert with 0, 17
                            if arg4 and 0 > -1 / arg4:
                                revert with 0, 17
                            if arg4 and uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) > -1 / arg4:
                                revert with 0, 17
                            if arg4 < arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000:
                                revert with 0, 17
                            if arg4 - (arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < 0:
                                revert with 0, 17
                            if arg4 - (arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000:
                                revert with 0, 17
                            if arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000 > !(arg4 - (arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) - (arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)):
                                revert with 0, 17
                            require ext_code.size(stor205)
                            staticcall stor205.0xcbb666d8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(arg3))
                            call address(arg3).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), arg4 - (arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stor206)
                            staticcall stor206.0x917b9f14 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(arg3))
                            call address(arg3).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if referralShare:
                            require ext_code.size(stor205)
                            staticcall stor205.0xcf0b882f with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > 0:
                                if not ext_call.return_data[0]:
                                    require ext_code.size(stor205)
                                    call stor205.0x2a3a1f8d with:
                                         gas gas_remaining wei
                                        args arg1, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        emit 0x287e9ede: address(arg2), arg4, address(arg3), 0, msg.sender, arg1, arg5
                    else:
                        if uint16(stor207.field_0) < uint16(stor208.field_0):
                            revert with 0, 17
                        if 10000 < uint16(stor208.field_0):
                            revert with 0, 17
                        require ext_code.size(stor205)
                        staticcall stor205.0xaeb54111 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[30 len 2] <= sub_814af25f:
                            if uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) < ext_call.return_data[30 len 2]:
                                revert with 0, 17
                            if uint16(-uint16(stor208.field_0) + 10000) < uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - ext_call.return_data[30 len 2]):
                                revert with 0, 17
                            if arg4 and uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - ext_call.return_data[30 len 2]) > -1 / arg4:
                                revert with 0, 17
                            if arg4 and uint16(stor208.field_0) > -1 / arg4:
                                revert with 0, 17
                            if arg4 and uint16(uint16(-uint16(stor208.field_0) + 10000) - uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0]))) > -1 / arg4:
                                revert with 0, 17
                            if arg4 < arg4 * uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0])) / 10000:
                                revert with 0, 17
                            if arg4 - (arg4 * uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0])) / 10000) < arg4 * uint16(stor208.field_0) / 10000:
                                revert with 0, 17
                            if arg4 - (arg4 * uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0])) / 10000) - (arg4 * uint16(stor208.field_0) / 10000) < arg4 * uint16(uint16(-uint16(stor208.field_0) + 10000) - uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0]))) / 10000:
                                revert with 0, 17
                            if arg4 * uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0])) / 10000 > !(arg4 - (arg4 * uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0])) / 10000) - (arg4 * uint16(stor208.field_0) / 10000) - (arg4 * uint16(uint16(-uint16(stor208.field_0) + 10000) - uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0]))) / 10000)):
                                revert with 0, 17
                            require ext_code.size(stor205)
                            staticcall stor205.0xcbb666d8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(arg3))
                            call address(arg3).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), arg4 - (arg4 * uint16(stor208.field_0) / 10000) - (arg4 * uint16(uint16(-uint16(stor208.field_0) + 10000) - uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0]))) / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stor206)
                            if arg4 * uint16(stor208.field_0) / 10000:
                                staticcall stor206.0x917b9f14 with:
                                        gas gas_remaining wei
                                       args address(ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(arg3))
                                call address(arg3).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), arg4 * uint16(stor208.field_0) / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            staticcall stor206.0x917b9f14 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(arg3))
                            call address(arg3).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), arg4 * uint16(uint16(-uint16(stor208.field_0) + 10000) - uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0]))) / 10000
                        else:
                            if uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) < uint16(uint16(stor207.field_0) - uint16(stor208.field_0)):
                                revert with 0, 17
                            if uint16(-uint16(stor208.field_0) + 10000) < 0:
                                revert with 0, 17
                            if arg4 and 0 > -1 / arg4:
                                revert with 0, 17
                            if arg4 and uint16(stor208.field_0) > -1 / arg4:
                                revert with 0, 17
                            if arg4 and uint16(-uint16(stor208.field_0) + 10000) > -1 / arg4:
                                revert with 0, 17
                            if arg4 < 0:
                                revert with 0, 17
                            if arg4 < arg4 * uint16(stor208.field_0) / 10000:
                                revert with 0, 17
                            if arg4 - (arg4 * uint16(stor208.field_0) / 10000) < arg4 * uint16(-uint16(stor208.field_0) + 10000) / 10000:
                                revert with 0, 17
                            if 0 > !(arg4 - (arg4 * uint16(stor208.field_0) / 10000) - (arg4 * uint16(-uint16(stor208.field_0) + 10000) / 10000)):
                                revert with 0, 17
                            require ext_code.size(stor205)
                            staticcall stor205.0xcbb666d8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(arg3))
                            call address(arg3).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), arg4 - (arg4 * uint16(stor208.field_0) / 10000) - (arg4 * uint16(-uint16(stor208.field_0) + 10000) / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stor206)
                            if arg4 * uint16(stor208.field_0) / 10000:
                                staticcall stor206.0x917b9f14 with:
                                        gas gas_remaining wei
                                       args address(ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(arg3))
                                call address(arg3).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), arg4 * uint16(stor208.field_0) / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            staticcall stor206.0x917b9f14 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(arg3))
                            call address(arg3).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), arg4 * uint16(-uint16(stor208.field_0) + 10000) / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if referralShare:
                            require ext_code.size(stor205)
                            staticcall stor205.0xcf0b882f with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > 0:
                                if not ext_call.return_data[0]:
                                    require ext_code.size(stor205)
                                    call stor205.0x2a3a1f8d with:
                                         gas gas_remaining wei
                                        args arg1, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        emit 0x287e9ede: address(arg2), arg4, address(arg3), arg4 * uint16(stor208.field_0) / 10000, msg.sender, arg1, arg5
                else:
                    require ext_code.size(stor205)
                    staticcall stor205.0xaefa058d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !ext_call.return_data[0]:
                        revert with 0, 17
                    if 2 * ext_call.return_data[0] < block.timestamp:
                        require ext_code.size(stor205)
                        staticcall stor205.0xaeb54111 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[30 len 2] > sub_814af25f:
                            if uint16(stor207.field_0) < uint16(stor207.field_0):
                                revert with 0, 17
                            if arg4 and 0 > -1 / arg4:
                                revert with 0, 17
                            if arg4 and 0 > -1 / arg4:
                                revert with 0, 17
                            if arg4 and 10000 > -1 / arg4:
                                revert with 0, 17
                            if arg4 < 0:
                                revert with 0, 17
                            if arg4 < 0:
                                revert with 0, 17
                            if arg4 < 10000 * arg4 / 10000:
                                revert with 0, 17
                            if 0 > !(arg4 - (10000 * arg4 / 10000)):
                                revert with 0, 17
                            require ext_code.size(stor205)
                            staticcall stor205.0xcbb666d8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(arg3))
                            call address(arg3).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), arg4 - (10000 * arg4 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stor206)
                            staticcall stor206.0x917b9f14 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(arg3))
                            call address(arg3).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), 10000 * arg4 / 10000
                        else:
                            if uint16(stor207.field_0) < ext_call.return_data[30 len 2]:
                                revert with 0, 17
                            if 10000 < uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]):
                                revert with 0, 17
                            if arg4 and uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]) > -1 / arg4:
                                revert with 0, 17
                            if arg4 and 0 > -1 / arg4:
                                revert with 0, 17
                            if arg4 and uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) > -1 / arg4:
                                revert with 0, 17
                            if arg4 < arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000:
                                revert with 0, 17
                            if arg4 - (arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < 0:
                                revert with 0, 17
                            if arg4 - (arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000:
                                revert with 0, 17
                            if arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000 > !(arg4 - (arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) - (arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)):
                                revert with 0, 17
                            require ext_code.size(stor205)
                            staticcall stor205.0xcbb666d8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(arg3))
                            call address(arg3).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), arg4 - (arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stor206)
                            staticcall stor206.0x917b9f14 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(arg3))
                            call address(arg3).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if referralShare:
                            require ext_code.size(stor205)
                            staticcall stor205.0xcf0b882f with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > 0:
                                if not ext_call.return_data[0]:
                                    require ext_code.size(stor205)
                                    call stor205.0x2a3a1f8d with:
                                         gas gas_remaining wei
                                        args arg1, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        emit 0x287e9ede: address(arg2), arg4, address(arg3), 0, msg.sender, arg1, arg5
                    else:
                        if not address(ext_call.return_data[0]):
                            require ext_code.size(stor205)
                            staticcall stor205.0xaeb54111 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[30 len 2] > sub_814af25f:
                                if uint16(stor207.field_0) < uint16(stor207.field_0):
                                    revert with 0, 17
                                if arg4 and 0 > -1 / arg4:
                                    revert with 0, 17
                                if arg4 and 0 > -1 / arg4:
                                    revert with 0, 17
                                if arg4 and 10000 > -1 / arg4:
                                    revert with 0, 17
                                if arg4 < 0:
                                    revert with 0, 17
                                if arg4 < 0:
                                    revert with 0, 17
                                if arg4 < 10000 * arg4 / 10000:
                                    revert with 0, 17
                                if 0 > !(arg4 - (10000 * arg4 / 10000)):
                                    revert with 0, 17
                                require ext_code.size(stor205)
                                staticcall stor205.0xcbb666d8 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(arg3))
                                call address(arg3).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), arg4 - (10000 * arg4 / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(stor206)
                                staticcall stor206.0x917b9f14 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(arg3))
                                call address(arg3).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), 10000 * arg4 / 10000
                            else:
                                if uint16(stor207.field_0) < ext_call.return_data[30 len 2]:
                                    revert with 0, 17
                                if 10000 < uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]):
                                    revert with 0, 17
                                if arg4 and uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]) > -1 / arg4:
                                    revert with 0, 17
                                if arg4 and 0 > -1 / arg4:
                                    revert with 0, 17
                                if arg4 and uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) > -1 / arg4:
                                    revert with 0, 17
                                if arg4 < arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000:
                                    revert with 0, 17
                                if arg4 - (arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < 0:
                                    revert with 0, 17
                                if arg4 - (arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000:
                                    revert with 0, 17
                                if arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000 > !(arg4 - (arg4 * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) - (arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)):
                                    revert with 0, 17
                                require ext_code.size(stor205)
                                staticcall stor205.0xcbb666d8 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(arg3))
                                call address(arg3).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), arg4 - (arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(stor206)
                                staticcall stor206.0x917b9f14 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(arg3))
                                call address(arg3).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), arg4 * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if referralShare:
                                require ext_code.size(stor205)
                                staticcall stor205.0xcf0b882f with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 > 0:
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(stor205)
                                        call stor205.0x2a3a1f8d with:
                                             gas gas_remaining wei
                                            args arg1, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            emit 0x287e9ede: address(arg2), arg4, address(arg3), 0, msg.sender, arg1, arg5
                        else:
                            if uint16(stor207.field_0) < uint16(stor208.field_0):
                                revert with 0, 17
                            if 10000 < uint16(stor208.field_0):
                                revert with 0, 17
                            require ext_code.size(stor205)
                            staticcall stor205.0xaeb54111 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[30 len 2] <= sub_814af25f:
                                if uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) < ext_call.return_data[30 len 2]:
                                    revert with 0, 17
                                if uint16(-uint16(stor208.field_0) + 10000) < uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - ext_call.return_data[30 len 2]):
                                    revert with 0, 17
                                if arg4 and uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - ext_call.return_data[30 len 2]) > -1 / arg4:
                                    revert with 0, 17
                                if arg4 and uint16(stor208.field_0) > -1 / arg4:
                                    revert with 0, 17
                                if arg4 and uint16(uint16(-uint16(stor208.field_0) + 10000) - uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0]))) > -1 / arg4:
                                    revert with 0, 17
                                if arg4 < arg4 * uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0])) / 10000:
                                    revert with 0, 17
                                if arg4 - (arg4 * uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0])) / 10000) < arg4 * uint16(stor208.field_0) / 10000:
                                    revert with 0, 17
                                if arg4 - (arg4 * uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0])) / 10000) - (arg4 * uint16(stor208.field_0) / 10000) < arg4 * uint16(uint16(-uint16(stor208.field_0) + 10000) - uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0]))) / 10000:
                                    revert with 0, 17
                                if arg4 * uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0])) / 10000 > !(arg4 - (arg4 * uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0])) / 10000) - (arg4 * uint16(stor208.field_0) / 10000) - (arg4 * uint16(uint16(-uint16(stor208.field_0) + 10000) - uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0]))) / 10000)):
                                    revert with 0, 17
                                require ext_code.size(stor205)
                                staticcall stor205.0xcbb666d8 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(arg3))
                                call address(arg3).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), arg4 - (arg4 * uint16(stor208.field_0) / 10000) - (arg4 * uint16(uint16(-uint16(stor208.field_0) + 10000) - uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0]))) / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(stor206)
                                if arg4 * uint16(stor208.field_0) / 10000:
                                    staticcall stor206.0x917b9f14 with:
                                            gas gas_remaining wei
                                           args address(ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(arg3))
                                    call address(arg3).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), arg4 * uint16(stor208.field_0) / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                staticcall stor206.0x917b9f14 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(arg3))
                                call address(arg3).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), arg4 * uint16(uint16(-uint16(stor208.field_0) + 10000) - uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0]))) / 10000
                            else:
                                if uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) < uint16(uint16(stor207.field_0) - uint16(stor208.field_0)):
                                    revert with 0, 17
                                if uint16(-uint16(stor208.field_0) + 10000) < 0:
                                    revert with 0, 17
                                if arg4 and 0 > -1 / arg4:
                                    revert with 0, 17
                                if arg4 and uint16(stor208.field_0) > -1 / arg4:
                                    revert with 0, 17
                                if arg4 and uint16(-uint16(stor208.field_0) + 10000) > -1 / arg4:
                                    revert with 0, 17
                                if arg4 < 0:
                                    revert with 0, 17
                                if arg4 < arg4 * uint16(stor208.field_0) / 10000:
                                    revert with 0, 17
                                if arg4 - (arg4 * uint16(stor208.field_0) / 10000) < arg4 * uint16(-uint16(stor208.field_0) + 10000) / 10000:
                                    revert with 0, 17
                                if 0 > !(arg4 - (arg4 * uint16(stor208.field_0) / 10000) - (arg4 * uint16(-uint16(stor208.field_0) + 10000) / 10000)):
                                    revert with 0, 17
                                require ext_code.size(stor205)
                                staticcall stor205.0xcbb666d8 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(arg3))
                                call address(arg3).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), arg4 - (arg4 * uint16(stor208.field_0) / 10000) - (arg4 * uint16(-uint16(stor208.field_0) + 10000) / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(stor206)
                                if arg4 * uint16(stor208.field_0) / 10000:
                                    staticcall stor206.0x917b9f14 with:
                                            gas gas_remaining wei
                                           args address(ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(arg3))
                                    call address(arg3).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), arg4 * uint16(stor208.field_0) / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                staticcall stor206.0x917b9f14 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(arg3))
                                call address(arg3).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), arg4 * uint16(-uint16(stor208.field_0) + 10000) / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if referralShare:
                                require ext_code.size(stor205)
                                staticcall stor205.0xcf0b882f with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 > 0:
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(stor205)
                                        call stor205.0x2a3a1f8d with:
                                             gas gas_remaining wei
                                            args arg1, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            emit 0x287e9ede: address(arg2), arg4, address(arg3), arg4 * uint16(stor208.field_0) / 10000, msg.sender, arg1, arg5
}

function sub_6d5dbf2c(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 160
    if paused:
        revert with 0, 'Pausable: paused'
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ('cd', 4)[3] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[3] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[3] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[3] + 4)]
    mem[610 len cd[(cd[4] + ('cd', 4)[3] + 4)]] = call.data[cd[4] + ('cd', 4)[3] + 36 len cd[(cd[4] + ('cd', 4)[3] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[3] + 4)] + 610] = 0
    if 65 == cd[(cd[4] + ('cd', 4)[3] + 4)]:
        if mem[642] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if cd[(cd[4] + ('cd', 4)[3] + 4)] != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if uint255(mem[642]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[642]) >> 255) + 27) != 27:
        if uint8((bool(mem[642]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor151, stor152, chainid, this.address), sha3(0xde84111f9e319ea3d9d9ce05d28eba59833e5e2d083a74df8598d05cad91cf39, ('cd', 4).length, ('cd', 4)[0], ('cd', 4)[1], address(('cd', 4)[2]))), (bool(mem[642]) >> 255) + 27 << 248, mem[610], uint255(mem[642])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    require ('cd', 4)[2] == address(('cd', 4)[2])
    if not address(('cd', 4)[2]):
        revert with 0, 'Payment: not valid currency'
    if cd[36] <= 0:
        revert with 0, 'Payment: zero qty'
    if ('cd', 4)[1] and cd[36] > -1 / ('cd', 4)[1]:
        revert with 0, 17
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ext_code.size(address(('cd', 4)[2]))
    staticcall address(('cd', 4)[2]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ('cd', 4)[1] * cd[36]:
        revert with 0, 'Payment: not enough tokens'
    require ext_code.size(stor205)
    if 0 == referralShare:
        staticcall stor205.0xaeb54111 with:
                gas gas_remaining wei
               args ('cd', 4).length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[30 len 2] > sub_814af25f:
            if uint16(stor207.field_0) < uint16(stor207.field_0):
                revert with 0, 17
            if ('cd', 4)[1] * cd[36] and 0 > -1 / ('cd', 4)[1] * cd[36]:
                revert with 0, 17
            if ('cd', 4)[1] * cd[36] and 0 > -1 / ('cd', 4)[1] * cd[36]:
                revert with 0, 17
            if ('cd', 4)[1] * cd[36] and 10000 > -1 / ('cd', 4)[1] * cd[36]:
                revert with 0, 17
            if ('cd', 4)[1] * cd[36] < 0:
                revert with 0, 17
            if ('cd', 4)[1] * cd[36] < 0:
                revert with 0, 17
            if ('cd', 4)[1] * cd[36] < 10000 * ('cd', 4)[1] * cd[36] / 10000:
                revert with 0, 17
            if 0 > !((('cd', 4)[1] * cd[36]) - (10000 * ('cd', 4)[1] * cd[36] / 10000)):
                revert with 0, 17
            require ('cd', 4)[2] == address(('cd', 4)[2])
            require ext_code.size(stor205)
            staticcall stor205.0xcbb666d8 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(('cd', 4)[2]))
            call address(('cd', 4)[2]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(ext_call.return_data[0]), (('cd', 4)[1] * cd[36]) - (10000 * ('cd', 4)[1] * cd[36] / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor206)
            staticcall stor206.0x917b9f14 with:
                    gas gas_remaining wei
                   args address(signer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(('cd', 4)[2]))
            call address(('cd', 4)[2]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(ext_call.return_data[0]), 10000 * ('cd', 4)[1] * cd[36] / 10000
        else:
            if uint16(stor207.field_0) < ext_call.return_data[30 len 2]:
                revert with 0, 17
            if 10000 < uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]):
                revert with 0, 17
            if ('cd', 4)[1] * cd[36] and uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]) > -1 / ('cd', 4)[1] * cd[36]:
                revert with 0, 17
            if ('cd', 4)[1] * cd[36] and 0 > -1 / ('cd', 4)[1] * cd[36]:
                revert with 0, 17
            if ('cd', 4)[1] * cd[36] and uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) > -1 / ('cd', 4)[1] * cd[36]:
                revert with 0, 17
            if ('cd', 4)[1] * cd[36] < ('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000:
                revert with 0, 17
            if (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < 0:
                revert with 0, 17
            if (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < ('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000:
                revert with 0, 17
            if ('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000 > !((('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) - (('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)):
                revert with 0, 17
            require ('cd', 4)[2] == address(('cd', 4)[2])
            require ext_code.size(stor205)
            staticcall stor205.0xcbb666d8 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(('cd', 4)[2]))
            call address(('cd', 4)[2]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(ext_call.return_data[0]), (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor206)
            staticcall stor206.0x917b9f14 with:
                    gas gas_remaining wei
                   args address(signer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(('cd', 4)[2]))
            call address(('cd', 4)[2]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(ext_call.return_data[0]), ('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if referralShare:
            require ext_code.size(stor205)
            staticcall stor205.0xcf0b882f with:
                    gas gas_remaining wei
                   args ('cd', 4).length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ('cd', 4).length > 0:
                if not ext_call.return_data[0]:
                    require ext_code.size(stor205)
                    call stor205.0x2a3a1f8d with:
                         gas gas_remaining wei
                        args ('cd', 4).length, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 4)[2] == address(('cd', 4)[2])
        emit 0x470798e4: address(signer), ('cd', 4)[1], cd[36], address(('cd', 4)[2]), 0, msg.sender, ('cd', 4).length, ('cd', 4)[0]
    else:
        staticcall stor205.0x728a9224 with:
                gas gas_remaining wei
               args ('cd', 4).length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor205)
        if not ext_call.return_data[12 len 20]:
            staticcall stor205.0xaeb54111 with:
                    gas gas_remaining wei
                   args ('cd', 4).length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[30 len 2] > sub_814af25f:
                if uint16(stor207.field_0) < uint16(stor207.field_0):
                    revert with 0, 17
                if ('cd', 4)[1] * cd[36] and 0 > -1 / ('cd', 4)[1] * cd[36]:
                    revert with 0, 17
                if ('cd', 4)[1] * cd[36] and 0 > -1 / ('cd', 4)[1] * cd[36]:
                    revert with 0, 17
                if ('cd', 4)[1] * cd[36] and 10000 > -1 / ('cd', 4)[1] * cd[36]:
                    revert with 0, 17
                if ('cd', 4)[1] * cd[36] < 0:
                    revert with 0, 17
                if ('cd', 4)[1] * cd[36] < 0:
                    revert with 0, 17
                if ('cd', 4)[1] * cd[36] < 10000 * ('cd', 4)[1] * cd[36] / 10000:
                    revert with 0, 17
                if 0 > !((('cd', 4)[1] * cd[36]) - (10000 * ('cd', 4)[1] * cd[36] / 10000)):
                    revert with 0, 17
                require ('cd', 4)[2] == address(('cd', 4)[2])
                require ext_code.size(stor205)
                staticcall stor205.0xcbb666d8 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(('cd', 4)[2]))
                call address(('cd', 4)[2]).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(ext_call.return_data[0]), (('cd', 4)[1] * cd[36]) - (10000 * ('cd', 4)[1] * cd[36] / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor206)
                staticcall stor206.0x917b9f14 with:
                        gas gas_remaining wei
                       args address(signer)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(('cd', 4)[2]))
                call address(('cd', 4)[2]).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(ext_call.return_data[0]), 10000 * ('cd', 4)[1] * cd[36] / 10000
            else:
                if uint16(stor207.field_0) < ext_call.return_data[30 len 2]:
                    revert with 0, 17
                if 10000 < uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]):
                    revert with 0, 17
                if ('cd', 4)[1] * cd[36] and uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]) > -1 / ('cd', 4)[1] * cd[36]:
                    revert with 0, 17
                if ('cd', 4)[1] * cd[36] and 0 > -1 / ('cd', 4)[1] * cd[36]:
                    revert with 0, 17
                if ('cd', 4)[1] * cd[36] and uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) > -1 / ('cd', 4)[1] * cd[36]:
                    revert with 0, 17
                if ('cd', 4)[1] * cd[36] < ('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000:
                    revert with 0, 17
                if (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < 0:
                    revert with 0, 17
                if (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < ('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000:
                    revert with 0, 17
                if ('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000 > !((('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) - (('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)):
                    revert with 0, 17
                require ('cd', 4)[2] == address(('cd', 4)[2])
                require ext_code.size(stor205)
                staticcall stor205.0xcbb666d8 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(('cd', 4)[2]))
                call address(('cd', 4)[2]).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(ext_call.return_data[0]), (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor206)
                staticcall stor206.0x917b9f14 with:
                        gas gas_remaining wei
                       args address(signer)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(('cd', 4)[2]))
                call address(('cd', 4)[2]).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(ext_call.return_data[0]), ('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if referralShare:
                require ext_code.size(stor205)
                staticcall stor205.0xcf0b882f with:
                        gas gas_remaining wei
                       args ('cd', 4).length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ('cd', 4).length > 0:
                    if not ext_call.return_data[0]:
                        require ext_code.size(stor205)
                        call stor205.0x2a3a1f8d with:
                             gas gas_remaining wei
                            args ('cd', 4).length, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 4)[2] == address(('cd', 4)[2])
            emit 0x470798e4: address(signer), ('cd', 4)[1], cd[36], address(('cd', 4)[2]), 0, msg.sender, ('cd', 4).length, ('cd', 4)[0]
        else:
            staticcall stor205.0xcf0b882f with:
                    gas gas_remaining wei
                   args ('cd', 4).length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                require ext_code.size(stor205)
                staticcall stor205.0xaeb54111 with:
                        gas gas_remaining wei
                       args ('cd', 4).length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[30 len 2] > sub_814af25f:
                    if uint16(stor207.field_0) < uint16(stor207.field_0):
                        revert with 0, 17
                    if ('cd', 4)[1] * cd[36] and 0 > -1 / ('cd', 4)[1] * cd[36]:
                        revert with 0, 17
                    if ('cd', 4)[1] * cd[36] and 0 > -1 / ('cd', 4)[1] * cd[36]:
                        revert with 0, 17
                    if ('cd', 4)[1] * cd[36] and 10000 > -1 / ('cd', 4)[1] * cd[36]:
                        revert with 0, 17
                    if ('cd', 4)[1] * cd[36] < 0:
                        revert with 0, 17
                    if ('cd', 4)[1] * cd[36] < 0:
                        revert with 0, 17
                    if ('cd', 4)[1] * cd[36] < 10000 * ('cd', 4)[1] * cd[36] / 10000:
                        revert with 0, 17
                    if 0 > !((('cd', 4)[1] * cd[36]) - (10000 * ('cd', 4)[1] * cd[36] / 10000)):
                        revert with 0, 17
                    require ('cd', 4)[2] == address(('cd', 4)[2])
                    require ext_code.size(stor205)
                    staticcall stor205.0xcbb666d8 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(('cd', 4)[2]))
                    call address(('cd', 4)[2]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(ext_call.return_data[0]), (('cd', 4)[1] * cd[36]) - (10000 * ('cd', 4)[1] * cd[36] / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor206)
                    staticcall stor206.0x917b9f14 with:
                            gas gas_remaining wei
                           args address(signer)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(('cd', 4)[2]))
                    call address(('cd', 4)[2]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(ext_call.return_data[0]), 10000 * ('cd', 4)[1] * cd[36] / 10000
                else:
                    if uint16(stor207.field_0) < ext_call.return_data[30 len 2]:
                        revert with 0, 17
                    if 10000 < uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]):
                        revert with 0, 17
                    if ('cd', 4)[1] * cd[36] and uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]) > -1 / ('cd', 4)[1] * cd[36]:
                        revert with 0, 17
                    if ('cd', 4)[1] * cd[36] and 0 > -1 / ('cd', 4)[1] * cd[36]:
                        revert with 0, 17
                    if ('cd', 4)[1] * cd[36] and uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) > -1 / ('cd', 4)[1] * cd[36]:
                        revert with 0, 17
                    if ('cd', 4)[1] * cd[36] < ('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000:
                        revert with 0, 17
                    if (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < 0:
                        revert with 0, 17
                    if (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < ('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000:
                        revert with 0, 17
                    if ('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000 > !((('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) - (('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)):
                        revert with 0, 17
                    require ('cd', 4)[2] == address(('cd', 4)[2])
                    require ext_code.size(stor205)
                    staticcall stor205.0xcbb666d8 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(('cd', 4)[2]))
                    call address(('cd', 4)[2]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(ext_call.return_data[0]), (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor206)
                    staticcall stor206.0x917b9f14 with:
                            gas gas_remaining wei
                           args address(signer)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(('cd', 4)[2]))
                    call address(('cd', 4)[2]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(ext_call.return_data[0]), ('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if referralShare:
                    require ext_code.size(stor205)
                    staticcall stor205.0xcf0b882f with:
                            gas gas_remaining wei
                           args ('cd', 4).length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ('cd', 4).length > 0:
                        if not ext_call.return_data[0]:
                            require ext_code.size(stor205)
                            call stor205.0x2a3a1f8d with:
                                 gas gas_remaining wei
                                args ('cd', 4).length, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 4)[2] == address(('cd', 4)[2])
                emit 0x470798e4: address(signer), ('cd', 4)[1], cd[36], address(('cd', 4)[2]), 0, msg.sender, ('cd', 4).length, ('cd', 4)[0]
            else:
                if ext_call.return_data[0] <= 0:
                    if not address(ext_call.return_data[0]):
                        require ext_code.size(stor205)
                        staticcall stor205.0xaeb54111 with:
                                gas gas_remaining wei
                               args ('cd', 4).length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[30 len 2] > sub_814af25f:
                            if uint16(stor207.field_0) < uint16(stor207.field_0):
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] and 0 > -1 / ('cd', 4)[1] * cd[36]:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] and 0 > -1 / ('cd', 4)[1] * cd[36]:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] and 10000 > -1 / ('cd', 4)[1] * cd[36]:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] < 0:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] < 0:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] < 10000 * ('cd', 4)[1] * cd[36] / 10000:
                                revert with 0, 17
                            if 0 > !((('cd', 4)[1] * cd[36]) - (10000 * ('cd', 4)[1] * cd[36] / 10000)):
                                revert with 0, 17
                            require ('cd', 4)[2] == address(('cd', 4)[2])
                            require ext_code.size(stor205)
                            staticcall stor205.0xcbb666d8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(('cd', 4)[2]))
                            call address(('cd', 4)[2]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), (('cd', 4)[1] * cd[36]) - (10000 * ('cd', 4)[1] * cd[36] / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stor206)
                            staticcall stor206.0x917b9f14 with:
                                    gas gas_remaining wei
                                   args address(signer)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(('cd', 4)[2]))
                            call address(('cd', 4)[2]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), 10000 * ('cd', 4)[1] * cd[36] / 10000
                        else:
                            if uint16(stor207.field_0) < ext_call.return_data[30 len 2]:
                                revert with 0, 17
                            if 10000 < uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]):
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] and uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]) > -1 / ('cd', 4)[1] * cd[36]:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] and 0 > -1 / ('cd', 4)[1] * cd[36]:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] and uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) > -1 / ('cd', 4)[1] * cd[36]:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] < ('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000:
                                revert with 0, 17
                            if (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < 0:
                                revert with 0, 17
                            if (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < ('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000 > !((('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) - (('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)):
                                revert with 0, 17
                            require ('cd', 4)[2] == address(('cd', 4)[2])
                            require ext_code.size(stor205)
                            staticcall stor205.0xcbb666d8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(('cd', 4)[2]))
                            call address(('cd', 4)[2]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stor206)
                            staticcall stor206.0x917b9f14 with:
                                    gas gas_remaining wei
                                   args address(signer)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(('cd', 4)[2]))
                            call address(('cd', 4)[2]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), ('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if referralShare:
                            require ext_code.size(stor205)
                            staticcall stor205.0xcf0b882f with:
                                    gas gas_remaining wei
                                   args ('cd', 4).length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ('cd', 4).length > 0:
                                if not ext_call.return_data[0]:
                                    require ext_code.size(stor205)
                                    call stor205.0x2a3a1f8d with:
                                         gas gas_remaining wei
                                        args ('cd', 4).length, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        require ('cd', 4)[2] == address(('cd', 4)[2])
                        emit 0x470798e4: address(signer), ('cd', 4)[1], cd[36], address(('cd', 4)[2]), 0, msg.sender, ('cd', 4).length, ('cd', 4)[0]
                    else:
                        if uint16(stor207.field_0) < uint16(stor208.field_0):
                            revert with 0, 17
                        if 10000 < uint16(stor208.field_0):
                            revert with 0, 17
                        require ext_code.size(stor205)
                        staticcall stor205.0xaeb54111 with:
                                gas gas_remaining wei
                               args ('cd', 4).length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[30 len 2] <= sub_814af25f:
                            if uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) < ext_call.return_data[30 len 2]:
                                revert with 0, 17
                            if uint16(-uint16(stor208.field_0) + 10000) < uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - ext_call.return_data[30 len 2]):
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] and uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - ext_call.return_data[30 len 2]) > -1 / ('cd', 4)[1] * cd[36]:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] and uint16(stor208.field_0) > -1 / ('cd', 4)[1] * cd[36]:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] and uint16(uint16(-uint16(stor208.field_0) + 10000) - uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0]))) > -1 / ('cd', 4)[1] * cd[36]:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] < ('cd', 4)[1] * cd[36] * uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0])) / 10000:
                                revert with 0, 17
                            if (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0])) / 10000) < ('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000:
                                revert with 0, 17
                            if (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0])) / 10000) - (('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000) < ('cd', 4)[1] * cd[36] * uint16(uint16(-uint16(stor208.field_0) + 10000) - uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0]))) / 10000:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] * uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0])) / 10000 > !((('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0])) / 10000) - (('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000) - (('cd', 4)[1] * cd[36] * uint16(uint16(-uint16(stor208.field_0) + 10000) - uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0]))) / 10000)):
                                revert with 0, 17
                            require ('cd', 4)[2] == address(('cd', 4)[2])
                            require ext_code.size(stor205)
                            staticcall stor205.0xcbb666d8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(('cd', 4)[2]))
                            call address(('cd', 4)[2]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000) - (('cd', 4)[1] * cd[36] * uint16(uint16(-uint16(stor208.field_0) + 10000) - uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0]))) / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stor206)
                            if ('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000:
                                staticcall stor206.0x917b9f14 with:
                                        gas gas_remaining wei
                                       args address(ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), ('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            staticcall stor206.0x917b9f14 with:
                                    gas gas_remaining wei
                                   args address(signer)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(('cd', 4)[2]))
                            call address(('cd', 4)[2]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), ('cd', 4)[1] * cd[36] * uint16(uint16(-uint16(stor208.field_0) + 10000) - uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0]))) / 10000
                        else:
                            if uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) < uint16(uint16(stor207.field_0) - uint16(stor208.field_0)):
                                revert with 0, 17
                            if uint16(-uint16(stor208.field_0) + 10000) < 0:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] and 0 > -1 / ('cd', 4)[1] * cd[36]:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] and uint16(stor208.field_0) > -1 / ('cd', 4)[1] * cd[36]:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] and uint16(-uint16(stor208.field_0) + 10000) > -1 / ('cd', 4)[1] * cd[36]:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] < 0:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] < ('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000:
                                revert with 0, 17
                            if (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000) < ('cd', 4)[1] * cd[36] * uint16(-uint16(stor208.field_0) + 10000) / 10000:
                                revert with 0, 17
                            if 0 > !((('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000) - (('cd', 4)[1] * cd[36] * uint16(-uint16(stor208.field_0) + 10000) / 10000)):
                                revert with 0, 17
                            require ('cd', 4)[2] == address(('cd', 4)[2])
                            require ext_code.size(stor205)
                            staticcall stor205.0xcbb666d8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(('cd', 4)[2]))
                            call address(('cd', 4)[2]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000) - (('cd', 4)[1] * cd[36] * uint16(-uint16(stor208.field_0) + 10000) / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stor206)
                            if ('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000:
                                staticcall stor206.0x917b9f14 with:
                                        gas gas_remaining wei
                                       args address(ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), ('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            staticcall stor206.0x917b9f14 with:
                                    gas gas_remaining wei
                                   args address(signer)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(('cd', 4)[2]))
                            call address(('cd', 4)[2]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), ('cd', 4)[1] * cd[36] * uint16(-uint16(stor208.field_0) + 10000) / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if referralShare:
                            require ext_code.size(stor205)
                            staticcall stor205.0xcf0b882f with:
                                    gas gas_remaining wei
                                   args ('cd', 4).length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ('cd', 4).length > 0:
                                if not ext_call.return_data[0]:
                                    require ext_code.size(stor205)
                                    call stor205.0x2a3a1f8d with:
                                         gas gas_remaining wei
                                        args ('cd', 4).length, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        require ('cd', 4)[2] == address(('cd', 4)[2])
                        emit 0x470798e4: address(signer), ('cd', 4)[1], cd[36], address(('cd', 4)[2]), ('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000, msg.sender, ('cd', 4).length, ('cd', 4)[0]
                else:
                    require ext_code.size(stor205)
                    staticcall stor205.0xaefa058d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !ext_call.return_data[0]:
                        revert with 0, 17
                    if 2 * ext_call.return_data[0] < block.timestamp:
                        require ext_code.size(stor205)
                        staticcall stor205.0xaeb54111 with:
                                gas gas_remaining wei
                               args ('cd', 4).length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[30 len 2] > sub_814af25f:
                            if uint16(stor207.field_0) < uint16(stor207.field_0):
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] and 0 > -1 / ('cd', 4)[1] * cd[36]:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] and 0 > -1 / ('cd', 4)[1] * cd[36]:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] and 10000 > -1 / ('cd', 4)[1] * cd[36]:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] < 0:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] < 0:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] < 10000 * ('cd', 4)[1] * cd[36] / 10000:
                                revert with 0, 17
                            if 0 > !((('cd', 4)[1] * cd[36]) - (10000 * ('cd', 4)[1] * cd[36] / 10000)):
                                revert with 0, 17
                            require ('cd', 4)[2] == address(('cd', 4)[2])
                            require ext_code.size(stor205)
                            staticcall stor205.0xcbb666d8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(('cd', 4)[2]))
                            call address(('cd', 4)[2]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), (('cd', 4)[1] * cd[36]) - (10000 * ('cd', 4)[1] * cd[36] / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stor206)
                            staticcall stor206.0x917b9f14 with:
                                    gas gas_remaining wei
                                   args address(signer)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(('cd', 4)[2]))
                            call address(('cd', 4)[2]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), 10000 * ('cd', 4)[1] * cd[36] / 10000
                        else:
                            if uint16(stor207.field_0) < ext_call.return_data[30 len 2]:
                                revert with 0, 17
                            if 10000 < uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]):
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] and uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]) > -1 / ('cd', 4)[1] * cd[36]:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] and 0 > -1 / ('cd', 4)[1] * cd[36]:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] and uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) > -1 / ('cd', 4)[1] * cd[36]:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] < ('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000:
                                revert with 0, 17
                            if (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < 0:
                                revert with 0, 17
                            if (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < ('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000:
                                revert with 0, 17
                            if ('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000 > !((('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) - (('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)):
                                revert with 0, 17
                            require ('cd', 4)[2] == address(('cd', 4)[2])
                            require ext_code.size(stor205)
                            staticcall stor205.0xcbb666d8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(('cd', 4)[2]))
                            call address(('cd', 4)[2]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stor206)
                            staticcall stor206.0x917b9f14 with:
                                    gas gas_remaining wei
                                   args address(signer)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(('cd', 4)[2]))
                            call address(('cd', 4)[2]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(ext_call.return_data[0]), ('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if referralShare:
                            require ext_code.size(stor205)
                            staticcall stor205.0xcf0b882f with:
                                    gas gas_remaining wei
                                   args ('cd', 4).length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ('cd', 4).length > 0:
                                if not ext_call.return_data[0]:
                                    require ext_code.size(stor205)
                                    call stor205.0x2a3a1f8d with:
                                         gas gas_remaining wei
                                        args ('cd', 4).length, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        require ('cd', 4)[2] == address(('cd', 4)[2])
                        emit 0x470798e4: address(signer), ('cd', 4)[1], cd[36], address(('cd', 4)[2]), 0, msg.sender, ('cd', 4).length, ('cd', 4)[0]
                    else:
                        if not address(ext_call.return_data[0]):
                            require ext_code.size(stor205)
                            staticcall stor205.0xaeb54111 with:
                                    gas gas_remaining wei
                                   args ('cd', 4).length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[30 len 2] > sub_814af25f:
                                if uint16(stor207.field_0) < uint16(stor207.field_0):
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] and 0 > -1 / ('cd', 4)[1] * cd[36]:
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] and 0 > -1 / ('cd', 4)[1] * cd[36]:
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] and 10000 > -1 / ('cd', 4)[1] * cd[36]:
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] < 0:
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] < 0:
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] < 10000 * ('cd', 4)[1] * cd[36] / 10000:
                                    revert with 0, 17
                                if 0 > !((('cd', 4)[1] * cd[36]) - (10000 * ('cd', 4)[1] * cd[36] / 10000)):
                                    revert with 0, 17
                                require ('cd', 4)[2] == address(('cd', 4)[2])
                                require ext_code.size(stor205)
                                staticcall stor205.0xcbb666d8 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), (('cd', 4)[1] * cd[36]) - (10000 * ('cd', 4)[1] * cd[36] / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(stor206)
                                staticcall stor206.0x917b9f14 with:
                                        gas gas_remaining wei
                                       args address(signer)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), 10000 * ('cd', 4)[1] * cd[36] / 10000
                            else:
                                if uint16(stor207.field_0) < ext_call.return_data[30 len 2]:
                                    revert with 0, 17
                                if 10000 < uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]):
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] and uint16(uint16(stor207.field_0) - ext_call.return_data[30 len 2]) > -1 / ('cd', 4)[1] * cd[36]:
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] and 0 > -1 / ('cd', 4)[1] * cd[36]:
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] and uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) > -1 / ('cd', 4)[1] * cd[36]:
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] < ('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000:
                                    revert with 0, 17
                                if (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < 0:
                                    revert with 0, 17
                                if (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) < ('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000:
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000 > !((('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) / 10000) - (('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)):
                                    revert with 0, 17
                                require ('cd', 4)[2] == address(('cd', 4)[2])
                                require ext_code.size(stor205)
                                staticcall stor205.0xcbb666d8 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(stor206)
                                staticcall stor206.0x917b9f14 with:
                                        gas gas_remaining wei
                                       args address(signer)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), ('cd', 4)[1] * cd[36] * uint16(-uint16(uint16(stor207.field_0) - uint16(ext_call.return_data[0])) + 10000) / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if referralShare:
                                require ext_code.size(stor205)
                                staticcall stor205.0xcf0b882f with:
                                        gas gas_remaining wei
                                       args ('cd', 4).length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ('cd', 4).length > 0:
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(stor205)
                                        call stor205.0x2a3a1f8d with:
                                             gas gas_remaining wei
                                            args ('cd', 4).length, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            require ('cd', 4)[2] == address(('cd', 4)[2])
                            emit 0x470798e4: address(signer), ('cd', 4)[1], cd[36], address(('cd', 4)[2]), 0, msg.sender, ('cd', 4).length, ('cd', 4)[0]
                        else:
                            if uint16(stor207.field_0) < uint16(stor208.field_0):
                                revert with 0, 17
                            if 10000 < uint16(stor208.field_0):
                                revert with 0, 17
                            require ext_code.size(stor205)
                            staticcall stor205.0xaeb54111 with:
                                    gas gas_remaining wei
                                   args ('cd', 4).length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[30 len 2] <= sub_814af25f:
                                if uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) < ext_call.return_data[30 len 2]:
                                    revert with 0, 17
                                if uint16(-uint16(stor208.field_0) + 10000) < uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - ext_call.return_data[30 len 2]):
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] and uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - ext_call.return_data[30 len 2]) > -1 / ('cd', 4)[1] * cd[36]:
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] and uint16(stor208.field_0) > -1 / ('cd', 4)[1] * cd[36]:
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] and uint16(uint16(-uint16(stor208.field_0) + 10000) - uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0]))) > -1 / ('cd', 4)[1] * cd[36]:
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] < ('cd', 4)[1] * cd[36] * uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0])) / 10000:
                                    revert with 0, 17
                                if (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0])) / 10000) < ('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000:
                                    revert with 0, 17
                                if (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0])) / 10000) - (('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000) < ('cd', 4)[1] * cd[36] * uint16(uint16(-uint16(stor208.field_0) + 10000) - uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0]))) / 10000:
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] * uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0])) / 10000 > !((('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0])) / 10000) - (('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000) - (('cd', 4)[1] * cd[36] * uint16(uint16(-uint16(stor208.field_0) + 10000) - uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0]))) / 10000)):
                                    revert with 0, 17
                                require ('cd', 4)[2] == address(('cd', 4)[2])
                                require ext_code.size(stor205)
                                staticcall stor205.0xcbb666d8 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000) - (('cd', 4)[1] * cd[36] * uint16(uint16(-uint16(stor208.field_0) + 10000) - uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0]))) / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(stor206)
                                if ('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000:
                                    staticcall stor206.0x917b9f14 with:
                                            gas gas_remaining wei
                                           args address(ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(('cd', 4)[2]))
                                    call address(('cd', 4)[2]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), ('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                staticcall stor206.0x917b9f14 with:
                                        gas gas_remaining wei
                                       args address(signer)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), ('cd', 4)[1] * cd[36] * uint16(uint16(-uint16(stor208.field_0) + 10000) - uint16(uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) - uint16(ext_call.return_data[0]))) / 10000
                            else:
                                if uint16(uint16(stor207.field_0) - uint16(stor208.field_0)) < uint16(uint16(stor207.field_0) - uint16(stor208.field_0)):
                                    revert with 0, 17
                                if uint16(-uint16(stor208.field_0) + 10000) < 0:
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] and 0 > -1 / ('cd', 4)[1] * cd[36]:
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] and uint16(stor208.field_0) > -1 / ('cd', 4)[1] * cd[36]:
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] and uint16(-uint16(stor208.field_0) + 10000) > -1 / ('cd', 4)[1] * cd[36]:
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] < 0:
                                    revert with 0, 17
                                if ('cd', 4)[1] * cd[36] < ('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000:
                                    revert with 0, 17
                                if (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000) < ('cd', 4)[1] * cd[36] * uint16(-uint16(stor208.field_0) + 10000) / 10000:
                                    revert with 0, 17
                                if 0 > !((('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000) - (('cd', 4)[1] * cd[36] * uint16(-uint16(stor208.field_0) + 10000) / 10000)):
                                    revert with 0, 17
                                require ('cd', 4)[2] == address(('cd', 4)[2])
                                require ext_code.size(stor205)
                                staticcall stor205.0xcbb666d8 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), (('cd', 4)[1] * cd[36]) - (('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000) - (('cd', 4)[1] * cd[36] * uint16(-uint16(stor208.field_0) + 10000) / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(stor206)
                                if ('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000:
                                    staticcall stor206.0x917b9f14 with:
                                            gas gas_remaining wei
                                           args address(ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(address(('cd', 4)[2]))
                                    call address(('cd', 4)[2]).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(ext_call.return_data[0]), ('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                staticcall stor206.0x917b9f14 with:
                                        gas gas_remaining wei
                                       args address(signer)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ext_call.return_data[0]), ('cd', 4)[1] * cd[36] * uint16(-uint16(stor208.field_0) + 10000) / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if referralShare:
                                require ext_code.size(stor205)
                                staticcall stor205.0xcf0b882f with:
                                        gas gas_remaining wei
                                       args ('cd', 4).length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ('cd', 4).length > 0:
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(stor205)
                                        call stor205.0x2a3a1f8d with:
                                             gas gas_remaining wei
                                            args ('cd', 4).length, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            require ('cd', 4)[2] == address(('cd', 4)[2])
                            emit 0x470798e4: address(signer), ('cd', 4)[1], cd[36], address(('cd', 4)[2]), ('cd', 4)[1] * cd[36] * uint16(stor208.field_0) / 10000, msg.sender, ('cd', 4).length, ('cd', 4)[0]
}



}
