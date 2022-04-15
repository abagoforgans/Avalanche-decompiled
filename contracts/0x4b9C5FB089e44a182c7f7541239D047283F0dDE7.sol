contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert
}

function sub_2aee7a31(?) payable {
    require calldata.size - 4 >= 352
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require calldata.size - 68 >= 96
    require arg3 == address(arg3)
    require arg5 < 5
    require calldata.size - 164 >= 96
    require arg6 == address(arg6)
    require arg8 < 5
    if arg10 != stor0[address(arg3)][arg4][address(arg1)][address(arg6)][arg7][arg2].field_256:
        return (arg10 == stor0[address(arg3)][arg4][address(arg1)][address(arg6)][arg7][arg2].field_256)
    if arg9 != stor0[address(arg3)][arg4][address(arg1)][address(arg6)][arg7][arg2].field_0:
        return (arg9 == stor0[address(arg3)][arg4][address(arg1)][address(arg6)][arg7][arg2].field_0)
    return (stor0[address(arg3)][arg4][address(arg1)][address(arg6)][arg7][arg2].field_512 == arg11)
}

function sub_9f6cc6d6(?) payable {
    require calldata.size - 4 >= 352
    require arg1 == address(arg1)
    if address(arg1) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'order could be added by owner only'
    require calldata.size - 4 >= 352
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require calldata.size - 68 >= 96
    require arg3 == address(arg3)
    require arg5 < 5
    require calldata.size - 164 >= 96
    require arg6 == address(arg6)
    require arg8 < 5
    stor0[address(arg3)][arg4][address(arg1)][address(arg6)][arg7][arg2].field_0 = arg9
    stor0[address(arg3)][arg4][address(arg1)][address(arg6)][arg7][arg2].field_256 = arg10
    stor0[address(arg3)][arg4][address(arg1)][address(arg6)][arg7][arg2].field_512 = arg11
}



}
