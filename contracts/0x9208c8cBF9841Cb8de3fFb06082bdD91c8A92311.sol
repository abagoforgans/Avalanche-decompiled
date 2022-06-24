contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[260 len arg4.length] = arg4[all]
    mem[arg4.length + 260] = 0
    require ext_code.size(this.address)
    call this.address.0x10d1e85c with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, 128, arg4.length, arg4[all], mem[arg4.length + 260 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[260 len arg4.length] = arg4[all]
    mem[arg4.length + 260] = 0
    require ext_code.size(this.address)
    call this.address.0x10d1e85c with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, 128, arg4.length, arg4[all], mem[arg4.length + 260 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg1 == stor0
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        staticcall stor2.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            staticcall stor3.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 'NH{q', 1
    require arg4.length >= 128
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == cd[(arg4 + 100)]
    require cd[(arg4 + 132)] == cd[(arg4 + 132)]
    if not arg2:
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3
    else:
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(cd[(arg4 + 68)]))
    if not arg2:
        if not arg3:
            call address(cd[(arg4 + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args cd[(arg4 + 100)], cd[(arg4 + 100)], address(this.address), 128, 0
        else:
            call address(cd[(arg4 + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args cd[(arg4 + 100)], 0, address(this.address), 128, 0
    else:
        if not arg3:
            call address(cd[(arg4 + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, cd[(arg4 + 100)], address(this.address), 128, 0
        else:
            call address(cd[(arg4 + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(cd[(arg4 + 36)]), cd[(arg4 + 132)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        revert with 0, 'Trade was not profitable'
}



}
