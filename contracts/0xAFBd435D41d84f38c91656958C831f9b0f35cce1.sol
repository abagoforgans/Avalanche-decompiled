contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
address testAddress;
uint8 stor3; offset 160
uint128 stor3; offset 160
address beneficiaryAddress;
uint256 period;
uint256 sub_4f36ddd8;

function name() payable {
    return name[0 len name.length]
}

function beneficiary() payable {
    return beneficiaryAddress
}

function sub_4f36ddd8(?) payable {
    return sub_4f36ddd8
}

function online() payable {
    return bool(uint8(stor3.field_160))
}

function owner() payable {
    return owner
}

function period() payable {
    return period
}

function test() payable {
    return testAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function sub_bfb30c01(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    testAddress = arg1
    return 1
}

function sub_de176f7f(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    beneficiaryAddress = arg1
    return 1
}

function sub_0221c7a1(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
    return 1
}

function sub_1629a49a(?) payable {
    require msg.sender == owner
    require block.timestamp - sub_4f36ddd8 >= period
    require ext_code.size(testAddress)
    call testAddress.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, 250 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_4f36ddd8 = block.timestamp
    emit Withdraw(250 * 10^18, beneficiaryAddress);
    return 1
}



}
