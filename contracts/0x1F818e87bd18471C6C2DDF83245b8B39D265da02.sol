contract main {




// =====================  Runtime code  =====================


#
#  - sub_e15e2c44(?)
#
uint256 stor0;

function _fallback() payable {
    revert
}

function sub_47f63dfd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(0x957ca4a4aa7cdc866cf430bb140753f04e273bc0)
    call 0x957ca4a4aa7cdc866cf430bb140753f04e273bc0.depositFor(address arg1) with:
       value arg1 wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Staked(arg1, block.timestamp, msg.sender, 'AVAX');
    stor0 = 1
}

function sub_3999c488(?) {
    require ext_code.size(0x957ca4a4aa7cdc866cf430bb140753f04e273bc0)
    staticcall 0x957ca4a4aa7cdc866cf430bb140753f04e273bc0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(0x957ca4a4aa7cdc866cf430bb140753f04e273bc0)
    staticcall 0x957ca4a4aa7cdc866cf430bb140753f04e273bc0.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x957ca4a4aa7cdc866cf430bb140753f04e273bc0)
    staticcall 0x957ca4a4aa7cdc866cf430bb140753f04e273bc0.totalDeposits() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_18994c1f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[100] = msg.sender
    require ext_code.size(0x957ca4a4aa7cdc866cf430bb140753f04e273bc0)
    staticcall 0x957ca4a4aa7cdc866cf430bb140753f04e273bc0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(0x957ca4a4aa7cdc866cf430bb140753f04e273bc0)
    staticcall 0x957ca4a4aa7cdc866cf430bb140753f04e273bc0.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Cannot unstake more than was initially staked'
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Insufficient allowance for the router contract'
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, mem[(2 * ceil32(return_data.size)) + 228 len 28]
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call 0x957ca4a4aa7cdc866cf430bb140753f04e273bc0.mem[(2 * ceil32(return_data.size)) + 228 len 4] with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
        mem[(2 * ceil32(return_data.size)) + 296 len 64] = 0, arg1, mem[(2 * ceil32(return_data.size)) + 296 len 28]
        call 0x957ca4a4aa7cdc866cf430bb140753f04e273bc0.mem[(2 * ceil32(return_data.size)) + 296 len 4] with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 300]
        if ext_call.success:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransferETH: ETH transfer failed'
            emit 0x2a777541: arg1, block.timestamp, msg.sender, 'AVAX'
            stor0 = 1
            return 1
        if not return_data.size:
            mem[(2 * ceil32(return_data.size)) + 396 len 96] = 0, msg.sender, arg1, mem[(2 * ceil32(return_data.size)) + 396 len 28]
            call 0x957ca4a4aa7cdc866cf430bb140753f04e273bc0.mem[(2 * ceil32(return_data.size)) + 396 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 400 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
                        revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            else:
                mem[(2 * ceil32(return_data.size)) + 428 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 428] == bool(mem[(2 * ceil32(return_data.size)) + 428])
                    if not mem[(2 * ceil32(return_data.size)) + 428]:
                        revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        else:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 397 len 96] = 0, msg.sender, arg1, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 397 len 28]
            call 0x957ca4a4aa7cdc866cf430bb140753f04e273bc0.mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 397 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 401 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
                        revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429])
                    if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429]:
                        revert with 0, 'TransferHelper::safeTransfer: transfer failed'
    else:
        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 260] == bool(mem[(2 * ceil32(return_data.size)) + 260])
            if not mem[(2 * ceil32(return_data.size)) + 260]:
                revert with 0, 'TransferHelper::transferFrom: transferFrom failed'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 64] = 0, arg1, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
        call 0x957ca4a4aa7cdc866cf430bb140753f04e273bc0.mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 301]
        if ext_call.success:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransferETH: ETH transfer failed'
            emit 0x2a777541: arg1, block.timestamp, msg.sender, 'AVAX'
            stor0 = 1
            return 1
        if not return_data.size:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 397 len 96] = 0, msg.sender, arg1, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 397 len 28]
            call 0x957ca4a4aa7cdc866cf430bb140753f04e273bc0.mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 397 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 401 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
                        revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429])
                    if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429]:
                        revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        else:
            mem[(4 * ceil32(return_data.size)) + 398 len 96] = 0, msg.sender, arg1, mem[(4 * ceil32(return_data.size)) + 398 len 28]
            call 0x957ca4a4aa7cdc866cf430bb140753f04e273bc0.mem[(4 * ceil32(return_data.size)) + 398 len 4] with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 402 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
                        revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            else:
                mem[(4 * ceil32(return_data.size)) + 430 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 430] == bool(mem[(4 * ceil32(return_data.size)) + 430])
                    if not mem[(4 * ceil32(return_data.size)) + 430]:
                        revert with 0, 'TransferHelper::safeTransfer: transfer failed'
    stor0 = 1
    return 0
}



}
