contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function withdrawNative(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == stor0
    if arg3:
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg3) >> 32
        mem[352 len 4] = uint32(arg3)
        call arg2 with:
             gas gas_remaining wei
            args Mask(224, 32, arg3) << 224, mem[324 len 4]
        if not return_data.size:
            require not ext_call.success
            emit 0x79d3fc7d: bool(ext_call.success)
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                emit 0x79d3fc7d: bool(ext_call.success)
            else:
                if not return_data.size:
                    emit 0x79d3fc7d: not bool(return_data.size)
                else:
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 261] = bool(mem[292])
                    emit 0x79d3fc7d: mem[ceil32(return_data.size) + 261]
}



}
