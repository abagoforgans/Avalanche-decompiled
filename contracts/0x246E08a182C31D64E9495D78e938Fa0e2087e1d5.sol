contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 lastSellTime;
mapping of uint256 sub_b42b3ae7;
mapping of uint8 stor3;
uint8 sub_457bfbbb;
address sub_2aa8481fAddress; offset 8
address sub_85adc8b0Address;
address routerAddress;
uint256 stor7;

function sub_2761d156(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function sub_2aa8481f(?) payable {
    return sub_2aa8481fAddress
}

function routerAddress() payable {
    return routerAddress
}

function sub_457bfbbb(?) payable {
    return bool(sub_457bfbbb)
}

function sub_85adc8b0(?) payable {
    return sub_85adc8b0Address
}

function owner() payable {
    return owner
}

function sub_b42b3ae7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b42b3ae7[arg1]
}

function lastSellTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastSellTime[arg1]
}

function _fallback() payable {
    revert
}

function sub_34e5bda2(?) payable {
    sub_457bfbbb = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_15889446(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(arg1):
        sub_2aa8481fAddress = address(arg1)
    if address(arg2):
        sub_85adc8b0Address = address(arg2)
    if address(arg3):
        routerAddress = address(arg3)
}

function sub_d41cf2e0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_2aa8481fAddress)
    staticcall sub_2aa8481fAddress.0x32295c84 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= sub_b42b3ae7[address(arg1)]:
        return 0
    if block.timestamp < lastSellTime[address(arg1)]:
        revert with 'NH{q', 17
    if block.timestamp - lastSellTime[address(arg1)] > stor7:
        return ext_call.return_data[0]
    if ext_call.return_data[0] < sub_b42b3ae7[address(arg1)]:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] - sub_b42b3ae7[address(arg1)])
}

function sub_ef28fd9c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    mem[128] = sub_85adc8b0Address
    require ext_code.size(routerAddress)
    staticcall routerAddress.WAVAX() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    sub_457bfbbb = 1
    mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, 0, 160, address(arg1), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
