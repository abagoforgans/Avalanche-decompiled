contract main {




// =====================  Runtime code  =====================


#
#  - exchangeV2(address[] arg1, uint256 arg2, uint256 arg3, address arg4, bool arg5, bool arg6)
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 stor1;
uint256 feePercent_x_100000;
mapping of struct addresses;

function blockStatus() {
    if owner != msg.sender:
        revert with 0, 'You is not owner'
    return bool(uint8(stor0.field_160))
}

function addresses(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return addresses[arg1].field_0, bool(addresses[arg1].field_160)
}

function owner() {
    return owner
}

function feePercent_x_100000() {
    return feePercent_x_100000
}

function _fallback() payable {
    revert
}

function toggleBlock() {
    if owner != msg.sender:
        revert with 0, 'You is not owner'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, not bool(uint8(stor0.field_160)))
}

function attachAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    addresses[address(arg1)].field_0 = msg.sender
    addresses[address(arg1)].field_160 = 1
}

function changeFeeX100000(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'You is not owner'
    feePercent_x_100000 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'You is not owner'
    require arg1
    owner = arg1
}

function returnErc20(address[] arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'You is not owner'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _101 = mem[(32 * idx) + 128]
        require idx < mem[96]
        _103 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_103))
        call address(_103).0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _106 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _107 = mem[_106]
        require mem[_106] == mem[_106]
        _108 = mem[64]
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = _107
        _109 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_109 + 32] = mem[_109 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        _112 = mem[_109]
        s = 0
        while s < _112:
            mem[_108 + s + 100] = mem[_109 + s + 32]
            s = s + 32
            continue 
        if ceil32(_112) <= _112:
            call address(_101).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _108 + _112 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelperUNDB::safeTransfer: transfer failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'TransferHelperUNDB::safeTransfer: transfer failed'
            else:
                _148 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_148] = return_data.size
                mem[_148 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelperUNDB::safeTransfer: transfer failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_148 + 32] == bool(mem[_148 + 32])
                    if not mem[_148 + 32]:
                        revert with 0, 'TransferHelperUNDB::safeTransfer: transfer failed'
        else:
            mem[_108 + _112 + 100] = 0
            call address(_101).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _108 + _112 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelperUNDB::safeTransfer: transfer failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'TransferHelperUNDB::safeTransfer: transfer failed'
            else:
                _150 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_150] = return_data.size
                mem[_150 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelperUNDB::safeTransfer: transfer failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_150 + 32] == bool(mem[_150 + 32])
                    if not mem[_150 + 32]:
                        revert with 0, 'TransferHelperUNDB::safeTransfer: transfer failed'
        idx = idx + 1
        continue 
}

