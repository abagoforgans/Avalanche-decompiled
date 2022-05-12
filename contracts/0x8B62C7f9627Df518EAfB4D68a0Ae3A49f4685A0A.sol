contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
mapping of uint8 stor3;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function allow(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 1
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function deposit(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[0] = msg.sender
    mem[32] = 3
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'Allowance: caller is not allowed'
    mem[100] = stor1
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args stor1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = stor1
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0xdd62ed3e with:
            gas gas_remaining wei
           args stor1, this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'ERR:: ERC20 allowance not set'
    mem[(2 * ceil32(return_data.size)) + 100] = stor1
    mem[(2 * ceil32(return_data.size)) + 132] = this.address
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args stor1, address(this.address), ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 100] = arg2
    mem[(4 * ceil32(return_data.size)) + 132] = 0
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), 0
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 100] = arg2
    mem[(6 * ceil32(return_data.size)) + 132] = -1
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    while idx <= 10:
        mem[mem[64] + 4] = ext_call.return_data[0] / 10
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = stor1
        require ext_code.size(arg2)
        call arg2.deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args ext_call.return_data[0] / 10, arg1, stor1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _36 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_36] == mem[_36]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _33 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _34 = mem[_33]
    require mem[_33] == mem[_33]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = stor1
    mem[mem[64] + 68] = _34
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), stor1, _34
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _40 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_40] == bool(mem[_40])
}



}
