contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint8 stor1;

function _fallback() payable {
    revert
}

function addManager(address arg1) {
    require calldata.size - 4 >= 32
    if tx.origin != 0x1ccc10513abd57c874e29c48b6ad28b5b7fcd388:
        revert with 0, 'Only TOP manager !!!'
    stor1[address(arg1)] = 1
}

function sub_1938f9c0(?) {
    require calldata.size - 4 >= 32
    if tx.origin != 0x1ccc10513abd57c874e29c48b6ad28b5b7fcd388:
        revert with 0, 'Only TOP manager !!!'
    require stor0
    stor0 = arg1 / stor0
}

function sub_471d7dce(?) {
    require calldata.size - 4 >= 128
    if bool(stor1[tx.origin]) != 1:
        revert with 0, 'Check origin !!!'
    require stor0
    emit 0x9aa4258b: arg1 / stor0, address(call.data[36] / stor0), address(call.data[68] / stor0), address(arg2 / stor0)
}

function removeManager(address arg1) {
    require calldata.size - 4 >= 32
    if arg1 == 0x1ccc10513abd57c874e29c48b6ad28b5b7fcd388:
        revert with 0, 'Cant remove TOP manager !!!'
    if tx.origin != 0x1ccc10513abd57c874e29c48b6ad28b5b7fcd388:
        if arg1 != tx.origin:
            revert with 0, 'Only yourself or TOP manager !!!'
    stor1[address(arg1)] = 0
}

function sub_26b7256f(?) {
    require calldata.size - 4 >= 96
    if tx.origin != 0x1ccc10513abd57c874e29c48b6ad28b5b7fcd388:
        revert with 0, 'Only TOP manager !!!'
    require ext_code.size(arg1)
    call arg1.0x2e1a7d4d with:
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
    if tx.origin != 0x1ccc10513abd57c874e29c48b6ad28b5b7fcd388:
        revert with 0, 'Only TOP manager !!!'
    require ext_code.size(arg1)
    call arg1.0x2e1a7d4d with:
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
    if tx.origin != 0x1ccc10513abd57c874e29c48b6ad28b5b7fcd388:
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

function sub_c5fdbaaf(?) {
    require calldata.size - 4 >= 128
    if bool(stor1[tx.origin]) != 1:
        revert with 0, 'Check origin !!!'
    require stor0
    require ext_code.size(arg2)
    staticcall arg2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(address(call.data[36]) / stor0))
    call address(address(call.data[36]) / stor0).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg1 / stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    if address(address(call.data[36]) / stor0) < uint64(address(call.data[68]) / stor0) << 96:
        if address(address(call.data[36]) / stor0) == address(address(call.data[36]) / stor0):
            if address(address(call.data[36]) / stor0) < uint64(address(call.data[68]) / stor0) << 96:
                if address(address(call.data[36]) / stor0) == address(address(call.data[36]) / stor0):
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor0 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor0), address(this.address), 128, 0
                else:
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor0 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor0), 0, address(this.address), 128, 0
            else:
                if address(address(call.data[36]) / stor0) == uint64(address(call.data[68]) / stor0) << 96:
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor0 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor0), address(this.address), 128, 0
                else:
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor0 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor0), 0, address(this.address), 128, 0
        else:
            if address(address(call.data[36]) / stor0) < uint64(address(call.data[68]) / stor0) << 96:
                if address(address(call.data[36]) / stor0) == address(address(call.data[36]) / stor0):
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor0 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor0), address(this.address), 128, 0
                else:
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor0 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor0), 0, address(this.address), 128, 0
            else:
                if address(address(call.data[36]) / stor0) == uint64(address(call.data[68]) / stor0) << 96:
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor0 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor0), address(this.address), 128, 0
                else:
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor0 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor0), 0, address(this.address), 128, 0
    else:
        if address(address(call.data[68]) / stor0) == address(address(call.data[36]) / stor0):
            if address(address(call.data[36]) / stor0) < uint64(address(call.data[68]) / stor0) << 96:
                if address(address(call.data[36]) / stor0) == address(address(call.data[36]) / stor0):
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor0 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor0), address(this.address), 128, 0
                else:
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor0 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor0), 0, address(this.address), 128, 0
            else:
                if address(address(call.data[36]) / stor0) == uint64(address(call.data[68]) / stor0) << 96:
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor0 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor0), address(this.address), 128, 0
                else:
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor0 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1 / stor0), 0, address(this.address), 128, 0
        else:
            if address(address(call.data[36]) / stor0) < uint64(address(call.data[68]) / stor0) << 96:
                if address(address(call.data[36]) / stor0) == address(address(call.data[36]) / stor0):
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor0 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor0), address(this.address), 128, 0
                else:
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor0 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor0), 0, address(this.address), 128, 0
            else:
                if address(address(call.data[36]) / stor0) == uint64(address(call.data[68]) / stor0) << 96:
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 / stor0 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor0), address(this.address), 128, 0
                else:
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 / stor0 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1 / stor0), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
