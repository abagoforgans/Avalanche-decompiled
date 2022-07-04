contract main {




// =====================  Runtime code  =====================


address owner;
address sub_e9a09bb1Address;
address sub_dc6e1101Address;
address sub_200854b2Address;

function sub_200854b2(?) payable {
    return sub_200854b2Address
}

function owner() payable {
    return owner
}

function sub_dc6e1101(?) payable {
    return sub_dc6e1101Address
}

function sub_e9a09bb1(?) payable {
    return sub_e9a09bb1Address
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_e26f4975(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if 5 > !block.number:
        revert with 0, 17
    if arg4 <= block.number + 5:
        revert with 0, 'START BLOCK TOO SOON'
    if arg6 < arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BONUS START MUST BE >= START_BLOCK'
    if arg6 > arg5:
        revert with 0, 'BONUS START MUST BE <= END_BLOCK'
    if arg7 <= 0:
        revert with 0, 'BONUS MUST BE > 0'
    mem[96 len 11374] = code.data[2759 len 11374]
    mem[11470] = this.address
    mem[11502] = address(arg1)
    mem[11534] = sub_dc6e1101Address
    mem[11566] = sub_200854b2Address
    create contract with 0 wei
                    code: code.data[2759 len 11374], address(this.address), address(arg1), sub_dc6e1101Address, sub_200854b2Address
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getStakingToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_200854b2Address)
    staticcall sub_200854b2Address.0x6a82d042 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if arg3 < 0:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(create.new_address), arg3, mem[(2 * ceil32(return_data.size)) + 228 len 28]
        call address(arg2).mem[(2 * ceil32(return_data.size)) + 228 len 4] with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 232 len 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require code.data[2791 len 32] == bool(code.data[2791 len 32])
                if not code.data[2791 len 32]:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
        else:
            mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 260] == bool(mem[(2 * ceil32(return_data.size)) + 260])
                if not mem[(2 * ceil32(return_data.size)) + 260]:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
    else:
        require ext_code.size(sub_dc6e1101Address)
        staticcall sub_dc6e1101Address.0x26af7b0c with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        require ext_code.size(sub_dc6e1101Address)
        staticcall sub_dc6e1101Address.0x455066c2 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg3 * ext_call.return_data[0] / 1000, mem[(6 * ceil32(return_data.size)) + 228 len 28]
        call address(arg2).mem[(6 * ceil32(return_data.size)) + 228 len 4] with:
             gas gas_remaining wei
            args mem[(6 * ceil32(return_data.size)) + 232 len 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require code.data[2791 len 32] == bool(code.data[2791 len 32])
                if not code.data[2791 len 32]:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
            if arg3 < arg3 * ext_call.return_data[0] / 1000:
                revert with 0, 17
            mem[(6 * ceil32(return_data.size)) + 360 len 128] = 0, msg.sender, address(create.new_address), arg3 - (arg3 * ext_call.return_data[0] / 1000), mem[(6 * ceil32(return_data.size)) + 360 len 28]
            call address(arg2).mem[(6 * ceil32(return_data.size)) + 360 len 4] with:
                 gas gas_remaining wei
                args mem[(6 * ceil32(return_data.size)) + 364 len 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require code.data[2791 len 32] == bool(code.data[2791 len 32])
                    if not code.data[2791 len 32]:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
            else:
                mem[(6 * ceil32(return_data.size)) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 392] == bool(mem[(6 * ceil32(return_data.size)) + 392])
                    if not mem[(6 * ceil32(return_data.size)) + 392]:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
        else:
            mem[(6 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
            if return_data.size:
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + 260] == bool(mem[(6 * ceil32(return_data.size)) + 260])
                if not mem[(6 * ceil32(return_data.size)) + 260]:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
            if arg3 < arg3 * ext_call.return_data[0] / 1000:
                revert with 0, 17
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len 128] = 0, msg.sender, address(create.new_address), arg3 - (arg3 * ext_call.return_data[0] / 1000), mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len 28]
            call address(arg2).mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len 4] with:
                 gas gas_remaining wei
                args mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 365 len 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require code.data[2791 len 32] == bool(code.data[2791 len 32])
                    if not code.data[2791 len 32]:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
            else:
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393])
                    if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393]:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
    require ext_code.size(address(create.new_address))
    call address(create.new_address).init(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args address(arg2), arg4, arg5, arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_e9a09bb1Address)
    call sub_e9a09bb1Address.0x3f7c7f1f with:
         gas gas_remaining wei
        args address(arg1), address(create.new_address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
