contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of struct sub_9fd040da;

function getCondition(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_9fd040da[arg1].field_0, sub_9fd040da[arg1].field_256
}

function sub_9fd040da(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_9fd040da[arg1].field_0, sub_9fd040da[arg1].field_256
}

function _fallback() payable {
    revert
}

function sub_19b1eccc(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not arg1:
        revert with 0, 'Key must not be zero'
    if sub_9fd040da[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Condition already stored with this key'
    sub_9fd040da[arg1].field_0 = arg2
    sub_9fd040da[arg1].field_256 = arg3
    emit 0x9cd30549: arg2, arg3, arg1
    stor0 = 1
}



}