function exchangeV3(bytes arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, bool arg6) {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if not addresses[address(msg.sender)].field_160:
        revert with 0, 'Not attached feeAddress'
    if uint8(stor0.field_160):
        revert with 0, 'Contract is blocked'
    require stor1
    mem[ceil32(arg1.length) + 164] = addresses[address(msg.sender)].field_0
    mem[ceil32(arg1.length) + 196] = this.address
    mem[ceil32(arg1.length) + 228] = arg3
    mem[ceil32(arg1.length) + 128] = 100
    mem[ceil32(arg1.length) + 164 len 28] = addresses[address(msg.sender)].field_0
    mem[ceil32(arg1.length) + 160 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(arg1.length) + 260 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 260] = 0
    call arg2.mem[ceil32(arg1.length) + 260 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + 264 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
    if arg6:
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelperUNDB::transferFrom: transferFrom failed'
            if arg1.length:
                require arg1.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'TransferHelperUNDB::transferFrom: transferFrom failed'
            require ext_code.size(arg2)
            call arg2.0xdd62ed3e with:
                 gas gas_remaining wei
                args address(this.address), arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < arg3 - (arg3 * feePercent_x_100000 / stor1 / 2):
                mem[ceil32(arg1.length) + ceil32(return_data.size) + 360 len 96] = 0, address(arg5), (100 * arg3) - (100 * arg3 * feePercent_x_100000 / stor1 / 2), mem[ceil32(arg1.length) + ceil32(return_data.size) + 360 len 28]
                call arg2.mem[ceil32(arg1.length) + ceil32(return_data.size) + 360 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(arg1.length) + ceil32(return_data.size) + 364 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                else:
                    mem[ceil32(arg1.length) + ceil32(return_data.size) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(arg1.length) + ceil32(return_data.size) + 392] == bool(mem[ceil32(arg1.length) + ceil32(return_data.size) + 392])
                        if not mem[ceil32(arg1.length) + ceil32(return_data.size) + 392]:
                            revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
        else:
            mem[ceil32(arg1.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelperUNDB::transferFrom: transferFrom failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(arg1.length) + 292] == bool(mem[ceil32(arg1.length) + 292])
                if not mem[ceil32(arg1.length) + 292]:
                    revert with 0, 'TransferHelperUNDB::transferFrom: transferFrom failed'
            require ext_code.size(arg2)
            call arg2.0xdd62ed3e with:
                 gas gas_remaining wei
                args address(this.address), arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < arg3 - (arg3 * feePercent_x_100000 / stor1 / 2):
                mem[ceil32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 96] = 0, address(arg5), (100 * arg3) - (100 * arg3 * feePercent_x_100000 / stor1 / 2), mem[ceil32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 28]
                call arg2.mem[ceil32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 365 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                else:
                    mem[ceil32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 393] == bool(mem[ceil32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 393])
                        if not mem[ceil32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 393]:
                            revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
        require ext_code.size(arg5)
        call arg5.exactInput(bytes rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 32, 160, addresses[address(msg.sender)].field_0, block.timestamp + 120, arg3 - (arg3 * feePercent_x_100000 / stor1 / 2), arg4, arg1.length, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    else:
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelperUNDB::transferFrom: transferFrom failed'
            if arg1.length:
                require arg1.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'TransferHelperUNDB::transferFrom: transferFrom failed'
            require ext_code.size(arg2)
            call arg2.0xdd62ed3e with:
                 gas gas_remaining wei
                args address(this.address), arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < arg3 - (arg3 * feePercent_x_100000 / stor1):
                mem[ceil32(arg1.length) + ceil32(return_data.size) + 360 len 96] = 0, address(arg5), (100 * arg3) - (100 * arg3 * feePercent_x_100000 / stor1), mem[ceil32(arg1.length) + ceil32(return_data.size) + 360 len 28]
                call arg2.mem[ceil32(arg1.length) + ceil32(return_data.size) + 360 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(arg1.length) + ceil32(return_data.size) + 364 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                else:
                    mem[ceil32(arg1.length) + ceil32(return_data.size) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(arg1.length) + ceil32(return_data.size) + 392] == bool(mem[ceil32(arg1.length) + ceil32(return_data.size) + 392])
                        if not mem[ceil32(arg1.length) + ceil32(return_data.size) + 392]:
                            revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
        else:
            mem[ceil32(arg1.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelperUNDB::transferFrom: transferFrom failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(arg1.length) + 292] == bool(mem[ceil32(arg1.length) + 292])
                if not mem[ceil32(arg1.length) + 292]:
                    revert with 0, 'TransferHelperUNDB::transferFrom: transferFrom failed'
            require ext_code.size(arg2)
            call arg2.0xdd62ed3e with:
                 gas gas_remaining wei
                args address(this.address), arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < arg3 - (arg3 * feePercent_x_100000 / stor1):
                mem[ceil32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 96] = 0, address(arg5), (100 * arg3) - (100 * arg3 * feePercent_x_100000 / stor1), mem[ceil32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 28]
                call arg2.mem[ceil32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 365 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                    if arg1.length:
                        require arg1.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                else:
                    mem[ceil32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 393] == bool(mem[ceil32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 393])
                        if not mem[ceil32(arg1.length) + ceil32(return_data.size) + ceil32(return_data.size) + 393]:
                            revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
        require ext_code.size(arg5)
        call arg5.exactInput(bytes rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 32, 160, addresses[address(msg.sender)].field_0, block.timestamp + 120, arg3 - (arg3 * feePercent_x_100000 / stor1), arg4, arg1.length, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}



}
