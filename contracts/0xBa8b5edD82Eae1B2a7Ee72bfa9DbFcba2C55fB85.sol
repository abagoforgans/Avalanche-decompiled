contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function sub_69c48d06(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    idx = 0
    while idx < 5:
        if arg2 > !idx:
            revert with 0, 17
        staticcall stor0.sellOrders(uint256 arg1) with:
                gas gas_remaining wei
               args (arg2 + idx)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_18] == mem[_18 + 12 len 20]
        if mem[_18 + 32] - arg1:
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, mem[_18 + 64]
        if ext_call.return_data[0] != 1 or return_data.size <= 31 and return_data.size or not ext_call.success:
            revert with 0, 'TRANSFER_FROM_FAILED'
        if arg2 > !idx:
            revert with 0, 17
        require ext_code.size(stor0)
        call stor0.buyCard(uint256 arg1) with:
             gas gas_remaining wei
            args (arg2 + idx)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.0xb88d4fde with:
             gas gas_remaining wei
            args this.address, msg.sender, arg1, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require msg.sender == stor3
    idx = 1
    while idx < 5:
        if arg2 < idx:
            revert with 0, 17
        staticcall stor0.sellOrders(uint256 arg1) with:
                gas gas_remaining wei
               args (arg2 - idx)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_45] == mem[_45 + 12 len 20]
        if mem[_45 + 32] - arg1:
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, mem[_45 + 64]
        if ext_call.return_data[0] != 1 or return_data.size <= 31 and return_data.size or not ext_call.success:
            revert with 0, 'TRANSFER_FROM_FAILED'
        if arg2 < idx:
            revert with 0, 17
        require ext_code.size(stor0)
        call stor0.buyCard(uint256 arg1) with:
             gas gas_remaining wei
            args (arg2 - idx)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.0xb88d4fde with:
             gas gas_remaining wei
            args this.address, msg.sender, arg1, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require msg.sender == stor3
}



}
