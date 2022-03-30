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

function swapV2Erc20(address[][] arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require arg1 + cd[s] + 67 < calldata.size
        require cd[(arg1 + cd[s] + 36)] <= test266151307()
        _114 = mem[64]
        require mem[64] + (32 * cd[(arg1 + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + (32 * cd[(arg1 + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(arg1 + cd[s] + 36)]) + 32
        mem[_114] = cd[(arg1 + cd[s] + 36)]
        require arg1 + cd[s] + (32 * cd[(arg1 + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = arg1 + cd[s] + 68
        w = _114 + 32
        while u < cd[(arg1 + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _114
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'You is not owner'
    _115 = mem[96]
    idx = 0
    while idx < _115:
        require idx < mem[96]
        require 0 < mem[mem[(32 * idx) + 128]]
        _229 = mem[mem[(32 * idx) + 128] + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_229))
        call address(_229).0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _232 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _233 = mem[_232]
        require mem[_232] == mem[_232]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = arg2
        require ext_code.size(address(_229))
        call address(_229).0xdd62ed3e with:
             gas gas_remaining wei
            args address(this.address), arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _236 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_236] == mem[_236]
        require idx < mem[96]
        if mem[_236] >= _233:
            _240 = mem[(32 * idx) + 128]
            _241 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _233
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _246 = mem[_240]
            mem[mem[64] + 164] = mem[_240]
            s = 0
            t = _240 + 32
            u = mem[64] + 196
            while s < _246:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_241 + 100] = msg.sender
            mem[_241 + 132] = block.timestamp + 1
            require ext_code.size(arg2)
            call arg2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _241 + (32 * _246) + -mem[64] + 192]
        else:
            require 0 < mem[mem[(32 * idx) + 128]]
            _244 = mem[mem[(32 * idx) + 128] + 32]
            _245 = mem[64]
            mem[mem[64] + 36] = arg2
            mem[mem[64] + 68] = 100 * _233
            _247 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_247 + 32] = mem[_247 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            _250 = mem[_247]
            s = 0
            while s < _250:
                mem[_245 + s + 100] = mem[_247 + s + 32]
                s = s + 32
                continue 
            if ceil32(_250) <= _250:
                call address(_244).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _245 + _250 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                    if not mem[96]:
                        require idx < mem[96]
                        _358 = mem[(32 * idx) + 128]
                        _359 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _233
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _389 = mem[_358]
                        mem[mem[64] + 164] = mem[_358]
                        s = 0
                        t = _358 + 32
                        u = mem[64] + 196
                        while s < _389:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_359 + 100] = msg.sender
                        mem[_359 + 132] = block.timestamp + 1
                        require ext_code.size(arg2)
                        call arg2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _359 + (32 * _389) + -mem[64] + 192]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                        require idx < mem[96]
                        _379 = mem[(32 * idx) + 128]
                        _380 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _233
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _401 = mem[_379]
                        mem[mem[64] + 164] = mem[_379]
                        s = 0
                        t = _379 + 32
                        u = mem[64] + 196
                        while s < _401:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_380 + 100] = msg.sender
                        mem[_380 + 132] = block.timestamp + 1
                        require ext_code.size(arg2)
                        call arg2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _380 + (32 * _401) + -mem[64] + 192]
                else:
                    _337 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_337] = return_data.size
                    mem[_337 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                    if not return_data.size:
                        require idx < mem[96]
                        _360 = mem[(32 * idx) + 128]
                        _361 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _233
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _390 = mem[_360]
                        mem[mem[64] + 164] = mem[_360]
                        s = 0
                        t = _360 + 32
                        u = mem[64] + 196
                        while s < _390:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_361 + 100] = msg.sender
                        mem[_361 + 132] = block.timestamp + 1
                        require ext_code.size(arg2)
                        call arg2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _361 + (32 * _390) + -mem[64] + 192]
                    else:
                        require return_data.size >= 32
                        require mem[_337 + 32] == bool(mem[_337 + 32])
                        if not mem[_337 + 32]:
                            revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                        require idx < mem[96]
                        _381 = mem[(32 * idx) + 128]
                        _382 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _233
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _402 = mem[_381]
                        mem[mem[64] + 164] = mem[_381]
                        s = 0
                        t = _381 + 32
                        u = mem[64] + 196
                        while s < _402:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_382 + 100] = msg.sender
                        mem[_382 + 132] = block.timestamp + 1
                        require ext_code.size(arg2)
                        call arg2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _382 + (32 * _402) + -mem[64] + 192]
            else:
                mem[_245 + _250 + 100] = 0
                call address(_244).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _245 + _250 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                    if not mem[96]:
                        require idx < mem[96]
                        _366 = mem[(32 * idx) + 128]
                        _367 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _233
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _393 = mem[_366]
                        mem[mem[64] + 164] = mem[_366]
                        s = 0
                        t = _366 + 32
                        u = mem[64] + 196
                        while s < _393:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_367 + 100] = msg.sender
                        mem[_367 + 132] = block.timestamp + 1
                        require ext_code.size(arg2)
                        call arg2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _367 + (32 * _393) + -mem[64] + 192]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                        require idx < mem[96]
                        _385 = mem[(32 * idx) + 128]
                        _386 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _233
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _403 = mem[_385]
                        mem[mem[64] + 164] = mem[_385]
                        s = 0
                        t = _385 + 32
                        u = mem[64] + 196
                        while s < _403:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_386 + 100] = msg.sender
                        mem[_386 + 132] = block.timestamp + 1
                        require ext_code.size(arg2)
                        call arg2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _386 + (32 * _403) + -mem[64] + 192]
                else:
                    _339 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_339] = return_data.size
                    mem[_339 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                    if not return_data.size:
                        require idx < mem[96]
                        _368 = mem[(32 * idx) + 128]
                        _369 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _233
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _394 = mem[_368]
                        mem[mem[64] + 164] = mem[_368]
                        s = 0
                        t = _368 + 32
                        u = mem[64] + 196
                        while s < _394:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_369 + 100] = msg.sender
                        mem[_369 + 132] = block.timestamp + 1
                        require ext_code.size(arg2)
                        call arg2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _369 + (32 * _394) + -mem[64] + 192]
                    else:
                        require return_data.size >= 32
                        require mem[_339 + 32] == bool(mem[_339 + 32])
                        if not mem[_339 + 32]:
                            revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                        require idx < mem[96]
                        _387 = mem[(32 * idx) + 128]
                        _388 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _233
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _404 = mem[_387]
                        mem[mem[64] + 164] = mem[_387]
                        s = 0
                        t = _387 + 32
                        u = mem[64] + 196
                        while s < _404:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_388 + 100] = msg.sender
                        mem[_388 + 132] = block.timestamp + 1
                        require ext_code.size(arg2)
                        call arg2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _388 + (32 * _404) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function swapV3Erc20(bytes[] arg1, address[] arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require arg1 + cd[s] + 67 < calldata.size
        require cd[(arg1 + cd[s] + 36)] <= test266151307()
        _246 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32
        mem[_246] = cd[(arg1 + cd[s] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 68 <= calldata.size
        mem[_246 + 32 len cd[(arg1 + cd[s] + 36)]] = call.data[arg1 + cd[s] + 68 len cd[(arg1 + cd[s] + 36)]]
        mem[_246 + cd[(arg1 + cd[s] + 36)] + 32] = 0
        mem[t] = _246
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    _247 = mem[64]
    require mem[64] + (32 * arg2.length) + 32 <= test266151307() and mem[64] + (32 * arg2.length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * arg2.length) + 32
    mem[_247] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = _247 + 32
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'You is not owner'
    _490 = mem[96]
    idx = 0
    while idx < _490:
        require idx < mem[_247]
        _733 = mem[(32 * idx) + _247 + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_733))
        call address(_733).0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _736 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _737 = mem[_736]
        require mem[_736] == mem[_736]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = arg3
        require ext_code.size(address(_733))
        call address(_733).0xdd62ed3e with:
             gas gas_remaining wei
            args address(this.address), arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _740 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_740] == mem[_740]
        if mem[_740] >= _737:
            _742 = mem[64]
            mem[64] = mem[64] + 160
            require idx < mem[96]
            mem[_742] = mem[(32 * idx) + 128]
            mem[_742 + 32] = msg.sender
            mem[_742 + 64] = block.timestamp + 1
            mem[_742 + 96] = _737
            mem[_742 + 128] = 0
            _746 = mem[64]
            mem[mem[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _749 = mem[_742]
            mem[mem[64] + 36] = 160
            _750 = mem[_749]
            mem[mem[64] + 196] = mem[_749]
            s = 0
            while s < _750:
                mem[mem[64] + s + 228] = mem[_749 + s + 32]
                s = s + 32
                continue 
            if ceil32(_750) <= _750:
                mem[_746 + 68] = mem[_742 + 44 len 20]
                mem[_746 + 100] = mem[_742 + 64]
                mem[_746 + 132] = mem[_742 + 96]
                mem[_746 + 164] = mem[_742 + 128]
                require ext_code.size(arg3)
                call arg3.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _746 + ceil32(_750) + -mem[64] + 224]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1057 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1057] == mem[_1057]
            else:
                mem[_746 + _750 + 228] = 0
                mem[_746 + 68] = mem[_742 + 44 len 20]
                mem[_746 + 100] = mem[_742 + 64]
                mem[_746 + 132] = mem[_742 + 96]
                mem[_746 + 164] = mem[_742 + 128]
                require ext_code.size(arg3)
                call arg3.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _746 + ceil32(_750) + -mem[64] + 224]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1062 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1062] == mem[_1062]
        else:
            require idx < mem[_247]
            _747 = mem[(32 * idx) + _247 + 32]
            _748 = mem[64]
            mem[mem[64] + 36] = arg3
            mem[mem[64] + 68] = 100 * _737
            _752 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_752 + 32] = mem[_752 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            _757 = mem[_752]
            s = 0
            while s < _757:
                mem[_748 + s + 100] = mem[_752 + s + 32]
                s = s + 32
                continue 
            if ceil32(_757) <= _757:
                call address(_747).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _748 + _757 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                    if not mem[96]:
                        _995 = mem[64]
                        mem[64] = mem[64] + 160
                        require idx < mem[96]
                        mem[_995] = mem[(32 * idx) + 128]
                        mem[_995 + 32] = msg.sender
                        mem[_995 + 64] = block.timestamp + 1
                        mem[_995 + 96] = _737
                        mem[_995 + 128] = 0
                        _1002 = mem[64]
                        mem[mem[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1016 = mem[_995]
                        mem[mem[64] + 36] = 160
                        _1023 = mem[_1016]
                        mem[mem[64] + 196] = mem[_1016]
                        s = 0
                        while s < _1023:
                            mem[mem[64] + s + 228] = mem[_1016 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1023) <= _1023:
                            mem[_1002 + 68] = mem[_995 + 44 len 20]
                            mem[_1002 + 100] = mem[_995 + 64]
                            mem[_1002 + 132] = mem[_995 + 96]
                            mem[_1002 + 164] = mem[_995 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1002 + ceil32(_1023) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1275 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1275] == mem[_1275]
                        else:
                            mem[_1002 + _1023 + 228] = 0
                            mem[_1002 + 68] = mem[_995 + 44 len 20]
                            mem[_1002 + 100] = mem[_995 + 64]
                            mem[_1002 + 132] = mem[_995 + 96]
                            mem[_1002 + 164] = mem[_995 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1002 + ceil32(_1023) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1283 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1283] == mem[_1283]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                        _1034 = mem[64]
                        mem[64] = mem[64] + 160
                        require idx < mem[96]
                        mem[_1034] = mem[(32 * idx) + 128]
                        mem[_1034 + 32] = msg.sender
                        mem[_1034 + 64] = block.timestamp + 1
                        mem[_1034 + 96] = _737
                        mem[_1034 + 128] = 0
                        _1040 = mem[64]
                        mem[mem[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1055 = mem[_1034]
                        mem[mem[64] + 36] = 160
                        _1064 = mem[_1055]
                        mem[mem[64] + 196] = mem[_1055]
                        s = 0
                        while s < _1064:
                            mem[mem[64] + s + 228] = mem[_1055 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1064) <= _1064:
                            mem[_1040 + 68] = mem[_1034 + 44 len 20]
                            mem[_1040 + 100] = mem[_1034 + 64]
                            mem[_1040 + 132] = mem[_1034 + 96]
                            mem[_1040 + 164] = mem[_1034 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1040 + ceil32(_1064) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1276 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1276] == mem[_1276]
                        else:
                            mem[_1040 + _1064 + 228] = 0
                            mem[_1040 + 68] = mem[_1034 + 44 len 20]
                            mem[_1040 + 100] = mem[_1034 + 64]
                            mem[_1040 + 132] = mem[_1034 + 96]
                            mem[_1040 + 164] = mem[_1034 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1040 + ceil32(_1064) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1284 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1284] == mem[_1284]
                else:
                    _975 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_975] = return_data.size
                    mem[_975 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                    if not return_data.size:
                        _997 = mem[64]
                        mem[64] = mem[64] + 160
                        require idx < mem[96]
                        mem[_997] = mem[(32 * idx) + 128]
                        mem[_997 + 32] = msg.sender
                        mem[_997 + 64] = block.timestamp + 1
                        mem[_997 + 96] = _737
                        mem[_997 + 128] = 0
                        _1004 = mem[64]
                        mem[mem[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1017 = mem[_997]
                        mem[mem[64] + 36] = 160
                        _1024 = mem[_1017]
                        mem[mem[64] + 196] = mem[_1017]
                        s = 0
                        while s < _1024:
                            mem[mem[64] + s + 228] = mem[_1017 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1024) <= _1024:
                            mem[_1004 + 68] = mem[_997 + 44 len 20]
                            mem[_1004 + 100] = mem[_997 + 64]
                            mem[_1004 + 132] = mem[_997 + 96]
                            mem[_1004 + 164] = mem[_997 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1004 + ceil32(_1024) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1277 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1277] == mem[_1277]
                        else:
                            mem[_1004 + _1024 + 228] = 0
                            mem[_1004 + 68] = mem[_997 + 44 len 20]
                            mem[_1004 + 100] = mem[_997 + 64]
                            mem[_1004 + 132] = mem[_997 + 96]
                            mem[_1004 + 164] = mem[_997 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1004 + ceil32(_1024) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1285 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1285] == mem[_1285]
                    else:
                        require return_data.size >= 32
                        require mem[_975 + 32] == bool(mem[_975 + 32])
                        if not mem[_975 + 32]:
                            revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                        _1037 = mem[64]
                        mem[64] = mem[64] + 160
                        require idx < mem[96]
                        mem[_1037] = mem[(32 * idx) + 128]
                        mem[_1037 + 32] = msg.sender
                        mem[_1037 + 64] = block.timestamp + 1
                        mem[_1037 + 96] = _737
                        mem[_1037 + 128] = 0
                        _1042 = mem[64]
                        mem[mem[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1056 = mem[_1037]
                        mem[mem[64] + 36] = 160
                        _1066 = mem[_1056]
                        mem[mem[64] + 196] = mem[_1056]
                        s = 0
                        while s < _1066:
                            mem[mem[64] + s + 228] = mem[_1056 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1066) <= _1066:
                            mem[_1042 + 68] = mem[_1037 + 44 len 20]
                            mem[_1042 + 100] = mem[_1037 + 64]
                            mem[_1042 + 132] = mem[_1037 + 96]
                            mem[_1042 + 164] = mem[_1037 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1042 + ceil32(_1066) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1278 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1278] == mem[_1278]
                        else:
                            mem[_1042 + _1066 + 228] = 0
                            mem[_1042 + 68] = mem[_1037 + 44 len 20]
                            mem[_1042 + 100] = mem[_1037 + 64]
                            mem[_1042 + 132] = mem[_1037 + 96]
                            mem[_1042 + 164] = mem[_1037 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1042 + ceil32(_1066) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1286 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1286] == mem[_1286]
            else:
                mem[_748 + _757 + 100] = 0
                call address(_747).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _748 + _757 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                    if not mem[96]:
                        _1005 = mem[64]
                        mem[64] = mem[64] + 160
                        require idx < mem[96]
                        mem[_1005] = mem[(32 * idx) + 128]
                        mem[_1005 + 32] = msg.sender
                        mem[_1005 + 64] = block.timestamp + 1
                        mem[_1005 + 96] = _737
                        mem[_1005 + 128] = 0
                        _1012 = mem[64]
                        mem[mem[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1021 = mem[_1005]
                        mem[mem[64] + 36] = 160
                        _1025 = mem[_1021]
                        mem[mem[64] + 196] = mem[_1021]
                        s = 0
                        while s < _1025:
                            mem[mem[64] + s + 228] = mem[_1021 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1025) <= _1025:
                            mem[_1012 + 68] = mem[_1005 + 44 len 20]
                            mem[_1012 + 100] = mem[_1005 + 64]
                            mem[_1012 + 132] = mem[_1005 + 96]
                            mem[_1012 + 164] = mem[_1005 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1012 + ceil32(_1025) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1279 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1279] == mem[_1279]
                        else:
                            mem[_1012 + _1025 + 228] = 0
                            mem[_1012 + 68] = mem[_1005 + 44 len 20]
                            mem[_1012 + 100] = mem[_1005 + 64]
                            mem[_1012 + 132] = mem[_1005 + 96]
                            mem[_1012 + 164] = mem[_1005 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1012 + ceil32(_1025) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1287 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1287] == mem[_1287]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                        _1044 = mem[64]
                        mem[64] = mem[64] + 160
                        require idx < mem[96]
                        mem[_1044] = mem[(32 * idx) + 128]
                        mem[_1044 + 32] = msg.sender
                        mem[_1044 + 64] = block.timestamp + 1
                        mem[_1044 + 96] = _737
                        mem[_1044 + 128] = 0
                        _1051 = mem[64]
                        mem[mem[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1060 = mem[_1044]
                        mem[mem[64] + 36] = 160
                        _1072 = mem[_1060]
                        mem[mem[64] + 196] = mem[_1060]
                        s = 0
                        while s < _1072:
                            mem[mem[64] + s + 228] = mem[_1060 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1072) <= _1072:
                            mem[_1051 + 68] = mem[_1044 + 44 len 20]
                            mem[_1051 + 100] = mem[_1044 + 64]
                            mem[_1051 + 132] = mem[_1044 + 96]
                            mem[_1051 + 164] = mem[_1044 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1051 + ceil32(_1072) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1280 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1280] == mem[_1280]
                        else:
                            mem[_1051 + _1072 + 228] = 0
                            mem[_1051 + 68] = mem[_1044 + 44 len 20]
                            mem[_1051 + 100] = mem[_1044 + 64]
                            mem[_1051 + 132] = mem[_1044 + 96]
                            mem[_1051 + 164] = mem[_1044 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1051 + ceil32(_1072) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1288 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1288] == mem[_1288]
                else:
                    _978 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_978] = return_data.size
                    mem[_978 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                    if not return_data.size:
                        _1007 = mem[64]
                        mem[64] = mem[64] + 160
                        require idx < mem[96]
                        mem[_1007] = mem[(32 * idx) + 128]
                        mem[_1007 + 32] = msg.sender
                        mem[_1007 + 64] = block.timestamp + 1
                        mem[_1007 + 96] = _737
                        mem[_1007 + 128] = 0
                        _1014 = mem[64]
                        mem[mem[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1022 = mem[_1007]
                        mem[mem[64] + 36] = 160
                        _1026 = mem[_1022]
                        mem[mem[64] + 196] = mem[_1022]
                        s = 0
                        while s < _1026:
                            mem[mem[64] + s + 228] = mem[_1022 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1026) <= _1026:
                            mem[_1014 + 68] = mem[_1007 + 44 len 20]
                            mem[_1014 + 100] = mem[_1007 + 64]
                            mem[_1014 + 132] = mem[_1007 + 96]
                            mem[_1014 + 164] = mem[_1007 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1014 + ceil32(_1026) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1281 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1281] == mem[_1281]
                        else:
                            mem[_1014 + _1026 + 228] = 0
                            mem[_1014 + 68] = mem[_1007 + 44 len 20]
                            mem[_1014 + 100] = mem[_1007 + 64]
                            mem[_1014 + 132] = mem[_1007 + 96]
                            mem[_1014 + 164] = mem[_1007 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1014 + ceil32(_1026) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1289 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1289] == mem[_1289]
                    else:
                        require return_data.size >= 32
                        require mem[_978 + 32] == bool(mem[_978 + 32])
                        if not mem[_978 + 32]:
                            revert with 0, 'TransferHelperUNDB::safeApprove: approve failed'
                        _1047 = mem[64]
                        mem[64] = mem[64] + 160
                        require idx < mem[96]
                        mem[_1047] = mem[(32 * idx) + 128]
                        mem[_1047 + 32] = msg.sender
                        mem[_1047 + 64] = block.timestamp + 1
                        mem[_1047 + 96] = _737
                        mem[_1047 + 128] = 0
                        mem[mem[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1061 = mem[_1047]
                        mem[mem[64] + 36] = 160
                        _1074 = mem[_1061]
                        mem[mem[64] + 196] = mem[_1061]
                        s = 0
                        while s < _1074:
                            mem[mem[64] + s + 228] = mem[_1061 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1074) <= _1074:
                            mem[mem[64] + 68] = mem[_1047 + 44 len 20]
                            mem[mem[64] + 100] = mem[_1047 + 64]
                            mem[mem[64] + 132] = mem[_1047 + 96]
                            mem[mem[64] + 164] = mem[_1047 + 128]
                            require ext_code.size(arg3)
                            call arg3.exactInput(bytes rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 32, 160, mem[mem[64] + 68 len ceil32(_1074) + 160]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1282 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1282] == mem[_1282]
                        else:
                            mem[mem[64] + _1074 + 228] = 0
                            mem[mem[64] + 68] = mem[_1047 + 44 len 20]
                            mem[mem[64] + 100] = mem[_1047 + 64]
                            mem[mem[64] + 132] = mem[_1047 + 96]
                            mem[mem[64] + 164] = mem[_1047 + 128]
                            require ext_code.size(arg3)
                            call arg3.exactInput(bytes rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 32, 160, mem[mem[64] + 68 len ceil32(_1074) + 160]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1290 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1290] == mem[_1290]
        idx = idx + 1
        continue 
}



}
