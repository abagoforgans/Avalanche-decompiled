contract main {




// =====================  Runtime code  =====================


#
#  - sub_dc782e89(?)
#  - sub_f3b48d8b(?)
#  - withdraw(address arg1, uint256 arg2)
#  - _fallback()
#
address owner;
mapping of uint8 stor1;
array of address curve;
address stor3;

function curve(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return curve[arg1]
}

function owner() {
    return owner
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function destroy() {
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    selfdestruct(owner)
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    owner = arg1
    emit OwnerSet(arg1, arg1);
}

function addUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    stor1[address(arg1)] = 1
    emit AddUser(arg1);
}

function deleteUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    stor1[address(arg1)] = 0
    emit 0xa590e9c1: arg1
}

function withdrawETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    call owner with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'WITHDRAW_ETH_FAILED'
}

function sub_6c299453(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint64(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    if uint64(arg1) >= 5:
        revert with 'NH{q', 50
    curve[uint64(arg1)] = address(arg2)
}

function approve(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_abea578c(?) {
    require calldata.size - 4 >= 128
    require arg1 == ('signextend', 15, ('param', 'arg1'))
    require arg2 == ('signextend', 15, ('param', 'arg2'))
    if not stor1[msg.sender]:
        revert with 0, 'NOT_USER'
    require ext_code.size(stor3)
    call stor3.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, uint32(('signextend', 15, ('param', 'arg1'))), ('signextend', 15, ('param', 'arg2')), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_412a2601(?) {
    require calldata.size - 4 >= 128
    require arg1 == ('signextend', 15, ('param', 'arg1'))
    require arg2 == ('signextend', 15, ('param', 'arg2'))
    if not stor1[msg.sender]:
        revert with 0, 'NOT_USER'
    require ext_code.size(stor3)
    call stor3.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, uint32(('signextend', 15, ('param', 'arg1'))), ('signextend', 15, ('param', 'arg2')), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_fbe5b54a(?) {
    require calldata.size - 4 >= 128
    require arg1 == ('signextend', 15, ('param', 'arg1'))
    require arg2 == ('signextend', 15, ('param', 'arg2'))
    if not stor1[msg.sender]:
        revert with 0, 'NOT_USER'
    require ext_code.size(curve.length)
    call curve.length.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, uint32(('signextend', 15, ('param', 'arg1'))), ('signextend', 15, ('param', 'arg2')), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_66ffe791(?) {
    require calldata.size - 4 >= 128
    require arg1 == ('signextend', 15, ('param', 'arg1'))
    require arg2 == ('signextend', 15, ('param', 'arg2'))
    if not stor1[msg.sender]:
        revert with 0, 'NOT_USER'
    require ext_code.size(curve.length)
    call curve.length.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, uint32(('signextend', 15, ('param', 'arg1'))), ('signextend', 15, ('param', 'arg2')), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_5458835d(?) {
    require calldata.size - 4 >= 160
    require arg1 == uint64(arg1)
    require arg2 == ('signextend', 15, ('param', 'arg2'))
    require arg3 == ('signextend', 15, ('param', 'arg3'))
    if not stor1[msg.sender]:
        revert with 0, 'NOT_USER'
    if uint64(arg1) >= 5:
        revert with 'NH{q', 50
    require ext_code.size(curve[uint64(arg1)])
    call curve[uint64(arg1)].exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, uint32(('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('param', 'arg3')), arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_cd46143a(?) {
    require calldata.size - 4 >= 160
    require arg1 == uint64(arg1)
    require arg2 == ('signextend', 15, ('param', 'arg2'))
    require arg3 == ('signextend', 15, ('param', 'arg3'))
    if not stor1[msg.sender]:
        revert with 0, 'NOT_USER'
    if uint64(arg1) >= 5:
        revert with 'NH{q', 50
    require ext_code.size(curve[uint64(arg1)])
    call curve[uint64(arg1)].exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, uint32(('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('param', 'arg3')), arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_065e26dc(?) {
    require calldata.size - 4 >= 160
    require calldata.size >= 132
    require 164 <= calldata.size
    if not stor1[msg.sender]:
        revert with 0, 'NOT_USER'
    require arg5 == address(arg5)
    require ext_code.size(address(arg5))
    staticcall address(arg5).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require arg4 == Mask(192, 64, arg4)
    require arg3 == Mask(192, 64, arg3)
    require arg4 == Mask(192, 64, arg4)
    if arg1 and uint32(arg4) > -1 / arg1:
        revert with 'NH{q', 17
    if Mask(192, 64, arg3) <= Mask(192, 64, arg4):
        if arg1 * uint32(arg4) and ext_call.return_data[50 len 14] > -1 / arg1 * uint32(arg4):
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 'NH{q', 17
        if 10000 * ext_call.return_data[18 len 14] > !(arg1 * uint32(arg4)):
            revert with 'NH{q', 17
        if not (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)):
            revert with 'NH{q', 18
        if arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) < arg2:
            revert with 0, 'MIN_OUT'
        require arg3 == Mask(192, 64, arg3)
        require arg5 == address(arg5)
        require ext_code.size(address(arg3) >> 96)
        call address(arg3) >> 96.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg5), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require arg4 == Mask(192, 64, arg4)
        require arg3 == Mask(192, 64, arg3)
        require arg5 == address(arg5)
        require ext_code.size(address(arg5))
        if Mask(192, 64, arg3) < Mask(192, 64, arg4):
            call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, arg1 * uint32(arg4) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * uint32(arg4)), address(this.address), 128, 0
        else:
            call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args arg1 * uint32(arg4) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * uint32(arg4)), 0, address(this.address), 128, 0
    else:
        if arg1 * uint32(arg4) and ext_call.return_data[18 len 14] > -1 / arg1 * uint32(arg4):
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 'NH{q', 17
        if 10000 * ext_call.return_data[50 len 14] > !(arg1 * uint32(arg4)):
            revert with 'NH{q', 17
        if not (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)):
            revert with 'NH{q', 18
        if arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) < arg2:
            revert with 0, 'MIN_OUT'
        require arg3 == Mask(192, 64, arg3)
        require arg5 == address(arg5)
        require ext_code.size(address(arg3) >> 96)
        call address(arg3) >> 96.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg5), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require arg4 == Mask(192, 64, arg4)
        require arg3 == Mask(192, 64, arg3)
        require arg5 == address(arg5)
        require ext_code.size(address(arg5))
        if Mask(192, 64, arg3) < Mask(192, 64, arg4):
            call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, arg1 * uint32(arg4) * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (arg1 * uint32(arg4)), address(this.address), 128, 0
        else:
            call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args arg1 * uint32(arg4) * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (arg1 * uint32(arg4)), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_67c4829d(?) {
    require calldata.size - 4 >= 224
    require calldata.size >= 164
    require calldata.size >= 228
    if not stor1[msg.sender]:
        revert with 0, 'NOT_USER'
    require arg6 == address(arg6)
    require ext_code.size(address(arg6))
    staticcall address(arg6).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require arg4 == Mask(192, 64, arg4)
    require arg3 == Mask(192, 64, arg3)
    require arg4 == Mask(192, 64, arg4)
    if arg1 and uint32(arg4) > -1 / arg1:
        revert with 'NH{q', 17
    if Mask(192, 64, arg3) <= Mask(192, 64, arg4):
        if arg1 * uint32(arg4) and ext_call.return_data[50 len 14] > -1 / arg1 * uint32(arg4):
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 'NH{q', 17
        if 10000 * ext_call.return_data[18 len 14] > !(arg1 * uint32(arg4)):
            revert with 'NH{q', 17
        if not (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)):
            revert with 'NH{q', 18
        require arg7 == address(arg7)
        require ext_code.size(address(arg7))
        staticcall address(arg7).getReserves() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require arg5 == Mask(192, 64, arg5)
        require arg4 == Mask(192, 64, arg4)
        require arg5 == Mask(192, 64, arg5)
        if arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) and uint32(arg5) > -1 / arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)):
            revert with 'NH{q', 17
        if Mask(192, 64, arg4) > Mask(192, 64, arg5):
            if arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) and ext_call.return_data[18 len 14] > -1 / arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5):
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[50 len 14] > !(arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)):
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)):
                revert with 'NH{q', 18
            if arg2 > arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)):
                revert with 0, 'MIN_OUT'
            require arg3 == Mask(192, 64, arg3)
            require arg6 == address(arg6)
            require ext_code.size(address(arg3) >> 96)
            call address(arg3) >> 96.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg6), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require arg4 == Mask(192, 64, arg4)
            require arg3 == Mask(192, 64, arg3)
            require arg6 == address(arg6)
            require arg7 == address(arg7)
            require ext_code.size(address(arg6))
            if Mask(192, 64, arg3) < Mask(192, 64, arg4):
                call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)), address(arg7), 128, 0, None
            else:
                call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)), 0, address(arg7), 128, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require arg5 == Mask(192, 64, arg5)
            require arg4 == Mask(192, 64, arg4)
            require arg7 == address(arg7)
            require ext_code.size(address(arg7))
            if Mask(192, 64, arg4) < Mask(192, 64, arg5):
                call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)), address(this.address), 128, 0, 0
            else:
                call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)), 0, address(this.address), 128, 0, 0
        else:
            if arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) and ext_call.return_data[50 len 14] > -1 / arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5):
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[18 len 14] > !(arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)):
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)):
                revert with 'NH{q', 18
            if arg2 > arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)):
                revert with 0, 'MIN_OUT'
            require arg3 == Mask(192, 64, arg3)
            require arg6 == address(arg6)
            mem[(2 * ceil32(return_data.size)) + 228] = arg1
            require ext_code.size(address(arg3) >> 96)
            call address(arg3) >> 96.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg6), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require arg4 == Mask(192, 64, arg4)
            require arg3 == Mask(192, 64, arg3)
            require arg6 == address(arg6)
            require arg7 == address(arg7)
            if Mask(192, 64, arg3) < Mask(192, 64, arg4):
                require ext_code.size(address(arg6))
                call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)), address(arg7), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg5 == Mask(192, 64, arg5)
                require arg4 == Mask(192, 64, arg4)
                require arg7 == address(arg7)
                require ext_code.size(address(arg7))
                if Mask(192, 64, arg4) < Mask(192, 64, arg5):
                    call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)), address(this.address), 128, 0, 0, None
                else:
                    call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)), 0, address(this.address), 128, 0, 0, None
            else:
                mem[(4 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg6))
                call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)), 0, address(arg7), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg5 == Mask(192, 64, arg5)
                require arg4 == Mask(192, 64, arg4)
                require arg7 == address(arg7)
                mem[(4 * ceil32(return_data.size)) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if Mask(192, 64, arg4) < Mask(192, 64, arg5):
                    mem[(4 * ceil32(return_data.size)) + 260] = 0
                    mem[(4 * ceil32(return_data.size)) + 292] = arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5))
                    mem[(4 * ceil32(return_data.size)) + 324] = this.address
                    mem[(4 * ceil32(return_data.size)) + 356] = 128
                    mem[(4 * ceil32(return_data.size)) + 388] = 0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4))) >> 32
                    mem[(4 * ceil32(return_data.size)) + 420 len ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4))) >> 32)] = mem[(4 * ceil32(return_data.size)) + 256 len ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4))) >> 32)]
                    if ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4))) >> 32) > 0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4))) >> 32:
                        mem[0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4))) >> 32 + (4 * ceil32(return_data.size)) + 420] = 0
                    require ext_code.size(address(arg7))
                    call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)), address(this.address), 128, 0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4))) >> 32, mem[(4 * ceil32(return_data.size)) + 420 len ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4))) >> 32)]
                else:
                    mem[(4 * ceil32(return_data.size)) + 260] = arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5))
                    mem[(4 * ceil32(return_data.size)) + 292] = 0
                    mem[(4 * ceil32(return_data.size)) + 324] = this.address
                    mem[(4 * ceil32(return_data.size)) + 356] = 128
                    mem[(4 * ceil32(return_data.size)) + 388] = 0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4))) >> 32
                    mem[(4 * ceil32(return_data.size)) + 420 len ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4))) >> 32)] = mem[(4 * ceil32(return_data.size)) + 256 len ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4))) >> 32)]
                    if ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4))) >> 32) > 0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4))) >> 32:
                        mem[0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4))) >> 32 + (4 * ceil32(return_data.size)) + 420] = 0
                    require ext_code.size(address(arg7))
                    call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)), 0, address(this.address), 128, 0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4))) >> 32, mem[(4 * ceil32(return_data.size)) + 420 len ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4))) >> 32)]
    else:
        if arg1 * uint32(arg4) and ext_call.return_data[18 len 14] > -1 / arg1 * uint32(arg4):
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 'NH{q', 17
        if 10000 * ext_call.return_data[50 len 14] > !(arg1 * uint32(arg4)):
            revert with 'NH{q', 17
        if not (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)):
            revert with 'NH{q', 18
        require arg7 == address(arg7)
        require ext_code.size(address(arg7))
        staticcall address(arg7).getReserves() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require arg5 == Mask(192, 64, arg5)
        require arg4 == Mask(192, 64, arg4)
        require arg5 == Mask(192, 64, arg5)
        if arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) and uint32(arg5) > -1 / arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)):
            revert with 'NH{q', 17
        if Mask(192, 64, arg4) <= Mask(192, 64, arg5):
            if arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) and ext_call.return_data[50 len 14] > -1 / arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5):
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[18 len 14] > !(arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)):
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)):
                revert with 'NH{q', 18
            if arg2 > arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)):
                revert with 0, 'MIN_OUT'
            require arg3 == Mask(192, 64, arg3)
            require arg6 == address(arg6)
            mem[(2 * ceil32(return_data.size)) + 228] = arg1
            require ext_code.size(address(arg3) >> 96)
            call address(arg3) >> 96.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg6), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require arg4 == Mask(192, 64, arg4)
            require arg3 == Mask(192, 64, arg3)
            require arg6 == address(arg6)
            require arg7 == address(arg7)
            if Mask(192, 64, arg3) < Mask(192, 64, arg4):
                require ext_code.size(address(arg6))
                call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)), address(arg7), 128, 0, None
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg5 == Mask(192, 64, arg5)
                require arg4 == Mask(192, 64, arg4)
                require arg7 == address(arg7)
                require ext_code.size(address(arg7))
                if Mask(192, 64, arg4) < Mask(192, 64, arg5):
                    call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)), address(this.address), 128, 0, 0
                else:
                    call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)), 0, address(this.address), 128, 0, 0
            else:
                mem[(4 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg6))
                call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)), 0, address(arg7), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg5 == Mask(192, 64, arg5)
                require arg4 == Mask(192, 64, arg4)
                require arg7 == address(arg7)
                mem[(4 * ceil32(return_data.size)) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if Mask(192, 64, arg4) < Mask(192, 64, arg5):
                    mem[(4 * ceil32(return_data.size)) + 260] = 0
                    mem[(4 * ceil32(return_data.size)) + 292] = arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5))
                    mem[(4 * ceil32(return_data.size)) + 324] = this.address
                    mem[(4 * ceil32(return_data.size)) + 356] = 128
                    mem[(4 * ceil32(return_data.size)) + 388] = 0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32
                    mem[(4 * ceil32(return_data.size)) + 420 len ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32)] = mem[(4 * ceil32(return_data.size)) + 256 len ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32)]
                    if ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32) > 0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32:
                        mem[0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32 + (4 * ceil32(return_data.size)) + 420] = 0
                    require ext_code.size(address(arg7))
                    call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)), address(this.address), 128, 0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32, mem[(4 * ceil32(return_data.size)) + 420 len ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32)]
                else:
                    mem[(4 * ceil32(return_data.size)) + 260] = arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5))
                    mem[(4 * ceil32(return_data.size)) + 292] = 0
                    mem[(4 * ceil32(return_data.size)) + 324] = this.address
                    mem[(4 * ceil32(return_data.size)) + 356] = 128
                    mem[(4 * ceil32(return_data.size)) + 388] = 0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32
                    mem[(4 * ceil32(return_data.size)) + 420 len ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32)] = mem[(4 * ceil32(return_data.size)) + 256 len ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32)]
                    if ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32) > 0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32:
                        mem[0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32 + (4 * ceil32(return_data.size)) + 420] = 0
                    require ext_code.size(address(arg7))
                    call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)), 0, address(this.address), 128, 0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32, mem[(4 * ceil32(return_data.size)) + 420 len ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32)]
        else:
            if arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) and ext_call.return_data[18 len 14] > -1 / arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5):
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[50 len 14] > !(arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)):
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)):
                revert with 'NH{q', 18
            if arg2 > arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)):
                revert with 0, 'MIN_OUT'
            require arg3 == Mask(192, 64, arg3)
            require arg6 == address(arg6)
            mem[(2 * ceil32(return_data.size)) + 228] = arg1
            require ext_code.size(address(arg3) >> 96)
            call address(arg3) >> 96.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg6), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require arg4 == Mask(192, 64, arg4)
            require arg3 == Mask(192, 64, arg3)
            require arg6 == address(arg6)
            require arg7 == address(arg7)
            if Mask(192, 64, arg3) < Mask(192, 64, arg4):
                require ext_code.size(address(arg6))
                call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)), address(arg7), 128, 0, None
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg5 == Mask(192, 64, arg5)
                require arg4 == Mask(192, 64, arg4)
                require arg7 == address(arg7)
                require ext_code.size(address(arg7))
                if Mask(192, 64, arg4) < Mask(192, 64, arg5):
                    call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)), address(this.address), 128, 0, 0
                else:
                    call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)), 0, address(this.address), 128, 0, 0
            else:
                mem[(4 * ceil32(return_data.size)) + 388 len 0] = None
                require ext_code.size(address(arg6))
                call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)), 0, address(arg7), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg5 == Mask(192, 64, arg5)
                require arg4 == Mask(192, 64, arg4)
                require arg7 == address(arg7)
                mem[(4 * ceil32(return_data.size)) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if Mask(192, 64, arg4) < Mask(192, 64, arg5):
                    mem[(4 * ceil32(return_data.size)) + 260] = 0
                    mem[(4 * ceil32(return_data.size)) + 292] = arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5))
                    mem[(4 * ceil32(return_data.size)) + 324] = this.address
                    mem[(4 * ceil32(return_data.size)) + 356] = 128
                    mem[(4 * ceil32(return_data.size)) + 388] = 0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32
                    mem[(4 * ceil32(return_data.size)) + 420 len ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32)] = mem[(4 * ceil32(return_data.size)) + 256 len ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32)]
                    if ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32) > 0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32:
                        mem[0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32 + (4 * ceil32(return_data.size)) + 420] = 0
                    require ext_code.size(address(arg7))
                    call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)), address(this.address), 128, 0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32, mem[(4 * ceil32(return_data.size)) + 420 len ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32)]
                else:
                    mem[(4 * ceil32(return_data.size)) + 260] = arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5))
                    mem[(4 * ceil32(return_data.size)) + 292] = 0
                    mem[(4 * ceil32(return_data.size)) + 324] = this.address
                    mem[(4 * ceil32(return_data.size)) + 356] = 128
                    mem[(4 * ceil32(return_data.size)) + 388] = 0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32
                    mem[(4 * ceil32(return_data.size)) + 420 len ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32)] = mem[(4 * ceil32(return_data.size)) + 256 len ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32)]
                    if ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32) > 0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32:
                        mem[0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32 + (4 * ceil32(return_data.size)) + 420] = 0
                    require ext_code.size(address(arg7))
                    call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4)) * uint32(arg5)), 0, address(this.address), 128, 0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32, mem[(4 * ceil32(return_data.size)) + 420 len ceil32(0, Mask(224, 32, arg1 * uint32(arg4) * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (arg1 * uint32(arg4))) >> 32)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_893f3a67(?) {
    require calldata.size - 4 >= 128
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'NOT_USER'
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    mem[64] = (32 * ('cd', 68).length) + 128
    if not ('cd', 68).length:
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        mem[128] = cd[4]
        if ('cd', 68).length < 1:
            revert with 'NH{q', 17
        if var101002 < ('cd', 68).length - 1:
            if var103001 >= ('cd', 100).length:
                revert with 'NH{q', 50
            require cd[((32 * var103001) + cd[100] + 36)] == address(cd[((32 * var103001) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * var103001) + cd[100] + 36)]))
            staticcall address(cd[((32 * var103001) + cd[100] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 68).length) + 128 len 96] = ext_call.return_data[0 len 96]
            s = var103001
            t = var103001
            while ext_call.success:
                _917 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_917] == mem[_917 + 18 len 14]
                require mem[_917 + 32] == mem[_917 + 50 len 14]
                require mem[_917 + 64] == mem[_917 + 92 len 4]
                if 1 > !t:
                    revert with 'NH{q', 17
                if t + 1 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * t + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)])
                if t >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * t) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t) + cd[68] + 36)])
                if t >= mem[96]:
                    revert with 'NH{q', 50
                if 1 > !t:
                    revert with 'NH{q', 17
                if t + 1 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * t + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)])
                if mem[(32 * t) + 128] and Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64 > -1 / mem[(32 * t) + 128]:
                    revert with 'NH{q', 17
                if Mask(192, 64, cd[((32 * t) + cd[68] + 36)]) <= Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)]):
                    if mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64 and mem[_917 + 50 len 14] > -1 / mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64:
                        revert with 'NH{q', 17
                    if mem[_917 + 18 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * mem[_917 + 18 len 14] > !(mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64):
                        revert with 'NH{q', 17
                    if not (10000 * mem[_917 + 18 len 14]) + (mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64):
                        revert with 'NH{q', 18
                    if 1 > !t:
                        revert with 'NH{q', 17
                    if t + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + 128] = mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64 * mem[_917 + 50 len 14] / (10000 * mem[_917 + 18 len 14]) + (mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64)
                    if t == -1:
                        revert with 'NH{q', 17
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if t + 1 < ('cd', 68).length - 1:
                        if t + 1 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t + 2) + cd[100] + 36)] == address(cd[((32 * t + 2) + cd[100] + 36)])
                        mem[mem[64]] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(cd[((32 * t + 2) + cd[100] + 36)]))
                        staticcall address(cd[((32 * t + 2) + cd[100] + 36)]).getReserves() with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (32 * ('cd', 68).length) + -mem[64] + 128]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        s = t + 1
                        t = t + 1
                        continue 
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[96] - 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[(32 * mem[96] - 1) + 128] < cd[36]:
                        revert with 0, 'MIN_OUT'
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[0] == Mask(192, 64, ('cd', 68)[0])
                    if not ('cd', 100).length:
                        revert with 'NH{q', 50
                    require ('cd', 100)[0] == address(('cd', 100)[0])
                    mem[mem[64] + 4] = address(('cd', 100)[0])
                    mem[mem[64] + 36] = cd[4]
                    require ext_code.size(address(('cd', 68)[0]) >> 96)
                    call address(('cd', 68)[0]) >> 96.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(('cd', 100)[0]), cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1025 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1025] == bool(mem[_1025])
                    if ('cd', 68).length < 2:
                        revert with 'NH{q', 17
                    if var187004 < ('cd', 68).length - 2:
                        if 1 > !var191002:
                            revert with 'NH{q', 17
                        idx = var193003 + 1
                        t = var193008
                        t = var193009
                        while idx < ('cd', 68).length:
                            require cd[((32 * idx) + cd[68] + 36)] == Mask(192, 64, cd[((32 * idx) + cd[68] + 36)])
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t) + cd[68] + 36)])
                            if 1 > !t:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(192, 64, cd[((32 * t) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * idx) + cd[68] + 36)]):
                                _3929 = mem[(32 * t + 1) + 128]
                                if t >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                _3937 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3937 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3937 + 36] = 0
                                mem[_3937 + 68] = _3929
                                mem[_3937 + 100] = address(cd[((32 * t + 1) + cd[100] + 36)])
                                mem[_3937 + 132] = 128
                                mem[_3937 + 164] = mem[_3937]
                                idx = 0
                                while idx < mem[_3937]:
                                    mem[idx + _3937 + 196] = mem[idx + _3937 + 32]
                                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                    mem[_3937 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                    staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                            gas gas_remaining wei
                                           args mem[_3937 + 36 len (32 * ('cd', 68).length) + -_3937 + 96]
                                    mem[_3937 + 32 len 96] = ext_call.return_data[0 len 96]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_3937]) <= mem[_3937]:
                                    require ext_code.size(address(cd[((32 * t) + cd[100] + 36)]))
                                    call address(cd[((32 * t) + cd[100] + 36)]).mem[_3937 + 32 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_3937 + 36 len 96], 128, mem[_3937], mem[_3937 + 196 len ceil32(mem[_3937])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if ('cd', 68).length < 2:
                                        revert with 'NH{q', 17
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 1 < ('cd', 68).length - 2:
                                        require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                        mem[_3937 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                        staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                                gas gas_remaining wei
                                               args mem[_3937 + 36 len (32 * ('cd', 68).length) + -_3937 + 96]
                                        mem[_3937 + 32 len 96] = ext_call.return_data[0 len 96]
                                        idx = t + 2
                                        t = 0
                                        t = t + 1
                                        continue 
                                    if t + 2 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)])
                                    if t + 1 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)])
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)]):
                                        _4289 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3937 + 64
                                        mem[_3937 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3937 + 68] = 0
                                        mem[_3937 + 100] = _4289
                                    else:
                                        _4290 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3937 + 64
                                        mem[_3937 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3937 + 68] = _4290
                                        mem[_3937 + 100] = 0
                                else:
                                    mem[mem[_3937] + _3937 + 196] = 0
                                    require ext_code.size(address(cd[((32 * t) + cd[100] + 36)]))
                                    call address(cd[((32 * t) + cd[100] + 36)]).mem[_3937 + 32 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_3937 + 36 len 96], 128, mem[_3937], mem[_3937 + 196 len ceil32(mem[_3937])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if ('cd', 68).length < 2:
                                        revert with 'NH{q', 17
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 1 < ('cd', 68).length - 2:
                                        require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                        mem[_3937 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                        staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                                gas gas_remaining wei
                                               args mem[_3937 + 36 len (32 * ('cd', 68).length) + -_3937 + 96]
                                        mem[_3937 + 32 len 96] = ext_call.return_data[0 len 96]
                                        idx = t + 2
                                        t = 0
                                        t = t + 1
                                        continue 
                                    if t + 2 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)])
                                    if t + 1 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)])
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)]):
                                        _4291 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3937 + 64
                                        mem[_3937 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3937 + 68] = 0
                                        mem[_3937 + 100] = _4291
                                    else:
                                        _4292 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3937 + 64
                                        mem[_3937 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3937 + 68] = _4292
                                        mem[_3937 + 100] = 0
                                mem[_3937 + 132] = this.address
                                mem[_3937 + 164] = 128
                                mem[_3937 + 196] = 0
                                idx = 0
                                while idx < 0:
                                    mem[idx + _3937 + 228] = mem[idx + _3937 + 64]
                                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                    mem[_3937 + 64] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                    staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                            gas gas_remaining wei
                                           args mem[_3937 + 68 len (32 * ('cd', 68).length) + -_3937 + 64]
                                    mem[_3937 + 64 len 96] = ext_call.return_data[0 len 96]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * t + 1) + cd[100] + 36)]))
                                call address(cd[((32 * t + 1) + cd[100] + 36)]).mem[_3937 + 64 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_3937 + 68 len 96], 128, 0
                            else:
                                _3930 = mem[(32 * t + 1) + 128]
                                if t >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                _3938 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3938 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3938 + 36] = _3930
                                mem[_3938 + 68] = 0
                                mem[_3938 + 100] = address(cd[((32 * t + 1) + cd[100] + 36)])
                                mem[_3938 + 132] = 128
                                mem[_3938 + 164] = mem[_3938]
                                idx = 0
                                while idx < mem[_3938]:
                                    mem[idx + _3938 + 196] = mem[idx + _3938 + 32]
                                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                    mem[_3938 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                    staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                            gas gas_remaining wei
                                           args mem[_3938 + 36 len (32 * ('cd', 68).length) + -_3938 + 96]
                                    mem[_3938 + 32 len 96] = ext_call.return_data[0 len 96]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_3938]) <= mem[_3938]:
                                    require ext_code.size(address(cd[((32 * t) + cd[100] + 36)]))
                                    call address(cd[((32 * t) + cd[100] + 36)]).mem[_3938 + 32 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_3938 + 36 len 96], 128, mem[_3938], mem[_3938 + 196 len ceil32(mem[_3938])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if ('cd', 68).length < 2:
                                        revert with 'NH{q', 17
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 1 < ('cd', 68).length - 2:
                                        require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                        mem[_3938 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                        staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                                gas gas_remaining wei
                                               args mem[_3938 + 36 len (32 * ('cd', 68).length) + -_3938 + 96]
                                        mem[_3938 + 32 len 96] = ext_call.return_data[0 len 96]
                                        idx = t + 2
                                        t = _3930
                                        t = t + 1
                                        continue 
                                    if t + 2 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)])
                                    if t + 1 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)])
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)]):
                                        _4293 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3938 + 64
                                        mem[_3938 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3938 + 68] = 0
                                        mem[_3938 + 100] = _4293
                                    else:
                                        _4294 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3938 + 64
                                        mem[_3938 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3938 + 68] = _4294
                                        mem[_3938 + 100] = 0
                                else:
                                    mem[mem[_3938] + _3938 + 196] = 0
                                    require ext_code.size(address(cd[((32 * t) + cd[100] + 36)]))
                                    call address(cd[((32 * t) + cd[100] + 36)]).mem[_3938 + 32 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_3938 + 36 len 96], 128, mem[_3938], mem[_3938 + 196 len ceil32(mem[_3938])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if ('cd', 68).length < 2:
                                        revert with 'NH{q', 17
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 1 < ('cd', 68).length - 2:
                                        require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                        mem[_3938 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                        staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                                gas gas_remaining wei
                                               args mem[_3938 + 36 len (32 * ('cd', 68).length) + -_3938 + 96]
                                        mem[_3938 + 32 len 96] = ext_call.return_data[0 len 96]
                                        idx = t + 2
                                        t = _3930
                                        t = t + 1
                                        continue 
                                    if t + 2 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)])
                                    if t + 1 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)])
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)]):
                                        _4295 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3938 + 64
                                        mem[_3938 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3938 + 68] = 0
                                        mem[_3938 + 100] = _4295
                                    else:
                                        _4296 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3938 + 64
                                        mem[_3938 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3938 + 68] = _4296
                                        mem[_3938 + 100] = 0
                                mem[_3938 + 132] = this.address
                                mem[_3938 + 164] = 128
                                mem[_3938 + 196] = 0
                                idx = 0
                                while idx < 0:
                                    mem[idx + _3938 + 228] = mem[idx + _3938 + 64]
                                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                    mem[_3938 + 64] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                    staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                            gas gas_remaining wei
                                           args mem[_3938 + 68 len (32 * ('cd', 68).length) + -_3938 + 64]
                                    mem[_3938 + 64 len 96] = ext_call.return_data[0 len 96]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * t + 1) + cd[100] + 36)]))
                                call address(cd[((32 * t + 1) + cd[100] + 36)]).mem[_3938 + 64 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_3938 + 68 len 96], 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        revert with 'NH{q', 50
                    if 1 > !var187004:
                        revert with 'NH{q', 17
                    if var187004 + 1 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * var187004 + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * var187004 + 1) + cd[68] + 36)])
                    if var187004 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * var187004) + cd[68] + 36)] == Mask(192, 64, cd[((32 * var187004) + cd[68] + 36)])
                    if 1 > !var187004:
                        revert with 'NH{q', 17
                    if var187004 + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if Mask(192, 64, cd[((32 * var187004) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * var187004 + 1) + cd[68] + 36)]):
                        _1953 = mem[(32 * var187004 + 1) + 128]
                        if var187004 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var187004) + cd[100] + 36)] == address(cd[((32 * var187004) + cd[100] + 36)])
                        _1969 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1969 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1969 + 36] = 0
                        mem[_1969 + 68] = _1953
                        mem[_1969 + 100] = this.address
                        mem[_1969 + 132] = 128
                        mem[_1969 + 164] = mem[_1969]
                        idx = 0
                        while idx < mem[_1969]:
                            mem[idx + _1969 + 196] = mem[idx + _1969 + 32]
                            require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                            mem[_1969 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                            staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                    gas gas_remaining wei
                                   args mem[_1969 + 36 len (32 * ('cd', 68).length) + -_1969 + 96]
                            mem[_1969 + 32 len 96] = ext_call.return_data[0 len 96]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[_1969]) > mem[_1969]:
                            mem[mem[_1969] + _1969 + 196] = 0
                        require ext_code.size(address(cd[((32 * var187004) + cd[100] + 36)]))
                        call address(cd[((32 * var187004) + cd[100] + 36)]).mem[_1969 + 32 len 4] with:
                             gas gas_remaining wei
                            args mem[_1969 + 36 len 96], 128, mem[_1969], mem[_1969 + 196 len ceil32(mem[_1969])]
                    else:
                        _1954 = mem[(32 * var187004 + 1) + 128]
                        if var187004 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var187004) + cd[100] + 36)] == address(cd[((32 * var187004) + cd[100] + 36)])
                        _1970 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1970 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1970 + 36] = _1954
                        mem[_1970 + 68] = 0
                        mem[_1970 + 100] = this.address
                        mem[_1970 + 132] = 128
                        mem[_1970 + 164] = mem[_1970]
                        idx = 0
                        while idx < mem[_1970]:
                            mem[idx + _1970 + 196] = mem[idx + _1970 + 32]
                            require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                            mem[_1970 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                            staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                    gas gas_remaining wei
                                   args mem[_1970 + 36 len (32 * ('cd', 68).length) + -_1970 + 96]
                            mem[_1970 + 32 len 96] = ext_call.return_data[0 len 96]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[_1970]) > mem[_1970]:
                            mem[mem[_1970] + _1970 + 196] = 0
                        require ext_code.size(address(cd[((32 * var187004) + cd[100] + 36)]))
                        call address(cd[((32 * var187004) + cd[100] + 36)]).mem[_1970 + 32 len 4] with:
                             gas gas_remaining wei
                            args mem[_1970 + 36 len 96], 128, mem[_1970], mem[_1970 + 196 len ceil32(mem[_1970])]
                else:
                    if mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64 and mem[_917 + 18 len 14] > -1 / mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64:
                        revert with 'NH{q', 17
                    if mem[_917 + 50 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * mem[_917 + 50 len 14] > !(mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64):
                        revert with 'NH{q', 17
                    if not (10000 * mem[_917 + 50 len 14]) + (mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64):
                        revert with 'NH{q', 18
                    if 1 > !t:
                        revert with 'NH{q', 17
                    if t + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + 128] = mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64 * mem[_917 + 18 len 14] / (10000 * mem[_917 + 50 len 14]) + (mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64)
                    if t == -1:
                        revert with 'NH{q', 17
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if t + 1 < ('cd', 68).length - 1:
                        if t + 1 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t + 2) + cd[100] + 36)] == address(cd[((32 * t + 2) + cd[100] + 36)])
                        mem[mem[64]] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(cd[((32 * t + 2) + cd[100] + 36)]))
                        staticcall address(cd[((32 * t + 2) + cd[100] + 36)]).getReserves() with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (32 * ('cd', 68).length) + -mem[64] + 128]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        s = t + 1
                        t = t + 1
                        continue 
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[96] - 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[(32 * mem[96] - 1) + 128] < cd[36]:
                        revert with 0, 'MIN_OUT'
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[0] == Mask(192, 64, ('cd', 68)[0])
                    if not ('cd', 100).length:
                        revert with 'NH{q', 50
                    require ('cd', 100)[0] == address(('cd', 100)[0])
                    mem[mem[64] + 4] = address(('cd', 100)[0])
                    mem[mem[64] + 36] = cd[4]
                    require ext_code.size(address(('cd', 68)[0]) >> 96)
                    call address(('cd', 68)[0]) >> 96.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(('cd', 100)[0]), cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1027 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1027] == bool(mem[_1027])
                    if ('cd', 68).length < 2:
                        revert with 'NH{q', 17
                    if var188004 < ('cd', 68).length - 2:
                        if 1 > !var192002:
                            revert with 'NH{q', 17
                        idx = var194003 + 1
                        t = var194008
                        t = var194009
                        while idx < ('cd', 68).length:
                            require cd[((32 * idx) + cd[68] + 36)] == Mask(192, 64, cd[((32 * idx) + cd[68] + 36)])
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t) + cd[68] + 36)])
                            if 1 > !t:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(192, 64, cd[((32 * t) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * idx) + cd[68] + 36)]):
                                _3931 = mem[(32 * t + 1) + 128]
                                if t >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                _3939 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3939 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3939 + 36] = 0
                                mem[_3939 + 68] = _3931
                                mem[_3939 + 100] = address(cd[((32 * t + 1) + cd[100] + 36)])
                                mem[_3939 + 132] = 128
                                mem[_3939 + 164] = mem[_3939]
                                idx = 0
                                while idx < mem[_3939]:
                                    mem[idx + _3939 + 196] = mem[idx + _3939 + 32]
                                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                    mem[_3939 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                    staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                            gas gas_remaining wei
                                           args mem[_3939 + 36 len (32 * ('cd', 68).length) + -_3939 + 96]
                                    mem[_3939 + 32 len 96] = ext_call.return_data[0 len 96]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_3939]) <= mem[_3939]:
                                    require ext_code.size(address(cd[((32 * t) + cd[100] + 36)]))
                                    call address(cd[((32 * t) + cd[100] + 36)]).mem[_3939 + 32 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_3939 + 36 len 96], 128, mem[_3939], mem[_3939 + 196 len ceil32(mem[_3939])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if ('cd', 68).length < 2:
                                        revert with 'NH{q', 17
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 1 < ('cd', 68).length - 2:
                                        require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                        mem[_3939 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                        staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                                gas gas_remaining wei
                                               args mem[_3939 + 36 len (32 * ('cd', 68).length) + -_3939 + 96]
                                        mem[_3939 + 32 len 96] = ext_call.return_data[0 len 96]
                                        idx = t + 2
                                        t = 0
                                        t = t + 1
                                        continue 
                                    if t + 2 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)])
                                    if t + 1 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)])
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)]):
                                        _4297 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3939 + 64
                                        mem[_3939 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3939 + 68] = 0
                                        mem[_3939 + 100] = _4297
                                    else:
                                        _4298 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3939 + 64
                                        mem[_3939 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3939 + 68] = _4298
                                        mem[_3939 + 100] = 0
                                else:
                                    mem[mem[_3939] + _3939 + 196] = 0
                                    require ext_code.size(address(cd[((32 * t) + cd[100] + 36)]))
                                    call address(cd[((32 * t) + cd[100] + 36)]).mem[_3939 + 32 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_3939 + 36 len 96], 128, mem[_3939], mem[_3939 + 196 len ceil32(mem[_3939])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if ('cd', 68).length < 2:
                                        revert with 'NH{q', 17
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 1 < ('cd', 68).length - 2:
                                        require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                        mem[_3939 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                        staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                                gas gas_remaining wei
                                               args mem[_3939 + 36 len (32 * ('cd', 68).length) + -_3939 + 96]
                                        mem[_3939 + 32 len 96] = ext_call.return_data[0 len 96]
                                        idx = t + 2
                                        t = 0
                                        t = t + 1
                                        continue 
                                    if t + 2 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)])
                                    if t + 1 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)])
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)]):
                                        _4299 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3939 + 64
                                        mem[_3939 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3939 + 68] = 0
                                        mem[_3939 + 100] = _4299
                                    else:
                                        _4300 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3939 + 64
                                        mem[_3939 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3939 + 68] = _4300
                                        mem[_3939 + 100] = 0
                                mem[_3939 + 132] = this.address
                                mem[_3939 + 164] = 128
                                mem[_3939 + 196] = 0
                                idx = 0
                                while idx < 0:
                                    mem[idx + _3939 + 228] = mem[idx + _3939 + 64]
                                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                    mem[_3939 + 64] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                    staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                            gas gas_remaining wei
                                           args mem[_3939 + 68 len (32 * ('cd', 68).length) + -_3939 + 64]
                                    mem[_3939 + 64 len 96] = ext_call.return_data[0 len 96]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * t + 1) + cd[100] + 36)]))
                                call address(cd[((32 * t + 1) + cd[100] + 36)]).mem[_3939 + 64 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_3939 + 68 len 96], 128, 0
                            else:
                                _3932 = mem[(32 * t + 1) + 128]
                                if t >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                _3940 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3940 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3940 + 36] = _3932
                                mem[_3940 + 68] = 0
                                mem[_3940 + 100] = address(cd[((32 * t + 1) + cd[100] + 36)])
                                mem[_3940 + 132] = 128
                                mem[_3940 + 164] = mem[_3940]
                                idx = 0
                                while idx < mem[_3940]:
                                    mem[idx + _3940 + 196] = mem[idx + _3940 + 32]
                                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                    mem[_3940 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                    staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                            gas gas_remaining wei
                                           args mem[_3940 + 36 len (32 * ('cd', 68).length) + -_3940 + 96]
                                    mem[_3940 + 32 len 96] = ext_call.return_data[0 len 96]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_3940]) <= mem[_3940]:
                                    require ext_code.size(address(cd[((32 * t) + cd[100] + 36)]))
                                    call address(cd[((32 * t) + cd[100] + 36)]).mem[_3940 + 32 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_3940 + 36 len 96], 128, mem[_3940], mem[_3940 + 196 len ceil32(mem[_3940])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if ('cd', 68).length < 2:
                                        revert with 'NH{q', 17
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 1 < ('cd', 68).length - 2:
                                        require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                        mem[_3940 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                        staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                                gas gas_remaining wei
                                               args mem[_3940 + 36 len (32 * ('cd', 68).length) + -_3940 + 96]
                                        mem[_3940 + 32 len 96] = ext_call.return_data[0 len 96]
                                        idx = t + 2
                                        t = _3932
                                        t = t + 1
                                        continue 
                                    if t + 2 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)])
                                    if t + 1 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)])
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)]):
                                        _4301 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3940 + 64
                                        mem[_3940 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3940 + 68] = 0
                                        mem[_3940 + 100] = _4301
                                    else:
                                        _4302 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3940 + 64
                                        mem[_3940 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3940 + 68] = _4302
                                        mem[_3940 + 100] = 0
                                else:
                                    mem[mem[_3940] + _3940 + 196] = 0
                                    require ext_code.size(address(cd[((32 * t) + cd[100] + 36)]))
                                    call address(cd[((32 * t) + cd[100] + 36)]).mem[_3940 + 32 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_3940 + 36 len 96], 128, mem[_3940], mem[_3940 + 196 len ceil32(mem[_3940])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if ('cd', 68).length < 2:
                                        revert with 'NH{q', 17
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 1 < ('cd', 68).length - 2:
                                        require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                        mem[_3940 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                        staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                                gas gas_remaining wei
                                               args mem[_3940 + 36 len (32 * ('cd', 68).length) + -_3940 + 96]
                                        mem[_3940 + 32 len 96] = ext_call.return_data[0 len 96]
                                        idx = t + 2
                                        t = _3932
                                        t = t + 1
                                        continue 
                                    if t + 2 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)])
                                    if t + 1 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)])
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)]):
                                        _4303 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3940 + 64
                                        mem[_3940 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3940 + 68] = 0
                                        mem[_3940 + 100] = _4303
                                    else:
                                        _4304 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3940 + 64
                                        mem[_3940 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3940 + 68] = _4304
                                        mem[_3940 + 100] = 0
                                mem[_3940 + 132] = this.address
                                mem[_3940 + 164] = 128
                                mem[_3940 + 196] = 0
                                idx = 0
                                while idx < 0:
                                    mem[idx + _3940 + 228] = mem[idx + _3940 + 64]
                                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                    mem[_3940 + 64] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                    staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                            gas gas_remaining wei
                                           args mem[_3940 + 68 len (32 * ('cd', 68).length) + -_3940 + 64]
                                    mem[_3940 + 64 len 96] = ext_call.return_data[0 len 96]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * t + 1) + cd[100] + 36)]))
                                call address(cd[((32 * t + 1) + cd[100] + 36)]).mem[_3940 + 64 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_3940 + 68 len 96], 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        revert with 'NH{q', 50
                    if 1 > !var188004:
                        revert with 'NH{q', 17
                    if var188004 + 1 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * var188004 + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * var188004 + 1) + cd[68] + 36)])
                    if var188004 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * var188004) + cd[68] + 36)] == Mask(192, 64, cd[((32 * var188004) + cd[68] + 36)])
                    if 1 > !var188004:
                        revert with 'NH{q', 17
                    if var188004 + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if Mask(192, 64, cd[((32 * var188004) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * var188004 + 1) + cd[68] + 36)]):
                        _1957 = mem[(32 * var188004 + 1) + 128]
                        if var188004 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var188004) + cd[100] + 36)] == address(cd[((32 * var188004) + cd[100] + 36)])
                        _1971 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1971 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1971 + 36] = 0
                        mem[_1971 + 68] = _1957
                        mem[_1971 + 100] = this.address
                        mem[_1971 + 132] = 128
                        mem[_1971 + 164] = mem[_1971]
                        idx = 0
                        while idx < mem[_1971]:
                            mem[idx + _1971 + 196] = mem[idx + _1971 + 32]
                            require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                            mem[_1971 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                            staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                    gas gas_remaining wei
                                   args mem[_1971 + 36 len (32 * ('cd', 68).length) + -_1971 + 96]
                            mem[_1971 + 32 len 96] = ext_call.return_data[0 len 96]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[_1971]) > mem[_1971]:
                            mem[mem[_1971] + _1971 + 196] = 0
                        require ext_code.size(address(cd[((32 * var188004) + cd[100] + 36)]))
                        call address(cd[((32 * var188004) + cd[100] + 36)]).mem[_1971 + 32 len 4] with:
                             gas gas_remaining wei
                            args mem[_1971 + 36 len 96], 128, mem[_1971], mem[_1971 + 196 len ceil32(mem[_1971])]
                    else:
                        _1958 = mem[(32 * var188004 + 1) + 128]
                        if var188004 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var188004) + cd[100] + 36)] == address(cd[((32 * var188004) + cd[100] + 36)])
                        _1972 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1972 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1972 + 36] = _1958
                        mem[_1972 + 68] = 0
                        mem[_1972 + 100] = this.address
                        mem[_1972 + 132] = 128
                        mem[_1972 + 164] = mem[_1972]
                        idx = 0
                        while idx < mem[_1972]:
                            mem[idx + _1972 + 196] = mem[idx + _1972 + 32]
                            require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                            mem[_1972 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                            staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                    gas gas_remaining wei
                                   args mem[_1972 + 36 len (32 * ('cd', 68).length) + -_1972 + 96]
                            mem[_1972 + 32 len 96] = ext_call.return_data[0 len 96]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[_1972]) > mem[_1972]:
                            mem[mem[_1972] + _1972 + 196] = 0
                        require ext_code.size(address(cd[((32 * var188004) + cd[100] + 36)]))
                        call address(cd[((32 * var188004) + cd[100] + 36)]).mem[_1972 + 32 len 4] with:
                             gas gas_remaining wei
                            args mem[_1972 + 36 len 96], 128, mem[_1972], mem[_1972 + 196 len ceil32(mem[_1972])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            revert with ext_call.return_data[0 len return_data.size]
        if ('cd', 68).length < 1:
            revert with 'NH{q', 17
        if ('cd', 68).length - 1 >= ('cd', 68).length:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 68).length - 1) + 128] < cd[36]:
            revert with 0, 'MIN_OUT'
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require ('cd', 68)[0] == Mask(192, 64, ('cd', 68)[0])
        if not ('cd', 100).length:
            revert with 'NH{q', 50
        require ('cd', 100)[0] == address(('cd', 100)[0])
        mem[(32 * ('cd', 68).length) + 132] = address(('cd', 100)[0])
        mem[(32 * ('cd', 68).length) + 164] = cd[4]
        require ext_code.size(address(('cd', 68)[0]) >> 96)
        call address(('cd', 68)[0]) >> 96.0xa9059cbb with:
             gas gas_remaining wei
            args address(('cd', 100)[0]), cd[4]
        mem[(32 * ('cd', 68).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * ('cd', 68).length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ('cd', 68).length < 2:
            revert with 'NH{q', 17
        if var114004 < ('cd', 68).length - 2:
            if 1 > !var118002:
                revert with 'NH{q', 17
            idx = var120003 + 1
            s = var120008
            s = var120009
            while idx < ('cd', 68).length:
                require cd[((32 * idx) + cd[68] + 36)] == Mask(192, 64, cd[((32 * idx) + cd[68] + 36)])
                if s >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * s) + cd[68] + 36)] == Mask(192, 64, cd[((32 * s) + cd[68] + 36)])
                if 1 > !s:
                    revert with 'NH{q', 17
                if s + 1 >= mem[96]:
                    revert with 'NH{q', 50
                if Mask(192, 64, cd[((32 * s) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * idx) + cd[68] + 36)]):
                    _2957 = mem[(32 * s + 1) + 128]
                    if s >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                    if 1 > !s:
                        revert with 'NH{q', 17
                    if s + 1 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
                    _2977 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_2977 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2977 + 36] = 0
                    mem[_2977 + 68] = _2957
                    mem[_2977 + 100] = address(cd[((32 * s + 1) + cd[100] + 36)])
                    mem[_2977 + 132] = 128
                    mem[_2977 + 164] = mem[_2977]
                    idx = 0
                    while idx < mem[_2977]:
                        mem[idx + _2977 + 196] = mem[idx + _2977 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[_2977]) <= mem[_2977]:
                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                        call address(cd[((32 * s) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2957, address(cd[((32 * s + 1) + cd[100] + 36)]), 128, mem[_2977], mem[_2977 + 196 len ceil32(mem[_2977])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s == -1:
                            revert with 'NH{q', 17
                        if ('cd', 68).length < 2:
                            revert with 'NH{q', 17
                        if 1 > !(s + 1):
                            revert with 'NH{q', 17
                        if s + 1 < ('cd', 68).length - 2:
                            idx = s + 2
                            s = 0
                            s = s + 1
                            continue 
                        if s + 2 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * s + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * s + 2) + cd[68] + 36)])
                        if s + 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * s + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * s + 1) + cd[68] + 36)])
                        if 1 > !(s + 1):
                            revert with 'NH{q', 17
                        if s + 2 >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(192, 64, cd[((32 * s + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * s + 2) + cd[68] + 36)]):
                            _3465 = mem[(32 * s + 2) + 128]
                            if s + 1 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
                            mem[_2977 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2977 + 68] = 0
                            idx = 0
                            while idx < 0:
                                mem[idx + _2977 + 228] = mem[idx + _2977 + 64]
                                idx = idx + 32
                                continue 
                            require ext_code.size(address(cd[((32 * s + 1) + cd[100] + 36)]))
                            call address(cd[((32 * s + 1) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3465, address(this.address), 128, 0
                        else:
                            _3466 = mem[(32 * s + 2) + 128]
                            if s + 1 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
                            mem[_2977 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2977 + 68] = _3466
                            idx = 0
                            while idx < 0:
                                mem[idx + _2977 + 228] = mem[idx + _2977 + 64]
                                idx = idx + 32
                                continue 
                            require ext_code.size(address(cd[((32 * s + 1) + cd[100] + 36)]))
                            call address(cd[((32 * s + 1) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3466, 0, address(this.address), 128, 0
                    else:
                        mem[mem[_2977] + _2977 + 196] = 0
                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                        call address(cd[((32 * s) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2957, address(cd[((32 * s + 1) + cd[100] + 36)]), 128, mem[_2977], mem[_2977 + 196 len ceil32(mem[_2977])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s == -1:
                            revert with 'NH{q', 17
                        if ('cd', 68).length < 2:
                            revert with 'NH{q', 17
                        if 1 > !(s + 1):
                            revert with 'NH{q', 17
                        if s + 1 < ('cd', 68).length - 2:
                            idx = s + 2
                            s = 0
                            s = s + 1
                            continue 
                        if s + 2 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * s + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * s + 2) + cd[68] + 36)])
                        if s + 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * s + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * s + 1) + cd[68] + 36)])
                        if 1 > !(s + 1):
                            revert with 'NH{q', 17
                        if s + 2 >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(192, 64, cd[((32 * s + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * s + 2) + cd[68] + 36)]):
                            _3467 = mem[(32 * s + 2) + 128]
                            if s + 1 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
                            mem[_2977 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2977 + 68] = 0
                            idx = 0
                            while idx < 0:
                                mem[idx + _2977 + 228] = mem[idx + _2977 + 64]
                                idx = idx + 32
                                continue 
                            require ext_code.size(address(cd[((32 * s + 1) + cd[100] + 36)]))
                            call address(cd[((32 * s + 1) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3467, address(this.address), 128, 0
                        else:
                            _3468 = mem[(32 * s + 2) + 128]
                            if s + 1 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
                            mem[_2977 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2977 + 68] = _3468
                            idx = 0
                            while idx < 0:
                                mem[idx + _2977 + 228] = mem[idx + _2977 + 64]
                                idx = idx + 32
                                continue 
                            require ext_code.size(address(cd[((32 * s + 1) + cd[100] + 36)]))
                            call address(cd[((32 * s + 1) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3468, 0, address(this.address), 128, 0
                else:
                    _2958 = mem[(32 * s + 1) + 128]
                    if s >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                    if 1 > !s:
                        revert with 'NH{q', 17
                    if s + 1 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
                    _2978 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_2978 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2978 + 36] = _2958
                    mem[_2978 + 68] = 0
                    mem[_2978 + 100] = address(cd[((32 * s + 1) + cd[100] + 36)])
                    mem[_2978 + 132] = 128
                    mem[_2978 + 164] = mem[_2978]
                    idx = 0
                    while idx < mem[_2978]:
                        mem[idx + _2978 + 196] = mem[idx + _2978 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[_2978]) <= mem[_2978]:
                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                        call address(cd[((32 * s) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2958, 0, address(cd[((32 * s + 1) + cd[100] + 36)]), 128, mem[_2978], mem[_2978 + 196 len ceil32(mem[_2978])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s == -1:
                            revert with 'NH{q', 17
                        if ('cd', 68).length < 2:
                            revert with 'NH{q', 17
                        if 1 > !(s + 1):
                            revert with 'NH{q', 17
                        if s + 1 < ('cd', 68).length - 2:
                            idx = s + 2
                            s = _2958
                            s = s + 1
                            continue 
                        if s + 2 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * s + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * s + 2) + cd[68] + 36)])
                        if s + 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * s + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * s + 1) + cd[68] + 36)])
                        if 1 > !(s + 1):
                            revert with 'NH{q', 17
                        if s + 2 >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(192, 64, cd[((32 * s + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * s + 2) + cd[68] + 36)]):
                            _3469 = mem[(32 * s + 2) + 128]
                            if s + 1 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
                            mem[_2978 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2978 + 68] = 0
                            idx = 0
                            while idx < 0:
                                mem[idx + _2978 + 228] = mem[idx + _2978 + 64]
                                idx = idx + 32
                                continue 
                            require ext_code.size(address(cd[((32 * s + 1) + cd[100] + 36)]))
                            call address(cd[((32 * s + 1) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3469, address(this.address), 128, 0
                        else:
                            _3470 = mem[(32 * s + 2) + 128]
                            if s + 1 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
                            mem[_2978 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2978 + 68] = _3470
                            idx = 0
                            while idx < 0:
                                mem[idx + _2978 + 228] = mem[idx + _2978 + 64]
                                idx = idx + 32
                                continue 
                            require ext_code.size(address(cd[((32 * s + 1) + cd[100] + 36)]))
                            call address(cd[((32 * s + 1) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3470, 0, address(this.address), 128, 0
                    else:
                        mem[mem[_2978] + _2978 + 196] = 0
                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                        call address(cd[((32 * s) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2958, 0, address(cd[((32 * s + 1) + cd[100] + 36)]), 128, mem[_2978], mem[_2978 + 196 len ceil32(mem[_2978])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s == -1:
                            revert with 'NH{q', 17
                        if ('cd', 68).length < 2:
                            revert with 'NH{q', 17
                        if 1 > !(s + 1):
                            revert with 'NH{q', 17
                        if s + 1 < ('cd', 68).length - 2:
                            idx = s + 2
                            s = _2958
                            s = s + 1
                            continue 
                        if s + 2 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * s + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * s + 2) + cd[68] + 36)])
                        if s + 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * s + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * s + 1) + cd[68] + 36)])
                        if 1 > !(s + 1):
                            revert with 'NH{q', 17
                        if s + 2 >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(192, 64, cd[((32 * s + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * s + 2) + cd[68] + 36)]):
                            _3471 = mem[(32 * s + 2) + 128]
                            if s + 1 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
                            mem[_2978 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2978 + 68] = 0
                            idx = 0
                            while idx < 0:
                                mem[idx + _2978 + 228] = mem[idx + _2978 + 64]
                                idx = idx + 32
                                continue 
                            require ext_code.size(address(cd[((32 * s + 1) + cd[100] + 36)]))
                            call address(cd[((32 * s + 1) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3471, address(this.address), 128, 0
                        else:
                            _3472 = mem[(32 * s + 2) + 128]
                            if s + 1 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
                            mem[_2978 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2978 + 68] = _3472
                            idx = 0
                            while idx < 0:
                                mem[idx + _2978 + 228] = mem[idx + _2978 + 64]
                                idx = idx + 32
                                continue 
                            require ext_code.size(address(cd[((32 * s + 1) + cd[100] + 36)]))
                            call address(cd[((32 * s + 1) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3472, 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            revert with 'NH{q', 50
        if 1 > !var114004:
            revert with 'NH{q', 17
        if var114004 + 1 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * var114004 + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * var114004 + 1) + cd[68] + 36)])
        if var114004 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * var114004) + cd[68] + 36)] == Mask(192, 64, cd[((32 * var114004) + cd[68] + 36)])
        if 1 > !var114004:
            revert with 'NH{q', 17
        if var114004 + 1 >= ('cd', 68).length:
            revert with 'NH{q', 50
        if var114004 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require cd[((32 * var114004) + cd[100] + 36)] == address(cd[((32 * var114004) + cd[100] + 36)])
        require ext_code.size(address(cd[((32 * var114004) + cd[100] + 36)]))
        if Mask(192, 64, cd[((32 * var114004) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * var114004 + 1) + cd[68] + 36)]):
            call address(cd[((32 * var114004) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, mem[(32 * var114004 + 1) + 128], address(this.address), 128, 0
        else:
            call address(cd[((32 * var114004) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[(32 * var114004 + 1) + 128], 0, address(this.address), 128, 0
    else:
        mem[128 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        mem[128] = cd[4]
        if ('cd', 68).length < 1:
            revert with 'NH{q', 17
        if var102002 < ('cd', 68).length - 1:
            if var104001 >= ('cd', 100).length:
                revert with 'NH{q', 50
            require cd[((32 * var104001) + cd[100] + 36)] == address(cd[((32 * var104001) + cd[100] + 36)])
            require ext_code.size(address(cd[((32 * var104001) + cd[100] + 36)]))
            staticcall address(cd[((32 * var104001) + cd[100] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 68).length) + 128 len 96] = ext_call.return_data[0 len 96]
            s = var104001
            t = var104001
            while ext_call.success:
                _918 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_918] == mem[_918 + 18 len 14]
                require mem[_918 + 32] == mem[_918 + 50 len 14]
                require mem[_918 + 64] == mem[_918 + 92 len 4]
                if 1 > !t:
                    revert with 'NH{q', 17
                if t + 1 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * t + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)])
                if t >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * t) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t) + cd[68] + 36)])
                if t >= mem[96]:
                    revert with 'NH{q', 50
                if 1 > !t:
                    revert with 'NH{q', 17
                if t + 1 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * t + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)])
                if mem[(32 * t) + 128] and Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64 > -1 / mem[(32 * t) + 128]:
                    revert with 'NH{q', 17
                if Mask(192, 64, cd[((32 * t) + cd[68] + 36)]) <= Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)]):
                    if mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64 and mem[_918 + 50 len 14] > -1 / mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64:
                        revert with 'NH{q', 17
                    if mem[_918 + 18 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * mem[_918 + 18 len 14] > !(mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64):
                        revert with 'NH{q', 17
                    if not (10000 * mem[_918 + 18 len 14]) + (mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64):
                        revert with 'NH{q', 18
                    if 1 > !t:
                        revert with 'NH{q', 17
                    if t + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + 128] = mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64 * mem[_918 + 50 len 14] / (10000 * mem[_918 + 18 len 14]) + (mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64)
                    if t == -1:
                        revert with 'NH{q', 17
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if t + 1 < ('cd', 68).length - 1:
                        if t + 1 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t + 2) + cd[100] + 36)] == address(cd[((32 * t + 2) + cd[100] + 36)])
                        mem[mem[64]] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(cd[((32 * t + 2) + cd[100] + 36)]))
                        staticcall address(cd[((32 * t + 2) + cd[100] + 36)]).getReserves() with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (32 * ('cd', 68).length) + -mem[64] + 128]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        s = t + 1
                        t = t + 1
                        continue 
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[96] - 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[(32 * mem[96] - 1) + 128] < cd[36]:
                        revert with 0, 'MIN_OUT'
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[0] == Mask(192, 64, ('cd', 68)[0])
                    if not ('cd', 100).length:
                        revert with 'NH{q', 50
                    require ('cd', 100)[0] == address(('cd', 100)[0])
                    mem[mem[64] + 4] = address(('cd', 100)[0])
                    mem[mem[64] + 36] = cd[4]
                    require ext_code.size(address(('cd', 68)[0]) >> 96)
                    call address(('cd', 68)[0]) >> 96.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(('cd', 100)[0]), cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1026 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1026] == bool(mem[_1026])
                    if ('cd', 68).length < 2:
                        revert with 'NH{q', 17
                    if var188004 < ('cd', 68).length - 2:
                        if 1 > !var192002:
                            revert with 'NH{q', 17
                        idx = var194003 + 1
                        t = var194008
                        t = var194009
                        while idx < ('cd', 68).length:
                            require cd[((32 * idx) + cd[68] + 36)] == Mask(192, 64, cd[((32 * idx) + cd[68] + 36)])
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t) + cd[68] + 36)])
                            if 1 > !t:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(192, 64, cd[((32 * t) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * idx) + cd[68] + 36)]):
                                _3933 = mem[(32 * t + 1) + 128]
                                if t >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                _3941 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3941 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3941 + 36] = 0
                                mem[_3941 + 68] = _3933
                                mem[_3941 + 100] = address(cd[((32 * t + 1) + cd[100] + 36)])
                                mem[_3941 + 132] = 128
                                mem[_3941 + 164] = mem[_3941]
                                idx = 0
                                while idx < mem[_3941]:
                                    mem[idx + _3941 + 196] = mem[idx + _3941 + 32]
                                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                    mem[_3941 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                    staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                            gas gas_remaining wei
                                           args mem[_3941 + 36 len (32 * ('cd', 68).length) + -_3941 + 96]
                                    mem[_3941 + 32 len 96] = ext_call.return_data[0 len 96]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_3941]) <= mem[_3941]:
                                    require ext_code.size(address(cd[((32 * t) + cd[100] + 36)]))
                                    call address(cd[((32 * t) + cd[100] + 36)]).mem[_3941 + 32 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_3941 + 36 len 96], 128, mem[_3941], mem[_3941 + 196 len ceil32(mem[_3941])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if ('cd', 68).length < 2:
                                        revert with 'NH{q', 17
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 1 < ('cd', 68).length - 2:
                                        require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                        mem[_3941 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                        staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                                gas gas_remaining wei
                                               args mem[_3941 + 36 len (32 * ('cd', 68).length) + -_3941 + 96]
                                        mem[_3941 + 32 len 96] = ext_call.return_data[0 len 96]
                                        idx = t + 2
                                        t = 0
                                        t = t + 1
                                        continue 
                                    if t + 2 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)])
                                    if t + 1 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)])
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)]):
                                        _4305 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3941 + 64
                                        mem[_3941 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3941 + 68] = 0
                                        mem[_3941 + 100] = _4305
                                    else:
                                        _4306 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3941 + 64
                                        mem[_3941 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3941 + 68] = _4306
                                        mem[_3941 + 100] = 0
                                else:
                                    mem[mem[_3941] + _3941 + 196] = 0
                                    require ext_code.size(address(cd[((32 * t) + cd[100] + 36)]))
                                    call address(cd[((32 * t) + cd[100] + 36)]).mem[_3941 + 32 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_3941 + 36 len 96], 128, mem[_3941], mem[_3941 + 196 len ceil32(mem[_3941])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if ('cd', 68).length < 2:
                                        revert with 'NH{q', 17
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 1 < ('cd', 68).length - 2:
                                        require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                        mem[_3941 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                        staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                                gas gas_remaining wei
                                               args mem[_3941 + 36 len (32 * ('cd', 68).length) + -_3941 + 96]
                                        mem[_3941 + 32 len 96] = ext_call.return_data[0 len 96]
                                        idx = t + 2
                                        t = 0
                                        t = t + 1
                                        continue 
                                    if t + 2 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)])
                                    if t + 1 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)])
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)]):
                                        _4307 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3941 + 64
                                        mem[_3941 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3941 + 68] = 0
                                        mem[_3941 + 100] = _4307
                                    else:
                                        _4308 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3941 + 64
                                        mem[_3941 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3941 + 68] = _4308
                                        mem[_3941 + 100] = 0
                                mem[_3941 + 132] = this.address
                                mem[_3941 + 164] = 128
                                mem[_3941 + 196] = 0
                                idx = 0
                                while idx < 0:
                                    mem[idx + _3941 + 228] = mem[idx + _3941 + 64]
                                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                    mem[_3941 + 64] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                    staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                            gas gas_remaining wei
                                           args mem[_3941 + 68 len (32 * ('cd', 68).length) + -_3941 + 64]
                                    mem[_3941 + 64 len 96] = ext_call.return_data[0 len 96]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * t + 1) + cd[100] + 36)]))
                                call address(cd[((32 * t + 1) + cd[100] + 36)]).mem[_3941 + 64 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_3941 + 68 len 96], 128, 0
                            else:
                                _3934 = mem[(32 * t + 1) + 128]
                                if t >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                _3942 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3942 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3942 + 36] = _3934
                                mem[_3942 + 68] = 0
                                mem[_3942 + 100] = address(cd[((32 * t + 1) + cd[100] + 36)])
                                mem[_3942 + 132] = 128
                                mem[_3942 + 164] = mem[_3942]
                                idx = 0
                                while idx < mem[_3942]:
                                    mem[idx + _3942 + 196] = mem[idx + _3942 + 32]
                                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                    mem[_3942 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                    staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                            gas gas_remaining wei
                                           args mem[_3942 + 36 len (32 * ('cd', 68).length) + -_3942 + 96]
                                    mem[_3942 + 32 len 96] = ext_call.return_data[0 len 96]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_3942]) <= mem[_3942]:
                                    require ext_code.size(address(cd[((32 * t) + cd[100] + 36)]))
                                    call address(cd[((32 * t) + cd[100] + 36)]).mem[_3942 + 32 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_3942 + 36 len 96], 128, mem[_3942], mem[_3942 + 196 len ceil32(mem[_3942])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if ('cd', 68).length < 2:
                                        revert with 'NH{q', 17
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 1 < ('cd', 68).length - 2:
                                        require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                        mem[_3942 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                        staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                                gas gas_remaining wei
                                               args mem[_3942 + 36 len (32 * ('cd', 68).length) + -_3942 + 96]
                                        mem[_3942 + 32 len 96] = ext_call.return_data[0 len 96]
                                        idx = t + 2
                                        t = _3934
                                        t = t + 1
                                        continue 
                                    if t + 2 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)])
                                    if t + 1 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)])
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)]):
                                        _4309 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3942 + 64
                                        mem[_3942 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3942 + 68] = 0
                                        mem[_3942 + 100] = _4309
                                    else:
                                        _4310 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3942 + 64
                                        mem[_3942 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3942 + 68] = _4310
                                        mem[_3942 + 100] = 0
                                else:
                                    mem[mem[_3942] + _3942 + 196] = 0
                                    require ext_code.size(address(cd[((32 * t) + cd[100] + 36)]))
                                    call address(cd[((32 * t) + cd[100] + 36)]).mem[_3942 + 32 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_3942 + 36 len 96], 128, mem[_3942], mem[_3942 + 196 len ceil32(mem[_3942])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if ('cd', 68).length < 2:
                                        revert with 'NH{q', 17
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 1 < ('cd', 68).length - 2:
                                        require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                        mem[_3942 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                        staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                                gas gas_remaining wei
                                               args mem[_3942 + 36 len (32 * ('cd', 68).length) + -_3942 + 96]
                                        mem[_3942 + 32 len 96] = ext_call.return_data[0 len 96]
                                        idx = t + 2
                                        t = _3934
                                        t = t + 1
                                        continue 
                                    if t + 2 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)])
                                    if t + 1 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)])
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)]):
                                        _4311 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3942 + 64
                                        mem[_3942 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3942 + 68] = 0
                                        mem[_3942 + 100] = _4311
                                    else:
                                        _4312 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3942 + 64
                                        mem[_3942 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3942 + 68] = _4312
                                        mem[_3942 + 100] = 0
                                mem[_3942 + 132] = this.address
                                mem[_3942 + 164] = 128
                                mem[_3942 + 196] = 0
                                idx = 0
                                while idx < 0:
                                    mem[idx + _3942 + 228] = mem[idx + _3942 + 64]
                                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                    mem[_3942 + 64] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                    staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                            gas gas_remaining wei
                                           args mem[_3942 + 68 len (32 * ('cd', 68).length) + -_3942 + 64]
                                    mem[_3942 + 64 len 96] = ext_call.return_data[0 len 96]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * t + 1) + cd[100] + 36)]))
                                call address(cd[((32 * t + 1) + cd[100] + 36)]).mem[_3942 + 64 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_3942 + 68 len 96], 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        revert with 'NH{q', 50
                    if 1 > !var188004:
                        revert with 'NH{q', 17
                    if var188004 + 1 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * var188004 + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * var188004 + 1) + cd[68] + 36)])
                    if var188004 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * var188004) + cd[68] + 36)] == Mask(192, 64, cd[((32 * var188004) + cd[68] + 36)])
                    if 1 > !var188004:
                        revert with 'NH{q', 17
                    if var188004 + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if Mask(192, 64, cd[((32 * var188004) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * var188004 + 1) + cd[68] + 36)]):
                        _1961 = mem[(32 * var188004 + 1) + 128]
                        if var188004 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var188004) + cd[100] + 36)] == address(cd[((32 * var188004) + cd[100] + 36)])
                        _1973 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1973 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1973 + 36] = 0
                        mem[_1973 + 68] = _1961
                        mem[_1973 + 100] = this.address
                        mem[_1973 + 132] = 128
                        mem[_1973 + 164] = mem[_1973]
                        idx = 0
                        while idx < mem[_1973]:
                            mem[idx + _1973 + 196] = mem[idx + _1973 + 32]
                            require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                            mem[_1973 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                            staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                    gas gas_remaining wei
                                   args mem[_1973 + 36 len (32 * ('cd', 68).length) + -_1973 + 96]
                            mem[_1973 + 32 len 96] = ext_call.return_data[0 len 96]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[_1973]) > mem[_1973]:
                            mem[mem[_1973] + _1973 + 196] = 0
                        require ext_code.size(address(cd[((32 * var188004) + cd[100] + 36)]))
                        call address(cd[((32 * var188004) + cd[100] + 36)]).mem[_1973 + 32 len 4] with:
                             gas gas_remaining wei
                            args mem[_1973 + 36 len 96], 128, mem[_1973], mem[_1973 + 196 len ceil32(mem[_1973])]
                    else:
                        _1962 = mem[(32 * var188004 + 1) + 128]
                        if var188004 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var188004) + cd[100] + 36)] == address(cd[((32 * var188004) + cd[100] + 36)])
                        _1974 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1974 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1974 + 36] = _1962
                        mem[_1974 + 68] = 0
                        mem[_1974 + 100] = this.address
                        mem[_1974 + 132] = 128
                        mem[_1974 + 164] = mem[_1974]
                        idx = 0
                        while idx < mem[_1974]:
                            mem[idx + _1974 + 196] = mem[idx + _1974 + 32]
                            require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                            mem[_1974 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                            staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                    gas gas_remaining wei
                                   args mem[_1974 + 36 len (32 * ('cd', 68).length) + -_1974 + 96]
                            mem[_1974 + 32 len 96] = ext_call.return_data[0 len 96]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[_1974]) > mem[_1974]:
                            mem[mem[_1974] + _1974 + 196] = 0
                        require ext_code.size(address(cd[((32 * var188004) + cd[100] + 36)]))
                        call address(cd[((32 * var188004) + cd[100] + 36)]).mem[_1974 + 32 len 4] with:
                             gas gas_remaining wei
                            args mem[_1974 + 36 len 96], 128, mem[_1974], mem[_1974 + 196 len ceil32(mem[_1974])]
                else:
                    if mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64 and mem[_918 + 18 len 14] > -1 / mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64:
                        revert with 'NH{q', 17
                    if mem[_918 + 50 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * mem[_918 + 50 len 14] > !(mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64):
                        revert with 'NH{q', 17
                    if not (10000 * mem[_918 + 50 len 14]) + (mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64):
                        revert with 'NH{q', 18
                    if 1 > !t:
                        revert with 'NH{q', 17
                    if t + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + 128] = mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64 * mem[_918 + 18 len 14] / (10000 * mem[_918 + 50 len 14]) + (mem[(32 * t) + 128] * Mask(32, 64, cd[((32 * t + 1) + cd[68] + 36)]) >> 64)
                    if t == -1:
                        revert with 'NH{q', 17
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if t + 1 < ('cd', 68).length - 1:
                        if t + 1 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t + 2) + cd[100] + 36)] == address(cd[((32 * t + 2) + cd[100] + 36)])
                        mem[mem[64]] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(cd[((32 * t + 2) + cd[100] + 36)]))
                        staticcall address(cd[((32 * t + 2) + cd[100] + 36)]).getReserves() with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len (32 * ('cd', 68).length) + -mem[64] + 128]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        s = t + 1
                        t = t + 1
                        continue 
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[96] - 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[(32 * mem[96] - 1) + 128] < cd[36]:
                        revert with 0, 'MIN_OUT'
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[0] == Mask(192, 64, ('cd', 68)[0])
                    if not ('cd', 100).length:
                        revert with 'NH{q', 50
                    require ('cd', 100)[0] == address(('cd', 100)[0])
                    mem[mem[64] + 4] = address(('cd', 100)[0])
                    mem[mem[64] + 36] = cd[4]
                    require ext_code.size(address(('cd', 68)[0]) >> 96)
                    call address(('cd', 68)[0]) >> 96.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(('cd', 100)[0]), cd[4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1028 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1028] == bool(mem[_1028])
                    if ('cd', 68).length < 2:
                        revert with 'NH{q', 17
                    if var189004 < ('cd', 68).length - 2:
                        if 1 > !var193002:
                            revert with 'NH{q', 17
                        idx = var195003 + 1
                        t = var195008
                        t = var195009
                        while idx < ('cd', 68).length:
                            require cd[((32 * idx) + cd[68] + 36)] == Mask(192, 64, cd[((32 * idx) + cd[68] + 36)])
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t) + cd[68] + 36)])
                            if 1 > !t:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(192, 64, cd[((32 * t) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * idx) + cd[68] + 36)]):
                                _3935 = mem[(32 * t + 1) + 128]
                                if t >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                _3943 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3943 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3943 + 36] = 0
                                mem[_3943 + 68] = _3935
                                mem[_3943 + 100] = address(cd[((32 * t + 1) + cd[100] + 36)])
                                mem[_3943 + 132] = 128
                                mem[_3943 + 164] = mem[_3943]
                                idx = 0
                                while idx < mem[_3943]:
                                    mem[idx + _3943 + 196] = mem[idx + _3943 + 32]
                                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                    mem[_3943 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                    staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                            gas gas_remaining wei
                                           args mem[_3943 + 36 len (32 * ('cd', 68).length) + -_3943 + 96]
                                    mem[_3943 + 32 len 96] = ext_call.return_data[0 len 96]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_3943]) <= mem[_3943]:
                                    require ext_code.size(address(cd[((32 * t) + cd[100] + 36)]))
                                    call address(cd[((32 * t) + cd[100] + 36)]).mem[_3943 + 32 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_3943 + 36 len 96], 128, mem[_3943], mem[_3943 + 196 len ceil32(mem[_3943])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if ('cd', 68).length < 2:
                                        revert with 'NH{q', 17
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 1 < ('cd', 68).length - 2:
                                        require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                        mem[_3943 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                        staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                                gas gas_remaining wei
                                               args mem[_3943 + 36 len (32 * ('cd', 68).length) + -_3943 + 96]
                                        mem[_3943 + 32 len 96] = ext_call.return_data[0 len 96]
                                        idx = t + 2
                                        t = 0
                                        t = t + 1
                                        continue 
                                    if t + 2 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)])
                                    if t + 1 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)])
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)]):
                                        _4313 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3943 + 64
                                        mem[_3943 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3943 + 68] = 0
                                        mem[_3943 + 100] = _4313
                                    else:
                                        _4314 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3943 + 64
                                        mem[_3943 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3943 + 68] = _4314
                                        mem[_3943 + 100] = 0
                                else:
                                    mem[mem[_3943] + _3943 + 196] = 0
                                    require ext_code.size(address(cd[((32 * t) + cd[100] + 36)]))
                                    call address(cd[((32 * t) + cd[100] + 36)]).mem[_3943 + 32 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_3943 + 36 len 96], 128, mem[_3943], mem[_3943 + 196 len ceil32(mem[_3943])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if ('cd', 68).length < 2:
                                        revert with 'NH{q', 17
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 1 < ('cd', 68).length - 2:
                                        require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                        mem[_3943 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                        staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                                gas gas_remaining wei
                                               args mem[_3943 + 36 len (32 * ('cd', 68).length) + -_3943 + 96]
                                        mem[_3943 + 32 len 96] = ext_call.return_data[0 len 96]
                                        idx = t + 2
                                        t = 0
                                        t = t + 1
                                        continue 
                                    if t + 2 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)])
                                    if t + 1 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)])
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)]):
                                        _4315 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3943 + 64
                                        mem[_3943 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3943 + 68] = 0
                                        mem[_3943 + 100] = _4315
                                    else:
                                        _4316 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3943 + 64
                                        mem[_3943 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3943 + 68] = _4316
                                        mem[_3943 + 100] = 0
                                mem[_3943 + 132] = this.address
                                mem[_3943 + 164] = 128
                                mem[_3943 + 196] = 0
                                idx = 0
                                while idx < 0:
                                    mem[idx + _3943 + 228] = mem[idx + _3943 + 64]
                                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                    mem[_3943 + 64] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                    staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                            gas gas_remaining wei
                                           args mem[_3943 + 68 len (32 * ('cd', 68).length) + -_3943 + 64]
                                    mem[_3943 + 64 len 96] = ext_call.return_data[0 len 96]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * t + 1) + cd[100] + 36)]))
                                call address(cd[((32 * t + 1) + cd[100] + 36)]).mem[_3943 + 64 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_3943 + 68 len 96], 128, 0
                            else:
                                _3936 = mem[(32 * t + 1) + 128]
                                if t >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                _3944 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_3944 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3944 + 36] = _3936
                                mem[_3944 + 68] = 0
                                mem[_3944 + 100] = address(cd[((32 * t + 1) + cd[100] + 36)])
                                mem[_3944 + 132] = 128
                                mem[_3944 + 164] = mem[_3944]
                                idx = 0
                                while idx < mem[_3944]:
                                    mem[idx + _3944 + 196] = mem[idx + _3944 + 32]
                                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                    mem[_3944 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                    staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                            gas gas_remaining wei
                                           args mem[_3944 + 36 len (32 * ('cd', 68).length) + -_3944 + 96]
                                    mem[_3944 + 32 len 96] = ext_call.return_data[0 len 96]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_3944]) <= mem[_3944]:
                                    require ext_code.size(address(cd[((32 * t) + cd[100] + 36)]))
                                    call address(cd[((32 * t) + cd[100] + 36)]).mem[_3944 + 32 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_3944 + 36 len 96], 128, mem[_3944], mem[_3944 + 196 len ceil32(mem[_3944])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if ('cd', 68).length < 2:
                                        revert with 'NH{q', 17
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 1 < ('cd', 68).length - 2:
                                        require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                        mem[_3944 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                        staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                                gas gas_remaining wei
                                               args mem[_3944 + 36 len (32 * ('cd', 68).length) + -_3944 + 96]
                                        mem[_3944 + 32 len 96] = ext_call.return_data[0 len 96]
                                        idx = t + 2
                                        t = _3936
                                        t = t + 1
                                        continue 
                                    if t + 2 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)])
                                    if t + 1 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)])
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)]):
                                        _4317 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3944 + 64
                                        mem[_3944 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3944 + 68] = 0
                                        mem[_3944 + 100] = _4317
                                    else:
                                        _4318 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3944 + 64
                                        mem[_3944 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3944 + 68] = _4318
                                        mem[_3944 + 100] = 0
                                else:
                                    mem[mem[_3944] + _3944 + 196] = 0
                                    require ext_code.size(address(cd[((32 * t) + cd[100] + 36)]))
                                    call address(cd[((32 * t) + cd[100] + 36)]).mem[_3944 + 32 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_3944 + 36 len 96], 128, mem[_3944], mem[_3944 + 196 len ceil32(mem[_3944])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if ('cd', 68).length < 2:
                                        revert with 'NH{q', 17
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 1 < ('cd', 68).length - 2:
                                        require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                        mem[_3944 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                        staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                                gas gas_remaining wei
                                               args mem[_3944 + 36 len (32 * ('cd', 68).length) + -_3944 + 96]
                                        mem[_3944 + 32 len 96] = ext_call.return_data[0 len 96]
                                        idx = t + 2
                                        t = _3936
                                        t = t + 1
                                        continue 
                                    if t + 2 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)])
                                    if t + 1 >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)])
                                    if 1 > !(t + 1):
                                        revert with 'NH{q', 17
                                    if t + 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(192, 64, cd[((32 * t + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * t + 2) + cd[68] + 36)]):
                                        _4319 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3944 + 64
                                        mem[_3944 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3944 + 68] = 0
                                        mem[_3944 + 100] = _4319
                                    else:
                                        _4320 = mem[(32 * t + 2) + 128]
                                        if t + 1 >= ('cd', 100).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t + 1) + cd[100] + 36)] == address(cd[((32 * t + 1) + cd[100] + 36)])
                                        mem[64] = _3944 + 64
                                        mem[_3944 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3944 + 68] = _4320
                                        mem[_3944 + 100] = 0
                                mem[_3944 + 132] = this.address
                                mem[_3944 + 164] = 128
                                mem[_3944 + 196] = 0
                                idx = 0
                                while idx < 0:
                                    mem[idx + _3944 + 228] = mem[idx + _3944 + 64]
                                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                                    mem[_3944 + 64] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                                    staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                            gas gas_remaining wei
                                           args mem[_3944 + 68 len (32 * ('cd', 68).length) + -_3944 + 64]
                                    mem[_3944 + 64 len 96] = ext_call.return_data[0 len 96]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * t + 1) + cd[100] + 36)]))
                                call address(cd[((32 * t + 1) + cd[100] + 36)]).mem[_3944 + 64 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_3944 + 68 len 96], 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        revert with 'NH{q', 50
                    if 1 > !var189004:
                        revert with 'NH{q', 17
                    if var189004 + 1 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * var189004 + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * var189004 + 1) + cd[68] + 36)])
                    if var189004 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * var189004) + cd[68] + 36)] == Mask(192, 64, cd[((32 * var189004) + cd[68] + 36)])
                    if 1 > !var189004:
                        revert with 'NH{q', 17
                    if var189004 + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if Mask(192, 64, cd[((32 * var189004) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * var189004 + 1) + cd[68] + 36)]):
                        _1965 = mem[(32 * var189004 + 1) + 128]
                        if var189004 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var189004) + cd[100] + 36)] == address(cd[((32 * var189004) + cd[100] + 36)])
                        _1975 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1975 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1975 + 36] = 0
                        mem[_1975 + 68] = _1965
                        mem[_1975 + 100] = this.address
                        mem[_1975 + 132] = 128
                        mem[_1975 + 164] = mem[_1975]
                        idx = 0
                        while idx < mem[_1975]:
                            mem[idx + _1975 + 196] = mem[idx + _1975 + 32]
                            require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                            mem[_1975 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                            staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                    gas gas_remaining wei
                                   args mem[_1975 + 36 len (32 * ('cd', 68).length) + -_1975 + 96]
                            mem[_1975 + 32 len 96] = ext_call.return_data[0 len 96]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[_1975]) > mem[_1975]:
                            mem[mem[_1975] + _1975 + 196] = 0
                        require ext_code.size(address(cd[((32 * var189004) + cd[100] + 36)]))
                        call address(cd[((32 * var189004) + cd[100] + 36)]).mem[_1975 + 32 len 4] with:
                             gas gas_remaining wei
                            args mem[_1975 + 36 len 96], 128, mem[_1975], mem[_1975 + 196 len ceil32(mem[_1975])]
                    else:
                        _1966 = mem[(32 * var189004 + 1) + 128]
                        if var189004 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * var189004) + cd[100] + 36)] == address(cd[((32 * var189004) + cd[100] + 36)])
                        _1976 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1976 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1976 + 36] = _1966
                        mem[_1976 + 68] = 0
                        mem[_1976 + 100] = this.address
                        mem[_1976 + 132] = 128
                        mem[_1976 + 164] = mem[_1976]
                        idx = 0
                        while idx < mem[_1976]:
                            mem[idx + _1976 + 196] = mem[idx + _1976 + 32]
                            require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                            mem[_1976 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                            staticcall address(cd[((32 * s) + cd[100] + 36)]).getReserves() with:
                                    gas gas_remaining wei
                                   args mem[_1976 + 36 len (32 * ('cd', 68).length) + -_1976 + 96]
                            mem[_1976 + 32 len 96] = ext_call.return_data[0 len 96]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[_1976]) > mem[_1976]:
                            mem[mem[_1976] + _1976 + 196] = 0
                        require ext_code.size(address(cd[((32 * var189004) + cd[100] + 36)]))
                        call address(cd[((32 * var189004) + cd[100] + 36)]).mem[_1976 + 32 len 4] with:
                             gas gas_remaining wei
                            args mem[_1976 + 36 len 96], 128, mem[_1976], mem[_1976 + 196 len ceil32(mem[_1976])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            revert with ext_call.return_data[0 len return_data.size]
        if ('cd', 68).length < 1:
            revert with 'NH{q', 17
        if ('cd', 68).length - 1 >= ('cd', 68).length:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 68).length - 1) + 128] < cd[36]:
            revert with 0, 'MIN_OUT'
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require ('cd', 68)[0] == Mask(192, 64, ('cd', 68)[0])
        if not ('cd', 100).length:
            revert with 'NH{q', 50
        require ('cd', 100)[0] == address(('cd', 100)[0])
        mem[(32 * ('cd', 68).length) + 132] = address(('cd', 100)[0])
        mem[(32 * ('cd', 68).length) + 164] = cd[4]
        require ext_code.size(address(('cd', 68)[0]) >> 96)
        call address(('cd', 68)[0]) >> 96.0xa9059cbb with:
             gas gas_remaining wei
            args address(('cd', 100)[0]), cd[4]
        mem[(32 * ('cd', 68).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * ('cd', 68).length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ('cd', 68).length < 2:
            revert with 'NH{q', 17
        if var115004 < ('cd', 68).length - 2:
            if 1 > !var119002:
                revert with 'NH{q', 17
            idx = var121003 + 1
            s = var121008
            s = var121009
            while idx < ('cd', 68).length:
                require cd[((32 * idx) + cd[68] + 36)] == Mask(192, 64, cd[((32 * idx) + cd[68] + 36)])
                if s >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * s) + cd[68] + 36)] == Mask(192, 64, cd[((32 * s) + cd[68] + 36)])
                if 1 > !s:
                    revert with 'NH{q', 17
                if s + 1 >= mem[96]:
                    revert with 'NH{q', 50
                if Mask(192, 64, cd[((32 * s) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * idx) + cd[68] + 36)]):
                    _2959 = mem[(32 * s + 1) + 128]
                    if s >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                    if 1 > !s:
                        revert with 'NH{q', 17
                    if s + 1 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
                    _2979 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_2979 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2979 + 36] = 0
                    mem[_2979 + 68] = _2959
                    mem[_2979 + 100] = address(cd[((32 * s + 1) + cd[100] + 36)])
                    mem[_2979 + 132] = 128
                    mem[_2979 + 164] = mem[_2979]
                    idx = 0
                    while idx < mem[_2979]:
                        mem[idx + _2979 + 196] = mem[idx + _2979 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[_2979]) <= mem[_2979]:
                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                        call address(cd[((32 * s) + cd[100] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_2979]) + _2979 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s == -1:
                            revert with 'NH{q', 17
                        if ('cd', 68).length < 2:
                            revert with 'NH{q', 17
                        if 1 > !(s + 1):
                            revert with 'NH{q', 17
                        if s + 1 < ('cd', 68).length - 2:
                            idx = s + 2
                            s = 0
                            s = s + 1
                            continue 
                        if s + 2 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * s + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * s + 2) + cd[68] + 36)])
                        if s + 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * s + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * s + 1) + cd[68] + 36)])
                        if 1 > !(s + 1):
                            revert with 'NH{q', 17
                        if s + 2 >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(192, 64, cd[((32 * s + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * s + 2) + cd[68] + 36)]):
                            _3473 = mem[(32 * s + 2) + 128]
                            if s + 1 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
                            _3513 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3513 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3513 + 36] = 0
                            mem[_3513 + 68] = _3473
                            mem[_3513 + 100] = this.address
                            mem[_3513 + 132] = 128
                            mem[_3513 + 164] = mem[_3513]
                            idx = 0
                            while idx < mem[_3513]:
                                mem[idx + _3513 + 196] = mem[idx + _3513 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_3513]) > mem[_3513]:
                                mem[mem[_3513] + _3513 + 196] = 0
                            require ext_code.size(address(cd[((32 * s + 1) + cd[100] + 36)]))
                            call address(cd[((32 * s + 1) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3473, address(this.address), 128, mem[_3513], mem[_3513 + 196 len ceil32(mem[_3513])]
                        else:
                            _3474 = mem[(32 * s + 2) + 128]
                            if s + 1 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
                            _3514 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3514 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3514 + 36] = _3474
                            mem[_3514 + 68] = 0
                            mem[_3514 + 100] = this.address
                            mem[_3514 + 132] = 128
                            mem[_3514 + 164] = mem[_3514]
                            idx = 0
                            while idx < mem[_3514]:
                                mem[idx + _3514 + 196] = mem[idx + _3514 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_3514]) > mem[_3514]:
                                mem[mem[_3514] + _3514 + 196] = 0
                            require ext_code.size(address(cd[((32 * s + 1) + cd[100] + 36)]))
                            call address(cd[((32 * s + 1) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3474, 0, address(this.address), 128, mem[_3514], mem[_3514 + 196 len ceil32(mem[_3514])]
                    else:
                        mem[mem[_2979] + _2979 + 196] = 0
                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                        call address(cd[((32 * s) + cd[100] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_2979]) + _2979 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s == -1:
                            revert with 'NH{q', 17
                        if ('cd', 68).length < 2:
                            revert with 'NH{q', 17
                        if 1 > !(s + 1):
                            revert with 'NH{q', 17
                        if s + 1 < ('cd', 68).length - 2:
                            idx = s + 2
                            s = 0
                            s = s + 1
                            continue 
                        if s + 2 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * s + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * s + 2) + cd[68] + 36)])
                        if s + 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * s + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * s + 1) + cd[68] + 36)])
                        if 1 > !(s + 1):
                            revert with 'NH{q', 17
                        if s + 2 >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(192, 64, cd[((32 * s + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * s + 2) + cd[68] + 36)]):
                            _3475 = mem[(32 * s + 2) + 128]
                            if s + 1 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
                            _3515 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3515 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3515 + 36] = 0
                            mem[_3515 + 68] = _3475
                            mem[_3515 + 100] = this.address
                            mem[_3515 + 132] = 128
                            mem[_3515 + 164] = mem[_3515]
                            idx = 0
                            while idx < mem[_3515]:
                                mem[idx + _3515 + 196] = mem[idx + _3515 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_3515]) > mem[_3515]:
                                mem[mem[_3515] + _3515 + 196] = 0
                            require ext_code.size(address(cd[((32 * s + 1) + cd[100] + 36)]))
                            call address(cd[((32 * s + 1) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3475, address(this.address), 128, mem[_3515], mem[_3515 + 196 len ceil32(mem[_3515])]
                        else:
                            _3476 = mem[(32 * s + 2) + 128]
                            if s + 1 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
                            _3516 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3516 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3516 + 36] = _3476
                            mem[_3516 + 68] = 0
                            mem[_3516 + 100] = this.address
                            mem[_3516 + 132] = 128
                            mem[_3516 + 164] = mem[_3516]
                            idx = 0
                            while idx < mem[_3516]:
                                mem[idx + _3516 + 196] = mem[idx + _3516 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_3516]) > mem[_3516]:
                                mem[mem[_3516] + _3516 + 196] = 0
                            require ext_code.size(address(cd[((32 * s + 1) + cd[100] + 36)]))
                            call address(cd[((32 * s + 1) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3476, 0, address(this.address), 128, mem[_3516], mem[_3516 + 196 len ceil32(mem[_3516])]
                else:
                    _2960 = mem[(32 * s + 1) + 128]
                    if s >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[((32 * s) + cd[100] + 36)] == address(cd[((32 * s) + cd[100] + 36)])
                    if 1 > !s:
                        revert with 'NH{q', 17
                    if s + 1 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
                    _2980 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_2980 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2980 + 36] = _2960
                    mem[_2980 + 68] = 0
                    mem[_2980 + 100] = address(cd[((32 * s + 1) + cd[100] + 36)])
                    mem[_2980 + 132] = 128
                    mem[_2980 + 164] = mem[_2980]
                    idx = 0
                    while idx < mem[_2980]:
                        mem[idx + _2980 + 196] = mem[idx + _2980 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[_2980]) <= mem[_2980]:
                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                        call address(cd[((32 * s) + cd[100] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_2980]) + _2980 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s == -1:
                            revert with 'NH{q', 17
                        if ('cd', 68).length < 2:
                            revert with 'NH{q', 17
                        if 1 > !(s + 1):
                            revert with 'NH{q', 17
                        if s + 1 < ('cd', 68).length - 2:
                            idx = s + 2
                            s = _2960
                            s = s + 1
                            continue 
                        if s + 2 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * s + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * s + 2) + cd[68] + 36)])
                        if s + 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * s + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * s + 1) + cd[68] + 36)])
                        if 1 > !(s + 1):
                            revert with 'NH{q', 17
                        if s + 2 >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(192, 64, cd[((32 * s + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * s + 2) + cd[68] + 36)]):
                            _3477 = mem[(32 * s + 2) + 128]
                            if s + 1 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
                            _3517 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3517 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3517 + 36] = 0
                            mem[_3517 + 68] = _3477
                            mem[_3517 + 100] = this.address
                            mem[_3517 + 132] = 128
                            mem[_3517 + 164] = mem[_3517]
                            idx = 0
                            while idx < mem[_3517]:
                                mem[idx + _3517 + 196] = mem[idx + _3517 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_3517]) > mem[_3517]:
                                mem[mem[_3517] + _3517 + 196] = 0
                            require ext_code.size(address(cd[((32 * s + 1) + cd[100] + 36)]))
                            call address(cd[((32 * s + 1) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3477, address(this.address), 128, mem[_3517], mem[_3517 + 196 len ceil32(mem[_3517])]
                        else:
                            _3478 = mem[(32 * s + 2) + 128]
                            if s + 1 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
                            _3518 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3518 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3518 + 36] = _3478
                            mem[_3518 + 68] = 0
                            mem[_3518 + 100] = this.address
                            mem[_3518 + 132] = 128
                            mem[_3518 + 164] = mem[_3518]
                            idx = 0
                            while idx < mem[_3518]:
                                mem[idx + _3518 + 196] = mem[idx + _3518 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_3518]) > mem[_3518]:
                                mem[mem[_3518] + _3518 + 196] = 0
                            require ext_code.size(address(cd[((32 * s + 1) + cd[100] + 36)]))
                            call address(cd[((32 * s + 1) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3478, 0, address(this.address), 128, mem[_3518], mem[_3518 + 196 len ceil32(mem[_3518])]
                    else:
                        mem[mem[_2980] + _2980 + 196] = 0
                        require ext_code.size(address(cd[((32 * s) + cd[100] + 36)]))
                        call address(cd[((32 * s) + cd[100] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_2980]) + _2980 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s == -1:
                            revert with 'NH{q', 17
                        if ('cd', 68).length < 2:
                            revert with 'NH{q', 17
                        if 1 > !(s + 1):
                            revert with 'NH{q', 17
                        if s + 1 < ('cd', 68).length - 2:
                            idx = s + 2
                            s = _2960
                            s = s + 1
                            continue 
                        if s + 2 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * s + 2) + cd[68] + 36)] == Mask(192, 64, cd[((32 * s + 2) + cd[68] + 36)])
                        if s + 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * s + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * s + 1) + cd[68] + 36)])
                        if 1 > !(s + 1):
                            revert with 'NH{q', 17
                        if s + 2 >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(192, 64, cd[((32 * s + 1) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * s + 2) + cd[68] + 36)]):
                            _3479 = mem[(32 * s + 2) + 128]
                            if s + 1 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
                            _3519 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3519 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3519 + 36] = 0
                            mem[_3519 + 68] = _3479
                            mem[_3519 + 100] = this.address
                            mem[_3519 + 132] = 128
                            mem[_3519 + 164] = mem[_3519]
                            idx = 0
                            while idx < mem[_3519]:
                                mem[idx + _3519 + 196] = mem[idx + _3519 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_3519]) > mem[_3519]:
                                mem[mem[_3519] + _3519 + 196] = 0
                            require ext_code.size(address(cd[((32 * s + 1) + cd[100] + 36)]))
                            call address(cd[((32 * s + 1) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _3479, address(this.address), 128, mem[_3519], mem[_3519 + 196 len ceil32(mem[_3519])]
                        else:
                            _3480 = mem[(32 * s + 2) + 128]
                            if s + 1 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * s + 1) + cd[100] + 36)] == address(cd[((32 * s + 1) + cd[100] + 36)])
                            _3520 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3520 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3520 + 36] = _3480
                            mem[_3520 + 68] = 0
                            mem[_3520 + 100] = this.address
                            mem[_3520 + 132] = 128
                            mem[_3520 + 164] = mem[_3520]
                            idx = 0
                            while idx < mem[_3520]:
                                mem[idx + _3520 + 196] = mem[idx + _3520 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_3520]) > mem[_3520]:
                                mem[mem[_3520] + _3520 + 196] = 0
                            require ext_code.size(address(cd[((32 * s + 1) + cd[100] + 36)]))
                            call address(cd[((32 * s + 1) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _3480, 0, address(this.address), 128, mem[_3520], mem[_3520 + 196 len ceil32(mem[_3520])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            revert with 'NH{q', 50
        if 1 > !var115004:
            revert with 'NH{q', 17
        if var115004 + 1 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * var115004 + 1) + cd[68] + 36)] == Mask(192, 64, cd[((32 * var115004 + 1) + cd[68] + 36)])
        if var115004 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * var115004) + cd[68] + 36)] == Mask(192, 64, cd[((32 * var115004) + cd[68] + 36)])
        if 1 > !var115004:
            revert with 'NH{q', 17
        if var115004 + 1 >= ('cd', 68).length:
            revert with 'NH{q', 50
        if var115004 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require cd[((32 * var115004) + cd[100] + 36)] == address(cd[((32 * var115004) + cd[100] + 36)])
        require ext_code.size(address(cd[((32 * var115004) + cd[100] + 36)]))
        if Mask(192, 64, cd[((32 * var115004) + cd[68] + 36)]) < Mask(192, 64, cd[((32 * var115004 + 1) + cd[68] + 36)]):
            call address(cd[((32 * var115004) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, mem[(32 * var115004 + 1) + 128], address(this.address), 128, 0
        else:
            call address(cd[((32 * var115004) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args mem[(32 * var115004 + 1) + 128], 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
