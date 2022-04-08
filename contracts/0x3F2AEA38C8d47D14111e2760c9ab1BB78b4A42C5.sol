contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_c55425c2(?) {
    require calldata.size - 4 >= 64
    if tx.origin != 0x2cbc862857490c73d46f9f142dfd4b14df027d16:
        if tx.origin != 0x9373fd1ba27e627b52c966201182d357c0303cdc:
            if tx.origin != 0xb589ede79cfe3b9a0e7a8c8f5432274443b04e4a:
                if tx.origin != 0x1ccc10513abd57c874e29c48b6ad28b5b7fcd388:
                    revert with 0, 'Check origin !!!'
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
    if tx.origin != 0x2cbc862857490c73d46f9f142dfd4b14df027d16:
        if tx.origin != 0x9373fd1ba27e627b52c966201182d357c0303cdc:
            if tx.origin != 0xb589ede79cfe3b9a0e7a8c8f5432274443b04e4a:
                if tx.origin != 0x1ccc10513abd57c874e29c48b6ad28b5b7fcd388:
                    revert with 0, 'Check origin !!!'
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
    require ext_code.size(arg2)
    staticcall arg2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(call.data[36]))
    call address(call.data[36]).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    if address(call.data[36]) < address(call.data[68]):
        if address(call.data[36]) == address(call.data[36]):
            if address(call.data[36]) < address(call.data[68]):
                if address(call.data[36]) == address(call.data[36]):
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), this.address, 128, 0
                else:
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), 0, this.address, 128, 0
            else:
                if address(call.data[36]) == address(call.data[68]):
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), this.address, 128, 0
                else:
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), 0, this.address, 128, 0
        else:
            if address(call.data[36]) < address(call.data[68]):
                if address(call.data[36]) == address(call.data[36]):
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), this.address, 128, 0
                else:
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), 0, this.address, 128, 0
            else:
                if address(call.data[36]) == address(call.data[68]):
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), this.address, 128, 0
                else:
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), 0, this.address, 128, 0
    else:
        if address(call.data[68]) == address(call.data[36]):
            if address(call.data[36]) < address(call.data[68]):
                if address(call.data[36]) == address(call.data[36]):
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), this.address, 128, 0
                else:
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), 0, this.address, 128, 0
            else:
                if address(call.data[36]) == address(call.data[68]):
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), this.address, 128, 0
                else:
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg1), 0, this.address, 128, 0
        else:
            if address(call.data[36]) < address(call.data[68]):
                if address(call.data[36]) == address(call.data[36]):
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), this.address, 128, 0
                else:
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), 0, this.address, 128, 0
            else:
                if address(call.data[36]) == address(call.data[68]):
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), this.address, 128, 0
                else:
                    call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * arg1 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg1), 0, this.address, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
