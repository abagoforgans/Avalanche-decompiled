contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address sub_0b9ec158Address;
address USDCAddress;
address WAVAXAddress;
address DEADAddress;
address pairAddress;
address routerAddress;
address routerAddress;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;

function DEAD() payable {
    return DEADAddress
}

function sub_0b9ec158(?) payable {
    return sub_0b9ec158Address
}

function routerAddress() payable {
    return routerAddress
}

function WAVAX() payable {
    return WAVAXAddress
}

function USDC() payable {
    return USDCAddress
}

function owner() payable {
    return owner
}

function pair() payable {
    return pairAddress
}

function router() payable {
    return routerAddress
}

function isAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function authorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
}

function setFee(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    stor10 = arg1
    stor11 = arg2
    stor12 = arg3
    stor13 = arg4
    stor15 = arg5
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    stor1[address(arg1)] = 1
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_4de8ff21(?) payable {
    mem[100] = msg.sender
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = 1
    require ext_code.size(sub_0b9ec158Address)
    call sub_0b9ec158Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 132] = this.address
    mem[(4 * ceil32(return_data.size)) + 164] = 0
    require ext_code.size(USDCAddress)
    call USDCAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, 0
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 96] = 3
    mem[(6 * ceil32(return_data.size)) + 128] = USDCAddress
    mem[(6 * ceil32(return_data.size)) + 160] = WAVAXAddress
    mem[(6 * ceil32(return_data.size)) + 192] = sub_0b9ec158Address
    mem[(6 * ceil32(return_data.size)) + 228] = routerAddress
    mem[(6 * ceil32(return_data.size)) + 260] = 0
    require ext_code.size(USDCAddress)
    call USDCAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, 0
    mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(7 * ceil32(return_data.size)) + 324] = 0
    mem[(7 * ceil32(return_data.size)) + 356] = stor15
    require ext_code.size(sub_0b9ec158Address)
    call sub_0b9ec158Address.setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, 0, 0, stor15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 228] = 0
    mem[(7 * ceil32(return_data.size)) + 260] = 0
    mem[(7 * ceil32(return_data.size)) + 292] = 160
    mem[(7 * ceil32(return_data.size)) + 388] = 3
    idx = 0
    s = (7 * ceil32(return_data.size)) + 420
    t = (6 * ceil32(return_data.size)) + 128
    while idx < mem[(6 * ceil32(return_data.size)) + 96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(7 * ceil32(return_data.size)) + 324] = this.address
    mem[(7 * ceil32(return_data.size)) + 356] = block.timestamp
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 512]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_0b9ec158Address)
    staticcall sub_0b9ec158Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _45 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _46 = mem[_45]
    if mem[_45] < 1:
        revert with 0, 17
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _46 - 1
    require ext_code.size(sub_0b9ec158Address)
    call sub_0b9ec158Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _46 - 1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _49 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_49] == bool(mem[_49])
    require ext_code.size(sub_0b9ec158Address)
    call sub_0b9ec158Address.setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args stor10, stor12, stor13, stor14, stor15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
