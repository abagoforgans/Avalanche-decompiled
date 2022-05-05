contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
mapping of uint8 stor2;

function _fallback() payable {
    revert
}

function addManager(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != 0x1ccc10513abd57c874e29c48b6ad28b5b7fcd388:
        revert with 0, 'Only TOP manager !!!'
    stor2[address(arg1)] = 1
}

function sub_1938f9c0(?) {
    require calldata.size - 4 >= 32
    if msg.sender != 0x1ccc10513abd57c874e29c48b6ad28b5b7fcd388:
        revert with 0, 'Only TOP manager !!!'
    require stor1
    stor1 = arg1 / stor1
}

function removeManager(address arg1) {
    require calldata.size - 4 >= 32
    if arg1 == 0x1ccc10513abd57c874e29c48b6ad28b5b7fcd388:
        revert with 0, 'Cant remove TOP manager !!!'
    if msg.sender != 0x1ccc10513abd57c874e29c48b6ad28b5b7fcd388:
        if arg1 != msg.sender:
            revert with 0, 'Only yourself or TOP manager !!!'
    stor2[address(arg1)] = 0
}

function sub_ef11dd9e(?) {
    require calldata.size - 4 >= 32
    if msg.sender != 0x1ccc10513abd57c874e29c48b6ad28b5b7fcd388:
        revert with 0, 'Only TOP manager !!!'
    call 0x1ccc10513abd57c874e29c48b6ad28b5b7fcd388 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_26b7256f(?) {
    require calldata.size - 4 >= 96
    if msg.sender != 0x1ccc10513abd57c874e29c48b6ad28b5b7fcd388:
        revert with 0, 'Only TOP manager !!!'
    require ext_code.size(arg1)
    call arg1.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call arg2 with:
       value arg3 wei
         gas 2300 * is_zero(value) wei
}

function sub_c55425c2(?) {
    require calldata.size - 4 >= 64
    if msg.sender != 0x1ccc10513abd57c874e29c48b6ad28b5b7fcd388:
        revert with 0, 'Only TOP manager !!!'
    require ext_code.size(arg1)
    call arg1.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call tx.origin with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Not enough native coin'
}

function drainMe(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != 0x1ccc10513abd57c874e29c48b6ad28b5b7fcd388:
        revert with 0, 'Only TOP manager !!!'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NO MONEYYY'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args tx.origin, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_471d7dce(?) {
    require calldata.size - 4 >= 128
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Check origin !!!'
    require stor1
    require ext_code.size(address(arg2 / stor1))
    staticcall address(arg2 / stor1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(call.data[36] / stor1))
    call address(call.data[36] / stor1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2 / stor1), arg1 / stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2 / stor1))
    if address(call.data[36] / stor1) < uint64(call.data[68] / stor1) << 96:
        if address(call.data[36] / stor1) == address(call.data[36] / stor1):
            if address(call.data[36] / stor1) < uint64(call.data[68] / stor1) << 96:
                if address(call.data[36] / stor1) == address(call.data[36] / stor1):
                    call address(arg2 / stor1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor1), this.address, 128, 0
                else:
                    call address(arg2 / stor1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor1), 0, this.address, 128, 0
            else:
                if address(call.data[36] / stor1) == uint64(call.data[68] / stor1) << 96:
                    call address(arg2 / stor1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor1), this.address, 128, 0
                else:
                    call address(arg2 / stor1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor1), 0, this.address, 128, 0
        else:
            if address(call.data[36] / stor1) < uint64(call.data[68] / stor1) << 96:
                if address(call.data[36] / stor1) == address(call.data[36] / stor1):
                    call address(arg2 / stor1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor1), this.address, 128, 0
                else:
                    call address(arg2 / stor1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor1), 0, this.address, 128, 0
            else:
                if address(call.data[36] / stor1) == uint64(call.data[68] / stor1) << 96:
                    call address(arg2 / stor1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor1), this.address, 128, 0
                else:
                    call address(arg2 / stor1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor1), 0, this.address, 128, 0
    else:
        if address(call.data[68] / stor1) == address(call.data[36] / stor1):
            if address(call.data[36] / stor1) < uint64(call.data[68] / stor1) << 96:
                if address(call.data[36] / stor1) == address(call.data[36] / stor1):
                    call address(arg2 / stor1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor1), this.address, 128, 0
                else:
                    call address(arg2 / stor1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor1), 0, this.address, 128, 0
            else:
                if address(call.data[36] / stor1) == uint64(call.data[68] / stor1) << 96:
                    call address(arg2 / stor1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor1), this.address, 128, 0
                else:
                    call address(arg2 / stor1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor1), 0, this.address, 128, 0
        else:
            if address(call.data[36] / stor1) < uint64(call.data[68] / stor1) << 96:
                if address(call.data[36] / stor1) == address(call.data[36] / stor1):
                    call address(arg2 / stor1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor1), this.address, 128, 0
                else:
                    call address(arg2 / stor1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor1), 0, this.address, 128, 0
            else:
                if address(call.data[36] / stor1) == uint64(call.data[68] / stor1) << 96:
                    call address(arg2 / stor1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor1), this.address, 128, 0
                else:
                    call address(arg2 / stor1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor1), 0, this.address, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c5fdbaaf(?) {
    require calldata.size - 4 >= 128
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Check origin !!!'
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 2:
        require ext_code.size(stor0)
        call stor0.0xd8ccd0f3 with:
             gas gas_remaining wei
            args 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require stor1
    require ext_code.size(arg2)
    staticcall arg2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(address(call.data[36]) / stor1))
    call address(address(call.data[36]) / stor1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg1 / stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    if address(address(call.data[36]) / stor1) < uint64(address(call.data[68]) / stor1) << 96:
        if address(address(call.data[36]) / stor1) == address(address(call.data[36]) / stor1):
            if address(address(call.data[36]) / stor1) < uint64(address(call.data[68]) / stor1) << 96:
                if address(address(call.data[36]) / stor1) == address(address(call.data[36]) / stor1):
                    call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor1), address(this.address), 128, 0
                else:
                    call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor1), 0, address(this.address), 128, 0
            else:
                if address(address(call.data[36]) / stor1) == uint64(address(call.data[68]) / stor1) << 96:
                    call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor1), address(this.address), 128, 0
                else:
                    call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor1), 0, address(this.address), 128, 0
        else:
            if address(address(call.data[36]) / stor1) < uint64(address(call.data[68]) / stor1) << 96:
                if address(address(call.data[36]) / stor1) == address(address(call.data[36]) / stor1):
                    call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor1), address(this.address), 128, 0
                else:
                    call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor1), 0, address(this.address), 128, 0
            else:
                if address(address(call.data[36]) / stor1) == uint64(address(call.data[68]) / stor1) << 96:
                    call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor1), address(this.address), 128, 0
                else:
                    call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor1), 0, address(this.address), 128, 0
    else:
        if address(address(call.data[68]) / stor1) == address(address(call.data[36]) / stor1):
            if address(address(call.data[36]) / stor1) < uint64(address(call.data[68]) / stor1) << 96:
                if address(address(call.data[36]) / stor1) == address(address(call.data[36]) / stor1):
                    call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor1), address(this.address), 128, 0
                else:
                    call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor1), 0, address(this.address), 128, 0
            else:
                if address(address(call.data[36]) / stor1) == uint64(address(call.data[68]) / stor1) << 96:
                    call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor1), address(this.address), 128, 0
                else:
                    call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor1), 0, address(this.address), 128, 0
        else:
            if address(address(call.data[36]) / stor1) < uint64(address(call.data[68]) / stor1) << 96:
                if address(address(call.data[36]) / stor1) == address(address(call.data[36]) / stor1):
                    call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor1), address(this.address), 128, 0
                else:
                    call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor1), 0, address(this.address), 128, 0
            else:
                if address(address(call.data[36]) / stor1) == uint64(address(call.data[68]) / stor1) << 96:
                    call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor1), address(this.address), 128, 0
                else:
                    call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor1), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
