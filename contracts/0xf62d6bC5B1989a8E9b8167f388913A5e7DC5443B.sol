contract main {




// =====================  Runtime code  =====================


address owner;
address USDTAddress;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;

function owner() payable {
    return owner
}

function USDT() payable {
    return USDTAddress
}

function _fallback() payable {
    revert
}

function sub_2fb0849a(?) payable {
    return stor4, stor5
}

function sub_4ccfe87b(?) payable {
    return stor2, stor3
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'caller is not the owner'
    owner = arg1
}

function calculateFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 and stor4 > -1 / arg1:
        revert with 0, 17
    if arg1 and stor5 > -1 / arg1:
        revert with 0, 17
    return arg1 * stor4 / 1000, arg1 * stor5 / 1000
}

function setUSDT(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'caller is not the owner'
    if not arg1:
        revert with 0, 'Zero address appears'
    USDTAddress = arg1
}

function sub_6d1655bf(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'caller is not the owner'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 != 1000:
        revert with 0, 'Invalid fee amount'
    mem[96] = arg1
    mem[128] = arg2
    s = 4
    idx = 96
    while 160 > idx:
        uint256(stor[s]) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 6
    while 6 > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    emit 0x251bb649: msg.sender, arg1, arg2
}

function setWallet(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'caller is not the owner'
    if not arg1:
        revert with 0, 'Zero address appears'
    if not arg2:
        revert with 0, 'Zero address appears'
    mem[96] = arg1
    mem[128] = arg2
    s = 2
    idx = 96
    while 160 > idx:
        address(stor[s]) = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 4
    while 4 > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    emit 0x209e09f1: msg.sender, address(arg1), arg2
}

function recover(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'caller is not the owner'
    if not arg1:
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, ''
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transferUSDT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 and stor4 > -1 / arg1:
        revert with 0, 17
    if arg1 and stor5 > -1 / arg1:
        revert with 0, 17
    require ext_code.size(USDTAddress)
    call USDTAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(USDTAddress)
    call USDTAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, arg1 * stor4 / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(USDTAddress)
    call USDTAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor3, arg1 * stor5 / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x115fb950: arg1 * stor4 / 1000, arg1 * stor5 / 1000, msg.sender
}



}
