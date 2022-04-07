contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
mapping of struct sub_a7b72ac5;

function sub_a7b72ac5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require sub_a7b72ac5[arg1].field_256 < 6
    return sub_a7b72ac5[arg1].field_0, sub_a7b72ac5[arg1].field_256
}

function _fallback() payable {
    revert
}

function setSLARegistry() payable {
    if address(stor0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SLARegistry address has already been set'
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}

function sub_0c7ad72b(?) payable {
    require calldata.size - 4 >= 96
    require arg2 < 6
    require arg3 == address(arg3)
    if address(stor0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Should only be called using the SLARegistry contract'
    require arg2 <= 5
    sub_a7b72ac5[address(arg3)].field_0 = arg1
    require arg2 <= 5
    sub_a7b72ac5[address(arg3)].field_256 = arg2 or Mask(248, 8, sub_a7b72ac5[address(arg3)].field_256)
    require arg2 < 6
    emit 0xc382b63a: arg1, arg2, address(arg3)
}

function isRespected(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require sub_a7b72ac5[address(arg2)].field_256 <= 5
    require sub_a7b72ac5[address(arg2)].field_256 <= 5
    if not sub_a7b72ac5[address(arg2)].field_256:
        return (arg1 == sub_a7b72ac5[address(arg2)].field_0)
    require sub_a7b72ac5[address(arg2)].field_256 <= 5
    if sub_a7b72ac5[address(arg2)].field_256 == 1:
        return arg1 != sub_a7b72ac5[address(arg2)].field_0
    require sub_a7b72ac5[address(arg2)].field_256 <= 5
    if sub_a7b72ac5[address(arg2)].field_256 == 2:
        return (arg1 < sub_a7b72ac5[address(arg2)].field_0)
    require sub_a7b72ac5[address(arg2)].field_256 <= 5
    if sub_a7b72ac5[address(arg2)].field_256 == 3:
        return arg1 <= sub_a7b72ac5[address(arg2)].field_0
    require sub_a7b72ac5[address(arg2)].field_256 <= 5
    if sub_a7b72ac5[address(arg2)].field_256 == 4:
        return (arg1 > sub_a7b72ac5[address(arg2)].field_0)
    require sub_a7b72ac5[address(arg2)].field_256 <= 5
    if sub_a7b72ac5[address(arg2)].field_256 != 5:
        revert with 0, 'isRespected wasn't executed properly'
    return arg1 >= sub_a7b72ac5[address(arg2)].field_0
}



}
