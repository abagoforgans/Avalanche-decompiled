contract main {




// =====================  Runtime code  =====================


uint128 stor3608; offset 160
address __implementation__Address;
uint256 stor3608;
uint128 storB531; offset 160
address __admin__Address;

function __implementation__() {
    return __implementation__Address
}

function __admin__() {
    return __admin__Address
}

function _fallback() payable {
    if ext_code.size(msg.sender):
        if not calldata.size:
            if gas_remaining <= 2300:
    delegate uint256(stor3608.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function __changeAdmin__(address arg1) {
    require calldata.size - 4 >= 32
    if __admin__Address != msg.sender:
        revert with 0, 'only admin'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0xfe43616e6e6f74206368616e6765207468652061646d696e206f6620612070726f787920746f20746865207a65726f20616464726573,
                    mem[218 len 10]
    emit AdminChanged(__admin__Address, arg1);
    __admin__Address = arg1
    storB531 = 0
}

function __upgradeTo__(address arg1) {
    require calldata.size - 4 >= 32
    if __admin__Address != msg.sender:
        revert with 0, 'only admin'
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x7343616e6e6f742073657420612070726f787920696d706c656d656e746174696f6e20746f2061206e6f6e2d636f6e747261637420616464726573,
                    mem[223 len 5]
    __implementation__Address = arg1
    Mask(96, 0, stor3608.field_160) = 0
    emit Upgraded(arg1);
}

function __upgradeToAndCall__(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if __admin__Address != msg.sender:
        revert with 0, 'only admin'
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x7343616e6e6f742073657420612070726f787920696d706c656d656e746174696f6e20746f2061206e6f6e2d636f6e747261637420616464726573,
                    mem[223 len 5]
    __implementation__Address = arg1
    Mask(96, 0, stor3608.field_160) = 0
    emit Upgraded(arg1);
    delegate arg1 with:
         gas gas_remaining wei
        args arg2[all]
    require delegate.return_code
}



}
