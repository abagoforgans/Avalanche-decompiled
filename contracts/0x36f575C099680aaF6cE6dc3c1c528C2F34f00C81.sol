contract main {




// =====================  Runtime code  =====================


const sub_f556fcdb(?) = address(this.address)


address stor0;
address stor1;
address targetTokenAddress;
uint8 stor5;
uint256 stor7;
address stor8;
mapping of struct stor9;

function targetToken() payable {
    return targetTokenAddress
}

function _fallback() payable {
    revert
}

function setDataSource(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        if stor0 != msg.sender:
            revert with 0, 'Caller is not owner'
    stor8 = arg1
}

function sub_53df82c5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if stor1 != msg.sender:
        if stor0 != msg.sender:
            revert with 0, 'Caller is not owner'
    stor5 = uint8(bool(arg1))
}

function sub_847040d7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        if stor0 != msg.sender:
            revert with 0, 'Caller is not owner'
    targetTokenAddress = address(arg1)
    if not stor7 + 1:
        revert with 0, 17
    stor7++
}

function sub_5b669de4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall stor8.0x5b669de4 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if stor9[address(arg1)].field_512 == stor7:
        return ext_call.return_data[64], stor9[address(arg1)].field_256
    return ext_call.return_data[64], 0
}

function sub_5951fe49(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor5:
        revert with 0, 'Not distributing!'
    if not -stor9[address(arg1)].field_0:
        staticcall stor8.0x5b669de4 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        stor9[address(arg1)].field_0 = ext_call.return_data[64]
    if stor7 != stor9[address(arg1)].field_512:
        stor9[address(arg1)].field_512 = stor7
        if stor9[address(arg1)].field_256:
            stor9[address(arg1)].field_256 = 0
    if stor9[address(arg1)].field_0 < stor9[address(arg1)].field_256:
        revert with 0, 17
    if stor9[address(arg1)].field_0 - stor9[address(arg1)].field_256:
        if stor9[address(arg1)].field_256 > !(stor9[address(arg1)].field_0 - stor9[address(arg1)].field_256):
            revert with 0, 17
        stor9[address(arg1)].field_256 = stor9[address(arg1)].field_0
    return (stor9[address(arg1)].field_0 - stor9[address(arg1)].field_256)
}



}
